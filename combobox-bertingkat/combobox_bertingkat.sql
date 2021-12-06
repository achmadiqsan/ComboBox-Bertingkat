-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2020 pada 18.04
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `combobox_bertingkat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id_kendaraan` int(11) NOT NULL,
  `nama_kendaraan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kendaraan`
--

INSERT INTO `kendaraan` (`id_kendaraan`, `nama_kendaraan`) VALUES
(1, 'Mobil'),
(2, 'Motor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merk_kendaraan`
--

CREATE TABLE `merk_kendaraan` (
  `id_merk_kendaraan` int(11) NOT NULL,
  `merk_kendaraan` varchar(100) DEFAULT NULL,
  `id_kendaraan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `merk_kendaraan`
--

INSERT INTO `merk_kendaraan` (`id_merk_kendaraan`, `merk_kendaraan`, `id_kendaraan`) VALUES
(1, 'Yamaha', 2),
(2, 'Honda', 2),
(3, 'Honda', 1),
(4, 'Toyota', 1),
(5, 'Zuzuki', 2),
(6, 'Nissan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_kendaraan`
--

CREATE TABLE `tipe_kendaraan` (
  `id_tipe_kendaraan` int(11) NOT NULL,
  `tipe_kendaraan` varchar(100) DEFAULT NULL,
  `id_merk_kendaraan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tipe_kendaraan`
--

INSERT INTO `tipe_kendaraan` (`id_tipe_kendaraan`, `tipe_kendaraan`, `id_merk_kendaraan`) VALUES
(1, 'Yamaha Nmax', 1),
(2, 'Yamaha Aerox', 1),
(3, 'Beat', 2),
(4, 'Vario', 2),
(5, 'Honda BR-V', 3),
(6, 'Honda Jazz', 3),
(7, 'Honda Mobilio', 3),
(8, 'Yamaha Aerox', 1),
(9, 'Toyota Kijang Innova', 4),
(10, 'Toyota Avanza', 4),
(11, 'Zuzuki Nex', 5),
(12, 'Zuzuki Satria', 5),
(13, 'Nissan X-Trail', 6),
(14, 'Nissan Livina', 6);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indeks untuk tabel `merk_kendaraan`
--
ALTER TABLE `merk_kendaraan`
  ADD PRIMARY KEY (`id_merk_kendaraan`),
  ADD KEY `id_kendaraan` (`id_kendaraan`);

--
-- Indeks untuk tabel `tipe_kendaraan`
--
ALTER TABLE `tipe_kendaraan`
  ADD PRIMARY KEY (`id_tipe_kendaraan`),
  ADD KEY `id_merk_kendaraan` (`id_merk_kendaraan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `merk_kendaraan`
--
ALTER TABLE `merk_kendaraan`
  MODIFY `id_merk_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tipe_kendaraan`
--
ALTER TABLE `tipe_kendaraan`
  MODIFY `id_tipe_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `merk_kendaraan`
--
ALTER TABLE `merk_kendaraan`
  ADD CONSTRAINT `id_kendaraan` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`id_kendaraan`);

--
-- Ketidakleluasaan untuk tabel `tipe_kendaraan`
--
ALTER TABLE `tipe_kendaraan`
  ADD CONSTRAINT `id_merk_kendaraan` FOREIGN KEY (`id_merk_kendaraan`) REFERENCES `merk_kendaraan` (`id_merk_kendaraan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
