-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 05 Apr 2021 pada 20.24
-- Versi server: 10.3.28-MariaDB-cll-lve
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ozuavhvy_ppdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `id_daftar` int(11) NOT NULL,
  `no_daftar` varchar(20) DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `no_kk` varchar(30) DEFAULT NULL,
  `nisn` varchar(30) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `jenkel` varchar(1) DEFAULT NULL,
  `tempat_lahir` varchar(128) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `asal_sekolah` varchar(128) DEFAULT NULL,
  `npsn_asal` varchar(20) DEFAULT NULL,
  `kelas` varchar(11) DEFAULT NULL,
  `jurusan` varchar(11) DEFAULT '',
  `jenjang` varchar(11) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `desa` varchar(128) DEFAULT NULL,
  `kecamatan` varchar(128) DEFAULT NULL,
  `kota` varchar(128) DEFAULT NULL,
  `provinsi` varchar(128) DEFAULT NULL,
  `kode_pos` varchar(6) DEFAULT NULL,
  `transportasi` varchar(128) DEFAULT NULL,
  `no_hp` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `anak_ke` int(2) DEFAULT NULL,
  `saudara` int(11) DEFAULT NULL,
  `paud` text DEFAULT NULL,
  `tk` text DEFAULT NULL,
  `status_keluarga` varchar(50) DEFAULT NULL,
  `tinggal` varchar(128) DEFAULT NULL,
  `jarak` varchar(128) DEFAULT NULL,
  `waktu` varchar(128) DEFAULT NULL,
  `nik_ayah` varchar(16) DEFAULT NULL,
  `nama_ayah` varchar(128) DEFAULT NULL,
  `tempat_ayah` varchar(128) DEFAULT NULL,
  `tahun_ayah` year(4) DEFAULT NULL,
  `status_ayah` varchar(128) DEFAULT NULL,
  `pendidikan_ayah` varchar(128) DEFAULT NULL,
  `pekerjaan_ayah` varchar(128) DEFAULT NULL,
  `penghasilan_ayah` varchar(128) DEFAULT NULL,
  `no_hp_ayah` varchar(16) DEFAULT NULL,
  `nik_ibu` varchar(16) DEFAULT NULL,
  `nama_ibu` varchar(128) DEFAULT NULL,
  `tempat_ibu` varchar(128) DEFAULT NULL,
  `tahun_ibu` time(4) DEFAULT NULL,
  `status_ibu` varchar(128) DEFAULT NULL,
  `pendidikan_ibu` varchar(128) DEFAULT NULL,
  `pekerjaan_ibu` varchar(128) DEFAULT NULL,
  `penghasilan_ibu` varchar(128) DEFAULT NULL,
  `no_hp_ibu` varchar(16) DEFAULT NULL,
  `nik_wali` varchar(16) DEFAULT NULL,
  `nama_wali` varchar(128) DEFAULT NULL,
  `tempat_wali` varchar(128) DEFAULT NULL,
  `tgl_lahir_wali` date DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(50) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `no_hp_wali` varchar(16) DEFAULT NULL,
  `no_ijazah` varchar(128) DEFAULT NULL,
  `no_shun` varchar(128) DEFAULT NULL,
  `no_ujian` varchar(128) DEFAULT NULL,
  `no_kip` varchar(30) DEFAULT NULL,
  `file_kip` varchar(256) DEFAULT NULL,
  `file_kk` varchar(256) DEFAULT NULL,
  `file_ijazah` varchar(256) DEFAULT NULL,
  `file_akte` varchar(256) DEFAULT NULL,
  `file_shun` varchar(256) DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `alasan_keluar` varchar(100) DEFAULT NULL,
  `surat_keluar` varchar(255) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `aktif` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 0,
  `petugas_daftar` varchar(10) DEFAULT NULL,
  `petugas_konfirmasi` varchar(10) DEFAULT NULL,
  `tgl_daftar` date DEFAULT NULL,
  `tgl_konfirmasi` date DEFAULT NULL,
  `baju` varchar(10) DEFAULT NULL,
  `bayar` varchar(100) DEFAULT NULL,
  `online` int(1) DEFAULT 0,
  `password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar`
--

