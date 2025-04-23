-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2025 at 03:10 PM
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
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(5) NOT NULL,
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
('001', 'Pisang', 'Makanan', '100000', '150000'),
('ID0001', 'Adrian telolet', 'Laki - laki', '08912345678', 'Jl. Kemayoran 2'),
('ID0002', 'Tevi Mansha', 'Perempuan', '08987654321', 'Jl. Simatupang'),
('ID0003', 'Ahmad Husein', 'Laki - laki', '08291039201', 'Jl. Kebayoran');

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
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
