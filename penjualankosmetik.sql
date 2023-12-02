-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 04:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualankosmetik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `desc_barang` varchar(100) NOT NULL,
  `stok` varchar(30) NOT NULL,
  `harga_beli` varchar(20) NOT NULL,
  `harga_jual` varchar(30) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `tgl_expired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_barang`
--

INSERT INTO `tabel_barang` (`id_barang`, `nama_barang`, `desc_barang`, `stok`, `harga_beli`, `harga_jual`, `merek`, `tgl_expired`) VALUES
(1, 'Facial Wash', 'Membersihkan sel kulit mati\r\n', '10', ' Rp50.000 ', ' Rp55.000 ', ' Scarlett ', '2025-12-20'),
(2, 'Primer', 'Meratakan noda hitam di wajah\r\n', '10', 'Rp. 80.000', 'Rp. 85.000', 'Maybelline', '2025-12-25'),
(3, 'Cushion', 'Menyamarkan  noda di wajah\r\n', '10', 'Rp. 140.000', 'Rp. 145.000', 'Skintific', '2026-01-20'),
(4, 'Lipstik', 'Memberi warna pada bibir \r\n', '10', 'Rp. 100.000', 'Rp. 105.000', 'Make Over', '2026-01-25'),
(5, 'Maskara', 'Menambah volume dan panjang bulu mata\r\n', '10', 'Rp. 30.000', 'Rp. 35.000', 'O.TWO.O', '2026-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_detailpembelian`
--

CREATE TABLE `tabel_detailpembelian` (
  `id_detailpembelian` int(10) NOT NULL,
  `id_supplier` int(10) NOT NULL,
  `id_pembelian` int(10) NOT NULL,
  `id_kustomer` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `harga_jual` varchar(30) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_detailpenjualan`
--

CREATE TABLE `tabel_detailpenjualan` (
  `id_detailpenjualan` int(10) NOT NULL,
  `id_penjulan` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `harga_jual` varchar(20) NOT NULL,
  `total_jual` varchar(20) NOT NULL,
  `status` enum('bayar','belum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_detailreturn`
--

CREATE TABLE `tabel_detailreturn` (
  `id_detailreturn` int(10) NOT NULL,
  `id_return` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `id_penjualan` int(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `harga_beli` varchar(20) NOT NULL,
  `total` varchar(10) NOT NULL,
  `desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kustomer`
--

CREATE TABLE `tabel_kustomer` (
  `id_kustomer` int(10) NOT NULL,
  `nama_kustomer` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pembelian`
--

CREATE TABLE `tabel_pembelian` (
  `id_pembelian` int(10) NOT NULL,
  `no_transaksi` varchar(10) NOT NULL,
  `tgl` datetime NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah_bayar` varchar(20) NOT NULL,
  `id_user` int(10) NOT NULL,
  `pembayaran` enum('cash','trf') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_penjualan`
--

CREATE TABLE `tabel_penjualan` (
  `id_penjualan` int(10) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `id_kustomer` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `no_transaksi` varchar(10) NOT NULL,
  `total_harga` varchar(20) NOT NULL,
  `pembayaran` enum('cash','trf') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_return`
--

CREATE TABLE `tabel_return` (
  `id_return` int(10) NOT NULL,
  `tgl_return` int(10) NOT NULL,
  `id_penjualan` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `harga_jual` varchar(20) NOT NULL,
  `total_jual` varchar(20) NOT NULL,
  `status` enum('berhasil','batal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_stok`
--

CREATE TABLE `tabel_stok` (
  `id_stok` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `desc` date NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `status` enum('true','false') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_stok`
--

INSERT INTO `tabel_stok` (`id_stok`, `id_barang`, `desc`, `jumlah`, `harga`, `status`) VALUES
(1, 1, '2023-11-10', '15', 'Rp. 50.000', 'true'),
(2, 2, '2023-11-11', '15', 'Rp. 80.000', 'true'),
(3, 3, '2023-11-12', '15', 'Rp. 140.000', 'true'),
(4, 4, '2023-11-13', '15', 'Rp. 100.000', 'true'),
(5, 5, '2023-11-14', '15', 'Rp. 30.000', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_supplier`
--

CREATE TABLE `tabel_supplier` (
  `id_supplier` int(10) NOT NULL,
  `nama_supplier` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` enum('admin','kustomer') NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl_bergabung` date NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tabel_detailpembelian`
--
ALTER TABLE `tabel_detailpembelian`
  ADD PRIMARY KEY (`id_detailpembelian`);

--
-- Indexes for table `tabel_detailpenjualan`
--
ALTER TABLE `tabel_detailpenjualan`
  ADD PRIMARY KEY (`id_detailpenjualan`);

--
-- Indexes for table `tabel_detailreturn`
--
ALTER TABLE `tabel_detailreturn`
  ADD PRIMARY KEY (`id_detailreturn`);

--
-- Indexes for table `tabel_kustomer`
--
ALTER TABLE `tabel_kustomer`
  ADD PRIMARY KEY (`id_kustomer`);

--
-- Indexes for table `tabel_pembelian`
--
ALTER TABLE `tabel_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `tabel_penjualan`
--
ALTER TABLE `tabel_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `tabel_return`
--
ALTER TABLE `tabel_return`
  ADD PRIMARY KEY (`id_return`);

--
-- Indexes for table `tabel_stok`
--
ALTER TABLE `tabel_stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_barang`
--
ALTER TABLE `tabel_barang`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tabel_detailpembelian`
--
ALTER TABLE `tabel_detailpembelian`
  MODIFY `id_detailpembelian` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_detailpenjualan`
--
ALTER TABLE `tabel_detailpenjualan`
  MODIFY `id_detailpenjualan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_detailreturn`
--
ALTER TABLE `tabel_detailreturn`
  MODIFY `id_detailreturn` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_kustomer`
--
ALTER TABLE `tabel_kustomer`
  MODIFY `id_kustomer` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_pembelian`
--
ALTER TABLE `tabel_pembelian`
  MODIFY `id_pembelian` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_penjualan`
--
ALTER TABLE `tabel_penjualan`
  MODIFY `id_penjualan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_return`
--
ALTER TABLE `tabel_return`
  MODIFY `id_return` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_stok`
--
ALTER TABLE `tabel_stok`
  MODIFY `id_stok` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  MODIFY `id_supplier` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
