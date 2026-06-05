-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2026 at 04:14 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekuas`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `fotoUrl` text,
  `penjualNama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga`, `kategori`, `deskripsi`, `fotoUrl`, `penjualNama`) VALUES
(6, 'Mikrotik 10000cc', '10000000', 'elektronik', 'bekas abang jago', 'http://10.0.2.2/projekuas_api/uploads/1779962234_mikrotik.webp', 'mark@gmail.com'),
(9, 'Keyboard Fantech', '200000', 'Lainnya', 'masih mulus', 'http://10.0.2.2/projekuas_api/uploads/1780224010_fantech.webp', 'zafran@gmail.com'),
(10, 'Laptop Victus 15', '12000000', 'Elektronik', 'Masih Mulus', 'http://10.0.2.2/projekuas_api/uploads/1780309261_laptop v15.jpg', 'mark@gmail.com'),
(11, 'PC Full Set', '11000000', 'Elektronik', 'Spek Rata Kanan', 'http://10.0.2.2/projekuas_api/uploads/1780376343_pc.jpg', 'zafran@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int NOT NULL,
  `barangId` int NOT NULL,
  `namaBarang` varchar(150) DEFAULT NULL,
  `fotoBarang` text,
  `pengirim` varchar(100) DEFAULT NULL,
  `penerima` varchar(100) DEFAULT NULL,
  `pesan` text,
  `waktu` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `barangId`, `namaBarang`, `fotoBarang`, `pengirim`, `penerima`, `pesan`, `waktu`) VALUES
(12, 6, 'Mikrotik 10000cc', 'http://10.0.2.2/projekuas_api/uploads/1779962234_mikrotik.webp', 'zafran@gmail.com', 'mark@gmail.com', 'p', '2026-06-01 09:05:49'),
(13, 6, 'Mikrotik 10000cc', 'http://10.0.2.2/projekuas_api/uploads/1779962234_mikrotik.webp', 'mark@gmail.com', 'mark@gmail.com', 'ya?', '2026-06-01 10:21:33'),
(15, 6, 'Mikrotik 10000cc', 'http://10.0.2.2/projekuas_api/uploads/1779962234_mikrotik.webp', 'zafran@gmail.com', 'mark@gmail.com', 'halo', '2026-06-02 04:16:14'),
(17, 6, 'Mikrotik 10000cc', 'http://10.0.2.2/projekuas_api/uploads/1779962234_mikrotik.webp', 'mark@gmail.com', 'mark@gmail.com', 'p, balap', '2026-06-03 12:07:19'),
(20, 9, 'Keyboard Fantech', 'http://10.0.2.2/projekuas_api/uploads/1780224010_fantech.webp', 'mark@gmail.com', 'zafran@gmail.com', 'ready tidak bos?', '2026-06-04 13:00:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
