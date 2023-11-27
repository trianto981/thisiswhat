-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 08:38 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemesanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id`, `produk_id`, `qty`, `pesanan_id`) VALUES
(26, 6, 1, 32),
(27, 4, 1, 32),
(28, 4, 1, 33),
(29, 4, 1, 34),
(31, 4, 1, 35),
(32, 4, 1, 36),
(34, 4, 1, 38),
(36, 4, 1, 40),
(37, 4, 1, 41);

-- --------------------------------------------------------

--
-- Table structure for table `info_pembayaran`
--

CREATE TABLE `info_pembayaran` (
  `id` int(11) NOT NULL,
  `info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_pembayaran`
--

INSERT INTO `info_pembayaran` (`id`, `info`) VALUES
(1, 'Transaksi pembayaran bisa di bayar dengan menggunakan gopay/ovo/m-banking/atm\r\n\r\nkemudian konfirmasi pembayaran bisa di menu pembayaran');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`, `deskripsi`) VALUES
(8, 'MAKANAN', 'makanan ringan sampai makanan berat'),
(9, 'MINUMAN', 'Minuman unggulan adalah Coffe');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subjek` varchar(200) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `subjek`, `pesan`) VALUES
(23, '', 'yuda@gmail.com', '', ''),
(24, '', 'yuda@gmail.com', '', ''),
(25, '', 'yuda@gmail.com', '', ''),
(26, '', 'yuda@gmail.com', '', ''),
(27, '', 'alif@gmail.com', '', ''),
(28, '', 'alif@gmail.com', '', ''),
(29, '', 'alif@gmail.com', '', ''),
(30, '', 'alif@gmail.com', '', ''),
(31, '', 'rahmat@gmail.com', '', ''),
(32, '', 'alif@gmail.com', '', ''),
(33, '', 'excel@gmail.com', '', ''),
(34, '', 'excel@gmail.com', '', ''),
(35, '', 'alif@gmail.com', '', ''),
(36, '', 'akbar@gmail.com', '', ''),
(37, '', 'akbar@gmail.com', '', ''),
(38, '', 'akbar@gmail.com', '', ''),
(39, '', 'akbar@gmail.com', '', ''),
(40, '', 'akbar@gmail.com', '', ''),
(41, '', 'akbar@gmail.com', '', ''),
(42, '', 'alif@gmail.com', '', ''),
(43, '', 'alif@gmail.com', '', ''),
(44, '', 'alif@gmail.com', '', ''),
(45, '', 'alif@gmail.com', '', ''),
(46, '', 'alif@gmail.com', '', ''),
(47, '', 'alif@gmail.com', '', ''),
(48, '', 'excel@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_pengeluaran` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `Tanggal_pengeluaran` date NOT NULL,
  `harga` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_pengeluaran`, `nama_barang`, `Tanggal_pengeluaran`, `harga`, `jumlah`, `total`) VALUES
(43, 'biji kopi', '2021-02-08', '230000', 10, 2300000);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `status` enum('pending','verified','','') NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_pesanan`, `id_user`, `file`, `total`, `status`, `keterangan`, `created_at`) VALUES
(11, 31, 7, '49eb6a44db57cba8d66b3404fa9f0ad4', 0, 'verified', '', '2021-02-05 02:34:20'),
(12, 31, 7, '49eb6a44db57cba8d66b3404fa9f0ad4', 0, 'verified', '', '2021-02-05 02:35:09'),
(13, 31, 7, '49eb6a44db57cba8d66b3404fa9f0ad4IMG-20210122-WA0010.jpg', 0, 'verified', '', '2021-02-05 02:35:24'),
(14, 31, 7, '49eb6a44db57cba8d66b3404fa9f0ad4', 0, 'verified', '', '2021-02-05 02:36:28'),
(15, 31, 7, '49eb6a44db57cba8d66b3404fa9f0ad4', 0, 'verified', '', '2021-02-05 02:37:27'),
(16, 31, 7, '49eb6a44db57cba8d66b3404fa9f0ad4tampil1.jpg', 20000, 'verified', '', '2021-02-05 02:37:44'),
(17, 32, 8, '49eb6a44db57cba8d66b3404fa9f0ad4IMG-20210122-WA0007.jpg', 45000, 'verified', '', '2021-02-05 04:30:33'),
(18, 33, 8, '49eb6a44db57cba8d66b3404fa9f0ad4tampil1.jpg', 25000, 'verified', '', '2021-02-05 04:32:24'),
(19, 34, 8, '49eb6a44db57cba8d66b3404fa9f0ad450.jpg', 100000, 'verified', '', '2021-02-09 23:24:19'),
(20, 35, 8, '49eb6a44db57cba8d66b3404fa9f0ad4921560_501774819881951_990796276_o.jpg', 25000, 'verified', '', '2021-02-09 23:26:43'),
(21, 35, 8, '49eb6a44db57cba8d66b3404fa9f0ad450.jpg', 25000, 'verified', '', '2021-02-09 23:27:58'),
(22, 36, 8, '49eb6a44db57cba8d66b3404fa9f0ad4mod.jpg', 25000, 'verified', '', '2021-02-09 23:28:43'),
(23, 38, 9, '49eb6a44db57cba8d66b3404fa9f0ad4mod.jpg', 25000, 'verified', '', '2021-02-13 06:51:14'),
(24, 41, 8, '49eb6a44db57cba8d66b3404fa9f0ad4bukti transaksi.png', 25000, 'verified', '', '2021-02-20 04:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(5) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `user_id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `read` enum('0','1') NOT NULL,
  `status` enum('lunas','belum lunas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal_pesan`, `user_id`, `nama`, `alamat`, `telephone`, `read`, `status`) VALUES
(32, '2021-02-04 21:04:24', 8, 'alif', 'cipayung', '098071', '1', 'lunas'),
(33, '2021-02-04 22:29:13', 8, 'alif', 'cipayung', '098071', '1', 'lunas'),
(34, '2021-02-09 17:23:37', 8, 'alif', 'cipayung', '098071', '1', 'lunas'),
(35, '2021-02-09 17:26:27', 8, 'alif', 'cipayung', '098071', '1', 'lunas'),
(36, '2021-02-09 17:28:28', 8, 'alif', 'cipayung', '098071', '1', 'lunas'),
(38, '2021-02-13 00:35:16', 9, 'rahmat', 'cijantung', '0215487954', '1', 'lunas'),
(40, '2021-02-18 00:00:00', 12, 'excel', 'jakarta', '08997731383', '1', 'belum lunas'),
(41, '2021-02-19 22:05:19', 8, 'alif', 'cipayung', '098071', '1', 'lunas');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `kategori_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `deskripsi`, `gambar`, `harga`, `kategori_produk_id`) VALUES
(4, 'Dimsum', 'Dimsum dengan saus mentai di atasnya', '49eb6a44db57cba8d66b3404fa9f0ad4tampil3.jpg', '25000', 8),
(5, 'Kopi Susu', 'Black Coffe dengan susu yang menyegarkan', '49eb6a44db57cba8d66b3404fa9f0ad4tampil5.jpg', '20000', 9),
(6, 'Karage Sambal matah', 'Paha ayam kriuk dengan sambal matah yang segar dan pedas', '49eb6a44db57cba8d66b3404fa9f0ad4IMG-20210122-WA0006.jpg', '20000', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `telephone`, `alamat`, `password`, `status`) VALUES
(1, 'Administrator', 'admin@gmail.com', '08985432330', 'JAKARTA', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(8, 'alif', 'alif@gmail.com', '098071', 'cipayung', '099a147c0c6bcd34009896b2cc88633c', 'user'),
(9, 'rahmat', 'rahmat@gmail.com', '0215487954', 'cijantung', 'af2a4c9d4c4956ec9d6ba62213eed568', 'user'),
(10, 'tasya', 'tasya@gmail.com', '0215487954', 'jakarta', 'a208fb8e30446eb35afa20a299a94962', 'admin'),
(11, 'ridwan', 'ridwan@gmail.com', '21555', 'jakarta', 'd584c96e6c1ba3ca448426f66e552e8e', 'admin'),
(12, 'excel', 'excel@gmail.com', '08997731383', 'jakarta', 'bf57c906fa7d2bb66d07372e41585d96', 'user'),
(13, 'daniel', 'daniel@gmail.com', '08997731383', 'jakarta', 'aa47f8215c6f30a0dcdb2a36a9f4168e', 'user'),
(14, 'hangga', 'hangga@gmail.com', '08997731383', 'jakarta', '2a21509747f2b7817ae0f8ba84bc4ab3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id`,`produk_id`,`pesanan_id`),
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `info_pembayaran`
--
ALTER TABLE `info_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`,`kategori_produk_id`),
  ADD KEY `kategori_produk_id` (`kategori_produk_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `info_pembayaran`
--
ALTER TABLE `info_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_ibfk_2` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pesanan_ibfk_3` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
