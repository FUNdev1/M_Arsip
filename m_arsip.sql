-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Okt 2019 pada 04.37
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip`
--
CREATE DATABASE IF NOT EXISTS `arsip` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `arsip`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `klasifikasi1` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `klasifikasi`
--

INSERT INTO `klasifikasi` (`id`, `kode`, `klasifikasi1`) VALUES
(1, '000', 'Umum'),
(2, '100', 'Pemerintah'),
(3, '200', 'Politik'),
(4, '300', 'Keamanan & Ketertiban Umum'),
(5, '400', 'Kesejahteraan Rakyat'),
(6, '500', 'Perekonomian'),
(7, '600', 'Pekerjaan Umum dan Ketenagaan '),
(8, '700', 'Pengawasan'),
(9, '800', 'Kepegawaian'),
(10, '900', 'Keuangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `klasifikasi_tambahan`
--

CREATE TABLE `klasifikasi_tambahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `klasifikasi2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'firman', 'firman', '74bfebec67d1a87b161e5cbcf6f72a4a', 'admin'),
(2, 'user', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemerintahan`
--

CREATE TABLE `pemerintahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `spesial_id` int(10) NOT NULL,
  `klasifikasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemerintahan`
--

INSERT INTO `pemerintahan` (`id`, `kode`, `spesial_id`, `klasifikasi`) VALUES
(1, '100', 2, 'Pemerintahan'),
(2, '110', 2, 'Pemerintahan Pusat'),
(3, '120', 2, 'Pemerintahan Provinsi'),
(4, '130', 2, 'Pemerintahan Kabupaten / Kota'),
(5, '140', 2, 'Pemerintahan Desa / Kelurahan'),
(6, '150', 2, 'Legislatif MPR / DPR / DPD'),
(7, '160', 2, 'DPRD Provinsi'),
(8, '170', 2, 'DPRD Kabupaten / Kota'),
(9, '180', 2, 'Hukum'),
(10, '190', 2, 'Hubungan Luar Negeri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `umum`
--

CREATE TABLE `umum` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `spesial_id` int(10) NOT NULL,
  `klasifikasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `umum`
--

