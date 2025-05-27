-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2025 at 06:55 PM
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
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` varchar(12) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `harga_beli` varchar(100) NOT NULL,
  `harga_jual` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nama_barang`, `jenis`, `harga_beli`, `harga_jual`) VALUES
('001', 'Kue', 'Makanan', '55000', '60000'),
('002', 'Teh Pucuk', 'Minuman', '5000', '6000'),
('003', 'Donat', 'Makanan', '5000', '7500');

-- --------------------------------------------------------

--
-- Table structure for table `isi`
--

CREATE TABLE `isi` (
  `id_nota` varchar(6) NOT NULL,
  `kd_barang` varchar(6) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` bigint(20) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isi`
--

INSERT INTO `isi` (`id_nota`, `kd_barang`, `harga_beli`, `harga_jual`, `qty`) VALUES
('IN0001', '001', 55000, 60000, 2),
('IN0001', '002', 5000, 6000, 5),
('IN0002', '003', 5000, 7500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(6) NOT NULL,
  `nama_kasir` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nama_kasir`, `jenis_kelamin`, `no_telp`, `agama`, `alamat`, `password`) VALUES
('ID01', 'Agus Sakti', 'Laki - laki', '087129291', 'Islam', 'Jl. Gintung 1', '12345678'),
('ID02', 'Ayu yu', 'Perempuan', '018273622', 'Islam', 'J;. Rancho', '121256712'),
('ID03', 'Yujin yu', 'Perempuan', '555237428', 'Atheis', 'Jl. Tanjung 2', '121212');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(6) NOT NULL,
  `tgl_nota` date NOT NULL,
  `id_pelanggan` varchar(6) NOT NULL,
  `id_kasir` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `tgl_nota`, `id_pelanggan`, `id_kasir`) VALUES
('IN0001', '2025-05-27', 'ID0001', 'ID01'),
('IN0002', '2025-05-27', 'ID0001', 'ID01');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(12) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `no_telp`, `alamat`) VALUES
('ID0001', 'Adrian telolet', 'Laki - laki', '08912345678', 'Jl. Kemayoran 2'),
('ID0002', 'Tevi Mansha', 'Perempuan', '08987654321', 'Jl. Simatupang'),
('ID0003', 'Ahmad Husein', 'Laki - laki', '08291039201', 'Jl. Kebayoran'),
('ID0004', 'Adrian telolet', 'Laki - laki', '08912345678', 'Jl. Kemayoran 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
