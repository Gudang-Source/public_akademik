-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2020 at 02:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `id` int(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id`, `name`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Hindu'),
(4, 'Budha');

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa`
--

CREATE TABLE `beasiswa` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `persen` int(5) DEFAULT NULL,
  `tahun_ajaran` varchar(20) DEFAULT NULL,
  `bulan` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beasiswa`
--

INSERT INTO `beasiswa` (`id`, `siswa_id`, `persen`, `tahun_ajaran`, `bulan`) VALUES
(2, 1, 20, NULL, NULL),
(27, 1, 20, '2020-2021', 1),
(28, 1, 20, '2020-2021', 2),
(29, 1, 20, '2020-2021', 3),
(30, 3, 10, '2020-2021', 1),
(31, 2, 10, '2020-2021', 4),
(35, 7, 50, '2023-2024', 1),
(36, 7, 50, '2023-2024', 2),
(37, 7, 50, '2023-2024', 3);

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa_daftar`
--

CREATE TABLE `beasiswa_daftar` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `persen` int(5) DEFAULT NULL,
  `tahun_ajaran` varchar(20) DEFAULT NULL,
  `detail_daftar_ulang_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beasiswa_daftar`
--

INSERT INTO `beasiswa_daftar` (`id`, `siswa_id`, `persen`, `tahun_ajaran`, `detail_daftar_ulang_id`) VALUES
(29, 1, 10, '2020-2021', 25),
(30, 7, 10, '2023-2024', 27);

-- --------------------------------------------------------

--
-- Table structure for table `daftar_ulang`
--

CREATE TABLE `daftar_ulang` (
  `id` int(5) NOT NULL,
  `tahun_ajaran` varchar(20) DEFAULT NULL,
  `kelas` int(5) DEFAULT NULL,
  `biaya` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_ulang`
--

INSERT INTO `daftar_ulang` (`id`, `tahun_ajaran`, `kelas`, `biaya`) VALUES
(8, '2021-2022', 4, 600000),
(9, '2020-2021', 1, 1800000),
(10, '2023-2024', 5, 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_daftar_ulang`
--

CREATE TABLE `detail_daftar_ulang` (
  `id` int(5) NOT NULL,
  `daftar_ulang_id` int(10) DEFAULT NULL,
  `tahun_ajaran` varchar(20) DEFAULT NULL,
  `kelas` int(5) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `biaya` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_daftar_ulang`
--

INSERT INTO `detail_daftar_ulang` (`id`, `daftar_ulang_id`, `tahun_ajaran`, `kelas`, `name`, `biaya`) VALUES
(16, 6, '2019-2020', 2, 'KBM', 2600000),
(21, 8, '2021-2022', 4, 'KBM', 500000),
(22, 8, '2021-2022', 4, 'Pembayaran Gedung', 100000),
(23, 9, '2020-2021', 1, 'OPR', 300000),
(24, 9, '2020-2021', 1, 'BUKU', 500000),
(25, 9, '2020-2021', 1, 'Pembayaran Gedung', 1000000),
(26, 10, '2023-2024', 5, 'opr', 1000000),
(27, 10, '2023-2024', 5, 'bangunan', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(5) NOT NULL,
  `kelas` int(5) DEFAULT NULL,
  `name` varchar(200) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `name`) VALUES
(1, 1, 'Arahman'),
(2, 1, 'Alamal'),
(3, 2, 'Nuh'),
(4, 2, 'Adam'),
(6, 4, 'kelas empat'),
(7, 5, 'LIMA');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `tahun_angkatan` int(5) DEFAULT NULL,
  `tahun_ajaran` varchar(20) DEFAULT NULL,
  `kelas_id` int(5) DEFAULT NULL,
  `kelas` int(5) DEFAULT NULL,
  `sts` int(5) DEFAULT NULL,
  `tgl_sts` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas_siswa`
--

INSERT INTO `kelas_siswa` (`id`, `siswa_id`, `tahun_angkatan`, `tahun_ajaran`, `kelas_id`, `kelas`, `sts`, `tgl_sts`) VALUES
(32, 3, 2020, '2020-2021', 1, 1, 1, '2020-10-07'),
(33, 1, 2020, '2020-2021', 1, 1, 1, '2020-10-06'),
(34, 7, 2020, '2023-2024', 7, 5, NULL, NULL),
(35, 1, 2020, '2021-2022', 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `id` int(10) NOT NULL,
  `name` text DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `biaya` bigint(20) DEFAULT NULL,
  `transaksi_id` int(10) DEFAULT NULL,
  `sts` int(5) DEFAULT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `tahun_ajaran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keuangan`
--

INSERT INTO `keuangan` (`id`, `name`, `kategori`, `tanggal`, `biaya`, `transaksi_id`, `sts`, `siswa_id`, `tahun_ajaran`) VALUES
(1, '[202005679 pak agus]  SPP Januari', 1, '2020-10-02 11:46:53', 50000, 32, 1, 1, '2020-2021'),
(3, '[202005680 SRi] SPP Januari', 1, '2020-10-02 11:46:53', 100000, 2, 1, 2, '2020-2021'),
(10, 'Unit di Lingkungan Asda III', 3, '2020-10-05 02:31:36', 200000, NULL, 1, NULL, NULL),
(11, 'Unit di Lingkungan Asda III', 3, '2020-10-05 02:31:46', 3000000, NULL, 2, NULL, NULL),
(12, 'sendra', 3, '2020-10-05 05:54:03', 100000, NULL, 1, NULL, NULL),
(13, '[202005681 Sumardi] SPP Januari', 1, '2020-10-05 05:55:59', 100000, 4, 1, 3, '2020-2021'),
(14, '[202005681 Sumardi] SPP Februari', 1, '2020-10-05 05:57:25', 200000, 5, 1, 3, '2020-2021'),
(15, '[202005681 Sumardi] SPP Maret', 1, '2020-10-06 01:45:16', 200000, 6, 1, 3, '2020-2021'),
(16, '[202005681 Sumardi] SPP April', 1, '2020-10-06 03:52:49', 100000, 7, 1, 3, '2020-2021'),
(17, '[202005681 Sumardi] SPP April', 1, '2020-10-06 03:53:15', 100000, 8, 1, 3, '2020-2021'),
(18, '[202005679 pak agus] Daftar Ulang ', 2, '2020-10-07 09:57:09', 10000, 6, 1, 1, '2020-2021'),
(19, '[202005679 pak agus] Daftar Ulang ', 2, '2020-10-07 09:57:09', 950000, 7, 1, 1, '2020-2021'),
(20, '[202005679 pak agus] Daftar Ulang ', 2, '2020-10-07 10:02:20', 70000, 1, 1, 1, '2020-2021'),
(21, '[202005679 pak agus] Daftar Ulang ', 2, '2020-10-07 10:02:20', 0, 2, 1, 1, '2020-2021'),
(22, '[202005679 pak agus] Daftar Ulang ', 2, '2020-10-07 10:02:20', 0, 3, 1, 1, '2020-2021'),
(23, '[202005679 pak agus] Daftar Ulang ', 2, '2020-10-07 10:04:03', 100000, 4, 1, 1, '2020-2021'),
(24, '[202005682 bisma] SPP Januari', 1, '2020-10-08 09:24:48', 100000, 9, 1, 7, '2023-2024'),
(25, '[202005682 bisma] Daftar Ulang ', 2, '2020-10-08 09:25:27', 500000, 5, 1, 7, '2023-2024'),
(26, 'DONASI YAYASAN', 3, '2020-10-08 09:28:08', 500000, NULL, 1, 0, NULL),
(27, 'DONASI YAYASAN BARU', 3, '2020-10-08 09:28:46', 100000, NULL, 1, 0, NULL),
(28, '[202005682 bisma] Daftar Ulang ', 2, '2020-10-08 10:10:16', 100000, 6, 1, 7, '2023-2024'),
(29, '[202005682 bisma] SPP Januari', 1, '2020-10-08 10:16:46', 100000, 1, 1, 7, '2023-2024'),
(30, '[202005682 bisma] SPP Februari', 1, '2020-10-08 10:30:41', 99999, 2, 1, 7, '2023-2024'),
(31, '[202005682 bisma] SPP Maret', 1, '2020-10-08 10:32:00', 100000, 3, 1, 7, '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_daftar`
--

CREATE TABLE `pembayaran_daftar` (
  `id` int(5) NOT NULL,
  `tahun_ajaran` varchar(20) DEFAULT NULL,
  `kelas` int(5) DEFAULT NULL,
  `biaya` bigint(10) DEFAULT NULL,
  `detail_daftar_ulang_id` int(5) DEFAULT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `tagihan` bigint(20) DEFAULT NULL,
  `potongan` bigint(10) DEFAULT NULL,
  `sisa` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran_daftar`
--

INSERT INTO `pembayaran_daftar` (`id`, `tahun_ajaran`, `kelas`, `biaya`, `detail_daftar_ulang_id`, `siswa_id`, `tanggal`, `tagihan`, `potongan`, `sisa`) VALUES
(1, '2020-2021', 1, 70000, 23, 1, '2020-10-07 10:02:20', 270000, 30000, 200000),
(4, '2020-2021', 1, 100000, 23, 1, '2020-10-07 10:04:03', 200000, 30000, 100000),
(5, '2023-2024', 5, 500000, 26, 7, '2020-10-08 09:25:27', 1000000, 0, 500000),
(6, '2023-2024', 5, 100000, 27, 7, '2020-10-08 10:10:16', 450000, 50000, 350000);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_donasi`
--

CREATE TABLE `pembayaran_donasi` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `biaya` bigint(20) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_spp`
--

CREATE TABLE `pembayaran_spp` (
  `id` int(5) NOT NULL,
  `tahun_ajaran` varchar(20) DEFAULT NULL,
  `kelas` int(5) DEFAULT NULL,
  `biaya` bigint(10) DEFAULT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `bulan` int(5) DEFAULT NULL,
  `tagihan` bigint(15) DEFAULT NULL,
  `sisa` bigint(15) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `diskon` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran_spp`
--

INSERT INTO `pembayaran_spp` (`id`, `tahun_ajaran`, `kelas`, `biaya`, `siswa_id`, `bulan`, `tagihan`, `sisa`, `tanggal`, `diskon`) VALUES
(1, '2023-2024', 5, 100000, 7, 1, 200000, 100000, '2020-10-08 10:16:46', 50),
(2, '2023-2024', 5, 99999, 7, 2, 200000, 100001, '2020-10-08 10:30:40', 50),
(3, '2023-2024', 5, 100000, 7, 3, 200000, 100000, '2020-10-08 10:32:00', 50);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `name`, `value`) VALUES
(1, 'kelurahan', 'Kebonsari'),
(2, 'kecamatan', 'Jombang'),
(3, 'provinsi', 'Banten'),
(4, 'kodepos', '42162'),
(5, 'kota', 'Cilegon'),
(6, 'alamat', 'Weri'),
(7, 'alamat2', 'Jl. Ahmad Yani, Masigit, Kec. Citangkil , Kota Cilegon, Banten 42414qq'),
(8, 'rw', '1');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `file` varchar(20) DEFAULT NULL,
  `kewarganegaraan` varchar(20) DEFAULT NULL,
  `anak_ke` int(5) DEFAULT NULL,
  `tahun_angkatan` int(5) DEFAULT NULL,
  `jumlah_sodara` int(5) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `sts` int(5) DEFAULT NULL,
  `sts_penerimaan` int(5) DEFAULT NULL,
  `sts_kelas` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `kode`, `nis`, `name`, `alamat`, `tgl_lahir`, `tempat_lahir`, `file`, `kewarganegaraan`, `anak_ke`, `tahun_angkatan`, `jumlah_sodara`, `agama`, `jenis_kelamin`, `sts`, `sts_penerimaan`, `sts_kelas`) VALUES
(1, '202005679', NULL, 'pak agus', 'serang', '1995-07-13', 'Serangss', '202005679.jpeg', 'WNI', 2, 2020, 3, 'Islam', 'Laki-laki', 1, 1, 1),
(2, '202005680', NULL, 'SRi', 'MERAK', '2020-10-21', 'LEBAK', '202005680.jpeg', 'WNI', 1, 2020, 1, 'Islam', 'Laki-laki', 1, 1, 0),
(3, '202005681', NULL, 'Sumardi', 'SERANG', '2020-10-29', 'rangkas', '202005681.jpeg', 'WNI', 1, 2020, 1, 'Islam', 'Laki-laki', 1, 1, 0),
(4, 'TK-202000682', NULL, 'Sarip', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(5, '202002001', NULL, 'arkan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(6, 'TK-202000002', NULL, 'gombong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(7, '202005682', NULL, 'bisma', 'merak', '2020-10-27', 'lebak', '202005682.jpeg', 'WNI', 1, 2020, 1, 'Islam', 'Laki-laki', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id` int(5) NOT NULL,
  `tahun_ajaran` varchar(20) DEFAULT NULL,
  `kelas` int(5) DEFAULT NULL,
  `biaya` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id`, `tahun_ajaran`, `kelas`, `biaya`) VALUES
(4, '2021-2022', 4, 200000),
(5, '2020-2021', 1, 200000),
(6, '2020-2021', 2, 200000),
(8, '2023-2024', 5, 400000),
(9, '2021-2022', 2, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id` int(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id`, `name`) VALUES
(1, '2019-2020'),
(2, '2020-2021'),
(4, '2021-2022'),
(5, '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `isi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `name`, `title`, `isi`) VALUES
(1, 'siswa', 'fdsdsf dfdsdsf dfdsfdsf dfdsf', 'ewrewrewrewv fdsfdsf dsfdsdsf dsfdsfd dfdsfds afdsf'),
(2, 'tambah_siswa', 'dsfsd ', 'sgdgdd dgdsgs dgds'),
(3, 'tambah_tahun', 'ya sudah lah', 'fdsf xczx zxczx zxc zxczxczxc czxcefaf dfdf afafafa afaf adfdaf afad'),
(4, 'tambah_title', 'Halaman Ubah Judul Halaman', 'Sialhkan ubah'),
(5, 'title', 'Halaman Judul', 'Proses data sesuai pedoman'),
(6, 'view_siswa', 'Halaman Detail Kelas', 'Terlampir data riwayat kelas '),
(7, 'spp', 'Halaman Master SPP', 'Master pembuatan biaya SPP per tahun ajaran dan per kelas'),
(8, 'rekapan_spp', 'Halaman Rekapan SPP', 'Halaman Rekapan SPP'),
(9, 'rekapan_daftar', 'Halaman Rekapan Daftar Ulang', 'Halaman Rekapan Daftar Ulang'),
(10, 'siswa_kelas', 'Halaman Kelas SIswa', 'Halaman Kelas SIswa'),
(11, 'rekapan_keuangan', 'Halaman Rekapan Keuangan', 'Halaman Rekapan Keuangan'),
(12, 'donasi', 'Halaman Pendataan Donasi', 'Halaman Pendataan Donasi'),
(13, 'beasiswa', 'Halaman Beasiswa', 'Daftar beasiswa SPP'),
(14, 'daftar_ulang', 'Halaman Master Daftar Ulang', 'Halaman Master Daftar Ulang'),
(15, 'transaksi_keuangan', 'Halaman Transaksi Keuangan', 'Halaman Transaksi Keuangan'),
(16, 'home_admin', 'Halaman Utama', 'Halaman Utama');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `no_kk` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(5) DEFAULT NULL,
  `tahun_angkatan` int(5) DEFAULT NULL,
  `no_hp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nik`, `no_kk`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `tahun_angkatan`, `no_hp`) VALUES
(1, 'Akademik', '12345679', NULL, 'uconbeton@gmail.com', NULL, '$2y$10$lnp5SzVhYAepO5cV1EEHBOGOURVtGhwHBJ9LFAwUqWh5Mz3tN.7yS', 'wzdG4IIgaeIO7CyXbmumE7UUhkByXBQjadXOd4bgExY93B8HzYDAaGPpVRwo', '2020-08-24 19:09:15', '2020-08-24 19:09:15', 1, 2020, NULL),
(47, 'Keuangan', '12345678', NULL, 'keuangan@gmail.com', NULL, '$2y$10$lnp5SzVhYAepO5cV1EEHBOGOURVtGhwHBJ9LFAwUqWh5Mz3tN.7yS', 'iSlFRvpOv8IIx547XKJ2z8WEMz3zxY8heMEyhK9vhklyE4htT2ltcZs9RCr5', '2020-09-20 22:29:58', '2020-09-20 22:29:58', 3, 2020, NULL),
(83, 'pak agus', '202005679', NULL, 'agus@gmail.com', NULL, '$2y$10$DpjUltuFOPfZcqDTMWczee6V193.YQRs2/rq5fr7kHhw33iKWcKGu', 'bDQzRH42GfXyHUKkTAc9na8kaFcU1VyH5VW6DBugwgXMnvaSybmKHdr1t5sW', '2020-09-29 02:34:30', '2020-09-29 02:35:24', 2, 2020, '085213042646'),
(84, 'SRi', '202005680', NULL, 'sri@gmail.com', NULL, '$2y$10$D3Aw0Gj3k7lkAdydbJlTsuWPO8BYhQqLnp3rto5IMqy6obmYljdCG', 'F6sEOfecpjiCXHLSm5j62WpO4xSXrrmS2OeQMwSJlLGDHlaDkvHxUfLwP5YQ', '2020-10-02 04:37:14', '2020-10-02 04:41:02', 2, 2020, '087772227271'),
(85, 'Sumardi', '202005681', NULL, 'sumardi@gmail.com', NULL, '$2y$10$lnp5SzVhYAepO5cV1EEHBOGOURVtGhwHBJ9LFAwUqWh5Mz3tN.7yS', '37tgvQ63oSkEEJ45QDrQPZobUxl2URFc2NduuZ6x5Q0I7v59CqEF8YEHHaJC', '2020-10-02 05:21:28', '2020-10-02 05:47:59', 2, 2020, '087772227272'),
(90, 'bisma', '202005682', NULL, 'bisma@gmail.com', NULL, '$2y$10$e7C8wT2a/zjS55vQAslJV.mmRx.0drGIhq627EMXEq2dFku26TJcm', NULL, '2020-10-08 02:10:07', '2020-10-08 02:14:01', 2, 2020, '089997777271');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beasiswa_daftar`
--
ALTER TABLE `beasiswa_daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_ulang`
--
ALTER TABLE `daftar_ulang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_daftar_ulang`
--
ALTER TABLE `detail_daftar_ulang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembayaran_daftar`
--
ALTER TABLE `pembayaran_daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran_donasi`
--
ALTER TABLE `pembayaran_donasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran_spp`
--
ALTER TABLE `pembayaran_spp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `beasiswa_daftar`
--
ALTER TABLE `beasiswa_daftar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `daftar_ulang`
--
ALTER TABLE `daftar_ulang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `detail_daftar_ulang`
--
ALTER TABLE `detail_daftar_ulang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembayaran_daftar`
--
ALTER TABLE `pembayaran_daftar`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembayaran_donasi`
--
ALTER TABLE `pembayaran_donasi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayaran_spp`
--
ALTER TABLE `pembayaran_spp`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
