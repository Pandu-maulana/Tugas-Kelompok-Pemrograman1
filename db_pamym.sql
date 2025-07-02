-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2025 at 05:06 PM
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
-- Database: `db_pamym`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_gojek`
--

CREATE TABLE `transaksi_gojek` (
  `No` int(20) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Dari` varchar(30) NOT NULL,
  `Ke` varchar(30) NOT NULL,
  `Jarak` int(20) NOT NULL,
  `Harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_gojek`
--

INSERT INTO `transaksi_gojek` (`No`, `Nama`, `Dari`, `Ke`, `Jarak`, `Harga`) VALUES
(1, 'Pandu Maulana Ilham', 'Pondok cabe', 'Ciputat', 5, 35000),
(2, 'Ahmad Sandi Maulana', 'Bintaro', 'Pamulang', 10, 65000),
(3, 'Muhammad zen Rafai', 'Jakarta Barat', 'Blok M', 6, 40000),
(4, 'Yusuf Abdillahil', 'Parung', 'Rangkas', 8, 50000),
(5, 'Miftahul Azizah', 'Pasar Rebo', 'Bekasi', 9, 58000),
(123456, 'Diana', 'jakarta', 'bintaro', 8, 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `akses` enum('Pelanggan','Driver') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `akses`) VALUES
(1, 'Pandu Maulana Ilham', 'pnduu123', 'Pelanggan'),
(2, 'Ahmad Sandi Maulana', 'sandi123', 'Driver'),
(3, 'Miftahul Azizah', 'azizah123', 'Pelanggan'),
(4, 'Muhammad Zen Rafai', 'zen123', 'Driver');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksi_gojek`
--
ALTER TABLE `transaksi_gojek`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi_gojek`
--
ALTER TABLE `transaksi_gojek`
  MODIFY `No` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123457;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