INSERT INTO `umum` (`id`, `kode`, `spesial_id`, `klasifikasi`) VALUES
(1, '000', 1, 'Umum'),
(2, '010', 1, 'Urusan Dalam'),
(3, '020', 1, 'Barang & Jasa'),
(4, '030', 1, 'Kekayaan Daerah'),
(5, '040', 1, 'Perpus/ Dokumen/ Kearsipan/ Sandi'),
(6, '050', 1, 'Perencanaan'),
(7, '060', 1, 'Organisasi/ Ketatalaksanaan'),
(8, '070', 1, 'Konferensi'),
(9, '080', 1, 'Perjalanan Dinas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `klasifikasi`
--
ALTER TABLE `klasifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `klasifikasi_tambahan`
--
ALTER TABLE `klasifikasi_tambahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemerintahan`
--
ALTER TABLE `pemerintahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `umum`
--
ALTER TABLE `umum`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `klasifikasi_tambahan`
--
ALTER TABLE `klasifikasi_tambahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pemerintahan`
--
ALTER TABLE `pemerintahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `umum`
--
ALTER TABLE `umum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(18) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama_pegawai`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `no_hp`, `foto`) VALUES
('199105152010000001', 'Pegawai 1', 'Lampung', '1991-01-01', 'Laki-laki', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000002', 'Pegawai 2', 'Lampung', '1991-01-02', 'Laki-laki', 'Kristen Protestan', 'Kedaton, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000003', 'Pegawai 3', 'Lampung', '1991-01-03', 'Perempuan', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000004', 'Pegawai 4', 'Lampung', '1991-01-04', 'Laki-laki', 'Kristen Katolik', 'Sukarame, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000005', 'Pegawai 5', 'Lampung', '1991-01-05', 'Laki-laki', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000006', 'Pegawai 6', 'Lampung', '1991-01-06', 'Perempuan', 'Hindu', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000007', 'Pegawai 7', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000008', 'Pegawai 8', 'Lampung', '1991-01-08', 'Laki-laki', 'Buddha', 'Enggal, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000009', 'Pegawai 9', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000010', 'Pegawai 10', 'Lampung', '1991-01-10', 'Laki-laki', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000011', 'Pegawai 11', 'Lampung', '1991-01-11', 'Laki-laki', 'Kristen Protestan', 'Kedamaian, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000012', 'Pegawai 12', 'Lampung', '1991-01-12', 'Perempuan', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000013', 'Pegawai 13', 'Lampung', '1991-01-13', 'Laki-laki', 'Kristen Katolik', 'Sukabumi, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000014', 'Pegawai 14', 'Lampung', '1991-01-14', 'Laki-laki', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000015', 'Pegawai 15', 'Lampung', '1991-01-15', 'Perempuan', 'Hindu', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000016', 'Pegawai 16', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000017', 'Pegawai 17', 'Lampung', '1991-01-17', 'Laki-laki', 'Buddha', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000018', 'Pegawai 18', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000019', 'Pegawai 19', 'Lampung', '1991-01-19', 'Laki-laki', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000020', 'Pegawai 20', 'Lampung', '1991-01-20', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000021', 'Pegawai 21', 'Lampung', '1991-01-21', 'Perempuan', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000022', 'Pegawai 22', 'Lampung', '1991-01-22', 'Laki-laki', 'Kristen Katolik', 'Kedaton, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000023', 'Pegawai 23', 'Lampung', '1991-01-23', 'Laki-laki', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000024', 'Pegawai 24', 'Lampung', '1991-01-24', 'Perempuan', 'Hindu', 'Sukarame, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000025', 'Pegawai 25', 'Lampung', '1991-01-25', 'Laki-laki', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000026', 'Pegawai 26', 'Lampung', '1991-01-26', 'Laki-laki', 'Buddha', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000027', 'Pegawai 27', 'Lampung', '1991-01-27', 'Perempuan', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000028', 'Pegawai 28', 'Lampung', '1991-01-28', 'Laki-laki', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000029', 'Pegawai 29', 'Lampung', '1991-01-29', 'Laki-laki', 'Kristen Protestan', 'Panjang, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000030', 'Pegawai 30', 'Lampung', '1991-01-30', 'Perempuan', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000031', 'Pegawai 31', 'Lampung', '1991-01-01', 'Laki-laki', 'Kristen Katolik', 'Kedamaian, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000032', 'Pegawai 32', 'Lampung', '1991-01-02', 'Laki-laki', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000033', 'Pegawai 33', 'Lampung', '1991-01-03', 'Perempuan', 'Hindu', 'Sukabumi, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000034', 'Pegawai 34', 'Lampung', '1991-01-04', 'Laki-laki', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000035', 'Pegawai 35', 'Lampung', '1991-01-05', 'Laki-laki', 'Buddha', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000036', 'Pegawai 36', 'Lampung', '1991-01-06', 'Perempuan', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000037', 'Pegawai 37', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000038', 'Pegawai 38', 'Lampung', '1991-01-08', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000039', 'Pegawai 39', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000040', 'Pegawai 40', 'Lampung', '1991-01-10', 'Laki-laki', 'Kristen Katolik', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000041', 'Pegawai 41', 'Lampung', '1991-01-11', 'Laki-laki', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000042', 'Pegawai 42', 'Lampung', '1991-01-12', 'Perempuan', 'Hindu', 'Kedaton, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000043', 'Pegawai 43', 'Lampung', '1991-01-13', 'Laki-laki', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000044', 'Pegawai 44', 'Lampung', '1991-01-14', 'Laki-laki', 'Buddha', 'Sukarame, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000045', 'Pegawai 45', 'Lampung', '1991-01-15', 'Perempuan', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000046', 'Pegawai 46', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000047', 'Pegawai 47', 'Lampung', '1991-01-17', 'Laki-laki', 'Kristen Protestan', 'Langkapura, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000048', 'Pegawai 48', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000049', 'Pegawai 49', 'Lampung', '1991-01-19', 'Laki-laki', 'Kristen Katolik', 'Panjang, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000050', 'Pegawai 50', 'Lampung', '1991-01-20', 'Laki-laki', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000051', 'Pegawai 51', 'Lampung', '1991-01-21', 'Perempuan', 'Hindu', 'Kedamaian, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000052', 'Pegawai 52', 'Lampung', '1991-01-22', 'Laki-laki', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000053', 'Pegawai 53', 'Lampung', '1991-01-23', 'Laki-laki', 'Buddha', 'Sukabumi, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000054', 'Pegawai 54', 'Lampung', '1991-01-24', 'Perempuan', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000055', 'Pegawai 55', 'Lampung', '1991-01-25', 'Laki-laki', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000056', 'Pegawai 56', 'Lampung', '1991-01-26', 'Laki-laki', 'Kristen Protestan', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000057', 'Pegawai 57', 'Lampung', '1991-01-27', 'Perempuan', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000058', 'Pegawai 58', 'Lampung', '1991-01-28', 'Laki-laki', 'Kristen Katolik', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000059', 'Pegawai 59', 'Lampung', '1991-01-29', 'Laki-laki', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000060', 'Pegawai 60', 'Lampung', '1991-01-30', 'Perempuan', 'Hindu', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000061', 'Pegawai 61', 'Lampung', '1991-01-01', 'Laki-laki', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000062', 'Pegawai 62', 'Lampung', '1991-01-02', 'Laki-laki', 'Buddha', 'Kedaton, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000063', 'Pegawai 63', 'Lampung', '1991-01-03', 'Perempuan', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000064', 'Pegawai 64', 'Lampung', '1991-01-04', 'Laki-laki', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000065', 'Pegawai 65', 'Lampung', '1991-01-05', 'Laki-laki', 'Kristen Protestan', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000066', 'Pegawai 66', 'Lampung', '1991-01-06', 'Perempuan', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000067', 'Pegawai 67', 'Lampung', '1991-01-07', 'Laki-laki', 'Kristen Katolik', 'Langkapura, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000068', 'Pegawai 68', 'Lampung', '1991-01-08', 'Laki-laki', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000069', 'Pegawai 69', 'Lampung', '1991-01-09', 'Perempuan', 'Hindu', 'Panjang, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000070', 'Pegawai 70', 'Lampung', '1991-01-10', 'Laki-laki', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000071', 'Pegawai 71', 'Lampung', '1991-01-11', 'Laki-laki', 'Buddha', 'Kedamaian, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000072', 'Pegawai 72', 'Lampung', '1991-01-12', 'Perempuan', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000073', 'Pegawai 73', 'Lampung', '1991-01-13', 'Laki-laki', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000074', 'Pegawai 74', 'Lampung', '1991-01-14', 'Laki-laki', 'Kristen Protestan', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000075', 'Pegawai 75', 'Lampung', '1991-01-15', 'Perempuan', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000076', 'Pegawai 76', 'Lampung', '1991-01-16', 'Laki-laki', 'Kristen Katolik', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000077', 'Pegawai 77', 'Lampung', '1991-01-17', 'Laki-laki', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000078', 'Pegawai 78', 'Lampung', '1991-01-18', 'Perempuan', 'Hindu', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000079', 'Pegawai 79', 'Lampung', '1991-01-19', 'Laki-laki', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000080', 'Pegawai 80', 'Lampung', '1991-01-20', 'Laki-laki', 'Buddha', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000081', 'Pegawai 81', 'Lampung', '1991-01-21', 'Perempuan', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000082', 'Pegawai 82', 'Lampung', '1991-01-22', 'Laki-laki', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000083', 'Pegawai 83', 'Lampung', '1991-01-23', 'Laki-laki', 'Kristen Protestan', 'Kemiling, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000084', 'Pegawai 84', 'Lampung', '1991-01-24', 'Perempuan', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000085', 'Pegawai 85', 'Lampung', '1991-01-25', 'Laki-laki', 'Kristen Katolik', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000086', 'Pegawai 86', 'Lampung', '1991-01-26', 'Laki-laki', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000087', 'Pegawai 87', 'Lampung', '1991-01-27', 'Perempuan', 'Hindu', 'Langkapura, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000088', 'Pegawai 88', 'Lampung', '1991-01-28', 'Laki-laki', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000089', 'Pegawai 89', 'Lampung', '1991-01-29', 'Laki-laki', 'Buddha', 'Panjang, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000090', 'Pegawai 90', 'Lampung', '1991-01-30', 'Perempuan', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000091', 'Pegawai 91', 'Lampung', '1991-01-01', 'Laki-laki', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000092', 'Pegawai 92', 'Lampung', '1991-01-02', 'Laki-laki', 'Kristen Protestan', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000093', 'Pegawai 93', 'Lampung', '1991-01-03', 'Perempuan', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000094', 'Pegawai 94', 'Lampung', '1991-01-04', 'Laki-laki', 'Kristen Katolik', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000095', 'Pegawai 95', 'Lampung', '1991-01-05', 'Laki-laki', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000096', 'Pegawai 96', 'Lampung', '1991-01-06', 'Perempuan', 'Hindu', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000097', 'Pegawai 97', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000098', 'Pegawai 98', 'Lampung', '1991-01-08', 'Laki-laki', 'Buddha', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000099', 'Pegawai 99', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000100', 'Pegawai 100', 'Lampung', '1991-01-10', 'Laki-laki', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000101', 'Pegawai 101', 'Lampung', '1991-01-11', 'Laki-laki', 'Kristen Protestan', 'Rajabasa, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000102', 'Pegawai 102', 'Lampung', '1991-01-12', 'Perempuan', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000103', 'Pegawai 103', 'Lampung', '1991-01-13', 'Laki-laki', 'Kristen Katolik', 'Kemiling, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000104', 'Pegawai 104', 'Lampung', '1991-01-14', 'Laki-laki', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000105', 'Pegawai 105', 'Lampung', '1991-01-15', 'Perempuan', 'Hindu', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000106', 'Pegawai 106', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000107', 'Pegawai 107', 'Lampung', '1991-01-17', 'Laki-laki', 'Buddha', 'Langkapura, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000108', 'Pegawai 108', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000109', 'Pegawai 109', 'Lampung', '1991-01-19', 'Laki-laki', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000110', 'Pegawai 110', 'Lampung', '1991-01-20', 'Laki-laki', 'Kristen Protestan', 'Way Halim, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000111', 'Pegawai 111', 'Lampung', '1991-01-21', 'Perempuan', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000112', 'Pegawai 112', 'Lampung', '1991-01-22', 'Laki-laki', 'Kristen Katolik', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000113', 'Pegawai 113', 'Lampung', '1991-01-23', 'Laki-laki', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000114', 'Pegawai 114', 'Lampung', '1991-01-24', 'Perempuan', 'Hindu', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000115', 'Pegawai 115', 'Lampung', '1991-01-25', 'Laki-laki', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000116', 'Pegawai 116', 'Lampung', '1991-01-26', 'Laki-laki', 'Buddha', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000117', 'Pegawai 117', 'Lampung', '1991-01-27', 'Perempuan', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000118', 'Pegawai 118', 'Lampung', '1991-01-28', 'Laki-laki', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000119', 'Pegawai 119', 'Lampung', '1991-01-29', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000120', 'Pegawai 120', 'Lampung', '1991-01-30', 'Perempuan', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000121', 'Pegawai 121', 'Lampung', '1991-01-01', 'Laki-laki', 'Kristen Katolik', 'Rajabasa, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000122', 'Pegawai 122', 'Lampung', '1991-01-02', 'Laki-laki', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000123', 'Pegawai 123', 'Lampung', '1991-01-03', 'Perempuan', 'Hindu', 'Kemiling, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000124', 'Pegawai 124', 'Lampung', '1991-01-04', 'Laki-laki', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000125', 'Pegawai 125', 'Lampung', '1991-01-05', 'Laki-laki', 'Buddha', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000126', 'Pegawai 126', 'Lampung', '1991-01-06', 'Perempuan', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000127', 'Pegawai 127', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000128', 'Pegawai 128', 'Lampung', '1991-01-08', 'Laki-laki', 'Kristen Protestan', 'Enggal, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000129', 'Pegawai 129', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000130', 'Pegawai 130', 'Lampung', '1991-01-10', 'Laki-laki', 'Kristen Katolik', 'Way Halim, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000131', 'Pegawai 131', 'Lampung', '1991-01-11', 'Laki-laki', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000132', 'Pegawai 132', 'Lampung', '1991-01-12', 'Perempuan', 'Hindu', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000133', 'Pegawai 133', 'Lampung', '1991-01-13', 'Laki-laki', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000134', 'Pegawai 134', 'Lampung', '1991-01-14', 'Laki-laki', 'Buddha', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000135', 'Pegawai 135', 'Lampung', '1991-01-15', 'Perempuan', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000136', 'Pegawai 136', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000137', 'Pegawai 137', 'Lampung', '1991-01-17', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000138', 'Pegawai 138', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000139', 'Pegawai 139', 'Lampung', '1991-01-19', 'Laki-laki', 'Kristen Katolik', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000140', 'Pegawai 140', 'Lampung', '1991-01-20', 'Laki-laki', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000141', 'Pegawai 141', 'Lampung', '1991-01-21', 'Perempuan', 'Hindu', 'Rajabasa, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000142', 'Pegawai 142', 'Lampung', '1991-01-22', 'Laki-laki', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000143', 'Pegawai 143', 'Lampung', '1991-01-23', 'Laki-laki', 'Buddha', 'Kemiling, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000144', 'Pegawai 144', 'Lampung', '1991-01-24', 'Perempuan', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000145', 'Pegawai 145', 'Lampung', '1991-01-25', 'Laki-laki', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000146', 'Pegawai 146', 'Lampung', '1991-01-26', 'Laki-laki', 'Kristen Protestan', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000147', 'Pegawai 147', 'Lampung', '1991-01-27', 'Perempuan', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000148', 'Pegawai 148', 'Lampung', '1991-01-28', 'Laki-laki', 'Kristen Katolik', 'Enggal, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000149', 'Pegawai 149', 'Lampung', '1991-01-29', 'Laki-laki', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000150', 'Pegawai 150', 'Lampung', '1991-01-30', 'Perempuan', 'Hindu', 'Way Halim, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000151', 'Pegawai 151', 'Lampung', '1991-01-01', 'Laki-laki', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000152', 'Pegawai 152', 'Lampung', '1991-01-02', 'Laki-laki', 'Buddha', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000153', 'Pegawai 153', 'Lampung', '1991-01-03', 'Perempuan', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000154', 'Pegawai 154', 'Lampung', '1991-01-04', 'Laki-laki', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000155', 'Pegawai 155', 'Lampung', '1991-01-05', 'Laki-laki', 'Kristen Protestan', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000156', 'Pegawai 156', 'Lampung', '1991-01-06', 'Perempuan', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000157', 'Pegawai 157', 'Lampung', '1991-01-07', 'Laki-laki', 'Kristen Katolik', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000158', 'Pegawai 158', 'Lampung', '1991-01-08', 'Laki-laki', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000159', 'Pegawai 159', 'Lampung', '1991-01-09', 'Perempuan', 'Hindu', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000160', 'Pegawai 160', 'Lampung', '1991-01-10', 'Laki-laki', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000161', 'Pegawai 161', 'Lampung', '1991-01-11', 'Laki-laki', 'Buddha', 'Rajabasa, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000162', 'Pegawai 162', 'Lampung', '1991-01-12', 'Perempuan', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000163', 'Pegawai 163', 'Lampung', '1991-01-13', 'Laki-laki', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000164', 'Pegawai 164', 'Lampung', '1991-01-14', 'Laki-laki', 'Kristen Protestan', 'Sukarame, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000165', 'Pegawai 165', 'Lampung', '1991-01-15', 'Perempuan', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000166', 'Pegawai 166', 'Lampung', '1991-01-16', 'Laki-laki', 'Kristen Katolik', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000167', 'Pegawai 167', 'Lampung', '1991-01-17', 'Laki-laki', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000168', 'Pegawai 168', 'Lampung', '1991-01-18', 'Perempuan', 'Hindu', 'Enggal, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000169', 'Pegawai 169', 'Lampung', '1991-01-19', 'Laki-laki', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000170', 'Pegawai 170', 'Lampung', '1991-01-20', 'Laki-laki', 'Buddha', 'Way Halim, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000171', 'Pegawai 171', 'Lampung', '1991-01-21', 'Perempuan', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000172', 'Pegawai 172', 'Lampung', '1991-01-22', 'Laki-laki', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000173', 'Pegawai 173', 'Lampung', '1991-01-23', 'Laki-laki', 'Kristen Protestan', 'Sukabumi, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000174', 'Pegawai 174', 'Lampung', '1991-01-24', 'Perempuan', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000175', 'Pegawai 175', 'Lampung', '1991-01-25', 'Laki-laki', 'Kristen Katolik', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000176', 'Pegawai 176', 'Lampung', '1991-01-26', 'Laki-laki', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000177', 'Pegawai 177', 'Lampung', '1991-01-27', 'Perempuan', 'Hindu', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000178', 'Pegawai 178', 'Lampung', '1991-01-28', 'Laki-laki', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000179', 'Pegawai 179', 'Lampung', '1991-01-29', 'Laki-laki', 'Buddha', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000180', 'Pegawai 180', 'Lampung', '1991-01-30', 'Perempuan', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000181', 'Pegawai 181', 'Lampung', '1991-01-01', 'Laki-laki', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000182', 'Pegawai 182', 'Lampung', '1991-01-02', 'Laki-laki', 'Kristen Protestan', 'Kedaton, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000183', 'Pegawai 183', 'Lampung', '1991-01-03', 'Perempuan', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000184', 'Pegawai 184', 'Lampung', '1991-01-04', 'Laki-laki', 'Kristen Katolik', 'Sukarame, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000185', 'Pegawai 185', 'Lampung', '1991-01-05', 'Laki-laki', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000186', 'Pegawai 186', 'Lampung', '1991-01-06', 'Perempuan', 'Hindu', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000187', 'Pegawai 187', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000188', 'Pegawai 188', 'Lampung', '1991-01-08', 'Laki-laki', 'Buddha', 'Enggal, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000189', 'Pegawai 189', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000190', 'Pegawai 190', 'Lampung', '1991-01-10', 'Laki-laki', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000191', 'Pegawai 191', 'Lampung', '1991-01-11', 'Laki-laki', 'Kristen Protestan', 'Kedamaian, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000192', 'Pegawai 192', 'Lampung', '1991-01-12', 'Perempuan', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000193', 'Pegawai 193', 'Lampung', '1991-01-13', 'Laki-laki', 'Kristen Katolik', 'Sukabumi, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000194', 'Pegawai 194', 'Lampung', '1991-01-14', 'Laki-laki', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000195', 'Pegawai 195', 'Lampung', '1991-01-15', 'Perempuan', 'Hindu', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000196', 'Pegawai 196', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000197', 'Pegawai 197', 'Lampung', '1991-01-17', 'Laki-laki', 'Buddha', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000198', 'Pegawai 198', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000199', 'Pegawai 199', 'Lampung', '1991-01-19', 'Laki-laki', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000200', 'Pegawai 200', 'Lampung', '1991-01-20', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000201', 'Pegawai 201', 'Lampung', '1991-01-21', 'Perempuan', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000202', 'Pegawai 202', 'Lampung', '1991-01-22', 'Laki-laki', 'Kristen Katolik', 'Kedaton, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000203', 'Pegawai 203', 'Lampung', '1991-01-23', 'Laki-laki', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000204', 'Pegawai 204', 'Lampung', '1991-01-24', 'Perempuan', 'Hindu', 'Sukarame, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000205', 'Pegawai 205', 'Lampung', '1991-01-25', 'Laki-laki', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000206', 'Pegawai 206', 'Lampung', '1991-01-26', 'Laki-laki', 'Buddha', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000207', 'Pegawai 207', 'Lampung', '1991-01-27', 'Perempuan', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000208', 'Pegawai 208', 'Lampung', '1991-01-28', 'Laki-laki', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000209', 'Pegawai 209', 'Lampung', '1991-01-29', 'Laki-laki', 'Kristen Protestan', 'Panjang, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000210', 'Pegawai 210', 'Lampung', '1991-01-30', 'Perempuan', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000211', 'Pegawai 211', 'Lampung', '1991-01-01', 'Laki-laki', 'Kristen Katolik', 'Kedamaian, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000212', 'Pegawai 212', 'Lampung', '1991-01-02', 'Laki-laki', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000213', 'Pegawai 213', 'Lampung', '1991-01-03', 'Perempuan', 'Hindu', 'Sukabumi, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000214', 'Pegawai 214', 'Lampung', '1991-01-04', 'Laki-laki', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000215', 'Pegawai 215', 'Lampung', '1991-01-05', 'Laki-laki', 'Buddha', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000216', 'Pegawai 216', 'Lampung', '1991-01-06', 'Perempuan', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000217', 'Pegawai 217', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000218', 'Pegawai 218', 'Lampung', '1991-01-08', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000219', 'Pegawai 219', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000220', 'Pegawai 220', 'Lampung', '1991-01-10', 'Laki-laki', 'Kristen Katolik', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000221', 'Pegawai 221', 'Lampung', '1991-01-11', 'Laki-laki', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000222', 'Pegawai 222', 'Lampung', '1991-01-12', 'Perempuan', 'Hindu', 'Kedaton, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000223', 'Pegawai 223', 'Lampung', '1991-01-13', 'Laki-laki', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000224', 'Pegawai 224', 'Lampung', '1991-01-14', 'Laki-laki', 'Buddha', 'Sukarame, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000225', 'Pegawai 225', 'Lampung', '1991-01-15', 'Perempuan', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000226', 'Pegawai 226', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000227', 'Pegawai 227', 'Lampung', '1991-01-17', 'Laki-laki', 'Kristen Protestan', 'Langkapura, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000228', 'Pegawai 228', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000229', 'Pegawai 229', 'Lampung', '1991-01-19', 'Laki-laki', 'Kristen Katolik', 'Panjang, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000230', 'Pegawai 230', 'Lampung', '1991-01-20', 'Laki-laki', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000231', 'Pegawai 231', 'Lampung', '1991-01-21', 'Perempuan', 'Hindu', 'Kedamaian, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000232', 'Pegawai 232', 'Lampung', '1991-01-22', 'Laki-laki', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000233', 'Pegawai 233', 'Lampung', '1991-01-23', 'Laki-laki', 'Buddha', 'Sukabumi, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000234', 'Pegawai 234', 'Lampung', '1991-01-24', 'Perempuan', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000235', 'Pegawai 235', 'Lampung', '1991-01-25', 'Laki-laki', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000236', 'Pegawai 236', 'Lampung', '1991-01-26', 'Laki-laki', 'Kristen Protestan', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000237', 'Pegawai 237', 'Lampung', '1991-01-27', 'Perempuan', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000238', 'Pegawai 238', 'Lampung', '1991-01-28', 'Laki-laki', 'Kristen Katolik', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000239', 'Pegawai 239', 'Lampung', '1991-01-29', 'Laki-laki', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000240', 'Pegawai 240', 'Lampung', '1991-01-30', 'Perempuan', 'Hindu', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000241', 'Pegawai 241', 'Lampung', '1991-01-01', 'Laki-laki', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000242', 'Pegawai 242', 'Lampung', '1991-01-02', 'Laki-laki', 'Buddha', 'Kedaton, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000243', 'Pegawai 243', 'Lampung', '1991-01-03', 'Perempuan', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000244', 'Pegawai 244', 'Lampung', '1991-01-04', 'Laki-laki', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000245', 'Pegawai 245', 'Lampung', '1991-01-05', 'Laki-laki', 'Kristen Protestan', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000246', 'Pegawai 246', 'Lampung', '1991-01-06', 'Perempuan', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000247', 'Pegawai 247', 'Lampung', '1991-01-07', 'Laki-laki', 'Kristen Katolik', 'Langkapura, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000248', 'Pegawai 248', 'Lampung', '1991-01-08', 'Laki-laki', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000249', 'Pegawai 249', 'Lampung', '1991-01-09', 'Perempuan', 'Hindu', 'Panjang, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000250', 'Pegawai 250', 'Lampung', '1991-01-10', 'Laki-laki', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000251', 'Pegawai 251', 'Lampung', '1991-01-11', 'Laki-laki', 'Buddha', 'Kedamaian, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000252', 'Pegawai 252', 'Lampung', '1991-01-12', 'Perempuan', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000253', 'Pegawai 253', 'Lampung', '1991-01-13', 'Laki-laki', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000254', 'Pegawai 254', 'Lampung', '1991-01-14', 'Laki-laki', 'Kristen Protestan', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000255', 'Pegawai 255', 'Lampung', '1991-01-15', 'Perempuan', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000256', 'Pegawai 256', 'Lampung', '1991-01-16', 'Laki-laki', 'Kristen Katolik', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000257', 'Pegawai 257', 'Lampung', '1991-01-17', 'Laki-laki', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000258', 'Pegawai 258', 'Lampung', '1991-01-18', 'Perempuan', 'Hindu', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000259', 'Pegawai 259', 'Lampung', '1991-01-19', 'Laki-laki', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000260', 'Pegawai 260', 'Lampung', '1991-01-20', 'Laki-laki', 'Buddha', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000261', 'Pegawai 261', 'Lampung', '1991-01-21', 'Perempuan', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000262', 'Pegawai 262', 'Lampung', '1991-01-22', 'Laki-laki', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000263', 'Pegawai 263', 'Lampung', '1991-01-23', 'Laki-laki', 'Kristen Protestan', 'Kemiling, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000264', 'Pegawai 264', 'Lampung', '1991-01-24', 'Perempuan', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000265', 'Pegawai 265', 'Lampung', '1991-01-25', 'Laki-laki', 'Kristen Katolik', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000266', 'Pegawai 266', 'Lampung', '1991-01-26', 'Laki-laki', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000267', 'Pegawai 267', 'Lampung', '1991-01-27', 'Perempuan', 'Hindu', 'Langkapura, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000268', 'Pegawai 268', 'Lampung', '1991-01-28', 'Laki-laki', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000269', 'Pegawai 269', 'Lampung', '1991-01-29', 'Laki-laki', 'Buddha', 'Panjang, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000270', 'Pegawai 270', 'Lampung', '1991-01-30', 'Perempuan', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000271', 'Pegawai 271', 'Lampung', '1991-01-01', 'Laki-laki', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000272', 'Pegawai 272', 'Lampung', '1991-01-02', 'Laki-laki', 'Kristen Protestan', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000273', 'Pegawai 273', 'Lampung', '1991-01-03', 'Perempuan', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000274', 'Pegawai 274', 'Lampung', '1991-01-04', 'Laki-laki', 'Kristen Katolik', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000275', 'Pegawai 275', 'Lampung', '1991-01-05', 'Laki-laki', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000276', 'Pegawai 276', 'Lampung', '1991-01-06', 'Perempuan', 'Hindu', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000277', 'Pegawai 277', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000278', 'Pegawai 278', 'Lampung', '1991-01-08', 'Laki-laki', 'Buddha', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000279', 'Pegawai 279', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000280', 'Pegawai 280', 'Lampung', '1991-01-10', 'Laki-laki', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000281', 'Pegawai 281', 'Lampung', '1991-01-11', 'Laki-laki', 'Kristen Protestan', 'Rajabasa, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000282', 'Pegawai 282', 'Lampung', '1991-01-12', 'Perempuan', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000283', 'Pegawai 283', 'Lampung', '1991-01-13', 'Laki-laki', 'Kristen Katolik', 'Kemiling, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000284', 'Pegawai 284', 'Lampung', '1991-01-14', 'Laki-laki', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000285', 'Pegawai 285', 'Lampung', '1991-01-15', 'Perempuan', 'Hindu', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000286', 'Pegawai 286', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000287', 'Pegawai 287', 'Lampung', '1991-01-17', 'Laki-laki', 'Buddha', 'Langkapura, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000288', 'Pegawai 288', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000289', 'Pegawai 289', 'Lampung', '1991-01-19', 'Laki-laki', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000290', 'Pegawai 290', 'Lampung', '1991-01-20', 'Laki-laki', 'Kristen Protestan', 'Way Halim, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000291', 'Pegawai 291', 'Lampung', '1991-01-21', 'Perempuan', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000292', 'Pegawai 292', 'Lampung', '1991-01-22', 'Laki-laki', 'Kristen Katolik', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000293', 'Pegawai 293', 'Lampung', '1991-01-23', 'Laki-laki', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000294', 'Pegawai 294', 'Lampung', '1991-01-24', 'Perempuan', 'Hindu', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000295', 'Pegawai 295', 'Lampung', '1991-01-25', 'Laki-laki', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000296', 'Pegawai 296', 'Lampung', '1991-01-26', 'Laki-laki', 'Buddha', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000297', 'Pegawai 297', 'Lampung', '1991-01-27', 'Perempuan', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000298', 'Pegawai 298', 'Lampung', '1991-01-28', 'Laki-laki', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000299', 'Pegawai 299', 'Lampung', '1991-01-29', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000300', 'Pegawai 300', 'Lampung', '1991-01-30', 'Perempuan', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000301', 'Pegawai 301', 'Lampung', '1991-01-01', 'Laki-laki', 'Kristen Katolik', 'Rajabasa, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000302', 'Pegawai 302', 'Lampung', '1991-01-02', 'Laki-laki', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000303', 'Pegawai 303', 'Lampung', '1991-01-03', 'Perempuan', 'Hindu', 'Kemiling, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000304', 'Pegawai 304', 'Lampung', '1991-01-04', 'Laki-laki', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000305', 'Pegawai 305', 'Lampung', '1991-01-05', 'Laki-laki', 'Buddha', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000306', 'Pegawai 306', 'Lampung', '1991-01-06', 'Perempuan', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000307', 'Pegawai 307', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000308', 'Pegawai 308', 'Lampung', '1991-01-08', 'Laki-laki', 'Kristen Protestan', 'Enggal, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000309', 'Pegawai 309', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000310', 'Pegawai 310', 'Lampung', '1991-01-10', 'Laki-laki', 'Kristen Katolik', 'Way Halim, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000311', 'Pegawai 311', 'Lampung', '1991-01-11', 'Laki-laki', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000312', 'Pegawai 312', 'Lampung', '1991-01-12', 'Perempuan', 'Hindu', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000313', 'Pegawai 313', 'Lampung', '1991-01-13', 'Laki-laki', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000314', 'Pegawai 314', 'Lampung', '1991-01-14', 'Laki-laki', 'Buddha', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000315', 'Pegawai 315', 'Lampung', '1991-01-15', 'Perempuan', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000316', 'Pegawai 316', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000317', 'Pegawai 317', 'Lampung', '1991-01-17', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000318', 'Pegawai 318', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000319', 'Pegawai 319', 'Lampung', '1991-01-19', 'Laki-laki', 'Kristen Katolik', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000320', 'Pegawai 320', 'Lampung', '1991-01-20', 'Laki-laki', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000321', 'Pegawai 321', 'Lampung', '1991-01-21', 'Perempuan', 'Hindu', 'Rajabasa, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000322', 'Pegawai 322', 'Lampung', '1991-01-22', 'Laki-laki', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000323', 'Pegawai 323', 'Lampung', '1991-01-23', 'Laki-laki', 'Buddha', 'Kemiling, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000324', 'Pegawai 324', 'Lampung', '1991-01-24', 'Perempuan', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000325', 'Pegawai 325', 'Lampung', '1991-01-25', 'Laki-laki', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000326', 'Pegawai 326', 'Lampung', '1991-01-26', 'Laki-laki', 'Kristen Protestan', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000327', 'Pegawai 327', 'Lampung', '1991-01-27', 'Perempuan', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000328', 'Pegawai 328', 'Lampung', '1991-01-28', 'Laki-laki', 'Kristen Katolik', 'Enggal, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000329', 'Pegawai 329', 'Lampung', '1991-01-29', 'Laki-laki', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000330', 'Pegawai 330', 'Lampung', '1991-01-30', 'Perempuan', 'Hindu', 'Way Halim, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000331', 'Pegawai 331', 'Lampung', '1991-01-01', 'Laki-laki', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000332', 'Pegawai 332', 'Lampung', '1991-01-02', 'Laki-laki', 'Buddha', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000333', 'Pegawai 333', 'Lampung', '1991-01-03', 'Perempuan', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000334', 'Pegawai 334', 'Lampung', '1991-01-04', 'Laki-laki', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000335', 'Pegawai 335', 'Lampung', '1991-01-05', 'Laki-laki', 'Kristen Protestan', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000336', 'Pegawai 336', 'Lampung', '1991-01-06', 'Perempuan', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000337', 'Pegawai 337', 'Lampung', '1991-01-07', 'Laki-laki', 'Kristen Katolik', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-1.png');
INSERT INTO `pegawai` (`nip`, `nama_pegawai`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `no_hp`, `foto`) VALUES
('199105152010000338', 'Pegawai 338', 'Lampung', '1991-01-08', 'Laki-laki', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000339', 'Pegawai 339', 'Lampung', '1991-01-09', 'Perempuan', 'Hindu', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000340', 'Pegawai 340', 'Lampung', '1991-01-10', 'Laki-laki', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000341', 'Pegawai 341', 'Lampung', '1991-01-11', 'Laki-laki', 'Buddha', 'Rajabasa, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000342', 'Pegawai 342', 'Lampung', '1991-01-12', 'Perempuan', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000343', 'Pegawai 343', 'Lampung', '1991-01-13', 'Laki-laki', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000344', 'Pegawai 344', 'Lampung', '1991-01-14', 'Laki-laki', 'Kristen Protestan', 'Sukarame, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000345', 'Pegawai 345', 'Lampung', '1991-01-15', 'Perempuan', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000346', 'Pegawai 346', 'Lampung', '1991-01-16', 'Laki-laki', 'Kristen Katolik', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000347', 'Pegawai 347', 'Lampung', '1991-01-17', 'Laki-laki', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000348', 'Pegawai 348', 'Lampung', '1991-01-18', 'Perempuan', 'Hindu', 'Enggal, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000349', 'Pegawai 349', 'Lampung', '1991-01-19', 'Laki-laki', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000350', 'Pegawai 350', 'Lampung', '1991-01-20', 'Laki-laki', 'Buddha', 'Way Halim, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000351', 'Pegawai 351', 'Lampung', '1991-01-21', 'Perempuan', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000352', 'Pegawai 352', 'Lampung', '1991-01-22', 'Laki-laki', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000353', 'Pegawai 353', 'Lampung', '1991-01-23', 'Laki-laki', 'Kristen Protestan', 'Sukabumi, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000354', 'Pegawai 354', 'Lampung', '1991-01-24', 'Perempuan', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000355', 'Pegawai 355', 'Lampung', '1991-01-25', 'Laki-laki', 'Kristen Katolik', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000356', 'Pegawai 356', 'Lampung', '1991-01-26', 'Laki-laki', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000357', 'Pegawai 357', 'Lampung', '1991-01-27', 'Perempuan', 'Hindu', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000358', 'Pegawai 358', 'Lampung', '1991-01-28', 'Laki-laki', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000359', 'Pegawai 359', 'Lampung', '1991-01-29', 'Laki-laki', 'Buddha', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000360', 'Pegawai 360', 'Lampung', '1991-01-30', 'Perempuan', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000361', 'Pegawai 361', 'Lampung', '1991-01-01', 'Laki-laki', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000362', 'Pegawai 362', 'Lampung', '1991-01-02', 'Laki-laki', 'Kristen Protestan', 'Kedaton, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000363', 'Pegawai 363', 'Lampung', '1991-01-03', 'Perempuan', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000364', 'Pegawai 364', 'Lampung', '1991-01-04', 'Laki-laki', 'Kristen Katolik', 'Sukarame, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000365', 'Pegawai 365', 'Lampung', '1991-01-05', 'Laki-laki', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000366', 'Pegawai 366', 'Lampung', '1991-01-06', 'Perempuan', 'Hindu', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000367', 'Pegawai 367', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000368', 'Pegawai 368', 'Lampung', '1991-01-08', 'Laki-laki', 'Buddha', 'Enggal, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000369', 'Pegawai 369', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000370', 'Pegawai 370', 'Lampung', '1991-01-10', 'Laki-laki', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000371', 'Pegawai 371', 'Lampung', '1991-01-11', 'Laki-laki', 'Kristen Protestan', 'Kedamaian, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000372', 'Pegawai 372', 'Lampung', '1991-01-12', 'Perempuan', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000373', 'Pegawai 373', 'Lampung', '1991-01-13', 'Laki-laki', 'Kristen Katolik', 'Sukabumi, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000374', 'Pegawai 374', 'Lampung', '1991-01-14', 'Laki-laki', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000375', 'Pegawai 375', 'Lampung', '1991-01-15', 'Perempuan', 'Hindu', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000376', 'Pegawai 376', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000377', 'Pegawai 377', 'Lampung', '1991-01-17', 'Laki-laki', 'Buddha', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000378', 'Pegawai 378', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000379', 'Pegawai 379', 'Lampung', '1991-01-19', 'Laki-laki', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000380', 'Pegawai 380', 'Lampung', '1991-01-20', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000381', 'Pegawai 381', 'Lampung', '1991-01-21', 'Perempuan', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000382', 'Pegawai 382', 'Lampung', '1991-01-22', 'Laki-laki', 'Kristen Katolik', 'Kedaton, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000383', 'Pegawai 383', 'Lampung', '1991-01-23', 'Laki-laki', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000384', 'Pegawai 384', 'Lampung', '1991-01-24', 'Perempuan', 'Hindu', 'Sukarame, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000385', 'Pegawai 385', 'Lampung', '1991-01-25', 'Laki-laki', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000386', 'Pegawai 386', 'Lampung', '1991-01-26', 'Laki-laki', 'Buddha', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000387', 'Pegawai 387', 'Lampung', '1991-01-27', 'Perempuan', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000388', 'Pegawai 388', 'Lampung', '1991-01-28', 'Laki-laki', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000389', 'Pegawai 389', 'Lampung', '1991-01-29', 'Laki-laki', 'Kristen Protestan', 'Panjang, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000390', 'Pegawai 390', 'Lampung', '1991-01-30', 'Perempuan', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000391', 'Pegawai 391', 'Lampung', '1991-01-01', 'Laki-laki', 'Kristen Katolik', 'Kedamaian, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000392', 'Pegawai 392', 'Lampung', '1991-01-02', 'Laki-laki', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000393', 'Pegawai 393', 'Lampung', '1991-01-03', 'Perempuan', 'Hindu', 'Sukabumi, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000394', 'Pegawai 394', 'Lampung', '1991-01-04', 'Laki-laki', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000395', 'Pegawai 395', 'Lampung', '1991-01-05', 'Laki-laki', 'Buddha', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000396', 'Pegawai 396', 'Lampung', '1991-01-06', 'Perempuan', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000397', 'Pegawai 397', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000398', 'Pegawai 398', 'Lampung', '1991-01-08', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000399', 'Pegawai 399', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000400', 'Pegawai 400', 'Lampung', '1991-01-10', 'Laki-laki', 'Kristen Katolik', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000401', 'Pegawai 401', 'Lampung', '1991-01-11', 'Laki-laki', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000402', 'Pegawai 402', 'Lampung', '1991-01-12', 'Perempuan', 'Hindu', 'Kedaton, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000403', 'Pegawai 403', 'Lampung', '1991-01-13', 'Laki-laki', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000404', 'Pegawai 404', 'Lampung', '1991-01-14', 'Laki-laki', 'Buddha', 'Sukarame, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000405', 'Pegawai 405', 'Lampung', '1991-01-15', 'Perempuan', 'Islam', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000406', 'Pegawai 406', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000407', 'Pegawai 407', 'Lampung', '1991-01-17', 'Laki-laki', 'Kristen Protestan', 'Langkapura, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000408', 'Pegawai 408', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000409', 'Pegawai 409', 'Lampung', '1991-01-19', 'Laki-laki', 'Kristen Katolik', 'Panjang, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000410', 'Pegawai 410', 'Lampung', '1991-01-20', 'Laki-laki', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000411', 'Pegawai 411', 'Lampung', '1991-01-21', 'Perempuan', 'Hindu', 'Kedamaian, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000412', 'Pegawai 412', 'Lampung', '1991-01-22', 'Laki-laki', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000413', 'Pegawai 413', 'Lampung', '1991-01-23', 'Laki-laki', 'Buddha', 'Sukabumi, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000414', 'Pegawai 414', 'Lampung', '1991-01-24', 'Perempuan', 'Islam', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000415', 'Pegawai 415', 'Lampung', '1991-01-25', 'Laki-laki', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000416', 'Pegawai 416', 'Lampung', '1991-01-26', 'Laki-laki', 'Kristen Protestan', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000417', 'Pegawai 417', 'Lampung', '1991-01-27', 'Perempuan', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000418', 'Pegawai 418', 'Lampung', '1991-01-28', 'Laki-laki', 'Kristen Katolik', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000419', 'Pegawai 419', 'Lampung', '1991-01-29', 'Laki-laki', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000420', 'Pegawai 420', 'Lampung', '1991-01-30', 'Perempuan', 'Hindu', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000421', 'Pegawai 421', 'Lampung', '1991-01-01', 'Laki-laki', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000422', 'Pegawai 422', 'Lampung', '1991-01-02', 'Laki-laki', 'Buddha', 'Kedaton, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000423', 'Pegawai 423', 'Lampung', '1991-01-03', 'Perempuan', 'Islam', 'Kemiling, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000424', 'Pegawai 424', 'Lampung', '1991-01-04', 'Laki-laki', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000425', 'Pegawai 425', 'Lampung', '1991-01-05', 'Laki-laki', 'Kristen Protestan', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000426', 'Pegawai 426', 'Lampung', '1991-01-06', 'Perempuan', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000427', 'Pegawai 427', 'Lampung', '1991-01-07', 'Laki-laki', 'Kristen Katolik', 'Langkapura, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000428', 'Pegawai 428', 'Lampung', '1991-01-08', 'Laki-laki', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000429', 'Pegawai 429', 'Lampung', '1991-01-09', 'Perempuan', 'Hindu', 'Panjang, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000430', 'Pegawai 430', 'Lampung', '1991-01-10', 'Laki-laki', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000431', 'Pegawai 431', 'Lampung', '1991-01-11', 'Laki-laki', 'Buddha', 'Kedamaian, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000432', 'Pegawai 432', 'Lampung', '1991-01-12', 'Perempuan', 'Islam', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000433', 'Pegawai 433', 'Lampung', '1991-01-13', 'Laki-laki', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000434', 'Pegawai 434', 'Lampung', '1991-01-14', 'Laki-laki', 'Kristen Protestan', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000435', 'Pegawai 435', 'Lampung', '1991-01-15', 'Perempuan', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000436', 'Pegawai 436', 'Lampung', '1991-01-16', 'Laki-laki', 'Kristen Katolik', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000437', 'Pegawai 437', 'Lampung', '1991-01-17', 'Laki-laki', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000438', 'Pegawai 438', 'Lampung', '1991-01-18', 'Perempuan', 'Hindu', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000439', 'Pegawai 439', 'Lampung', '1991-01-19', 'Laki-laki', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000440', 'Pegawai 440', 'Lampung', '1991-01-20', 'Laki-laki', 'Buddha', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000441', 'Pegawai 441', 'Lampung', '1991-01-21', 'Perempuan', 'Islam', 'Rajabasa, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000442', 'Pegawai 442', 'Lampung', '1991-01-22', 'Laki-laki', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000443', 'Pegawai 443', 'Lampung', '1991-01-23', 'Laki-laki', 'Kristen Protestan', 'Kemiling, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000444', 'Pegawai 444', 'Lampung', '1991-01-24', 'Perempuan', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000445', 'Pegawai 445', 'Lampung', '1991-01-25', 'Laki-laki', 'Kristen Katolik', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000446', 'Pegawai 446', 'Lampung', '1991-01-26', 'Laki-laki', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000447', 'Pegawai 447', 'Lampung', '1991-01-27', 'Perempuan', 'Hindu', 'Langkapura, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000448', 'Pegawai 448', 'Lampung', '1991-01-28', 'Laki-laki', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000449', 'Pegawai 449', 'Lampung', '1991-01-29', 'Laki-laki', 'Buddha', 'Panjang, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000450', 'Pegawai 450', 'Lampung', '1991-01-30', 'Perempuan', 'Islam', 'Way Halim, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000451', 'Pegawai 451', 'Lampung', '1991-01-01', 'Laki-laki', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000452', 'Pegawai 452', 'Lampung', '1991-01-02', 'Laki-laki', 'Kristen Protestan', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000453', 'Pegawai 453', 'Lampung', '1991-01-03', 'Perempuan', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000454', 'Pegawai 454', 'Lampung', '1991-01-04', 'Laki-laki', 'Kristen Katolik', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000455', 'Pegawai 455', 'Lampung', '1991-01-05', 'Laki-laki', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000456', 'Pegawai 456', 'Lampung', '1991-01-06', 'Perempuan', 'Hindu', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000457', 'Pegawai 457', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000458', 'Pegawai 458', 'Lampung', '1991-01-08', 'Laki-laki', 'Buddha', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000459', 'Pegawai 459', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000460', 'Pegawai 460', 'Lampung', '1991-01-10', 'Laki-laki', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000461', 'Pegawai 461', 'Lampung', '1991-01-11', 'Laki-laki', 'Kristen Protestan', 'Rajabasa, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000462', 'Pegawai 462', 'Lampung', '1991-01-12', 'Perempuan', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000463', 'Pegawai 463', 'Lampung', '1991-01-13', 'Laki-laki', 'Kristen Katolik', 'Kemiling, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000464', 'Pegawai 464', 'Lampung', '1991-01-14', 'Laki-laki', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000465', 'Pegawai 465', 'Lampung', '1991-01-15', 'Perempuan', 'Hindu', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000466', 'Pegawai 466', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000467', 'Pegawai 467', 'Lampung', '1991-01-17', 'Laki-laki', 'Buddha', 'Langkapura, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000468', 'Pegawai 468', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Enggal, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000469', 'Pegawai 469', 'Lampung', '1991-01-19', 'Laki-laki', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000470', 'Pegawai 470', 'Lampung', '1991-01-20', 'Laki-laki', 'Kristen Protestan', 'Way Halim, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000471', 'Pegawai 471', 'Lampung', '1991-01-21', 'Perempuan', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000472', 'Pegawai 472', 'Lampung', '1991-01-22', 'Laki-laki', 'Kristen Katolik', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000473', 'Pegawai 473', 'Lampung', '1991-01-23', 'Laki-laki', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000474', 'Pegawai 474', 'Lampung', '1991-01-24', 'Perempuan', 'Hindu', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000475', 'Pegawai 475', 'Lampung', '1991-01-25', 'Laki-laki', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000476', 'Pegawai 476', 'Lampung', '1991-01-26', 'Laki-laki', 'Buddha', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000477', 'Pegawai 477', 'Lampung', '1991-01-27', 'Perempuan', 'Islam', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000478', 'Pegawai 478', 'Lampung', '1991-01-28', 'Laki-laki', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000479', 'Pegawai 479', 'Lampung', '1991-01-29', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000480', 'Pegawai 480', 'Lampung', '1991-01-30', 'Perempuan', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000481', 'Pegawai 481', 'Lampung', '1991-01-01', 'Laki-laki', 'Kristen Katolik', 'Rajabasa, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000482', 'Pegawai 482', 'Lampung', '1991-01-02', 'Laki-laki', 'Islam', 'Kedaton, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000483', 'Pegawai 483', 'Lampung', '1991-01-03', 'Perempuan', 'Hindu', 'Kemiling, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000484', 'Pegawai 484', 'Lampung', '1991-01-04', 'Laki-laki', 'Islam', 'Sukarame, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000485', 'Pegawai 485', 'Lampung', '1991-01-05', 'Laki-laki', 'Buddha', 'Labuhan Ratu, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000486', 'Pegawai 486', 'Lampung', '1991-01-06', 'Perempuan', 'Islam', 'Bumi Waras, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000487', 'Pegawai 487', 'Lampung', '1991-01-07', 'Laki-laki', 'Islam', 'Langkapura, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000488', 'Pegawai 488', 'Lampung', '1991-01-08', 'Laki-laki', 'Kristen Protestan', 'Enggal, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000489', 'Pegawai 489', 'Lampung', '1991-01-09', 'Perempuan', 'Islam', 'Panjang, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000490', 'Pegawai 490', 'Lampung', '1991-01-10', 'Laki-laki', 'Kristen Katolik', 'Way Halim, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000491', 'Pegawai 491', 'Lampung', '1991-01-11', 'Laki-laki', 'Islam', 'Kedamaian, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000492', 'Pegawai 492', 'Lampung', '1991-01-12', 'Perempuan', 'Hindu', 'Tanjung Senang, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000493', 'Pegawai 493', 'Lampung', '1991-01-13', 'Laki-laki', 'Islam', 'Sukabumi, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000494', 'Pegawai 494', 'Lampung', '1991-01-14', 'Laki-laki', 'Buddha', 'Tanjung Karang Pusat, Bandar Lampung', '082186869898', 'img-2.png'),
('199105152010000495', 'Pegawai 495', 'Lampung', '1991-01-15', 'Perempuan', 'Islam', 'Tanjung Karang Timur, Bandar Lampung', '081377783334', 'img-3.png'),
('199105152010000496', 'Pegawai 496', 'Lampung', '1991-01-16', 'Laki-laki', 'Islam', ' Tanjung Karang Barat, Bandar Lampung', '082186869898', 'img-4.png'),
('199105152010000497', 'Pegawai 497', 'Lampung', '1991-01-17', 'Laki-laki', 'Kristen Protestan', 'Teluk Betung Utara, Bandar Lampung', '081377783334', 'img-5.png'),
('199105152010000498', 'Pegawai 498', 'Lampung', '1991-01-18', 'Perempuan', 'Islam', 'Teluk Betung Selatan, Bandar Lampung', '082186869898', 'img-6.png'),
('199105152010000499', 'Pegawai 499', 'Lampung', '1991-01-19', 'Laki-laki', 'Kristen Katolik', 'Teluk Betung Barat, Bandar Lampung', '081377783334', 'img-1.png'),
('199105152010000500', 'Pegawai 500', 'Lampung', '1991-01-20', 'Laki-laki', 'Islam', 'Teluk Betung Timur, Bandar Lampung', '082186869898', 'img-2.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);
--
-- Database: `db_perpustakaan`
--
CREATE DATABASE IF NOT EXISTS `db_perpustakaan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_perpustakaan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `nis` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`nis`, `nama`, `jk`, `ttl`, `kelas`, `image`) VALUES
('001', 'Firman Arivianto', 'L', '1998-06-14', 'Sarjana', '42fbfaa93d91b40c3dba6536eb18cd4a311.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `klasifikasi` varchar(25) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `jmlbuku` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `pengarang`, `klasifikasi`, `image`, `jmlbuku`) VALUES
('00001', 'Si Anak Badai', 'Tere Liye', '<p>Non Fiksi</p>', 'dd4b929bf4f112ef364b3a0b693cd7fa2.jpg', '10'),
('00002', 'Bad Boy', 'aliaZalea', '<p>Fiksi - Metro POP</p>', 'ce18050a396be528a6ee169fba56e718.jpg', '7'),
('00003', 'Espresso', 'Bernard Batubara', '<p>Fiksi - Romantic</p>', '2fda9087b6ccd089d7d1c9d1f85e671a.jpg', '6'),
('00004', 'Pulang', 'Tere Liye', '<p>Fiksi - Drama</p>', '42fbfaa93d91b40c3dba6536eb18cd4a.jpg', '5'),
('00005', 'Persimpangan', 'Hasan Aspahani', '<p>Fiksi - Romantic</p>', '034caed1102b9452784ad9cad105e737.jpg', '6'),
('00006', 'RASA', 'Nuril Basri', '<p>Fiksi Romantic</p>', '56836f5d2ed3a08e11ce2706360bb701.jpg', '6'),
('00007', 'Semoga Lekas Lega', 'Faisal Syahreza', '<p>Fiksi - Romantic</p>', '7e78deb533238b6ca41fb1eb937b943d.jpg', '7'),
('00008', 'Gemar Rapi', 'Khoirun Nikmah, Pendiri Gemar Rapi', '<p>Referensi</p>', '015cc79098b07d033d7eb8e8174504b0.jpg', '8'),
('00009', 'Filosofi Teras', 'Henry Manampiring', '<p>Motivasi</p>', '38c5f35007d4701775eab77f0b1ee0cf.jpg', '6'),
('00010', 'Noir', 'Renita Nozaria', '<p>Fiksi - Romantic</p>', 'bfd3e2e26e2d60ac034c1da7445a5d42.jpg', '7'),
('00011', 'Rumah Teteh', '@BriiStory', '<p>Fiksi - Horor</p>', '0b17af8c846f328fcec61e122be7313c.jpg', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `tgl_pengembalian` date DEFAULT NULL,
  `denda` varchar(2) DEFAULT NULL,
  `nominal` double DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_transaksi`, `tgl_pengembalian`, `denda`, `nominal`, `id_petugas`) VALUES
('20190802001', '2019-08-02', 'Y', 70000, NULL),
('20190802001', '2019-08-02', 'Y', 70000, NULL),
('20190814001', '2019-08-14', 'Y', 70000, NULL),
('20190814001', '2019-08-14', 'Y', 70000, NULL),
('20190815001', '2019-08-15', 'N', 0, NULL),
('20190815001', '2019-08-15', 'N', 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `user` varchar(45) DEFAULT NULL,
  `password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `user`, `password`) VALUES
(7, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp`
--

CREATE TABLE `tmp` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `kode_buku` varchar(5) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nis`, `kode_buku`, `tanggal_pinjam`, `tanggal_kembali`, `status`, `id_petugas`) VALUES
('20190802001', '001', '00002', '2019-08-02', '2019-08-09', 'Y', NULL),
('20190814001', '001', '00001', '2019-08-14', '2019-08-21', 'Y', NULL),
('20190814001', '001', '00011', '2019-08-14', '2019-08-21', 'Y', NULL),
('20190815001', '001', '00001', '2019-08-15', '2019-08-22', 'Y', NULL),
('20190815001', '001', '00002', '2019-08-15', '2019-08-22', 'Y', NULL),
('20190819001', '001', '00001', '2019-08-19', '2019-08-26', 'N', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `db_simpas`
--
CREATE DATABASE IF NOT EXISTS `db_simpas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_simpas`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_config`
--

CREATE TABLE `tb_config` (
  `id_app` varchar(1) NOT NULL,
  `nama_app` varchar(16) NOT NULL,
  `desc_app` varchar(64) NOT NULL,
  `alias_app` varchar(3) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `url_app` varchar(64) NOT NULL,
  `anchor_app` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_config`
--

INSERT INTO `tb_config` (`id_app`, `nama_app`, `desc_app`, `alias_app`, `logo`, `url_app`, `anchor_app`) VALUES
('1', 'SISPA', 'Sistem Informasi Pasar', '', '', '', 'SISPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelaspasar`
--

CREATE TABLE `tb_kelaspasar` (
  `id_kelaspasar` varchar(4) NOT NULL,
  `kelaspasar` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelaspasar`
--

INSERT INTO `tb_kelaspasar` (`id_kelaspasar`, `kelaspasar`) VALUES
('001', 'Korwil 1'),
('002', 'korwil 2'),
('003', 'Korwil 3'),
('004', 'korwil 4'),
('005', 'korwil 5'),
('006 ', 'Korwil 6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pasar`
--

CREATE TABLE `tb_pasar` (
  `id_pasar` varchar(8) NOT NULL,
  `no_reg` varchar(32) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `status` varchar(16) NOT NULL,
  `kelas` varchar(4) NOT NULL,
  `lokasi` varchar(256) NOT NULL,
  `tgl_berdiri` date NOT NULL,
  `luas` int(11) NOT NULL,
  `foto1` varchar(128) NOT NULL,
  `foto2` varchar(128) NOT NULL,
  `foto3` varchar(128) NOT NULL,
  `date_crt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pasar`
--

INSERT INTO `tb_pasar` (`id_pasar`, `no_reg`, `nama`, `status`, `kelas`, `lokasi`, `tgl_berdiri`, `luas`, `foto1`, `foto2`, `foto3`, `date_crt`) VALUES
('1', '2', 'a', 'a', '', '', '0000-00-00', 10, '', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pedagang`
--

CREATE TABLE `tb_pedagang` (
  `id_ped` varchar(8) NOT NULL,
  `id_pasar` varchar(8) NOT NULL,
  `kioslos` varchar(16) NOT NULL,
  `luas_kl` int(11) NOT NULL,
  `reg_ped` varchar(32) NOT NULL,
  `tgl_reg` date NOT NULL,
  `status` varchar(16) NOT NULL,
  `dagangan` varchar(32) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `tempat_lhr` varchar(64) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pedagang`
--

INSERT INTO `tb_pedagang` (`id_ped`, `id_pasar`, `kioslos`, `luas_kl`, `reg_ped`, `tgl_reg`, `status`, `dagangan`, `nama`, `tempat_lhr`, `tgl_lhr`, `alamat`, `telp`) VALUES
('1', '', 'as', 0, '', '0000-00-00', '', '', 'a', '', '0000-00-00', 'a', 'a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(10) NOT NULL,
  `nama_user` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `password`, `hak_akses`) VALUES
('4', 'firman', 'firman', 'Admin'),
('admin', 'Riki Agstiya', '12345', 'Admin'),
('admin2', 'acong', '1234', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_config`
--
ALTER TABLE `tb_config`
  ADD PRIMARY KEY (`id_app`);

--
-- Indeks untuk tabel `tb_kelaspasar`
--
ALTER TABLE `tb_kelaspasar`
  ADD PRIMARY KEY (`id_kelaspasar`);

--
-- Indeks untuk tabel `tb_pasar`
--
ALTER TABLE `tb_pasar`
  ADD PRIMARY KEY (`id_pasar`);

--
-- Indeks untuk tabel `tb_pedagang`
--
ALTER TABLE `tb_pedagang`
  ADD PRIMARY KEY (`id_ped`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);
--
-- Database: `kasir`
--
CREATE DATABASE IF NOT EXISTS `kasir` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kasir`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `namamenu` varchar(100) DEFAULT NULL,
  `harga` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`idmenu`, `namamenu`, `harga`) VALUES
(39, 'Es Teh', 2000),
(40, 'Es Susu', 3000),
(41, 'Nasi Goreng', 10000),
(42, 'Mie Ayam', 12000),
(43, 'Indomie', 5000),
(44, 'Es Jeruk', 2500),
(45, 'Kopi', 3000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `namapelanggan` varchar(80) DEFAULT NULL,
  `jeniskelamin` tinyint(1) DEFAULT NULL,
  `nohp` varchar(13) DEFAULT NULL,
  `alamat` varchar(95) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `namapelanggan`, `jeniskelamin`, `nohp`, `alamat`) VALUES
(22, 'Firman Arivianto', 1, '81225737057', 'Ds. Penambuhan Rt, 03 Rw, 01'),
(23, 'Oka Mahendra', 1, '0980283013', 'Ds Panjunan'),
(24, 'Alqof Nurul Aji', 1, '8712783871387', 'JAUH DIMATA DEKAT DIHATI'),
(25, 'Rizky Ardianto', 1, '91281283', 'sangat jauh\\r\\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `idpesanan` int(11) NOT NULL,
  `kodepesanan` varchar(15) DEFAULT NULL,
  `menu_idmenu` int(11) NOT NULL,
  `pelanggan_idpelanggan` int(11) NOT NULL,
  `user_iduser` int(11) NOT NULL,
  `jumlah` tinyint(1) NOT NULL,
  `dibuat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`idpesanan`, `kodepesanan`, `menu_idmenu`, `pelanggan_idpelanggan`, `user_iduser`, `jumlah`, `dibuat`) VALUES
(9, 'AACDAFEDFCF455', 41, 23, 2, 2, '2019-07-11');

--
-- Trigger `pesanan`
--
DELIMITER $$
CREATE TRIGGER `before_delete_pesanan` BEFORE DELETE ON `pesanan` FOR EACH ROW UPDATE transaksi SET
transaksi.total = transaksi.total - (SELECT menu.harga * old.jumlah FROM menu WHERE menu.idmenu = old.menu_idmenu)
WHERE transaksi.idtransaksi = old.kodepesanan
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_transaksi` AFTER INSERT ON `pesanan` FOR EACH ROW INSERT INTO transaksi SET
transaksi.idtransaksi = new.kodepesanan,
transaksi.total = (SELECT menu.harga * new.jumlah FROM menu WHERE menu.idmenu = new.menu_idmenu)

ON duplicate KEY UPDATE transaksi.total = transaksi.total + (SELECT menu.harga * new.jumlah FROM menu WHERE menu.idmenu = new.menu_idmenu)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `idtransaksi` varchar(15) NOT NULL,
  `total` int(1) DEFAULT NULL,
  `bayar` int(4) DEFAULT 0,
  `kembalian` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`idtransaksi`, `total`, `bayar`, `kembalian`, `status`) VALUES
('AABCBEGBGGFD4G', 0, 5000, 3000, 1),
('AACDAFEDFCF455', 20000, 0, 0, 0),
('ABADEDFDG3C51F', 30000, 32000, 2000, 1),
('ABBCBBFGBCE31F', 23000, 23000, 0, 1),
('ABCCCFB12DGAF3', 12000, 13000, 1000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `namauser` varchar(80) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `akses` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`iduser`, `namauser`, `password`, `akses`) VALUES
(2, 'anggi', 'anggi', 1);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_pesanan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_pesanan` (
`idpesanan` int(11)
,`kodepesanan` varchar(15)
,`namapelanggan` varchar(80)
,`namamenu` varchar(100)
,`jumlah` tinyint(1)
,`total` bigint(14)
,`dibuat` date
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_transaksi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_transaksi` (
`idtransaksi` varchar(15)
,`total` int(1)
,`bayar` int(4)
,`kembalian` int(3)
,`status` tinyint(1)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_pesanan`
--
DROP TABLE IF EXISTS `v_pesanan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pesanan`  AS  select `pesanan`.`idpesanan` AS `idpesanan`,`pesanan`.`kodepesanan` AS `kodepesanan`,`pelanggan`.`namapelanggan` AS `namapelanggan`,`menu`.`namamenu` AS `namamenu`,`pesanan`.`jumlah` AS `jumlah`,(select `menu`.`harga` * `pesanan`.`jumlah` from `menu` where `menu`.`idmenu` = `pesanan`.`menu_idmenu`) AS `total`,`pesanan`.`dibuat` AS `dibuat` from ((`pesanan` join `pelanggan` on(`pelanggan`.`idpelanggan` = `pesanan`.`pelanggan_idpelanggan`)) join `menu` on(`menu`.`idmenu` = `pesanan`.`menu_idmenu`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_transaksi`
--
DROP TABLE IF EXISTS `v_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_transaksi`  AS  select `transaksi`.`idtransaksi` AS `idtransaksi`,`transaksi`.`total` AS `total`,`transaksi`.`bayar` AS `bayar`,`transaksi`.`kembalian` AS `kembalian`,`transaksi`.`status` AS `status` from `transaksi` where `transaksi`.`status` = 0 ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`idpesanan`),
  ADD KEY `fk_pesanan_menu1_idx` (`menu_idmenu`),
  ADD KEY `fk_pesanan_pelanggan1_idx` (`pelanggan_idpelanggan`),
  ADD KEY `user_iduser` (`user_iduser`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `idpesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_menu1` FOREIGN KEY (`menu_idmenu`) REFERENCES `menu` (`idmenu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pesanan_pelanggan1` FOREIGN KEY (`pelanggan_idpelanggan`) REFERENCES `pelanggan` (`idpelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `m_arsip`
--
CREATE DATABASE IF NOT EXISTS `m_arsip` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `m_arsip`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `tambahan` int(255) NOT NULL,
  `unit` varchar(1000) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `media` varchar(100) DEFAULT NULL,
  `kelengkapan` int(255) DEFAULT NULL,
  `tingkat` enum('asli','fotocopy','salinan','tembusan','pertinggal') DEFAULT NULL,
  `ringkasan` varchar(1000) DEFAULT NULL,
  `file` varchar(1000) DEFAULT NULL,
  `masalah` varchar(1000) DEFAULT NULL,
  `nilai` varchar(1000) DEFAULT NULL,
  `aktif` varchar(1000) DEFAULT NULL,
  `dokumen` varchar(1000) DEFAULT NULL,
  `musnah` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail`
--

INSERT INTO `detail` (`id`, `kode`, `nama`, `tambahan`, `unit`, `tgl`, `media`, `kelengkapan`, `tingkat`, `ringkasan`, `file`, `masalah`, `nilai`, `aktif`, `dokumen`, `musnah`) VALUES
(5, '001.', 'Lambang', 16, '-', '2019-09-22', '-', 0, 'asli', 'Document Ada Di', '', '', '', 'Aktif', '', '2030-09-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `kode_klasifikasi` int(10) NOT NULL,
  `hasil` text NOT NULL,
  `nmr_ditinitif` int(10) NOT NULL,
  `isi_ringkasan` text NOT NULL,
  `korektor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id`, `kode_klasifikasi`, `hasil`, `nmr_ditinitif`, `isi_ringkasan`, `korektor`) VALUES
(1, 0, '', 0, '', 'Firman Arivianto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tambahan`
--

CREATE TABLE `tambahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `umum` int(255) NOT NULL,
  `klasifikasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tambahan`
--

INSERT INTO `tambahan` (`id`, `kode`, `umum`, `klasifikasi`) VALUES
(16, '000', 12, 'Umum'),
(18, '100', 13, 'Pemerintahan'),
(19, '110', 13, 'Pemerintahan Pusat'),
(20, '010', 12, 'Urusan Dalam'),
(21, '020', 12, 'Barang & Jasa'),
(22, '030', 12, 'Kekayaan Daerah'),
(23, '040', 12, 'Perpustakaan/ Dokumen/ Kearsipan/ Sandi'),
(24, '050', 12, 'Perencanaan'),
(25, '060', 12, 'Organisasi dan Ketatalaksanaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `umum`
--

CREATE TABLE `umum` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `spesial_id` int(10) NOT NULL,
  `klasifikasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `umum`
--

INSERT INTO `umum` (`id`, `kode`, `spesial_id`, `klasifikasi`) VALUES
(12, '000', 1, 'Umum'),
(13, '100', 1, 'Pemerintahan'),
(14, '200', 1, 'Politik'),
(15, '300', 1, 'Keamanan & Ketertiban Umum'),
(16, '400', 1, 'Kesejahteraan Rakyat'),
(17, '500', 1, 'Perekonomian'),
(18, '600', 1, 'Pekerjaan Umum & Ketenagakerjaan'),
(19, '700', 1, 'Pengawasan'),
(20, '800', 1, 'Kepegawaian'),
(21, '900', 1, 'Keuangan'),
(22, '', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(8, 'firman', '74bfebec67d1a87b161e5cbcf6f72a4a', '1'),
(9, 'pegawai', '047aeeb234644b9e2d4138ed3bc7976a', '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tambahan`
--
ALTER TABLE `tambahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `umum`
--
ALTER TABLE `umum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tambahan`
--
ALTER TABLE `tambahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `umum`
--
ALTER TABLE `umum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `onperpus`
--
CREATE DATABASE IF NOT EXISTS `onperpus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onperpus`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `nim` int(8) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('Laki-Laki','Perempuan') NOT NULL,
  `prodi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`nim`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `prodi`) VALUES
(16670049, 'Farizz Anni', 'Purwodadi', '1998-06-02', '', 'Informatika'),
(16670050, 'Firman Arivianto', 'Pati', '1998-06-14', '', 'Informatika'),
(16810062, 'Dewi Pancarsari', 'Semarang', '1997-08-03', '', 'Management');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id` int(9) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('rak1','rak2','rak3') NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `jumlah_buku`, `lokasi`, `tgl_input`) VALUES
(4, 'Marmut Merah Jambu', 'Raditya Dika', 'Bukune', '2010', '602-8066-64-8', 0, 'rak1', '2018-06-18'),
(5, 'Manusia Setengah Salmon', 'Raditya Dika', 'Gagas Media', '2011', '979-780-531-X', 40, 'rak1', '2018-06-11'),
(6, 'Cinta Brontosaurus', 'Raditya Dika', 'Gagas Media', '2006', '9789797800598', 49, 'rak1', '2018-06-11'),
(7, 'Babi Ngesot', 'Raditya Dika', 'Bukune', '2008', '9786028066105', 4, 'rak1', '2018-06-11'),
(8, 'Radikus Makankakus', 'Raditya Dika', 'Gagas Media', '2007', '9789797801663', 0, 'rak1', '2018-06-12'),
(9, 'Kambing jantan', 'Raditya Dika', 'Gagas Media', '2010', '9789797802851', 20, 'rak3', '2018-06-11'),
(11, 'Koala Kumal', 'Raditya Dika', 'Gagas Media', '2017', '9789797808990', 7, 'rak3', '2018-06-08'),
(13, 'Ubur - Ubur Lembur', 'Raditya Dika', 'Gagas Media', '2018', '9789797809157', 32, 'rak1', '2018-06-06'),
(14, 'The Last Aku Jujur', 'Ricky Susanto', 'Asoka (CDS)', '2014', '9791369216', 7, 'rak2', '2018-06-13'),
(15, 'Aku Jujur The Stories Part 2', 'Ricky Susanto', 'Wahyu Media', '2013', '9797956962', 7, 'rak2', '2018-06-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(9) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `nim` varchar(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_pinjam` varchar(30) NOT NULL,
  `tgl_kembali` varchar(30) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `judul`, `nim`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`) VALUES
(1, 'Marmut Merah Jambu', '16670050', 'Firman Arivianto', '2018-06-12', '2018-06-12', 'Kembali'),
(2, 'Manusia Setengah Salmon', '16670050', 'Firman Arivianto', '2018-06-12', '2018-06-9', 'kembali'),
(3, 'Cinta Brontosaurus', '16670050', 'Firman Arivianto', '2018-06-12', '2018-06-9', 'Kembali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `level` varchar(30) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `level`, `foto`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'admin.png'),
(2, 'user', 'user', 'user', 'user', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `nim` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16810063;

--
-- AUTO_INCREMENT untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data untuk tabel `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'arsip', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"tbl_disposisi\",\"tbl_instansi\",\"tbl_klasifikasi\",\"tbl_sett\",\"tbl_surat_keluar\",\"tbl_surat_masuk\",\"tbl_user\"],\"table_structure[]\":[\"tbl_disposisi\",\"tbl_instansi\",\"tbl_klasifikasi\",\"tbl_sett\",\"tbl_surat_keluar\",\"tbl_surat_masuk\",\"tbl_user\"],\"table_data[]\":[\"tbl_disposisi\",\"tbl_instansi\",\"tbl_klasifikasi\",\"tbl_sett\",\"tbl_surat_keluar\",\"tbl_surat_masuk\",\"tbl_user\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'm_arsip', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"arsip\",\"db_perpustakaan\",\"m_arsip\",\"onperpus\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"m_arsip\",\"table\":\"detail\"},{\"db\":\"m_arsip\",\"table\":\"tambahan\"},{\"db\":\"m_arsip\",\"table\":\"umum\"},{\"db\":\"m_arsip\",\"table\":\"laporan\"},{\"db\":\"db_simpas\",\"table\":\"tb_pedagang\"},{\"db\":\"db_simpas\",\"table\":\"tb_pasar\"},{\"db\":\"db_simpas\",\"table\":\"tb_kelaspasar\"},{\"db\":\"db_simpas\",\"table\":\"tb_user\"},{\"db\":\"db_simpas\",\"table\":\"tb_config\"},{\"db\":\"sc_kas\",\"table\":\"tbl_user\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'arsip', 'pemerintahan', '{\"sorted_col\":\"`pemerintahan`.`id` ASC\"}', '2019-09-05 19:05:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-08 02:37:15', '{\"Console\\/Mode\":\"collapse\",\"Server\\/hide_db\":\"\",\"Server\\/only_db\":\"\",\"lang\":\"id\",\"SendErrorReports\":\"always\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sc_kas`
--
CREATE DATABASE IF NOT EXISTS `sc_kas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sc_kas`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_masuk`
--

CREATE TABLE `kas_masuk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kas_masuk`
--

INSERT INTO `kas_masuk` (`id`, `nama`, `jumlah`, `tanggal`) VALUES
(6, 'Meja', 2, '2019-10-02 08:02:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_bayar`
--

CREATE TABLE `kategori_bayar` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_bayar`
--

INSERT INTO `kategori_bayar` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Beli Jasa'),
(2, 'Beli Bahan'),
(4, 'Penyaluran Infak & shodaqoh'),
(5, 'Operasional Jumat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `namamenu` varchar(100) DEFAULT NULL,
  `harga` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`idmenu`, `namamenu`, `harga`) VALUES
(39, 'Es Teh', 2000),
(40, 'Es Susu', 3000),
(41, 'Nasi Goreng', 10000),
(42, 'Mie Ayam', 12000),
(43, 'Indomie', 5000),
(44, 'Es Jeruk', 2500),
(45, 'Kopi', 3000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `namapelanggan` varchar(80) DEFAULT NULL,
  `jeniskelamin` tinyint(1) DEFAULT NULL,
  `nohp` varchar(13) DEFAULT NULL,
  `alamat` varchar(95) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `namapelanggan`, `jeniskelamin`, `nohp`, `alamat`) VALUES
(22, 'Firman Arivianto', 1, '81225737057', 'Ds. Penambuhan Rt, 03 Rw, 01'),
(23, 'Oka Mahendra', 1, '0980283013', 'Ds Panjunan'),
(24, 'Alqof Nurul Aji', 1, '8712783871387', 'JAUH DIMATA DEKAT DIHATI'),
(25, 'Rizky Ardianto', 1, '91281283', 'sangat jauh\\r\\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_bayar` varchar(200) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `id_kategori`, `nama_bayar`, `jumlah`, `tanggal`) VALUES
(1, 1, 'Bayar Uang kebersihan', 100000, '2018-02-12 13:18:56'),
(6, 1, 'Bayar Tagihan Listrik', 255000, '2018-02-12 13:21:26'),
(7, 1, 'Bayar Pulsa Telepon', 150000, '2018-02-12 13:23:54'),
(8, 5, 'Penyaluran operasional jumat', 300000, '2018-02-15 01:31:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `idpesanan` int(11) NOT NULL,
  `kodepesanan` varchar(15) DEFAULT NULL,
  `menu_idmenu` int(11) NOT NULL,
  `pelanggan_idpelanggan` int(11) NOT NULL,
  `user_iduser` int(11) NOT NULL,
  `jumlah` tinyint(1) NOT NULL,
  `dibuat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`idpesanan`, `kodepesanan`, `menu_idmenu`, `pelanggan_idpelanggan`, `user_iduser`, `jumlah`, `dibuat`) VALUES
(9, 'AACDAFEDFCF455', 41, 23, 2, 2, '2019-07-11');

--
-- Trigger `pesanan`
--
DELIMITER $$
CREATE TRIGGER `before_delete_pesanan` BEFORE DELETE ON `pesanan` FOR EACH ROW UPDATE transaksi SET
transaksi.total = transaksi.total - (SELECT menu.harga * old.jumlah FROM menu WHERE menu.idmenu = old.menu_idmenu)
WHERE transaksi.idtransaksi = old.kodepesanan
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_transaksi` AFTER INSERT ON `pesanan` FOR EACH ROW INSERT INTO transaksi SET
transaksi.idtransaksi = new.kodepesanan,
transaksi.total = (SELECT menu.harga * new.jumlah FROM menu WHERE menu.idmenu = new.menu_idmenu)

ON duplicate KEY UPDATE transaksi.total = transaksi.total + (SELECT menu.harga * new.jumlah FROM menu WHERE menu.idmenu = new.menu_idmenu)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`) VALUES
(1, 'Mas Admin', 'admin', '$2y$10$e54aCJAR2CL9TvD1pdqa8eZcP4cnXblyM6WTj15NdN54fo7kHtUc2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `idtransaksi` varchar(15) NOT NULL,
  `total` int(1) DEFAULT NULL,
  `bayar` int(4) DEFAULT 0,
  `kembalian` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`idtransaksi`, `total`, `bayar`, `kembalian`, `status`) VALUES
('AABCBEGBGGFD4G', 0, 5000, 3000, 1),
('AACDAFEDFCF455', 20000, 0, 0, 0),
('ABADEDFDG3C51F', 30000, 32000, 2000, 1),
('ABBCBBFGBCE31F', 23000, 23000, 0, 1),
('ABCCCFB12DGAF3', 12000, 13000, 1000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `namauser` varchar(80) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `akses` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`iduser`, `namauser`, `password`, `akses`) VALUES
(2, 'heru', 'heru', 1);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_pesanan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_pesanan` (
`idpesanan` int(11)
,`kodepesanan` varchar(15)
,`namapelanggan` varchar(80)
,`namamenu` varchar(100)
,`jumlah` tinyint(1)
,`total` bigint(14)
,`dibuat` date
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_transaksi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_transaksi` (
`idtransaksi` varchar(15)
,`total` int(1)
,`bayar` int(4)
,`kembalian` int(3)
,`status` tinyint(1)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_pesanan`
--
DROP TABLE IF EXISTS `v_pesanan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pesanan`  AS  select `pesanan`.`idpesanan` AS `idpesanan`,`pesanan`.`kodepesanan` AS `kodepesanan`,`pelanggan`.`namapelanggan` AS `namapelanggan`,`menu`.`namamenu` AS `namamenu`,`pesanan`.`jumlah` AS `jumlah`,(select `menu`.`harga` * `pesanan`.`jumlah` from `menu` where `menu`.`idmenu` = `pesanan`.`menu_idmenu`) AS `total`,`pesanan`.`dibuat` AS `dibuat` from ((`pesanan` join `pelanggan` on(`pelanggan`.`idpelanggan` = `pesanan`.`pelanggan_idpelanggan`)) join `menu` on(`menu`.`idmenu` = `pesanan`.`menu_idmenu`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_transaksi`
--
DROP TABLE IF EXISTS `v_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_transaksi`  AS  select `transaksi`.`idtransaksi` AS `idtransaksi`,`transaksi`.`total` AS `total`,`transaksi`.`bayar` AS `bayar`,`transaksi`.`kembalian` AS `kembalian`,`transaksi`.`status` AS `status` from `transaksi` where `transaksi`.`status` = 0 ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kas_masuk`
--
ALTER TABLE `kas_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`idpesanan`),
  ADD KEY `fk_pesanan_menu1_idx` (`menu_idmenu`),
  ADD KEY `fk_pesanan_pelanggan1_idx` (`pelanggan_idpelanggan`),
  ADD KEY `user_iduser` (`user_iduser`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kas_masuk`
--
ALTER TABLE `kas_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `idpesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_menu1` FOREIGN KEY (`menu_idmenu`) REFERENCES `menu` (`idmenu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pesanan_pelanggan1` FOREIGN KEY (`pelanggan_idpelanggan`) REFERENCES `pelanggan` (`idpelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
