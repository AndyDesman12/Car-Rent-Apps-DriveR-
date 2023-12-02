-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Nov 2023 pada 19.41
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_car`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `image`
--

INSERT INTO `image` (`id`, `caption`, `image_path`) VALUES
(6, 'gh', 'image/1000377060.jpg'),
(7, '', ''),
(8, '', ''),
(9, '', ''),
(10, '', ''),
(11, '', ''),
(12, 'bkk', ''),
(13, 'yy', ''),
(14, 'hg', ''),
(15, '', 'image/'),
(16, '', 'image/'),
(17, '', 'image/'),
(18, '', 'image/1000377060.jpg'),
(19, 'bjjjhj', 'image/1000377060.jpg'),
(20, 'bjjjhj', 'image/1000377060.jpg'),
(21, '', 'image/'),
(22, 'bjjjhjyhih8gv', 'image/1000377060.jpg'),
(23, 'bjv', 'image/1000377060.jpg'),
(24, 'a', 'image/1000377242.jpg'),
(25, 'y', 'image/1000377242.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` varchar(200) NOT NULL,
  `stok` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id`, `image_path`, `nama`, `harga`, `stok`) VALUES
(17, 'image/1000382335.jpg', 'avanza', '500000', 6),
(20, 'image/1000382331.jpg', 'Rubicon', '600000', 6),
(21, 'image/1000409532.jpg', 'p', '5', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `idt` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `mobil` varchar(255) NOT NULL,
  `image_ktp` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`idt`, `nama`, `nik`, `mobil`, `image_ktp`, `keterangan`) VALUES
(10, 'Fiqih Ardiansyah', '1234567890123456', 'image/1000382335.jpg', 'image/7c49c585-1f1c-4cae-bda7-f25c91a575c53228606067249270494.jpg', 'Menunggu'),
(11, 'p', '3', 'image/1000409532.jpg', 'image/dc99f47f-e66c-4e09-b02b-3c4b7f9006be3249808395149795498.jpg', 'Menunggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`uid`, `nama`, `nik`, `email`, `password`, `level`) VALUES
(17, 'Kelompok1', '1234567890123456', 'admin@gmail.com', 'admin', 'admin'),
(35, 'Fiqih Ardiansyah', '1234567890123456', 'ardiansyahfiqih47@gmail.com', '123', 'user'),
(36, 'p', '3', 'p', 'p', 'user'),
(37, 'gabriels', '3464015497678754', 'novaputramjk2@gmail.com', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idt`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
