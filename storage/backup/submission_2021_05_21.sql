-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Bulan Mei 2021 pada 04.17
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `submission`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `iku_child1`
--

CREATE TABLE `iku_child1` (
  `id_iku_child1` int(11) NOT NULL,
  `id_iku_parent` int(11) NOT NULL,
  `iku_child1` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `iku_child1`
--

INSERT INTO `iku_child1` (`id_iku_child1`, `id_iku_parent`, `iku_child1`) VALUES
(1, 1, 'Coba bos');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iku_child2`
--

CREATE TABLE `iku_child2` (
  `id_iku_child2` int(11) NOT NULL,
  `id_iku_child1` int(11) NOT NULL,
  `iku_child2` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `iku_child2`
--

INSERT INTO `iku_child2` (`id_iku_child2`, `id_iku_child1`, `iku_child2`) VALUES
(1, 1, 'Coba Lagi Bos');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iku_parent`
--

CREATE TABLE `iku_parent` (
  `id_iku_parent` int(11) NOT NULL,
  `iku_parent` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `iku_parent`
--

INSERT INTO `iku_parent` (`id_iku_parent`, `iku_parent`) VALUES
(1, 'IKU COBA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_30_000805_create_iku_child1_table', 1),
(2, '2021_03_30_000805_create_iku_child2_table', 1),
(3, '2021_03_30_000805_create_iku_parent_table', 1),
(4, '2021_03_30_000805_create_pengajuan_history_table', 2),
(5, '2021_03_30_000805_create_pengajuan_table', 2),
(6, '2021_03_30_000805_create_rkat_table', 2),
(7, '2021_03_30_000805_create_struktur_child1_table', 2),
(8, '2021_03_30_000805_create_struktur_child2_table', 2),
(9, '2021_03_30_000805_create_struktur_table', 2),
(10, '2021_03_30_000805_create_user_table', 2),
(11, '2021_03_30_000805_create_validasi_table', 2),
(12, '2021_03_30_000808_add_foreign_keys_to_iku_child1_table', 2),
(13, '2021_03_30_000808_add_foreign_keys_to_iku_child2_table', 2),
(14, '2021_03_30_000808_add_foreign_keys_to_pengajuan_table', 2),
(15, '2021_03_30_000808_add_foreign_keys_to_rkat_table', 2),
(16, '2021_03_30_000808_add_foreign_keys_to_struktur_child1_table', 2),
(17, '2021_03_30_000808_add_foreign_keys_to_struktur_child2_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `kode_rkat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `latar_belakang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sasaran` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_capaian` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bentuk_pelaksanaan_program` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_program` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `bidang_terkait` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_iku_parent` int(11) NOT NULL,
  `id_iku_child1` int(11) NOT NULL,
  `id_iku_child2` int(11) NOT NULL,
  `biaya_program` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rab` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pengajuan` enum('progress','approved') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pencairan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpj_kegiatan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpj_keuangan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengajuan`
--

INSERT INTO `pengajuan` (`id_pengajuan`, `kode_rkat`, `id_user`, `latar_belakang`, `sasaran`, `target_capaian`, `bentuk_pelaksanaan_program`, `tempat_program`, `tanggal`, `bidang_terkait`, `id_iku_parent`, `id_iku_child1`, `id_iku_child2`, `biaya_program`, `rab`, `status_pengajuan`, `pencairan`, `lpj_kegiatan`, `lpj_keuangan`, `created_at`, `updated_at`) VALUES
(172, '2AA', 5, 'latar belakang', 'sasaran', 'Tidak Tahu', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-20', 'DSTI', 1, 1, 1, '100000', '4060a5f6fc637b6.pdf', 'progress', '4060a5ff1ad51b6.pdf', '4060a6116e4afa7.pdf', '4060a61195e633e.pdf', '2021-05-20 05:43:25', '2021-05-20 07:36:55'),
(173, '2AA', 4, 'latar belakang', 'sasaran', 'APA BOS HAH?', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-21', 'DSTI', 1, 1, 1, '!5000000', '4060a70bd20511a.pdf', 'progress', NULL, NULL, NULL, '2021-05-21 01:24:34', '2021-05-21 01:24:34'),
(174, '2AA', 7, 'w', 'w', 'w', 'w', 'w', '2021-05-21', 'w', 1, 1, 1, '100000', '4060a70e7d703bf.pdf', 'progress', '4060a71173f2e03.pdf', NULL, NULL, '2021-05-21 01:35:57', '2021-05-21 01:48:36'),
(175, '2AA', 9, 'qw', 'we', 'we', 'we', 'we', '2021-05-21', 'DSTI', 1, 1, 1, '100000', '4060a716125c9b2.pdf', 'progress', NULL, NULL, NULL, '2021-05-21 02:08:18', '2021-05-21 02:08:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_history`
--

CREATE TABLE `pengajuan_history` (
  `id_pengajuan` int(11) NOT NULL,
  `kode_rkat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `latar_belakang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sasaran` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_capaian` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bentuk_pelaksanaan_program` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_program` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `bidang_terkait` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_iku_parent` int(11) NOT NULL,
  `id_iku_child1` int(11) NOT NULL,
  `id_iku_child2` int(11) NOT NULL,
  `biaya_program` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rab` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pengajuan` enum('progress','approved') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pencairan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpj_kegiatan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpj_keuangan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengajuan_history`
--

INSERT INTO `pengajuan_history` (`id_pengajuan`, `kode_rkat`, `id_user`, `id`, `latar_belakang`, `sasaran`, `target_capaian`, `bentuk_pelaksanaan_program`, `tempat_program`, `tanggal`, `bidang_terkait`, `id_iku_parent`, `id_iku_child1`, `id_iku_child2`, `biaya_program`, `rab`, `status_pengajuan`, `pencairan`, `lpj_kegiatan`, `lpj_keuangan`, `created_at`, `updated_at`) VALUES
(164, '2AA', 5, 172, 'latar belakang', 'sasaran', 'Tidak Tahu', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-20', 'DSTI', 1, 1, 1, '100000', '4060a5f6fc637b6.pdf', 'progress', NULL, NULL, NULL, '2021-05-20 05:43:25', '2021-05-20 05:43:25'),
(165, '2AA', 5, 172, 'latar belakang', 'sasaran', 'Tidak Tahu', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-20', 'DSTI', 1, 1, 1, '100000', '4060a5f6fc637b6.pdf', 'progress', NULL, NULL, NULL, '2021-05-20 05:52:09', '2021-05-20 05:52:09'),
(166, '2AA', 5, 172, 'latar belakang', 'sasaran', 'Tidak Tahu', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-20', 'DSTI', 1, 1, 1, '100000', '4060a5f6fc637b6.pdf', 'progress', NULL, NULL, NULL, '2021-05-20 05:53:13', '2021-05-20 05:53:13'),
(167, '2AA', 5, 172, 'latar belakang', 'sasaran', 'Tidak Tahu', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-20', 'DSTI', 1, 1, 1, '100000', '4060a5f6fc637b6.pdf', 'progress', NULL, NULL, NULL, '2021-05-20 05:53:32', '2021-05-20 05:53:32'),
(168, '2AA', 5, 172, 'latar belakang', 'sasaran', 'Tidak Tahu', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-20', 'DSTI', 1, 1, 1, '100000', '4060a5f6fc637b6.pdf', 'progress', NULL, NULL, NULL, '2021-05-20 05:54:21', '2021-05-20 05:54:21'),
(169, '2AA', 5, 172, 'latar belakang', 'sasaran', 'Tidak Tahu', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-20', 'DSTI', 1, 1, 1, '100000', '4060a5f6fc637b6.pdf', 'progress', NULL, NULL, NULL, '2021-05-20 05:55:23', '2021-05-20 05:55:23'),
(170, '2AA', 5, 172, 'latar belakang', 'sasaran', 'Tidak Tahu', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-20', 'DSTI', 1, 1, 1, '100000', '4060a5f6fc637b6.pdf', 'progress', NULL, NULL, NULL, '2021-05-20 06:18:03', '2021-05-20 06:18:03'),
(171, '2AA', 5, 172, 'latar belakang', 'sasaran', 'Tidak Tahu', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-20', 'DSTI', 1, 1, 1, '100000', '4060a5f6fc637b6.pdf', 'progress', '4060a5ff1ad51b6.pdf', NULL, NULL, '2021-05-20 07:36:15', '2021-05-20 07:36:15'),
(172, '2AA', 5, 172, 'latar belakang', 'sasaran', 'Tidak Tahu', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-20', 'DSTI', 1, 1, 1, '100000', '4060a5f6fc637b6.pdf', 'progress', '4060a5ff1ad51b6.pdf', '4060a6116e4afa7.pdf', NULL, '2021-05-20 07:36:54', '2021-05-20 07:36:54'),
(173, '2AA', 5, 172, 'latar belakang', 'sasaran', 'Tidak Tahu', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-20', 'DSTI', 1, 1, 1, '100000', '4060a5f6fc637b6.pdf', 'progress', '4060a5ff1ad51b6.pdf', '4060a6116e4afa7.pdf', '4060a61195e633e.pdf', '2021-05-20 07:38:43', '2021-05-20 07:38:43'),
(174, '2AA', 4, 173, 'latar belakang', 'sasaran', 'APA BOS HAH?', 'Teknis', 'Universitas Teknologi Sumbawa', '2021-05-21', 'DSTI', 1, 1, 1, '!5000000', '4060a70bd20511a.pdf', 'progress', NULL, NULL, NULL, '2021-05-21 01:24:34', '2021-05-21 01:24:34'),
(175, '2AA', 7, 174, 'w', 'w', 'w', 'w', 'w', '2021-05-21', 'w', 1, 1, 1, '100000', '4060a70e7d703bf.pdf', 'progress', NULL, NULL, NULL, '2021-05-21 01:35:58', '2021-05-21 01:35:58'),
(176, '2AA', 7, 174, 'w', 'w', 'w', 'w', 'w', '2021-05-21', 'w', 1, 1, 1, '100000', '4060a70e7d703bf.pdf', 'progress', NULL, NULL, NULL, '2021-05-21 01:46:17', '2021-05-21 01:46:17'),
(177, '2AA', 7, 174, 'w', 'w', 'w', 'w', 'w', '2021-05-21', 'w', 1, 1, 1, '100000', '4060a70e7d703bf.pdf', 'progress', NULL, NULL, NULL, '2021-05-21 01:46:39', '2021-05-21 01:46:39'),
(178, '2AA', 7, 174, 'w', 'w', 'w', 'w', 'w', '2021-05-21', 'w', 1, 1, 1, '100000', '4060a70e7d703bf.pdf', 'progress', NULL, NULL, NULL, '2021-05-21 01:47:30', '2021-05-21 01:47:30'),
(179, '2AA', 7, 174, 'w', 'w', 'w', 'w', 'w', '2021-05-21', 'w', 1, 1, 1, '100000', '4060a70e7d703bf.pdf', 'progress', NULL, NULL, NULL, '2021-05-21 01:47:58', '2021-05-21 01:47:58'),
(180, '2AA', 7, 174, 'w', 'w', 'w', 'w', 'w', '2021-05-21', 'w', 1, 1, 1, '100000', '4060a70e7d703bf.pdf', 'progress', NULL, NULL, NULL, '2021-05-21 01:48:36', '2021-05-21 01:48:36'),
(181, '2AA', 9, 175, 'qw', 'we', 'we', 'we', 'we', '2021-05-21', 'DSTI', 1, 1, 1, '100000', '4060a716125c9b2.pdf', 'progress', NULL, NULL, NULL, '2021-05-21 02:08:18', '2021-05-21 02:08:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rkat`
--

CREATE TABLE `rkat` (
  `id_rkat` int(11) NOT NULL,
  `kode_rkat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `sasaran_strategi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indikator_sasaran_strategi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_program` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_kerja` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai_program` date NOT NULL,
  `selesai_program` date NOT NULL,
  `tempat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_anggaran` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rencara_anggaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_anggaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sisa_anggaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rkat`
--

INSERT INTO `rkat` (`id_rkat`, `kode_rkat`, `id_user`, `sasaran_strategi`, `indikator_sasaran_strategi`, `nama_program`, `program_kerja`, `deskripsi`, `tujuan`, `mulai_program`, `selesai_program`, `tempat`, `sumber_anggaran`, `rencara_anggaran`, `total_anggaran`, `sisa_anggaran`, `created_at`, `updated_at`) VALUES
(33, '2AA', 5, 'Tidak tahu HAHHA', 'Tidak tahu juga', 'Pembelian PC', 'Pembelian PC', 'tyt', 'Dukung penggunaan lab', '2021-05-19', '2021-05-19', 'Lab UTS', 'Dana Kampus', '1500000', '1500000', '0', '2021-05-19', '2021-05-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur`
--

CREATE TABLE `struktur` (
  `id_struktur` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `nama_struktur` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `struktur`
--

INSERT INTO `struktur` (`id_struktur`, `level`, `nama_struktur`) VALUES
(1, 1, 'Rektor'),
(2, 2, 'Warek'),
(3, 3, 'Direktur Keuangan'),
(4, 4, 'Sekniv'),
(5, 4, 'Fakultas'),
(9, 5, 'Prodi'),
(10, 5, 'UPT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur_child1`
--

CREATE TABLE `struktur_child1` (
  `id_struktur_child1` int(11) NOT NULL,
  `id_struktur` int(11) NOT NULL,
  `nama_struktur_child1` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `struktur_child1`
--

INSERT INTO `struktur_child1` (`id_struktur_child1`, `id_struktur`, `nama_struktur_child1`) VALUES
(5, 3, 'FTI'),
(6, 3, 'FTB'),
(7, 1, '0'),
(8, 2, '0'),
(9, 3, '0'),
(10, 4, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur_child2`
--

CREATE TABLE `struktur_child2` (
  `id_struktur_child2` int(11) NOT NULL,
  `id_struktur_child1` int(11) NOT NULL,
  `nama_struktur_child2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `struktur_child2`
--

INSERT INTO `struktur_child2` (`id_struktur_child2`, `id_struktur_child1`, `nama_struktur_child2`) VALUES
(25, 5, 'TI'),
(26, 6, 'Biotek'),
(28, 7, '0'),
(29, 8, '0'),
(30, 9, '0'),
(31, 5, '0'),
(32, 10, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_struktur` int(11) DEFAULT NULL,
  `id_struktur_child1` int(11) DEFAULT NULL,
  `id_struktur_child2` int(11) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_wa` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rek` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `fullname`, `password`, `id_struktur`, `id_struktur_child1`, `id_struktur_child2`, `email`, `nomor_wa`, `bank`, `atn`, `no_rek`, `created_at`, `updated_at`) VALUES
(4, 'fakultas', '$2y$10$GCyWsVdzvohQqtFhmoj51.IjKpOFJN3G3pucYXKsmRYDZCN62E0V2', 3, 5, 31, 'fakultas@gmail.com', '980', 'Bank BNI', '', '8789789', '2021-03-28 17:49:34', '2021-04-04 18:08:12'),
(5, 'prodi', '$2y$10$GCyWsVdzvohQqtFhmoj51.IjKpOFJN3G3pucYXKsmRYDZCN62E0V2', 3, 5, 25, 'prodi@gmail.com', '980', 'Bank BNI', 'wawan', '8789789', '2021-03-28 17:49:34', '2021-05-19 16:31:15'),
(7, 'dir keuangan', '$2y$10$GCyWsVdzvohQqtFhmoj51.IjKpOFJN3G3pucYXKsmRYDZCN62E0V2', 3, 9, 30, 'keuangan@gmail.com', '980', 'Bank BNI', '', '8789789', '2021-03-28 17:49:34', '2021-04-04 18:08:12'),
(8, 'warek', '$2y$10$GCyWsVdzvohQqtFhmoj51.IjKpOFJN3G3pucYXKsmRYDZCN62E0V2', 2, 8, 29, 'warek@gmail.com', '980', 'Bank BNI', '', '8789789', '2021-03-28 17:49:34', '2021-04-04 18:08:12'),
(9, 'rektor', '$2y$10$GCyWsVdzvohQqtFhmoj51.IjKpOFJN3G3pucYXKsmRYDZCN62E0V2', 1, 7, 28, 'rektor@gmail.com', '980', 'Bank BNI', 'Admin', '8789789', '2021-03-28 17:49:34', '2021-05-19 01:57:25'),
(10, 'sekniv', '$2y$10$GCyWsVdzvohQqtFhmoj51.IjKpOFJN3G3pucYXKsmRYDZCN62E0V2', 4, 10, 32, 'sekniv@gmail.com', '980', 'Bank BNI', 'sekniv', '8789789', '2021-05-02 10:46:00', '2021-05-02 10:46:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `validasi`
--

CREATE TABLE `validasi` (
  `id_validasi` int(11) NOT NULL,
  `id_pengajuan_history` int(11) NOT NULL,
  `id_struktur` int(11) NOT NULL,
  `status_validasi` int(5) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `validasi`
--

INSERT INTO `validasi` (`id_validasi`, `id_pengajuan_history`, `id_struktur`, `status_validasi`, `message`, `created_at`, `updated_at`) VALUES
(154, 164, 25, 1, 'TI - Input pengajuan', '2021-05-20 05:43:25', '2021-05-20 05:43:25'),
(155, 165, 5, 2, 'FTI - Good', '2021-05-20 05:52:10', '2021-05-20 05:52:10'),
(156, 166, 3, 0, 'Direktur Keuangan - Dana terlalu besar', '2021-05-20 05:53:14', '2021-05-20 05:53:14'),
(157, 167, 3, 2, 'Direktur Keuangan - Good', '2021-05-20 05:53:32', '2021-05-20 05:53:32'),
(158, 168, 2, 2, 'Warek - warek', '2021-05-20 05:54:21', '2021-05-20 05:54:21'),
(159, 169, 1, 2, 'Rektor - Rektor', '2021-05-20 05:55:23', '2021-05-20 05:55:23'),
(160, 170, 3, 3, 'Direktur Keuangan - Sudah dilakukan pencairan', '2021-05-20 06:18:03', '2021-05-20 06:18:03'),
(161, 171, 25, 1, 'TI - Upload LPJ Kegiatan', '2021-05-20 07:36:15', '2021-05-20 07:36:15'),
(162, 172, 25, 1, 'TI - Upload LPJ Keuangan', '2021-05-20 07:36:55', '2021-05-20 07:36:55'),
(163, 173, 4, 2, 'Sekniv - papapapapap', '2021-05-20 07:38:43', '2021-05-20 07:38:43'),
(164, 174, 5, 1, 'FTI - Input pengajuan', '2021-05-21 01:24:35', '2021-05-21 01:24:35'),
(165, 175, 3, 1, 'Direktur Keuangan - Input pengajuan', '2021-05-21 01:35:58', '2021-05-21 01:35:58'),
(166, 176, 3, 0, 'Direktur Keuangan - Dana terlalu besar', '2021-05-21 01:46:18', '2021-05-21 01:46:18'),
(167, 177, 3, 2, 'Direktur Keuangan - coba', '2021-05-21 01:46:39', '2021-05-21 01:46:39'),
(168, 178, 2, 2, 'Warek - warek', '2021-05-21 01:47:30', '2021-05-21 01:47:30'),
(169, 179, 1, 2, 'Rektor - Good', '2021-05-21 01:47:58', '2021-05-21 01:47:58'),
(170, 180, 3, 3, 'Direktur Keuangan - Sudah dilakukan pencairan', '2021-05-21 01:48:36', '2021-05-21 01:48:36'),
(171, 181, 1, 1, 'Rektor - Input pengajuan', '2021-05-21 02:08:19', '2021-05-21 02:08:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `iku_child1`
--
ALTER TABLE `iku_child1`
  ADD PRIMARY KEY (`id_iku_child1`),
  ADD KEY `id_iku_parent` (`id_iku_parent`);

--
-- Indeks untuk tabel `iku_child2`
--
ALTER TABLE `iku_child2`
  ADD PRIMARY KEY (`id_iku_child2`),
  ADD KEY `id_iku_child1` (`id_iku_child1`);

--
-- Indeks untuk tabel `iku_parent`
--
ALTER TABLE `iku_parent`
  ADD PRIMARY KEY (`id_iku_parent`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `id_rkat` (`kode_rkat`),
  ADD KEY `id_iku_parent` (`id_iku_parent`),
  ADD KEY `id_iku_child1` (`id_iku_child1`),
  ADD KEY `id_iku_child2` (`id_iku_child2`);

--
-- Indeks untuk tabel `pengajuan_history`
--
ALTER TABLE `pengajuan_history`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `id_rkat` (`kode_rkat`),
  ADD KEY `id_iku_parent` (`id_iku_parent`),
  ADD KEY `id_iku_child1` (`id_iku_child1`),
  ADD KEY `id_iku_child2` (`id_iku_child2`);

--
-- Indeks untuk tabel `rkat`
--
ALTER TABLE `rkat`
  ADD PRIMARY KEY (`id_rkat`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id_struktur`);

--
-- Indeks untuk tabel `struktur_child1`
--
ALTER TABLE `struktur_child1`
  ADD PRIMARY KEY (`id_struktur_child1`),
  ADD KEY `id_struktur` (`id_struktur`);

--
-- Indeks untuk tabel `struktur_child2`
--
ALTER TABLE `struktur_child2`
  ADD PRIMARY KEY (`id_struktur_child2`),
  ADD KEY `id_struktur_child1` (`id_struktur_child1`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_struktur` (`id_struktur`),
  ADD KEY `id_struktur_child1` (`id_struktur_child1`),
  ADD KEY `id_struktur_child2` (`id_struktur_child2`);

--
-- Indeks untuk tabel `validasi`
--
ALTER TABLE `validasi`
  ADD PRIMARY KEY (`id_validasi`),
  ADD KEY `id_pengajuan_history` (`id_pengajuan_history`),
  ADD KEY `id_struktur` (`id_struktur`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `iku_child1`
--
ALTER TABLE `iku_child1`
  MODIFY `id_iku_child1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `iku_child2`
--
ALTER TABLE `iku_child2`
  MODIFY `id_iku_child2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `iku_parent`
--
ALTER TABLE `iku_parent`
  MODIFY `id_iku_parent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_history`
--
ALTER TABLE `pengajuan_history`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT untuk tabel `rkat`
--
ALTER TABLE `rkat`
  MODIFY `id_rkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id_struktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `struktur_child1`
--
ALTER TABLE `struktur_child1`
  MODIFY `id_struktur_child1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `struktur_child2`
--
ALTER TABLE `struktur_child2`
  MODIFY `id_struktur_child2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `validasi`
--
ALTER TABLE `validasi`
  MODIFY `id_validasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `iku_child1`
--
ALTER TABLE `iku_child1`
  ADD CONSTRAINT `iku_child1_ibfk_1` FOREIGN KEY (`id_iku_parent`) REFERENCES `iku_parent` (`id_iku_parent`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `iku_child2`
--
ALTER TABLE `iku_child2`
  ADD CONSTRAINT `iku_child2_ibfk_1` FOREIGN KEY (`id_iku_child1`) REFERENCES `iku_child1` (`id_iku_child1`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `rkat`
--
ALTER TABLE `rkat`
  ADD CONSTRAINT `rkat_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `struktur_child1`
--
ALTER TABLE `struktur_child1`
  ADD CONSTRAINT `struktur_child1_ibfk_1` FOREIGN KEY (`id_struktur`) REFERENCES `struktur` (`id_struktur`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `struktur_child2`
--
ALTER TABLE `struktur_child2`
  ADD CONSTRAINT `struktur_child2_ibfk_2` FOREIGN KEY (`id_struktur_child1`) REFERENCES `struktur_child1` (`id_struktur_child1`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
