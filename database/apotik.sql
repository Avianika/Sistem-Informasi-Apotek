-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15 Jul 2020 pada 09.47
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_obat`
--

CREATE TABLE `jenis_obat` (
  `id_jenisobat` char(10) NOT NULL,
  `jenis_obat` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_obat`
--

INSERT INTO `jenis_obat` (`id_jenisobat`, `jenis_obat`) VALUES
('OB300', 'Sirup'),
('OB400', 'Tablet'),
('OB500', 'PIL'),
('OB600', 'SIRUP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` char(10) NOT NULL,
  `nama_obat` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` varchar(20) NOT NULL,
  `id_jenisobat` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `harga`, `stock`, `id_jenisobat`) VALUES
('Q020', 'OBH btkplk', 12000, '50', 'OB300'),
('Q021', 'Amodiplin', 20000, '10', 'OB400'),
('Q022', 'Hungfagrib', 10000, '2', 'OB300');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` char(10) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `jenis_kelamin` char(10) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_telp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `jenis_kelamin`, `alamat`, `tgl_lahir`, `no_telp`) VALUES
('110', 'Deffany', 'Perempuan', 'Sukoharjo', '2000-12-14', '089789678908'),
('111', 'Lala', 'Perempuan', 'Purwodadi', '2000-06-05', '087654321980'),
('112', 'Adi Setiawan', 'Laki-laki', 'Karanganyar', '2000-08-08', '085678908345'),
('113', 'Rio', 'Laki-laki', 'Solo', '1999-07-10', '089098765432'),
('114', 'Lia', 'Perempuan', 'Boyolali', '2000-09-16', '087456789234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` char(10) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pelanggan` char(10) NOT NULL,
  `id_petugas` char(10) NOT NULL,
  `id_obat` char(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `id_jenisobat` char(10) NOT NULL,
  `jumlah_obat` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `tanggal`, `id_pelanggan`, `id_petugas`, `id_obat`, `harga`, `id_jenisobat`, `jumlah_obat`, `total_bayar`) VALUES
('IPO001', '2020-07-08', '001', '110', 'Q021', 20000, 'OB300', 2, 40000),
('IPO002', '2020-07-10', '002', '112', 'Q022', 10000, 'OB400', 3, 30000),
('IPO003', '2020-07-20', '003', '111', 'Q020', 12000, 'OB500', 1, 12000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_obat`
--
ALTER TABLE `jenis_obat`
  ADD PRIMARY KEY (`id_jenisobat`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