INSERT INTO `daftar` (`id_daftar`, `no_daftar`, `jenis`, `nis`, `nik`, `no_kk`, `nisn`, `nama`, `foto`, `jenkel`, `tempat_lahir`, `tgl_lahir`, `asal_sekolah`, `npsn_asal`, `kelas`, `jurusan`, `jenjang`, `agama`, `alamat`, `rt`, `rw`, `desa`, `kecamatan`, `kota`, `provinsi`, `kode_pos`, `transportasi`, `no_hp`, `email`, `anak_ke`, `saudara`, `paud`, `tk`, `status_keluarga`, `tinggal`, `jarak`, `waktu`, `nik_ayah`, `nama_ayah`, `tempat_ayah`, `tahun_ayah`, `status_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `no_hp_ayah`, `nik_ibu`, `nama_ibu`, `tempat_ibu`, `tahun_ibu`, `status_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `no_hp_ibu`, `nik_wali`, `nama_wali`, `tempat_wali`, `tgl_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `no_hp_wali`, `no_ijazah`, `no_shun`, `no_ujian`, `no_kip`, `file_kip`, `file_kk`, `file_ijazah`, `file_akte`, `file_shun`, `tgl_keluar`, `alasan_keluar`, `surat_keluar`, `level`, `aktif`, `status`, `petugas_daftar`, `petugas_konfirmasi`, `tgl_daftar`, `tgl_konfirmasi`, `baju`, `bayar`, `online`, `password`) VALUES
(20, 'PPDB2021001', 1, NULL, '', '', '00', 'Shakylla Putri Rahmadhany', 'default.png', 'P', 'Tanjung Selor', '2006-11-24', 'SMPN 1 TANJUNG SELOR', NULL, NULL, 'IPS', NULL, 'Islam', 'JLN SENGKAWIT GG MANDALA', '050', '019', 'TANJUNG SELOR HILIR', 'TANJUNG SELOR                                     ', 'BULUNGAN', 'KALIMANTAN UTARA', '77212', 'Jalan Kaki', '08221146660', NULL, 0, 0, '30402559', NULL, '', 'Bersama Orang Tua', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1234'),
(21, 'PPDB2021002', 1, NULL, '', '', '0054440853', 'Adinda Afrian', 'default.png', 'P', 'TARAKAN', '2005-08-22', 'MTS NURUL MUJAHIDAH NW', NULL, NULL, 'IPS', NULL, 'Islam', 'JALAN PERUM PEMDA', '', '', 'BUMI RAHAYU', 'TANJUNG SELOR                                     ', 'BULUNGAN', 'KALIMANTAN UTARA', '77212', 'Sepeda Motor', '081348578986', NULL, 2, 2, '69977327', NULL, '', 'Bersama Orang Tua', '', '', '', 'AFRIANSYAH', 'MALINAU', 1975, NULL, '', 'Karyawan Swasta', '', '081347995885', '', 'SUSANTY', 'TARAKAN', '00:00:00.0000', NULL, '', 'Karyawan Swasta', '', '081348578986', '', '', '', '2021-03-25', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '123456'),
(23, 'PPDB2021003', 1, NULL, '', '', '0058476232', 'Haerun Nisa', 'default.png', 'P', 'RUHUI RAHAYU ', '2004-12-27', 'MTS NURUL MUJAHIDAH NW', '001', NULL, 'IPS', NULL, 'Islam', 'JLN.R.A KARTINI ', '4', '2', 'RUHUI RAHAYU ', 'TANJUNG PALAS UTARA ', 'BULUNGAN ', 'KALIMANTAN UTARA', '77212', '', '085231608150', NULL, 5, 5, '69977327', NULL, '', 'Bersama Orang Tua', '', '', '', 'ROPIKI', '', 2021, NULL, '', 'Petani', '', '', '', 'NURUL HASANAH ', '', '00:00:00.0000', NULL, '', 'Petani', '', '', '', '', '', '2021-03-25', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '123456'),
(24, 'PPDB2021004', 1, NULL, '', '', '3061295000', 'Nur Natasya', 'default.png', 'P', 'TANJUNG SELOR', '2006-12-29', 'MTS NURUL MUJAHIDAH NW', '001', NULL, 'IPS', NULL, 'Islam', 'TANJUNG SELOR HULU', '', '', 'TANJUNG SELOR HULU', '', 'BULUNGAN', 'KALIMANTAN UTARA', '77211', '', '', NULL, 2, 4, '69977327', NULL, '', 'Bersama Orang Tua', '', '', '', 'ILIYAS', '', 2021, NULL, 'SD Sederajat', '', '', '85391944136', '', 'KAMSINA', '', '00:00:00.0000', NULL, 'SD Sederajat', '', '', '81254642996', '', 'ILIYAS', '', '2021-03-25', 'SD Sederajat', '', '', '085391944136', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '123456'),
(25, 'PPDB2021005', 1, NULL, '', '', '3060141611', 'Muhammad Arif Murabbil Anam', 'default.png', 'L', 'BERAU', '2006-01-08', 'MTS NURUL MUJAHIDAH NW', '001', NULL, 'IPS', NULL, 'Islam', 'SAMBALIUNG', '4', '', 'PESAYAN', 'SAMBALIUNG', 'BERAU', 'KALIMANTAN TIMUR', '77371', 'Jalan Kaki', '083153713745', NULL, 5, 5, '69977327', NULL, '', 'Bersama Orang Tua', '5', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '123456'),
(26, 'PPDB2021006', 1, NULL, '6404090910030001', '640409190710001', '0030956969', 'Indra Ariandi', 'default.png', 'L', 'SEKATAK BENGARA', '2003-10-09', 'MTS NURUL MUJAHIDAH NW', NULL, NULL, 'IPS', NULL, 'Islam', 'JL.ADU LIMA', '001', '001', '', '', 'BULUNGAN', 'KALIMANTAN UTARA', '77212', '', '', NULL, 2, 2, '69977327', NULL, '', 'Bersama Orang Tua', '', '', '6404091608630001', 'NONO', '', 2021, NULL, 'SD Sederajat', 'Karyawan Swasta', 'Kurang dari Rp. 500.000', '', '6404095110860001', 'DARMAWATI', '', '00:00:00.0000', NULL, '', '', '', '', '', '', '', '2021-03-11', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '123456'),
(27, 'PPDB2021007', 1, NULL, '6404064106050001', '6404060610070026', '0059265130', 'Rianti', 'default.png', 'P', 'Bulungan', '2005-06-01', 'SMP NEGERI 5 TANJUNG PALAS TENGAH', NULL, NULL, 'IPS', NULL, 'Islam', 'TIAS TANJUNG BUKA', '06', '', 'TANJUNG BUKA', 'TANJUNG PALAS TENGAH', 'BULUNGAN', 'KALIMANTAN UTARA', '77253', 'Jalan Kaki', '082331984230', NULL, 1, 2, '69812062', NULL, '', 'Bersama Orang Tua', '15', '5', '6404062709720001', 'RUSLAN', 'SELONG', 1972, NULL, 'SD Sederajat', '', 'Kurang dari Rp. 500.000', '081340083418', '6404064507770002', 'RUSMINI', 'BAU-BAU', '00:00:00.0000', NULL, 'SD Sederajat', '', 'Tidak Berpenghasilan', '081340083418', '', '', '', '2021-03-14', '', '', '', '', NULL, NULL, NULL, '12789039', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ruslan'),
(29, 'PPDB2021008', 1, NULL, '6404064312010002', '6404060805130001', '0011445739', 'Neri Laraswati', 'default.png', 'P', 'Bulungan', '2004-02-11', 'SMP NEGERI 5 TANJUNG PALAS TENGAH', NULL, NULL, 'IPS', NULL, 'Islam', 'TIAS TANJUNG BUKA', '005', '', 'TANJUNG BUKA', 'TANJUNG PALAS TENGAH', 'BULUNGAN', 'KALIMANTAN UTARA', '', 'Jalan Kaki', '085348859625', NULL, 3, 5, '69812062', NULL, '', 'Bersama Orang Tua', '25', '8', '6404060502740003', 'IDRIS', 'SELONG', 1974, NULL, 'SD Sederajat', '', 'Kurang dari Rp. 500.000', '082352796922', '6404065206710001', 'NURHAYATI', 'SUMBAWA BESAR', '00:00:00.0000', NULL, 'SD Sederajat', 'Pedagang', 'Kurang dari Rp. 500.000', '081350423026', '', '', '', '2021-03-22', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'laras'),
(30, 'PPDB2021009', 1, NULL, NULL, NULL, '', 'Renaldi Ahmad Rifa`i', 'default.png', NULL, '', '0000-00-00', 'Lainnya', '001', NULL, 'IPS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '123456');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id_daftar`),
  ADD UNIQUE KEY `no_daftar` (`no_daftar`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
