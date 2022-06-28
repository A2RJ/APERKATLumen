-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Feb 2022 pada 08.33
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aperkat`
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
(1, 1, 'Melakukan penyempurnaan terhadap sistem\r\ntata kelola universitas\r\n'),
(2, 1, 'Melakukan peningkatan atas peringkat\r\nakreditasi institusi di jenjang nasional dan\r\ninternasional\r\n\r\n'),
(3, 1, 'Melaksanakan pengembangan sistem\r\nmanajemen Sumber Daya Manusia yang\r\nhandal\r\n'),
(4, 1, 'Menyelenggarakan manajemen sumber\r\ndaya fisik/ infrastruktur yang handal\r\n'),
(5, 2, 'Peningkatan peluang dan kesempatan\r\nkepada calon mahasiswa di seluruh\r\nnusantara dan dunia untuk mengenyam\r\nPendidikan'),
(6, 2, 'Pengembangan kurikulum berbasis Kualifikasi\r\nKompetensi Nasional Indonesia (KKNI)\r\n'),
(7, 2, 'Peningkatan dan pengembangan kualifikasi,\r\nkompetensi, serta karir dosen\r\n'),
(8, 2, 'Menyediakan sarana dan prasarana\r\npendukung'),
(9, 2, 'Pengembangan Pendidikan Jarak Jauh (PPJJ)\r\ndan pendidikan sepanjang hayat\r\n'),
(10, 3, 'Melaksanakan pendidikan kepribadian,\r\nkarakter, dan akhlak mahasiswa'),
(11, 3, 'Peningkatan kesiapan lulusan yang\r\nunggul, relevan dengan kebutuhan\r\nmitra strategis\r\n'),
(12, 3, 'Menyiapkan kegiatan kompetisi\r\nkeilmuan di tingkat nasional dan\r\ninternasional\r\n'),
(13, 3, 'Meyediakan koektivitas lulusan dengan\r\ndunia kerja'),
(14, 3, 'Memperkuat inovasi kewirausahaan'),
(15, 3, 'Menjaring lulusan yang berminat untuk\r\nstudi lanjut\r\n'),
(16, 4, 'Pengembangan penelitian multidisiplin\r\nberdasar kepada Rencana Induk\r\nPenelitian\r\n'),
(17, 4, 'Mengembangkan penelitian berbasis lokal\r\nberwawasan global'),
(18, 4, 'Pengembangan kegiatan pengabdian\r\nkepada masyarakat\r\n'),
(19, 5, 'Peningkatan jumlah publikasi nasional\r\ndan internasional\r\n'),
(20, 5, 'Pengembangan sistem reward atas\r\nkegiatan publikasi ilmiah\r\n'),
(21, 5, 'Menyiapkan database penelitian dan\r\npengabdian kepada masyarakat\r\n'),
(22, 5, 'Menjaring kemitraan, lokal, nasional\r\ndan internasiona');

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
(1, 1, 'Tersusunnya Rencana Kerja Anggaran berdasarkan\r\nskala prioritas\r\n'),
(2, 1, 'Menyusun Standar Operasional Prosedur baru\r\nberdasarkan kebutuhan\r\n'),
(3, 1, 'Pelaksanaan Standar Operasional Prosedur yang\r\ntelah disusun'),
(4, 1, 'Penerapan sistem informasi dan teknologi\r\nterintegrasi\r\n'),
(5, 1, 'Ketersediaan RENSTRA dan RENOP Unit Kerja'),
(6, 2, 'jumlah program studi yang terakreditasi \"sangat baik\"'),
(7, 2, 'Melaksanakan audit internal secara priodik'),
(8, 2, 'Monitoring dan evaluasi hasil audit internal\r\n'),
(9, 2, 'Rencana kerja tindak lanjut atas hasil audit interna'),
(10, 3, 'Tersusun dan terimplementasi rencana induk\r\npengembangan Sumber Daya Manusia\r\n'),
(11, 3, 'Tersusun dan terimplementasi sistem rekrutmen'),
(12, 3, 'Tersusun dan terimplementasi sistem seleksi yang\r\ntransparan dan akuntabel\r\n'),
(13, 3, 'Tersusun dan terimplementasi standar kompetensi\r\nsebagai dasar penempatan Sumber Daya\r\nManusia\r\n'),
(14, 3, ' Pendirian dan pemanfaatan training center dalam\r\nrangka pengembangan Sumber Daya Manusia'),
(15, 3, 'Jumlah Sumber Daya Manusia yang mengikuti\r\npendidikan dan pelatihan\r\n'),
(16, 3, 'Tersusun dan terlaksananya perencanaan\r\npengembangan karir'),
(17, 3, 'Terlaksananya sistem penggajian, tunjangan, dan\r\nbonus secara terpusat\r\n'),
(18, 4, 'Terlaksananya sistem penggajian, tunjangan, dan\r\nbonus secara terpusat\r\n'),
(19, 4, 'Terdapat rencana induk pengembangan sumber\r\ndaya fisik/infrastruktur yang berorientasi kepada\r\nkeselamatan, kesehatan dan ramah lingkungan'),
(20, 4, 'Tingkat penggunaan sumber daya\r\nfisik/infrastruktur'),
(21, 4, 'Jumlah sumber daya fisik/infrastruktur bagi\r\npenyandang disabilitas\r\n'),
(22, 5, 'Tersedianya dan terimplementasinya sistem seleksi\r\nmahasiswa baru yang transparan dan akuntabel\r\n'),
(23, 5, 'Propoporsi mahasiswa dengan program beasiswa'),
(24, 5, 'Tersedia dan terlaksananya program beasiswa\r\nmahasiswa'),
(25, 5, 'Tingkat persebaran mahasiswa secara geografis\r\n(nasional)\r\n'),
(26, 5, ' Jumlah mahasiswa baru internasional dalam proses\r\npembelajaran\r\n'),
(27, 6, 'Tersusun dan terlaksananya kurikulum berbasis KKNI\r\n'),
(28, 6, 'Proporsi mata kuliah berbasis penelitian dosen\r\n'),
(29, 6, ' Tersusun dan terlaksananya kegiatan Kampus Merdeka\r\n'),
(30, 6, 'Jumlah adopsi kegiatan pembelajaran di luar\r\nperguruan tinggi\r\n'),
(31, 6, 'Jumlah peserta magang bersertifikat'),
(32, 6, 'Jumlah mitra desa\r\n'),
(33, 7, 'Proporsi dosen dengan jabatan fungsional\r\n'),
(34, 7, ' Proporsi dosen dengan sertifikasi pendidik'),
(35, 7, 'Dosen tugas belajar/izin belajar\r\n'),
(36, 7, 'Jumlah Guru Besar (profesor)\r\n'),
(37, 7, 'Proporsi dosen dengan gelar S3\r\n'),
(38, 7, 'Rata-rata rasio dosen/mahasiswa tiap program studi\r\n'),
(39, 7, 'Proporsi dosen yag telah mengikuti pelatihan\r\nprofesioanalisme dosen'),
(40, 8, 'Jumlah Okupasi'),
(41, 8, 'Tersedianya laboratorium'),
(42, 8, 'Tersedianya ruang publik kreatif'),
(43, 8, 'Tingkat penggunaan e-learning dalam proses\r\npembelajaran\r\n'),
(44, 9, 'Jumlah mata kuliah yang ditawarkan dalam bentuk\r\njarak jauh\r\n'),
(45, 9, ' Jumlah mata kuliah yang ditawarkan untuk umum\r\nsecara masif dan terbuka (massive open online course)\r\n'),
(46, 9, 'Jumlah mata kuliah yang ditawarkan untuk umum\r\nsecara masif dan terbuka (massive open online course)\r\n'),
(47, 9, 'Jumlah partisipasi masyarakat dalam mata kuliah\r\numum\r\n'),
(48, 10, 'Tingkat kelulusan kegiatan mentoring\r\n'),
(49, 10, 'Jumlah pelatihan soft skill'),
(50, 10, 'Keterlibatan mahasiswa dalam kegiatan\r\npemberdayaan masyarakat\r\n'),
(51, 10, 'Tingkat kepuasan pengguna alumni\r\n'),
(52, 10, 'Tingkat persepsi kepuasan masyarakat terhadap\r\nperilaku alumni'),
(53, 11, 'Proporsi lulusan yang bekerja sesuai bidang'),
(54, 11, 'Proporsi lulusan dengan masa tunggu < 6 bulan\r\n'),
(55, 11, 'Proporsi lulusan yang lulus tepat waktu atau lebih\r\ncepat\r\n'),
(56, 11, 'Rata-rata IPK lulusan per prodi\r\n'),
(57, 11, 'Proporsi lulusan yang bekerja pada level nasional'),
(58, 11, 'Proporsi lulusan yang bekerja pada level\r\ninternasional\r\n'),
(59, 12, 'Tingkat keterlibatan mahasiswa'),
(60, 12, ' Jumlah prestasi akademik tingkat nasional'),
(61, 12, 'Jumlah prestasi akademik tingkat internasional\r\n'),
(62, 12, 'Jumlah usulan Program Kreatifitas Mahasiswa (PKM)\r\n'),
(63, 12, 'Jumlah PKM yang didanai'),
(64, 12, 'Jumlah PKM yang lolos ke PIMNAS\r\n'),
(65, 12, 'Jumlah kegiatan pelatihan kompetisi akademik\r\n'),
(66, 13, 'Kegiatan campus hiring\r\n'),
(67, 13, 'Jumlah kegiatan pembekelan mahasiswa prakerja\r\n'),
(68, 14, 'Jumlah kegiatan yang berorientasi wirausaha'),
(69, 14, 'Jumlah mahasiswa yang berwirausaha'),
(70, 14, 'Jumlah alumni yang berwirausaha'),
(71, 15, 'Jumlah donatur/pemberi beasiswa yang terlibat'),
(72, 15, 'Jumlah lulusan yang melanjutkan studi'),
(73, 16, 'Jumlah penelitian'),
(74, 16, 'Jumlah penelitian multidisiplin\r\n'),
(75, 16, 'Jumlah penelitian dengan melibatkan\r\nmahasiswa\r\n'),
(76, 16, 'Jumlah penelitian multidisiplin dengan\r\nmelibatkan mahasiswa'),
(77, 17, 'Jumlah penelitian yang berbasis permasalahan\r\nlokal\r\n'),
(78, 17, 'Jumlah penelitian yang berbasis permasalahan\r\nnasional'),
(79, 17, 'jumlah penelitian yang berbasis permasalahan\r\ninternasional\r\n'),
(80, 18, 'Jumlah kegiatan pengabdian kepada\r\nmasyarakat\r\n'),
(81, 18, 'Jumlah kegiatan pengabdian kepada\r\nmasyarakat dengan melibatkan mahasiswa'),
(82, 19, 'Jumlah publikasi nasional\r\n'),
(83, 19, 'Jumlah publikasi internasional\r\n'),
(84, 20, 'Jumlah dosen yang mendapat reward publikasi\r\nnasiona'),
(85, 20, 'Jumlah dosen yang mendapat reward publikasi\r\ninternasional'),
(86, 21, 'Tersedianya database penelitian'),
(87, 21, 'Tersedianya database pengabdian kepada\r\nmasyarakat'),
(88, 22, 'Jumlah lembaga kemitraan local'),
(89, 22, 'Jumlah lembaga kemitraan nasional\r\n'),
(90, 22, 'Jumlah lembaga kemitraan internasional\r\n');

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
(1, 'Mewujudkan tata kelola universitas yang efisien, efektif, transparan\r\ndan akuntabel\r\n'),
(2, 'Menciptakan suasana akademik yang kondusif, nyaman, dan menyenangkan'),
(3, 'Melahirkan lulusan yang unggul, kompeten, dan berakhlak mulia.'),
(4, 'Melaksanakan kegiatan penelitian dan pengabdian kepada masyarakat, untuk\r\nmenjawab persoalan di tingkat lokal, nasional, dan internasional.\r\n'),
(5, 'Mendesiminasikan hasil penelitan dan pengabdian kepada masyarakat pada\r\ntingkat nasional dan internasional.');

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
-- Struktur dari tabel `nonrkat`
--

CREATE TABLE `nonrkat` (
  `id_nonrkat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `next` int(11) DEFAULT NULL,
  `nama_kegiatan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latar_belakang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sasaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_capaian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bentuk_pelaksanaan_program` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_program` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `bidang_terkait` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_iku_parent` int(11) NOT NULL,
  `id_iku_child1` int(11) NOT NULL,
  `id_iku_child2` int(11) NOT NULL,
  `biaya_program` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atn` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rek` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rab` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pengajuan` enum('progress','approved') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pencairan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpj_kegiatan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpj_keuangan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validasi_status` int(2) NOT NULL,
  `nama_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nonrkat`
--

INSERT INTO `nonrkat` (`id_nonrkat`, `id_user`, `next`, `nama_kegiatan`, `tujuan`, `latar_belakang`, `sasaran`, `target_capaian`, `bentuk_pelaksanaan_program`, `tempat_program`, `tanggal`, `bidang_terkait`, `id_iku_parent`, `id_iku_child1`, `id_iku_child2`, `biaya_program`, `bank`, `atn`, `no_rek`, `rab`, `status_pengajuan`, `pencairan`, `lpj_kegiatan`, `lpj_keuangan`, `validasi_status`, `nama_status`, `created_at`, `updated_at`) VALUES
(54, 21, 24, 'Pembuatan Master Plan Pembangunan UTS selama 2020-2024', 'ewrwe rwer werw er', 'qweqwe  qwrewrw wer wer werw er', 'ewr werwer', 'ere rwer werwe', 'Adalah webinar dengan menghadirkan Pembicara dari luar yang berkompeten serta bekerjasama dengan Lembaga Psikologi yang ada di UTS.', 'wer we rwer wer', '2022-01-10', 'Sub Direktorat Penalaran, Minat dan Bakat, Direktorat Kemahasiswaan dan Alumni', 3, 12, 61, '5000000', 'MANDIRI', 'TEGUH IMAN HADINULLAH', '23123123', '4061dbe272f3307.pdf', 'progress', NULL, NULL, NULL, 1, 'Sekniv', '2022-01-10 07:38:27', '2022-01-10 07:38:27'),
(55, 21, 24, 'Pembuatan Master Plan Pembangunan UTS selama 2020-2024', 'ewrwe rwer werw er', 'qweqwe  qwrewrw wer wer werw er', 'ewr werwer', 'ere rwer werwe', 'Adalah webinar dengan menghadirkan Pembicara dari luar yang berkompeten serta bekerjasama dengan Lembaga Psikologi yang ada di UTS.', 'wer we rwer wer', '2022-01-10', 'Sub Direktorat Penalaran, Minat dan Bakat, Direktorat Kemahasiswaan dan Alumni', 3, 12, 61, '5000000', 'MANDIRI', 'TEGUH IMAN HADINULLAH', '23123123', '4061dbe38ba41b0.pdf', 'progress', NULL, NULL, NULL, 1, 'Sekniv', '2022-01-10 07:43:07', '2022-01-10 07:43:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nonrkat_pencairan`
--

CREATE TABLE `nonrkat_pencairan` (
  `id_pencairan_image` int(11) NOT NULL,
  `nonrkat_id` varchar(255) NOT NULL,
  `nominal` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nonrkat_pencairan`
--

INSERT INTO `nonrkat_pencairan` (`id_pencairan_image`, `nonrkat_id`, `nominal`, `images`, `created_at`, `updated_at`) VALUES
(6, '53', '1200000', '4061d69607638e4.pdf', '2022-01-06', '2022-01-06'),
(7, '53', '3000000', '4061d6963d97add.pdf', '2022-01-06', '2022-01-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nonrkat_validasi`
--

CREATE TABLE `nonrkat_validasi` (
  `id_validasi` int(11) NOT NULL,
  `nonrkat_id` int(11) NOT NULL,
  `id_struktur` int(11) NOT NULL,
  `status_validasi` int(5) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nonrkat_validasi`
--

INSERT INTO `nonrkat_validasi` (`id_validasi`, `nonrkat_id`, `id_struktur`, `status_validasi`, `message`, `created_at`, `updated_at`) VALUES
(21, 53, 21, 1, 'Sekniv - Input pengajuan', '2022-01-05 06:29:14', '2022-01-05 06:29:14'),
(25, 53, 24, 0, 'Direktur Keuangan - kwkkw', '2022-01-06 03:14:09', '2022-01-06 03:14:09'),
(26, 53, 24, 2, 'Direktur Keuangan - Terima mo', '2022-01-06 03:14:22', '2022-01-06 03:14:22'),
(27, 53, 23, 0, 'Warek II Keuangan - kwkkw', '2022-01-06 03:17:55', '2022-01-06 03:17:55'),
(28, 53, 23, 2, 'Warek II Keuangan - Terima mo', '2022-01-06 03:18:10', '2022-01-06 03:18:10'),
(29, 53, 22, 2, 'Rektor - Terima mo', '2022-01-06 03:19:23', '2022-01-06 03:19:23'),
(32, 53, 24, 999, 'Direktur Keuangan (Pencairan) - Pencairan RP. 1200000', '2022-01-06 07:11:03', '2022-01-06 07:11:03'),
(33, 53, 24, 999, 'Direktur Keuangan (Pencairan) - Pencairan RP. 3000000', '2022-01-06 07:11:57', '2022-01-06 07:11:57'),
(36, 53, 24, 3, 'Direktur Keuangan (Pencairan) Pencairan selesai', '2022-01-06 07:23:50', '2022-01-06 07:23:50'),
(43, 55, 21, 1, 'Sekniv Input pengajuan', '2022-01-10 07:43:07', '2022-01-10 07:43:07'),
(44, 54, 21, 1, 'Sekniv Input pengajuan', '2022-01-10 07:43:07', '2022-01-10 07:43:07'),
(45, 53, 21, 1, 'Sekniv Upload LPJ Keuangan', '2022-01-10 08:44:00', '2022-01-10 08:44:00'),
(48, 53, 24, 4, 'Direktur keuangan Terima mo LPJ ta', '2022-01-10 08:47:29', '2022-01-10 08:47:29'),
(49, 53, 21, 1, 'Sekniv Upload LPJ Kegiatan', '2022-01-10 08:52:10', '2022-01-10 08:52:10'),
(50, 53, 21, 4, 'Sekniv Terima mo', '2022-01-10 08:52:36', '2022-01-10 08:52:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `kode_rkat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `next` int(11) DEFAULT NULL,
  `latar_belakang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sasaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_capaian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bentuk_pelaksanaan_program` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_program` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `bidang_terkait` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_iku_parent` int(11) NOT NULL,
  `id_iku_child1` int(11) NOT NULL,
  `id_iku_child2` int(11) NOT NULL,
  `biaya_program` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biaya_disetujui` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atn` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rek` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rab` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pengajuan` enum('progress','approved') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pencairan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpj_kegiatan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpj_keuangan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validasi_status` int(2) NOT NULL,
  `nama_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengajuan`
--

INSERT INTO `pengajuan` (`id_pengajuan`, `kode_rkat`, `id_user`, `next`, `latar_belakang`, `sasaran`, `target_capaian`, `bentuk_pelaksanaan_program`, `tempat_program`, `tanggal`, `bidang_terkait`, `id_iku_parent`, `id_iku_child1`, `id_iku_child2`, `biaya_program`, `biaya_disetujui`, `bank`, `atn`, `no_rek`, `rab`, `status_pengajuan`, `pencairan`, `id_period`, `lpj_kegiatan`, `lpj_keuangan`, `validasi_status`, `nama_status`, `created_at`, `updated_at`) VALUES
(160, '239', 114, 21, 'Mahasiswa agar memiliki SKA (Skill, Knowledge dan Attitude)', 'Mencetak sertifikat peserta sertifikasi kompetensi', '600 Mahasiswa di kalikan 2 lembar', 'Print dilakukan secara Hard Copy', 'UTS', '2021-08-18', 'Rektor', 1, 3, 15, '350000', NULL, 'Mandiri', 'Arie Kasmita', '1610006286871', '40611c7e83180a6.xlsx', 'progress', NULL, NULL, NULL, NULL, 0, 'Sekniv', '2021-08-18 03:29:07', '2021-10-20 17:38:55'),
(164, '251', 61, 23, 'BKD & LKD sebagai bentuk tanggungjawab Tri Dharma PT', 'Seluruh Dosen UTS', 'Dosen mengerti secara teknis dalam penyusunan BKD & LKD', 'Sosialisasi', 'Zoom Metting', '2021-08-24', 'WAREK I, Direktorat Akademik', 1, 3, 10, '500000', NULL, 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40611dfc60ba0ce.pdf', 'progress', NULL, NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-08-19 06:38:24', '2021-10-20 17:40:53'),
(166, '298', 60, 58, 'kurangnya manajemen organisasi', 'Mahasiswa UTS', 'Melatih mahasiswa dalam mengelola organisasi', 'Seminar Online', 'UTS', '2021-08-30', 'Direktur Kemahasiswaan dan Alumni UTS', 3, 10, 49, '1000000', NULL, 'Bank NTB Syariah', 'BEM UTS', '0090200700276', '406123341f31540.pdf', 'progress', NULL, NULL, NULL, NULL, 0, 'Warek 1 Akademik', '2021-08-23 05:37:35', '2021-10-20 17:44:27'),
(168, '298', 60, 24, 'Kurangnya keterampilan organisasi dalam memanajemen Organisasi', 'Mahasiswa Aktif UTS Khususnya Pengurus Organisasi kemahasiswaan', 'a.	Melatih mahasiswa dalam mengelola serta mengembangkan organisasinya', 'Webinar secara Online', 'Universitas Teknologi Sumbawa', '2021-08-30', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 10, 49, '1000000', NULL, 'Bank NTB Syariah', 'BEM Universitas Teknologi Sumbawa', '0090200700276', '406126efe87fa7f.pdf', 'progress', '', NULL, NULL, NULL, 2, 'Rektor', '2021-08-26 01:35:36', '2021-12-07 06:01:13'),
(170, '273', 60, 23, 'mahasiswa belum mengetahui/mendapatkan bekal ketika akan magang', 'Mahasiswa yang akan melaksanakan kegiatan Magang', 'Mahasiswa mengetahui Do\'s and don\'ts saat melaksanakan magang', 'webinar secara daring', 'Universitas Teknologi Sumbawa', '2021-08-18', 'CDC - Direktur Kemahasiswaan dan Alumni UTS', 3, 11, 53, '1100000', NULL, 'Mandiri', 'Arie Kasmita', '1610006286871', '406126f58a529b9.pdf', 'progress', NULL, NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-08-26 01:59:38', '2021-08-31 07:34:57'),
(171, '298', 60, 24, 'PKM lolos pendanaan akan melakukan monev eksternal Kemdikbud 2021', '12 tim PKM lolos pendanaan', 'tim PKM lolos pendanaan akan lebih siap dalam monev PKM', 'masing masing Tim akan memaparkan progres kerja PKM pada tim monev internal UTS', 'Universitas Teknologi Sumbawa', '2021-09-01', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 12, 63, '2250000', NULL, 'Mandiri', 'Teguh Iman Hadinullah', '1610006273952', '4061270558c9b96.pdf', 'progress', '', NULL, NULL, NULL, 2, 'Rektor', '2021-08-26 03:07:05', '2021-12-07 06:02:29'),
(175, '101', 73, 21, 'Menjajaki kerja sama dan audiensi dengan para mitra dan calon mitra di setiap instansi', 'penambahan jumlah kerja sama', 'Munculnya lebih dari 5 kerja sama baru', 'Pertemuan terbatas dan daring', 'instansipemerintahan kabupaten, provinsi dan pusat serta dengan pihak swasta', '2021-08-31', 'FTB', 1, 2, 9, '3000000', NULL, 'BRI', 'Anita Gusmiarti', '810101008139530', '4061287f951736c.pdf', 'progress', 'default.jpg', NULL, NULL, '', 4, 'Direktorat Keuangan', '2021-08-27 06:00:53', '2022-02-10 07:20:43'),
(179, '369', 64, 24, 'Program ini dilaksanakan sebagai upaya meningkatkan dan   mengembangkan potensi UPT Bahasa dalam kegiatan kewirausahaan.  Adapun kegiatan ini bertujuan untuk media dan sarana promosi UPT Bahasa.', 'Mengembangkan potensi UPT Bahasa dalam kegiatan kewairausahaan', 'Pengembangan potensi UPT Bahasa yang  rampung pada bulan September 2021', '-', '-', '2021-09-01', 'WR 2', 1, 1, 1, '2000000', NULL, 'Mandiri', 'UTS UPT BAHASA', '1610006267970', '40612f139965ac3.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Sekniv', '2021-09-01 05:46:01', '2021-09-06 03:49:53'),
(180, '325', 89, 24, 'Arah pengembangan Fakultas Teknologi Lingkungan dan Mineral (FTLM) harus sejalan dengan perkembangan zaman. Renstra dan Renop FTLM sebagai arah dalam pengambilan keputusan dalam penyelenggaraan dan pengelolaan Fakultas dalam lima tahun ke depan dengan memertimbangkan berbagai aspek strategis lainnya. Rencana strategis dan Renop Fakultas  sebagai langkah pertama dalam penyusunan Rencana Kerja Fakultas Teknologi Lingkungan dan Mineral. Dalam proses penyusunannya, Renstra dan Renop FTLM mempertimbangkan berbagai kebijakan dasar dan strategis ke depan yang diputuskan melalui Senat Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen renstra dan Renop periode 2021-2025', '1) Terbentuknya tim penyusun dokumen renstra dan Renop Fakultas.  2) Rampungnya dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Dekan membentuk tim penyusun dokumen renstra yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen renstra dan Renop.', 'Universitas Teknologi Sumbawa', '2021-09-06', 'Seluruh program studi di Fakultas Teknologi Lingkungan dan Mineral', 1, 1, 1, '1750000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f163343185.xlsx', 'progress', '4061bab1b3ef8e0.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-01 05:57:07', '2021-12-16 03:25:45'),
(181, '326', 89, 24, 'Visi, misi, tujuan, dan sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM) Universitas Teknologi Sumbawa selanjutnya disingkat FTLM-UTS. Visi, misi, tujuan, dan sasaran FTLM-UTS disusun dengan memperhatikan perkembangan ilmu pengetahuan, teknologi, dan dinamika kehidupan masyarakat yang berubah dengan sangat cepat. Rumusan Visi, misi, tujuan, dan sasaran FTLM  ini dibuat dengan tujuan untuk meningkatkan mutu FTLM-UTS, baik mutu Dosen  maupun mahasiswa Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral.', '1) Terbentuknya tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran Fakultas.  2) Rampungnya dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM)', 'Dekan membentuk tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen Visi, Misi, Tujuan dan Sasaran .', 'Universitas Teknologi Sumbawa', '2021-09-06', 'Seluruh program studi di Fakultas Teknologi Lingkungan dan Mineral', 1, 1, 1, '3000000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '4061822d662baa1.rar', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-09-01 06:03:50', '2021-12-14 04:31:12'),
(182, '327', 89, 24, 'Tujuan arah kebijakan Fakultas Teknologi Lingkungan dan Mineral (FTLM) untuk membangun profil Fakultas yang produktivitas,  sesuai perkembangan ilmu pengetahuan, teknologi, dan dinamika kehidupan masyarakat serta memiliki kemampuan yang sesuai dengan bidang keilmuan. memberikan pelayanan yang prima melalui perubahan pola pikir (mind set) dan budaya kerja (culture set) dalam sistem menejerial Fakultas. Salah satu upaya penataan tata kelola fakultas diwujudkan dalam bentuk penyusunan dan implementasi standar Standar Operasional Prosedur Fakultas Teknologi Lingkungan dan Mineral (FTLM) (selanjutnya disebut dengan (SOP) dalam pelaksanaan tugas dan fungsi dosen dan staff dilingkungan Fakultas. Kegiatan penyusunan dan implementasi SOP memerlukan partisipasi penuh dari seluruh unsur yang ada di dalam Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Standar Operasional Prosedur (SOP)', '1) Terbentuknya tim penyusun dokumen Standar Operasional Prosedur (SOP)Fakultas.  2) Rampungnya dokumen Standar Operasional Prosedur (SOP)Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Dekan membentuk tim penyusun dokumen Standar Operasional Prosedur (SOP) yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen SOP Fakultas', 'Universitas Teknologi Sumbawa', '2021-09-08', 'Seluruh Program studi di FTLM', 1, 1, 2, '1500000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f18eed9ea2.xlsx', 'progress', '4061bab164e9712.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-01 06:08:47', '2021-12-16 03:24:26'),
(183, '328', 89, 24, 'Banyaknya penelitian dan pengabdian yang dikompetisikan di tingkat nasional seperti Dikti, Ristek dan lain-lain menuntut kesiapan para dosen/peneliti yang ingin berkompetisi dalam merebutkan hibah penelitian tersebut. Aspek yang paling penting adalah kapasitas yang cukup dalam penguasaan teknik penyusunan proposal penelitian. Dengan latar belakang tersebut Pihak Fakultas Teknologi Lingkungan dan Mineral (FTLM) perlu memberikan solusi kepada para dosen dengan cara mengadakan \"Coaching Clinic\" membuat proposal Hibah. Workshop/Coaching Clinic Penyusunan Proposal Penelitian  penting untuk dilakukan sebagai salah satu upaya mendorong para dosen dan peneliti untuk semangat meneliti sesuai dengan bidang ilmunya dan mempublikasikan hasil-hasil karya mereka di jurnal nasional dan jurnal internasional serta terimplementasi di tingkat masyarakat luas.', 'Peningkatan kualitas SDM di Lingkungan Fakultas Teknologi Lingkungan dan Mineral (FTLM)', '1) Dosen mengikuti coaching clinic membuat proposal Hibah dan Pelatihan Pembuatan Vidio Pembelajaran yang menarik  2) Dosen menerapkan apa yang diperoleh saat pelatihan  3) Dosen yang telah mengikuti pelatihan mampu mengaplikasikan ilmunya dalam bentuk produk proposal hibah dan vidio pembelajaran.', '1).Membekali dosen dengan coaching clinic membuat proposal Hibah. 2) Membekali dosen dengan pelatihan membuat vidio pembelajaran yang menarik.', 'Universitas Teknologi Sumbawa', '2021-09-20', 'Program studi di FTLM', 4, 17, 78, '1500000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1a3b7133c.xlsx', 'progress', '4061bab11169faf.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-01 06:14:19', '2021-12-16 03:22:57'),
(184, '329', 89, 24, 'Orientasi studi dan pengenalan kampus (OSPEK) Fakultas adalah kegiatan yang diselenggarakan oleh Senat Mahasiswa Fakultas (SMF) bekerja sama dengan Himpunan Mahasiswa (HMP) dari setiap program studi dibawah naungan fakultas, serta pemilihan ketua Senat Mahasiswa Fakultas (SMF) Sains dan Teknologi 2019. Perguruan tinggi mengembangkan fungsi Tri Dharma yaitu  pegajaran, penelitian, dan pengabdian masyarakat. Salah satu fungsi dari perguruan tinggi adalah fungsi pengajaran. Fakultas Teknologi Lingkungan dan Mineral (FTLM) Melaksanakan fungsi tersebut melalui kegiatan Orientasi Studi dan Pengenalan Kampus (OSPEK) Fakultas Teknologi Lingkungan dan Mineral (FTLM). Latar belakang dari dilaksanakannya kegiatan ini adalah Kebutuhan mahasiswa akan motivasi tentang perkenalan Fakultas terkhusus Fakultas Teknologi Lingkungan dan Mineral (FTLM). Oleh karena itu,  diperlukan sebuah pembekalan intensif mengenai motivasi dan kiat-kiat untuk menjadi mahasiswa Fakultas Teknologi Lingkung dan Mineral (FTLM) yang disampaikan oleh Dekan Fakultas Teknologi Lingkungan dan Mineral beserta jajarannya.', 'Peningkatan wawasan mahasiswa baru terkait Fakultas Teknologi Lingkungan dan Mineral', '1. Mahasiswa Baru akan lebih mengenalkan Fakultas Teknologi Lingkungan dan Mineral 2.J iwa solidaritas, disiplin, berintegritas, dan berintelektual, serta moralitas akan terbentuk pada mahasiswa baru FTLM 3. Mahasiswa Baru mampu memahami nilai-nilai  kekeluargaan,  profesionalitas, serta menghargai perbedaan budaya', '1. Mengenalkan Fakultas Teknologi Lingkungan dan Mineral kepada mahasiswa baru angkatan 2021 2. Membentuk mahasiswa baru FTLM  yang memiliki jiwa solidaritas, disiplin, berintegritas, dan berintelektual, serta memiliki moralitas yang tinggi 3. Menanamkan nilai-nilai kekeluargaan,  profesionalitas, serta menghargai perbedaan budaya', 'Universitas Teknologi Sumbawa (media zoom)', '2021-10-02', 'Program studi di FTLM', 3, 10, 49, '1000000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '4061822ec80561f.rar', 'progress', '4061b2fb8905082.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-01 06:19:00', '2021-12-10 07:02:33'),
(185, '330', 89, 23, 'Mengingat pengabdian masyarakat merupakan bagian integral Tri Dharma Perguruan Tinggi yang dalam pelaksanaannya tidak terlepas dari dua dharma yang lainnya, serta melibatkan segenap sivitas akademik: dosen, mahasiswa, tenaga kependidikan serta alumni. Melalui pengadian masyarakat sivitas akademik dapat hadir di tengah-tengah masyarakat. Melestarikan lingkungan hidup merupakan kebutuhan yang tidak bisa ditunda maupun diabaikan, karena melestarikan lingkungan hidup bukan hanya menjadi tanggung jawab pemerintah (Negara) saja, melainkan tanggung jawab setiap insan di bumi. Setiap orang wajib melakukan usaha untuk menyelamatkan lingkungan hidup disekitarnya. Dengan kapasitas masing-masing, sekecil apapun usaha yang dilakukan akan sangat bermanfaat bagi terwujudnya kehidupan bagi terwujudnya bumi yang layak di huni.', 'Meningkatkan kesadaran dosen dan mahasiswa terhadap lingkungan', 'Partisipasi dosen dan mahasiswa', 'Pengabdian Masyarakat Aksi Peduli Lingkungan', 'Desa Binaan', '2021-11-10', 'Program studi di FTLM', 4, 18, 80, '1000000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '4061823018cb332.rar', 'progress', NULL, NULL, NULL, NULL, 1, 'Fakultas Teknik Lingkugan dan Mineral', '2021-09-01 06:26:55', '2021-11-03 06:45:45'),
(186, '331', 89, 24, 'Salah satu tujuan dalam pelaksanaan penelitian adalah mempublikasikan hasil penelitian dalam bentuk jurnal pada suatu penerbit/publisher. Segala jenis dukungan untuk menghasilkan publikasi ilmiah terus dilakukan, termasuk membantu pembiayaan penerbitan jurnal, baik jurnal tingkat nasional maupun internasional. Dengan bantuan pembiayaan penerbitan jurnal diharapkan memacu para peneliti untuk terus menulis karya ilmiah terutama pada jurnal internasional bereputasi.', 'Meningkatnya mutu publikasi hasil penelitian dosen-dosen di Fakultas Teknologi Lingkungan dan Mineral', 'Angka dan Mutu Publikasi Meningkat', 'Program Talangan Publikasi Jurnal Internasional Bereputasi atau minimal Sinta 2.', 'Universitas Teknologi Sumbawa', '2021-12-06', 'Semua Program studi di lingkungan FTLM', 5, 20, 84, '2250000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f263fed37f.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-09-01 07:05:36', '2021-12-07 08:25:11'),
(187, '332', 89, 24, 'DOI atau Digital Object Identifier atau Pengenal Objek Digital (dalam bahasa Indonesia ) adalah tools pengenal permanen yang digunakan pada suatu dokumen elektronik terutama terkait dengan artikel jurnal. Dalam proses akreditas jurnal oleh Kemristekdikti, salah satu poin penilaian adalah Alamat/Identitas Unik Artikel (DOI). Jurnal Hexagon telah terdaftar Sehingga Fakultas Teknologi Mineral dan Lingkungan perlu secara konsisten adanya keberadaan DOI Jurnal Fakultas.', 'Mempersiapkan Jurnal Fakultas menjadi Jurnal Terakreditasi', 'Pembiayaan DOI Jurnal Fakultas (Hexagon)', 'Pembiayaan DOI Jurnal', 'Universitas Teknologi Sumbawa', '2021-08-16', 'Semua Program studi di lingkungan FTLM', 4, 17, 78, '1000000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f273661057.xlsx', 'progress', '4061bab06d61f68.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-01 07:09:42', '2021-12-16 03:20:14'),
(189, '262', 53, 24, 'Meminimalisir terjadinya kesalahan dalam pencetakan ijazah dan transkrip', 'Mahasiswa calon wisudawan', 'kesalahan pencatakan dapat diminimalisir, sehingga menghemat penggunaan blangko ijazah dan transkrip nilai', 'offline', 'loket akademik', '2021-08-11', 'Bagian akademik, kaprodi dan dekan masing-masing fakultas', 1, 1, 1, '600000', NULL, 'BSI', 'Eva Juliani', '7730066710', '40613041c57056f.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-09-02 03:15:17', '2021-09-20 21:20:34'),
(191, '296', 60, 24, 'PKM merupakan salah satu wujud implementasi Tridharma Perguruan Tinggi yang diluncurkan  oleh Direktorat Jenderal Pendidikan Tinggi pada  tahun 2021 di bawah pengelolaan Direktorat  Pembelajaran dan Kemahasiswaan (Belmawa)  merupakan salah satu upaya untuk menumbuhkan, mewadahi, dan mewujudkan ide kreatif serta inovatif mahasiswa', '12 Tim PKM Lolos Pendanaan Universitas Teknologi Sumbawa', 'agar tim pkm dapat melakukan kegiatan dengan baik dan sesuai panduan', 'Seminar Online melalui link zoon Kemdikbud', 'Kemdikbud RI dan Universitas Teknologi Sumbawa', '2021-09-06', 'Direktur Kemahasiswaan dan Alumni UTS', 3, 12, 63, '1625000', NULL, 'Bank Mandiri', 'Putri Indah Kencana', '1610004658287', '406135a2a13f9e6.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-09-06 05:09:53', '2021-09-20 21:20:15'),
(192, '394', 116, 24, 'Perbedaan jadwal dan kesibukan tiap dosen pada tugas strukturalnya membuat dosen jarang dapat berkumpul membicarakan agenda prodi secara terarah, sehingga perlu diluangkan waktu khusus, setidaknya 1 kali sebulan.', 'Mengawal berlangsungnya proses PPEPP pada setiap kegiatan yang dilakukan oleh Prodi Teknik Lingkungan secara bersama-sama', '1) Kehadiran dosen dalam setiap rapat mencapai 80%  2) Setiap agenda rapat dibahas hingga tuntas  3) Adanya Rencana Tindak Lanjut dalam setiap rapat.', 'Rapat', 'UTS', '2021-09-24', 'Wakil Rektor I - IV dan BPMA', 1, 1, 3, '500000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '406151735608190.pdf', 'progress', '4061b820629b50c.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-06 13:49:21', '2021-12-14 04:41:07'),
(193, '395', 116, 24, 'Pengelolaan terhadap data menjadi suatu keharusan bagi sebuah unit kerja yang baru seperti Prodi Teknik Lingkungan. Ini perlu dilakukan sejak awal agar data dapat tersusun rapi dan mampu memberikan insight bagi pengambil kebijakan, agar mampu merumuskan kebijakan yang tepat berdasarkan data.', 'Data yang ada di program Studi Teknik Lingkungan dapat tersusun dengan rapi dan mampu divisualisasikan ke dalam infografis / Google Data Studio', '1) Data yang ada terkelola dengan baik (2) Data yang telah dikelola mampu divisualisasikan ke dalam infografis/ Google Data Studio', 'Pelatihan/ Workshop', 'Room Zoom', '2021-11-18', 'Wakil Rektor I - IV', 1, 1, 3, '500000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '406152461e5ebcc.pdf', 'progress', NULL, NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:05:59', '2021-09-27 22:30:54'),
(194, '396', 116, 24, 'Dalam mewujudkan Teknik Lingkungan yang unggul perlu kesepakatan Bersama dalam menentukan kegiatan/program kerja yang mendukung kemajuan Program Studi sesuai dengan rencana strategis yang dicanangkan. Selain itu, perlu adanya evaluasi pada setiap kegiatan yang telah dilakukan untuk mengukur keberhasilan yang telah dilakukan selama satu tahun terakhir.', 'Tersusunnya RKAT 2022 dan Laporan Tahunan 2021', '(1) Tersusunnya RKAT untuk Tahun 2022  (2) Tersusunnya Laporan Tahunan Program Studi untuk Tahun 2021', 'Rapat', 'UTS', '2021-12-21', 'Wakil Rektor II', 1, 1, 1, '500000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '406136233589447.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Fakultas Teknik Lingkugan dan Mineral', '2021-09-06 14:18:29', '2021-09-09 00:00:02'),
(195, '397', 116, 24, 'Kurikulum merupakan ruh dalam pelaksanaan pendidikan atau kegiatan akademik di suatu pendidikan tinggi. Penerapan Kampus Merdeka telah memaksa institusi pendidikan tinggi untuk mampu beradaptasi secara cepat dalam melaksanakannya. Tidak terkecuali dalam penyesuaian kurikulumnya. Prodi Teknik Lingkungan sebagai unit kerja yang baru berkesempatan melaksanakan ini sejak awal, sehingga perlu dilakukan secara cermat. Mengingat pentingnya kurikulum ini dalam keberlangsungan pendidikan di Prodi Teknik Lingkungan maka akan dibentuk Tim Penyusun Kurikulum yang selanjutnya akan bertugas menyusun Dokumen Kurikulum Merdeka Belajar Kampus Merdeka (MBKM).', 'Program Studi Teknik Lingkungan Memiliki Dokumen Kurikulum Merdeka Belajar Kampus Merdeka (MBKM)', '(1) Terbentuknya tim penyusun dokumen Kurikulum MBKM 	(2) Rampungnya Dokumen Kurikulum MBKM', 'Rapat, FGD', 'UTS', '2021-09-01', 'Wakil Rektor I dan BPMA', 3, 11, 55, '2500000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '4061518d6e57cec.pdf', 'progress', '4061b19dd789a69.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-06 14:22:57', '2021-12-09 06:10:32'),
(196, '398', 116, 24, 'Kondisi pandemi Covid-19 yang belum jelas kapan akan berakhir menuntut institusi pendidikan tinggi untuk mampu beradaptasi dalam kegiatan pembelajaran-nya. Salah satu upaya yang dilakukan adalah dengan penerapan sistem blended learning. Dalam penerapannya, sistem ini membutuhkan dukungan prasarana yang memadai, salah satunya dalah “Akun Zoom Premium”. Dengan ini, kegiatan pembelajaran secara daring akan lebih nyaman pelaksanaannya.', 'Program Studi Teknik Lingkungan melanggan akun zoom premium dengan durasi 1 (satu) tahun.', '(1) Memiliki akun zoom premium berlangganan selama 1 (satu) tahun.  (2) Akun zoom dapat dimanfaatkan oleh seluruh civitas akademika di lingkungan Prodi Teknik Lingkungan untuk kepentingan pendidikan.', 'Pengadaan', '-', '2021-09-27', 'Wakil Rektor II', 2, 8, 43, '1200000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40615188260d7a0.pdf', 'progress', '4061b2aae786631.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-06 14:27:00', '2021-12-10 01:18:32'),
(197, '399', 116, 24, 'Sebagian besar dosen di ProdiTeknik Lingkungan merupakan dosen muda yang dituntut untuk terus tumbuh dan mampu beradaptasi secara cepat terhadap tugas pokok dan fungsinya sebagai dosen. Pelatihan pekerti merupakan salah satu pelatihan yang sangat berguna dalam mendukung kelancaran proses pembe-lajaran.  Melalui kegiatan ini SDM akan dibekali pengetahuan mengenai konsep pengembangan kurikulum, desain pemelajaran, penyusunan RPS, keteram-pilan dasar mengajar dan beberapa pengetahuan lain yang akan sangat berguna untuk kemajuan Program Studi dan Dosen.', 'Peningkatan kualitas SDM di Prodi Teknik Lingkungan.', '(1) Dosen mengikuti pelatihan pekerti. (2) Dosen menerapkan apa yang diperoleh saat pelatihan. (3) Dosen yang telah mengikuti pelatihan mampu mendistribusikan penge-tahuannya kepada rekan-rekan yang lain.', 'Pelatihan/ Workshop', 'Room Zoom', '2021-10-21', 'Wakil Rektor I dan BPMA', 1, 3, 15, '2300000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40615292a1122f2.pdf', 'progress', NULL, NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:33:34', '2021-09-28 03:57:21'),
(198, '400', 116, 24, 'Salah satu faktor yang cukup penting dalam pengembangan Prodi adalah peningkatan kapasitas SDM. Melalui program ini, Program Studi memberikan subsidi kepada dosen yang akan mengikuti diklat mengenai topik-topik Lingkungan Hidup yang sesuai dengan kompetensi prodi sebagai bentuk penguatan kapasitas terhadap SDM yang ada di Prodi Teknik Lingkungan.', 'Mendukung Pengembangan kapasitas SDM dengan mengikuti kegiatan-kegiatan pelatihan terkait Lingkungan Hidup.', '(1) Ada dosen yang mengikuti pelatihan terkait Lingkungan Hidup.  (2) Dosen yang telah mengikuti pelatihan mampu menularkan pemahamannya kepada rekan-rekan dosen lainnya di Prodi Teknik Lingkungan.', 'Pelatihan/Workshop', 'Room Zoom', '2021-12-15', 'Wakil Rektor I', 1, 3, 15, '2500000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '406176a18f4b8cf.pdf', 'progress', NULL, NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:38:19', '2021-10-25 12:22:39'),
(202, '475', 74, 24, 'Dalam rangka mewujudkan internasionalisasi UTS, diperlukan kemampuan branding informasi yang dapat diakses dan dipahami dengan mudah oleh masyarakat global. Untuk itu, Direktorat Kerjasama Luar Negeri telah menyusun konten Prospektus UTS 2022 sebagai media informasi, promosi dan penawaran potensi riset & inovasi dalam Bahasa Inggris', 'Ketersediaan dokumen informasi & promosi yang tersebar secara fisik maupun digital', 'Persebaran dokumen', 'Desain dan pengadaan dokumen digital & fisik', 'UTS', '2021-09-16', 'Tidak ada', 5, 22, 90, '1750000', NULL, 'BSI', 'Firda Wahyu Ningtiyas', '8347134020', '4061397f252409d.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek IV Kerjasama', '2021-09-09 03:27:33', '2021-09-14 04:39:28'),
(203, '306', 62, 24, 'Promosi PMB melalui Media Online', 'Siswa/I SMA/SMK/SMA-IT/MA/Pesantren dan Masyarakat Umum', '95%', 'online', 'Samaras Sia dan Inside Lombok', '2021-09-01', 'Media Online', 1, 1, 4, '350000', NULL, 'Mandiri', 'Widyawati Lestari', '1610007180420', '4061398a6235eea.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-09-09 04:15:30', '2021-09-20 21:19:57'),
(204, '307', 62, 24, 'Verifikasi data mahasiswa baru tahun akademik 2021/2022', 'Mahasiswa Baru', '100%', 'Ofline', 'RPK', '2021-09-13', 'Mahasiswa Baru, Kantor PMB, Direktorat Keuangan,UPT Beasiswa dan Direktorat Akademik', 2, 5, 22, '10750000', NULL, 'BRI', 'RYAN SUARANTALLA', '009301020554505', '4061398c6db7afa.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-09-09 04:24:14', '2021-12-07 08:24:52'),
(205, '307', 62, 24, 'Penginputan data calon mahasiswa baru jalurBeasiswa Nusantara', 'Calon Mahasiswa', '95%', 'online', 'Kantor PMB', '2021-08-12', 'Mahasiswa', 2, 5, 22, '500000', NULL, 'Mandiri', 'Widyawati Lestari', '1610007180420', '4061398e12a1ef9.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-09-09 04:31:14', '2021-12-07 08:24:47'),
(206, '334', 111, 21, 'Pembentukan Tim Perumusan Penyusunan Visi, Misi, Renstra Dan Renop Serta Alur Pelayanan Administrasi Akademik FRS', 'Pimpinan Fakultas, Program Studi dan Dosen yang di Tunjuk Yang Menjadi Tim Penyusun', 'Menghasilkan Dokumen Renstra & Renop, Dokumen VMTS dan Dokumen Layanan Administrasi Akademik', 'Rapat Pimpinan Fakultas & Program Studi', 'Ruangan Ex FEB', '2021-09-14', 'Semua Program Studi FRS', 1, 1, 5, '1187000', NULL, 'Mandiri', 'Mietra Anggara', '1610006291731', '4061398ff79e54e.pdf', 'progress', NULL, NULL, NULL, '4061b6ab41c9210.pdf', 4, 'Direktur Keuangan', '2021-09-09 04:39:19', '2021-12-16 07:28:39'),
(207, '336', 111, 21, 'Memenuhi keperluan pelayanan administrasi, penyampaian informasi melalui media sosial dan untuk mengenalkan struktur organisasi yang ada di lingkungan Fakultas Rekayasa Sistem', 'Seluruh Civitas Akademik di Lingkungan Fakultas Rekayasa Sistem', 'Tersampainya Informasi Secara Keseluruhan Kepada Civitas Akademik Fakultas Rekayasa Sistem Baik Secara Online maupun Offline', 'Publikasi dan Dokumentasi', 'di Lingkungan Fakultas Rekayasa Sistem', '2021-09-09', 'Fakultas Rekayasa Sistem', 1, 1, 4, '2500000', NULL, 'mandiri', 'Mietra Anggara', '1610006291731', '4061399201ad9bd.pdf', 'progress', '4061b6b801869b7.pdf', NULL, NULL, '4061c3d1a5d6a68.pdf', 4, 'Direktur Keuangan', '2021-09-09 04:48:01', '2021-12-27 03:25:17'),
(211, '217', 54, 21, 'Perkuliahan Semester Ganjil tahun akademik 2021-2022 akan segera berlangsung dengan perkuliahan online sehingga untuk kelancaran perkuliahan Fikom membutuhkan akun Zoom.', 'Dosen dan Mahasiswa Fikom', 'Penyediaan akun Zoom', 'Penyediaan akun Zoom', 'Fakultas', '2021-09-13', 'Akademik', 2, 8, 43, '2000000', NULL, 'Mandiri', 'UTS Fakultas Ilmu Komunikasi', '1610003673147', '40613b089b08763.pdf', 'progress', '4061ca65f3752ad.pdf', NULL, NULL, '4061ca7ed0b2506.pdf', 4, 'Direktur Keuangan', '2021-09-10 07:26:19', '2021-12-29 05:38:38'),
(212, '402', 84, 21, 'Akreditasi Jurnal merupakan salah waktu langkah yang harus dilakukan untuk mendapat pengakuan terkait kredibelitas jurnal dan diakui oleh negara sebagai jurnal yang kredibel untuk melakukan publikasi ilmiah baik oleh mahasiswa maupun dosen serta pihak lain yang berada di luar program perguruan Tinggi.', 'Jurnal Ilmiah JINTEKS', 'Terakreditasinya jurnal Jinteks', 'mempersiapkan akreditasi Jurnal sesuai dengan hasil koreksi dari  RJI (Relawan Jurnal Indonesia) diantaranya Top Up DOI Jurnal dan pendaftaran keanggotaan DOAJ', 'Arjuna.ristekbrin.go.id , www.doi.org (submit melalui RJI) dan Prodi Teknik Informatika (Persiapan Dokumen dengan Tim Jurnal)', '2021-09-28', 'Warek 3 , LPPM', 4, 17, 78, '4000000', NULL, 'Bank NTB Syariah', 'Rodianto,M.Kom', '0042203680023', '40613f6bb5c548f.pdf', 'progress', NULL, NULL, NULL, '4061b81b25ca920.pdf', 4, 'Direktur Keuangan', '2021-09-13 15:18:14', '2021-12-16 07:56:11'),
(213, '403', 84, 24, 'Dalam rangka diseminasi hasil-hasil penelitian para mahasiswa, dosen dan peneliti lainnya, Program Studi Teknik Informatika bekerjasama dengan Direktorat Riset dan Inovasi Wakil Rektor III dan berbagai pihak akan menyelenggarakan seminar nasional dalam bidang Teknologi Informasi, Komunikasi dan Sains (SINTEKSI I 2021), dengan tema: “Peran “Teknologi Informai, Komunikasi dan Sains Dalam Menghadapi Era Industri 4.0 “.', '1.	Mahasiswa 2.	Umum 3.	Dosen Tetap Prodi  4.	Dosen Luar PT', 'Diseminasi hasil-hasil penelitian para mahasiswa dan dosen di publikasi pada jurnal bersinta dan prosiding.', 'Seminar hasil-hasil penelitian mahasiswa dan dosen', 'Lokasi : Ruang HKI  Waktu : Minggu ke-2 bulan Oktober 2021  Berisi bidang-bidang rektor yang berhubungan dengan rencana kegiatan *Direktorat Riset dan Inovasi WR III, Sub Direktorat HKI WR III dan Direktorat Kerjasama Dalam Negeri WR IV', '2021-10-13', 'Warek 3 , Direktorat Riset dan Inovasi', 5, 19, 82, '5000000', NULL, 'NTB Syariah', 'Rodianto,M.Kom', '0042203680023', '40613f6d964dece.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Fakultas Rekayasa Sistem', '2021-09-13 15:26:14', '2021-09-14 07:28:23'),
(214, '404', 84, 23, 'Sertifikasi keahlian merupakan kebutuhan yang fundamental untuk memetakan kelompok keahlian dosen dengan tujuan untuk menunjang pelaksanaan ujian sertifikasi keahlian mahasiswa dan umum dalam rangka pengembangan program studi di masa yang akan datang , salah satu syarat dosen bisa menjadi asesor sertifikasi keahlian adalah dosen tersebut harus memiliki kompetensi serupa yang dibuktikan dengan sertifikat kompetensi keahlian yang masih berlaku .', 'Dosen Aktif yang ber-Homebase Teknik Informatika', 'Dosen yang memiliki sertifikat kompetensi minimal 50 % sesuai bidang peminatan yang ada di informatika', 'Training dan Ujian Sertifikasi Keahlian', 'Lembaga Penyelenggara Sertifikasi Keahlian yang sudah diakui Industri', '2021-12-15', 'CDC & PSDM', 2, 7, 39, '9500000', NULL, 'NTB Syariah', 'Rodianto,M.Kom', '0042203680023', '40613f6fb0b2e6c.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-13 15:35:13', '2021-09-15 03:38:33'),
(215, '318', 84, 24, 'Tidak adanya Perangkat praktikum untuk bidang peminatan Ai dan Komputasi Cerdas mengingat perangkat praktikum merupakan salah satu sarana penunjang akademik yang paling fundamental yang menjadi salah satu faktor penting dalam mencetak lulusan yang berkualitas dan mampu bersaing dalam pasar kerja', 'Matakuliah pada Bidang Peminatan Komputasi Cerdas (AI , IoT dan Robotic)', 'Tersedianya Perangkat Praktikum (non Komputer) Bidang AI , IoT dan Robotic', 'Optimalisasi dan Perangkat Praktikum', 'Prodi Teknik Informatika', '2021-09-23', 'Keuangan', 3, 11, 53, '10000000', NULL, 'NTB Syariah', 'Rodianto,M.Kom', '0042203680023', '40613f71fbc1c3c.pdf', 'progress', '4061b2a95d97e38.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-13 15:45:00', '2021-12-14 04:17:09'),
(216, '320', 84, 23, 'Tidak adanya perangkat Praktikum penunjang Kegiatan Pengajaran bidang Jaringan dan Security', 'Matakuliah Bidang Peminatan Jaringan', 'Adanya Prangkat Praktikum dasar untuk Matakuliah Jaringan', 'Pembelian Perangkat Praktikum non Komputer Bidang Jaringan', 'Prodi Teknik Informatika', '2021-09-28', 'Keuangan', 3, 11, 53, '8500000', NULL, 'NTB Syariah', 'Rodianto,M.Kom', '0042203680023', '40613f731b8b504.pdf', 'progress', NULL, NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-13 15:49:47', '2021-12-10 07:46:11'),
(217, '405', 84, 24, 'Tidak adanya tempat penyimpanan perangkat penunjang praktikum', 'Semua Perangkat praktikum Non Komputer', 'Tersedianya tempat penyimpanan perangkat praktikum Non Komputer yang standar', 'Pembelian Tempat Penyimpanan perangkat praktikum Non Komputer', 'Program Studi Teknik Informatika', '2021-09-28', 'Keuangan dan Sarana Prasarana', 1, 4, 19, '4500000', NULL, 'NTB Syariah', 'Rodianto,M.Kom', '0042203680023', '40613f74a1af17a.pdf', 'progress', '4061ca7fdc1cd8e.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-13 15:56:18', '2021-12-28 03:09:16'),
(218, '406', 84, 23, 'Penguasaan ilmu pengetahuan dan teknologi informasi komunikasi salah satu syarat skill yang harus dimiliki oleh pelaku dunia kerja. Program Studi Teknik informatika Fakultas Teknik Universitas Teknologi Sumbawa menyelenggarakan kegiatan untuk mengembangkan bakat dan minat siswa/ siswi SMA/SMK sePulau Sumbawa dalam bidang teknologi informasi dan komunikasi. Kegiatan tersebut berupa Olimpiade bidang Teknologi Informasi dan Komunikas Sepulau Sumbawa dengan berbagai lomba. Dengan kegiatan tersebut diharapkan mengantarkan siswa/siswi SMA/SMK untuk menguasai ilmu pengetahuan dan teknologi informasi dan komunikasi serta sebagai media penyaluran potensi siswa/siswi bertalenta dan berkarakter dari Pulau Sumbawa.', 'Siswa/Siswi SMA dan SMK Sepulau Sumbawa', '1. Terselenggaranya Beberapa Lomba bidang jarringan dan Programming bagi siswa / siswi SMK / SMA se Kabupaten sumbawa, 2. Terjaringnya Calon Mahasiswa Teknik Informatika yang berkualitas', 'Bentuk kegiatan yang akan dilaksanakan berupa lomba kompetensi di bidang komputer dengan kriteria soal yang telah disesuaikan dengan kurikulum yang berlaku saat ini.', 'gedung GBO', '2021-11-15', 'PMB', 2, 5, 22, '7000000', NULL, 'Bank NTB Syariah', 'Rodianto,M.Kom', '0042203680023', '40615696bb590e1.pdf', 'progress', NULL, NULL, NULL, NULL, 1, 'Informatika', '2021-09-13 16:13:32', '2021-10-01 05:03:56'),
(219, '408', 84, 23, 'Himpunan Mahasiswa merupakan salah satu mitra strategis program studi dalam upaya memajukan dan mengembangkan program studi kedepan, untuk itu perlu ada kesamaan pandangan , misi dan persepsi antara program studi dengan himpunan mahasiswa yang ada di program studi sebagai upaya untuk memperkuat sinergi dalam membangun program studi di masa yang akan datang', 'Dosen dan Pengurus himpunan mahasiswa prodi serta perwakilan angkatan', 'adanya kesamaan pandangan , visi , misi dan tujuan dalam pengembangan prodi kedepan', 'Focus Grup Discussion', 'Gedung Dikti', '2021-11-29', 'Kemahasiswaan', 2, 6, 27, '1250000', NULL, 'Bank NTB Syariah', 'Rodianto,M.Kom', '0042203680023', '40613f7a8cdf8d1.pdf', 'progress', NULL, NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-13 16:21:33', '2021-09-23 06:45:09'),
(220, '411', 84, 21, 'Mahasiswa adalah produk dan asset program studi yang harus terus di kembangkan dan diasah kemampuannya untuk meningkatkan kompetensi lulusan dan sekaligus meningkatkan nilai jual prodi di masyarakat', 'perwakilan Mahasiswa aktif setiap angkatan dan seluruh mahasiswa yang mengambil matakuliah Jaringan dan Basis data', 'Terselenggaranya Kuliah Tamu Jaringan dan Teknologi Data', 'Kuliah Tamu', 'Gedung Multimedia STP, dan Zoom Meeting', '2021-12-13', 'Akademik', 3, 11, 53, '3000000', NULL, 'Bank NTB Syariah', 'Rodianto,M.Kom', '0042203680023', '40613f7c5ba680c.pdf', 'progress', NULL, NULL, NULL, '4061b82491c08ae.pdf', 4, 'Direktur Keuangan', '2021-09-13 16:29:16', '2021-12-17 06:12:00'),
(221, '445', 76, 24, 'Peningkatan Kualitas Mutu Akademik dalam pelaksanaan tridarma perguruan tinggi di Universitas Teknologi Sumbawa\nMendorong dan mendukung peran serta aktif civitas akademika untuk menciptakan budaya mutu', '1.	Tersedianya perangkat dan panduan pelaksanaan penjaminan mutu 2.	Keterlaksaaan budaya mutu di tingkat Universitas hingga program studi', '1.	Training Need Analysis dan Workshop SPMI Sesuai dalam manual SPMI 2.	Sosialisasi SPMI dan pendampingan unit/prodi dalam penerapan SPMI terbaru 3.	28 Standar Mutu SPMI sesuai dengan program Merdeka Belajar Kampus Merdeka', '1.	Revisi SPMI dan Penyusunan Panduan SPMI 2.	Penyusunan Indikator AMI SPMI 3.	Review SPMI dan Pelatihan Implementasi SPMI untuk Unit Pelaksana SPMI 4.	Cetak dan Jilid Dokumen Induk Sistem Penjaminan Mutu Internal terbaru 5.	Sosialisasi dan Pendampingan implementasi SPMI pada Unit/Program Studi', '1.	Ruang Multimedia, STP. Universitas Teknologi Sumbawa 2.	Ruang Kerja Unit Masing-masing 3.	Ruang temu : Zoom, Cloudx', '2021-06-15', 'bidang-bidang yang berlinier dengan jenis kegiatan :  1.	Akademik, Kemahasiswaan, SDM, Kantor PMB : Wakil Rektor 1  2.	Keuangan, Pengelolaan dan Pemeliharaan Fasilitas: Wakil Rektor 2 3.	Riset dan Inovasi, Pengabdian kepada Masyarakat dan Publikasi, STI : Wakil Rektor 3 4.	Kerjasama Dalam Negeri dan Kerjasama Luar Negeri : Wakil Rektor 4 5.	CDC, Beasiswa : UPT 6.	Fakultas 7.	Program Studi', 1, 2, 9, '24480500', NULL, 'Mandiri', 'Lukmanul Hakim', '1610006291947', '4061400a7ab6642.pdf', 'progress', '4061b6a6cc6e8ad.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-14 02:35:39', '2021-12-13 01:50:04'),
(222, '447', 76, 24, 'Meningkatkan sumber daya BPMA Universitas Teknologi Sumbawa serta stakeholder terkait dengan penerapan mutu', 'Terimplementasinya sistem penjaminan mutu', '1.	Meningkatkan Pemahaman tentang implementasi SPMI dan PPEPP 2.	Meningkatkan kompetensi Auditor Mutu Internal 3.	Penambahan Auditor seiring dengan penambahan jumlah program studi di UTS.', '1.	Pelatihan SPMI bagi Unit Pelaksana SPMI 2.	Pelatihan SPMI dan AMI bagi auditor dan calon auditor mutu internal', '1.	Ruang Pertemuan ex FEB 2.	Ruang temu : Zoom, Cloudx', '2021-09-28', 'bidang-bidang yang berlinier dengan jenis kegiatan :  1.	Fakultas 2.	Program Studi 3.	Tim Adhoc Auditor Mutu Internal UTS', 1, 2, 9, '20000000', NULL, 'Mandiri', 'Lukmanul Hakim', '1610006291947', '4061400be7a949e.pdf', 'progress', '4061aee49df1f81.jpg', NULL, NULL, NULL, 1, 'Badan Penjamin Mutu Akademik', '2021-09-14 02:41:44', '2021-12-15 06:47:41'),
(223, '448', 76, 24, '1.	Melaksanakan program pengawasan (pemantauan dan evaluasi) serta memberikan saran perbaikan sebagai tindakan penyempurnaan atau peningkatan mutu yang berkelanjutan\n2.	Melaksanakan fungsi pengawasan internal dalam pencapaian indikator kinerja utama masing-masing unit kerja dalam lingkup internal UTS\n3.	Melakukan audit mutu internal secara menyeluruh, bertahap, konsisten dan berkesinambungan.', 'Terimplementasinya program audit internal dan eksternal', '1.	56 indikator penilaian kuantitatif monev SPMI untuk 16 Program Studi 2.	Capaian sesuai IKU masing-masing Unit kerja 3.	27  Standar Mutu untuk 16 Program Studi', '1.	Uji Publik Matriks SPMI Monev Kepada Unit/Prodi 2.	Verifikasi hasil Monev 3.	Monitoring IKU 4.	Audit dokumen  5.	Audit lapangan 6.	Rapat tinjauan Manajemen', '1.	Ruang Kerja Unit Masing-masing 2.	Ruang temu : Zoom, Cloudx', '2021-10-18', 'bidang-bidang yang berlinier dengan jenis kegiatan :  1.	Fakultas 2.	Program Studi', 1, 2, 7, '20406000', NULL, 'Mandiri', 'Lukmanul Hakim', '1610006291947', '4061400d27e3bae.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-09-14 02:47:04', '2021-12-07 08:14:29'),
(224, '72', 61, 24, 'orientasi dosen baru', 'dosen baru', 'dosen memiliki tanggung jawab tridarma', 'pelatihan', 'Gedung STP', '2021-10-05', 'WAREK I, WAREK II, HUMAS', 1, 4, 20, '5000000', NULL, 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '406142f1742277f.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-09-16 07:25:40', '2021-12-12 13:53:12'),
(225, '266', 53, 24, 'Rencanan Pembelajaran Semester (RPS) adalah salah satu kelengkapan administrasi yang harus dibuat oleh seorang dosen. RPS juga menjadi panduan dosen dalam melakukan kegiatan perkuliahan. Selain RPS, seorang dosen juga harus memiliki keterampilan dalam melakukan Asesment terhadap mahasiswa. Dosen perlu mengetahui asesmen seperti apa yang dapat digunakannya dalam perkuliahan di masing-masing mata kuliah.', 'Dosen Universitas Teknologi Sumbawa', 'Bertambahnya pengetahuan dan wawasan baru dosen dalam penyusunan RPS.', 'Pelatihan dilakukan secara daring dan luring. Secara luring dihadiri oleh masing-masing 2 orang perwakilan prodi sedangkan yang daring diikuti oleh dosen yang mendaftar untuk mengikuti kegiatan pelatihan.', 'STP', '2021-09-21', 'Wakil Rektor 1, Direktorat Akademik, Sub Direktorat Pengembangan Karir dan Alumni, Direktorat Sistem Teknologi Informasi', 2, 6, 29, '3950000', NULL, 'Mandiri', 'Arya Zulfikar Akbar', '1610005622829', '4061440fdac40c3.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-09-17 03:47:39', '2021-12-20 06:46:24'),
(227, '197', 54, 23, 'Rencana Strategis Fikom merupakan pedoman Fikom dalam menjalankan kegiatan Tri Dharma Perguruan Tinggi', 'Civitas Akademika Fikom', 'Tersusunnya Renstra Fikom', 'Penyusunan Renstra Fikom', 'Fikom', '2021-09-28', 'Tata Pamong', 1, 1, 5, '2000000', NULL, 'Mandiri', 'UTS Fakultas Ilmu Komunikasi', '1610003673147', '40614a8b026f29d.pdf', 'progress', NULL, NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-22 01:46:43', '2021-09-24 03:06:36'),
(228, '250', 61, 24, 'Ketidaksamaan Persepsi Asessor untuk Rubrik BKD terbaru tahun 2021', 'Asessor BKD dari setiap Program Studi dan Universitas', 'Meminimalisir perbedaan persepsi Asessor', 'Rapat', 'Zoom Metting', '2021-08-13', 'WAREK I, Direktorat Akademik', 1, 1, 4, '5000000', NULL, 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40614d4d9dc13d6.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-09-24 04:01:34', '2021-09-28 02:00:35'),
(229, '92', 71, 24, 'Pengabdian merupakan salah satu tridarma perguruan tinggi yang wajib untuk dilaksanakan oleh para dosen. Oleh karena itu, untuk mendukung terlaksananya kegiatan dan meningkatnya jumlah pengabdian para dosen di lingkungan Universitas Teknologi Sumbawa maka kampus memberikan dukungan berupa hibah Pengabdian internal kepada para dosen. Sebagai salah satu rangkain dari kegiatan hibah pengabdian internal tersebut, setiap dosen diharapakan dapat melaksanakan kegiatan Pengabdian.', 'Para Dosen tetap Universitas Teknologi Sumbawa', 'Kegiatan ini diharapkan dapat memenuhi indikator sasaran strategis sbb : 1. Minimal dua kegiatan pengabdian per dosen selama tahun 2020-2021 2. Dua judul pengabdian masyarakat mendapatkam dana hibah penelitian dari pihak ketiga. 3. 30 proposal pengabdian yang diajukan oleh dosen tetap prodi  4. Minimal satu publikasi pengabdian dosen pada jurnal nasional selama tahun 20202021.', 'Hibah Pengabdian internal dosen UTS.', 'Universitas Teknologi Sumbawa', '2021-09-18', 'Wakil Rektor III Bidang Riset dan Inovasi  Direktorat Pengabdian kepada Masyarakat dan publikasi.', 4, 18, 81, '12000000', NULL, 'MANDIRI', 'ERLIYANI KURNIA', '1610006298330', '406151370070949.pdf', 'progress', '4061b69f759e12b.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-27 03:14:08', '2021-12-13 01:18:46'),
(232, '283', 60, 24, 'Tracer Study merupakan salah satu program atau metode yang digunakan oleh beberapa Perguruan Tinggi, khususnya di Indonesia untuk memperoleh umpan balik dari alumni. Umpan balik yang diperoleh dari alumni ini dibutuhkan oleh perguruan tinggi dalam usahanya untuk perbaikan serta pengembangan kualitas dan sistem pendidikan', 'Alumni lulusan tahun 2019 sampai 2020', 'Minimal 85% Responden yang berasal dari kalangan alumni yang lulus pada tahun 2019 & lulus pada periode bulan September 2020 dari total responden 850', 'a.	Penyebaran Koesiener Tracer Study melalui Ecampuz  b.	Pengolahan data dan, c.	Pelaporan Data', 'UTS', '2021-10-04', 'Wakil Rektor 1', 1, 2, 6, '5500000', NULL, 'Mandiri', 'Arie Kasmita', '1610006286871', '', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-09-27 06:05:42', '2021-10-25 11:58:59'),
(233, '102', 73, 3333, 'UTS Coffee Break merupakan salah satu bentuk forum sharing kerja sama antar pihak UTS dengan mengundang pihak luar serta sosialisasi peluang kerja sama kepada pihak internal UTS (dekan dan kaprodi).', 'Peningkatan jumlah Tridharma Perrguruan tinggi.', 'Mengetahui kebutuhan calon mitra kerja sama dan sharing kerja sama', 'Pertemuan terbatas', 'Gedung integrated laboratory', '2021-10-11', 'Prasarana, Sumber Daya, Riset, Inovasi, Teknologi, Pengabdian Masyarakat, Kemahasiswaan dan Kerja Sama', 1, 1, 1, '2550000', NULL, 'BRI', 'Anita Gusmiarti', '810101008139530', '40615178bd341fb.pdf', 'progress', '4061b2abaca8e49.pdf', NULL, '4061c2cbd72bd0f.pdf', '4061b6f651b387c.pdf', 4, 'Sekniv', '2021-09-27 07:54:37', '2022-01-17 16:15:13'),
(235, '286', 60, 24, 'Roll up banner merupakan salah satu jenis alat promosi banner yang terbilang sangat praktis, namun memiliki fungsi yang sangat efektif untuk memperkenalkan bisnis atau Lembaga lebih luas. Roll up banner menjadi cara promosi yang mengandalkan banner tergulung dan saat ini menggunakan banner, maka tinggal tarik banner dari bagian atas sampai bagian bawah.', 'Para Pengguna dan pemangku kebijakan dalam program CDC', 'a.	Dapat memberikan Informasi yang dibutuhkan oleh Civitas Akademika. b.	Dapat mengingatkan informasi  c.	Serta membujuk ikut serta dalam program CDC terutama dlam hal Tracer Studi', 'Melakukan percetakan RollUp Banner', 'OMT', '2021-10-04', 'Wakil Rektor 1', 1, 1, 3, '610000', NULL, 'Mandiri', 'Arie Kasmita', '1610006286871', '40615181205935f.pdf', 'progress', '4061b2d005e8bc3.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-09-27 08:30:24', '2021-12-10 03:56:54'),
(236, '146', 67, 21, 'Sebagai lembaga jasa layanan psikologi, maka perlu memperluas jaringan kerja untuk mendapatkan peluang menjadi pengguna jasa layanan psikologi khususnya pada Sekolah SMA di Kota Bima, khususnya tentang Tes Bakat Minat.', 'Siswa di 4 SMA Negeri Kota Bima', '1.  Terjalin kesepakatan jangka panjang dalam bentuk Jasa Pelayanan Psikologi antara pengguna jasa dengan  UPT Lembaga Psikologi Terapan UTS.  2. Tercipta Kesepakatan Hubungan Kerjasama dalam bentuk Moratorium (MoU) antara Institusi Pendidikan terkait dengan Universitas Teknologi Sumbawa (UTS).', 'Promosi Tes Bakat Minat UPT Lembaga Psikologi Terapan UTS di Kota Bima.', 'Di 4 SMAN di Wilayah Kota Bima. (1). SMA Negeri 1 Kota Bima, (2). SMA Negeri 2 Kota Bima, (3). SMA Negeri 4 Kota Bima, (4). SMK Negeri 1 Kota Bima.', '2021-10-06', 'Sekniv, Warek 4 UTS (Direktorat KDN), Fakultas Psikologi UTS.', 3, 15, 72, '1305000', NULL, 'Bank Mandiri', 'UPT Lembaga Psikologi Terapan UTS', '1610006366160', '40615280cb86744.pdf', 'progress', NULL, NULL, NULL, NULL, 1, 'Lembaga Psikologi Terapan', '2021-09-28 02:41:15', '2021-09-28 02:41:16'),
(237, '275', 60, 24, 'Bersaing untuk mendapatkan pekerjaan dan bertahan dalam dunia kerja bukan hal yang mudah. Ketika lulusan perguruan tinggi menghadapi persaingan ini, kita memerlukan persiapan yang matang dalam memasuki dunia kerja.', 'Peserta dari acara What Should I Do After I Graduate College ini adalah para Alumni UTS dan Umum termasuk Alumni kampus-kampus yang ada diwilayah NTB.', 'a.	Membangun  pola  pikir kewirausahaan serta  dapat  menemukan potensi membentuk karakter dari masalah yang ditemukan dalam   kehidupan sehari-hari. b.	Menjadi entrepreneur dan membangun bisnis sendiri, melakukan hobi yang menguntungkan.', 'Adalah webinar dengan menghadirkan Pembicara dari luar yang berkompeten', 'UTS/Zoom', '2021-10-07', 'Wakil Rektor 1', 3, 11, 55, '1838000', NULL, 'Mandiri', 'Arie Kasmita', '1610006286871', '4061528afbeeb4b.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-09-28 03:24:44', '2021-12-07 03:27:47'),
(238, '300', 60, 24, 'Racana For siaga merupakan kegiatan UKM racana yang dilakukan untuk mempersiapkan pramuka  menghadapi dan berpartisipasi dalam penanggulangan bencana di kabupaten sumbawa', 'Anggota Aktif UKM Racana UTS', 'Melatih potensi diri anggota pramuka menjadi relawan kebencanaan nantinya', 'kegiatan dilakukan dalam bentuk pelatihan', 'pantai salipir ate sumbawa', '2021-10-08', 'Sub Direktorat Penalaran, Minat dan Bakat, Direktorat Kemahasiswaan dan Alumni', 3, 10, 50, '750000', NULL, 'Mandiri', 'TEGUH IMAN HADINULLAH', '1610006273952', '4061529b1e618b1.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-09-28 04:33:34', '2021-12-07 03:13:39');
INSERT INTO `pengajuan` (`id_pengajuan`, `kode_rkat`, `id_user`, `next`, `latar_belakang`, `sasaran`, `target_capaian`, `bentuk_pelaksanaan_program`, `tempat_program`, `tanggal`, `bidang_terkait`, `id_iku_parent`, `id_iku_child1`, `id_iku_child2`, `biaya_program`, `biaya_disetujui`, `bank`, `atn`, `no_rek`, `rab`, `status_pengajuan`, `pencairan`, `id_period`, `lpj_kegiatan`, `lpj_keuangan`, `validasi_status`, `nama_status`, `created_at`, `updated_at`) VALUES
(240, '277', 60, 24, 'Dengan adanya persaingan yang begitu ketat, hingga membuat para Jobseeker harus tangguh, sangat normal, kalau ada kalanya Jobseeker merasa frustasi dan putus asa. Rasanya seperti ingin menyerah saja dari berburu pekerjaan.\nSelain itu, meskipun job hunting itu bisa terasa sangat melelahkan dan bikin putus asa, solusinya bukan dengan berhenti mencari kerja lalu duduk manis seperti itu. Hal yang perlu Jobseeker sadari yakni akan selalu ada permasalahan yang dialami ketika sedang berburu pekerjaan. Namun, itu bukan tidak bisa diatasi.kalau adanya seperti ; Jobseeker memiliki Relasi Sebagai Koneksi, ada mencantumkan Cover Letter atau Surat Lamaran, jangan hanya mengandalkan Iklan Lowongan Kerja, membuat CV yang berbeda-beda sesuai kebutuhan perusahaan.', 'Peserta dari acara How To Get Fisrt Job ini adalah para Alumni UTS dan Umum termasuk Alumni kampus-kampus yang ada diwilayah NTB.', 'a.	Para Joobseeker memiliki modal social dan psikologis b.	Dapat mengetahui apa penyebab Jobseeker sulit mendapat pekerjaan dan  c.	Membantu meningkatkan kemampuan konsentrasi dan fokus yang baik.', 'Adalah webinar dengan menghadirkan Pembicara dari luar yang berkompeten serta bekerjasama dengan Lembaga Psikologi yang ada di UTS.', 'UTS/Zoom', '2021-10-14', 'Wakil Rektor 1', 3, 11, 55, '1698000', NULL, 'Mandiri', 'Arie Kasmita', '1610006286871', '406152cd2964ddb.pdf', 'progress', '40618b1e85d2860.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan', '2021-09-28 08:07:05', '2021-11-10 01:21:10'),
(241, '300', 60, 24, 'Porkab merupakan kegitan 4 tahunan menjadi wadah untuk menggali potensi tim voli di lingkungan kab. sumbawa sebagai persiapan untuk mencari atlit untuk kegiatan pekan olahraga provinsi', 'Anggota atau Pemain voli UKM Jump Serve Club UTS', 'Menambah prestasi mahasiswa UTS di bidang olahraga voli', 'Kompetisi Sistem Grup di Gelanggang Olahrag Cendrawasih', 'Gor Cendrawasih Sumbawa', '2021-10-06', 'Sub Direktorat Penalaran Minat dan bakat, Direktorat Kemahasiswaan dan Alumni', 3, 10, 49, '750000', NULL, 'Mandiri', 'Teguh Iman Hadinullah', '1610006273952', '40615404a8e2d85.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-09-29 06:16:09', '2021-12-07 03:05:09'),
(243, '246', 61, 23, 'tes psikotes untuk dosen baru', 'dosen baru 2021 (16 orang)', 'tercipta tata kelola dsdm', 'tes', 'lab fakultas psikologi UTS', '2021-10-12', 'warek 1', 2, 7, 39, '2500000', NULL, 'BSI', 'Lalu ahmad Taubih', '8348060680', '406155679f1ae44.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-30 07:30:39', '2021-12-21 02:36:20'),
(244, '516', 70, 24, 'Workshop dan expo produk riset merupakan salah satu metode dosen untuk menginformasikan hasil penelitian kepada khalayak ramai. Selain itu, kegiatan tersebut merupakan hal yang terpenting yang harus dilakukan oleh setiap dosen. Oleh karena itu, dosen harus memiliki kemampuan dalam mempresentasikan dan mendemonsrasikan hasil dari penelitiannya, baik dalam bentuk prototype maupun paper ilmiah. Untuk mendukung terlaksananya kegiatan dan meningkatnya jumlah serta kualitas produk riset para dosen di lingkungan Universitas Teknologi Sumbawa maka diadakan kegiatan workshop dan expo produk riset yang dirangkai dengan kegiatan coaching penulisan ilmiah', 'Dosen', 'Kegiatan ini diharapkan para dosen menghasilkan produk yang akan dipublikasikan serta meningkatkan kualitas produk riset dosen', 'Workshop dan Expo', 'Ruang Multimedia STP', '2021-10-08', 'Direktorat Riset dan Inovasi', 4, 16, 73, '2500000', NULL, 'Mandiri', 'Erliyani Kurnia', '1610006298330', '40615a79834b767.pdf', 'progress', '4061b2d53538046.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-04 03:48:19', '2021-12-10 04:19:02'),
(245, '456', 77, 24, 'Program ini dilaksanakan sebagai upaya meningkatkan kapasitas mentor.', 'Mentor 2021', 'Tersedianya jumlah mentor yang memiliki kualitas baik', 'Pelatihan', 'Masjid Kampus UTS', '2021-10-02', 'BPKO', 3, 10, 49, '2000000', NULL, 'Mandiri', 'WIN ARIGA MANSUR MAL', '1610007249993', '40615d304e69a8e.pdf', 'progress', '4061b8151baa4bc.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-06 00:54:29', '2021-12-14 03:53:00'),
(246, '454', 77, 24, 'Program ini dilaksanakan sebagai bahan acuan untuk para mentor dalam menyampaikan materi mentoring.', '-', 'Tersedianya kurikulum pembinaan karakter bagi dosen dan mahasiswa di UTS', '-', '-', '2021-10-06', 'BPKO', 3, 10, 48, '500000', NULL, 'Mandiri', 'WIN ARIGA MANSUR MAL', '1610007249993', '40615d2ffd75998.pdf', 'progress', '4061b2d6d0b77c6.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-06 01:00:57', '2021-12-10 04:25:53'),
(247, '455', 77, 24, 'Program ini dilaksanakan sebagai salah satu bentuk rekapan kehadiran dan sebagai evaluasi program pembinaan.', '-', 'Tersedianya buku panduan mentor dan raport binaan bagi mahasiswa', '-', '-', '2021-10-06', 'BPKO', 3, 10, 48, '2000000', NULL, 'Mandiri', 'WIN ARIGA MANSUR MAL', '1610007249993', '40615d2876129b3.pdf', 'progress', 'default.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-06 01:04:26', '2021-12-29 02:56:43'),
(248, '296', 60, 24, 'Pekan Ilmiah Mahasiswa Nasional (PIMNAS) merupakan kegiatan puncak pertemuan nasional perwujudan kreativitas dan penalaran ilmiah mahasiswa untuk meningkatkan prestasi individu dan juga prestasi kampus di tingkat LLDIKTI maupun Tingklat Nasional', 'Tim PKM PM Mahasiswa yang telah berhasil Lolos PIMNAS', '1. Tim PKM PM UTS dapat Berkompetisi dan juara dalam bidang karya ilmiah maupun poster yang di kompetisikan 2. Sebagai bentuk dukungan Universitas Teknologi Sumbawa untuk Perlombaan tingkat Nasional', 'Pendampingan dilakukan sejak pemgumuman tim lolos Pimnas oleh Pendamping dan Reviewer Eksternal secara tatap muka dan Online Via Zoom Meeting dan Program dilakukan dengan mengadakan pembinaan pada tim PKM dan Memfasilitasi TIM dalam Mengikuti Pimnas 2021 secara daring', 'Direktorat Pembelajaran dan Kemahasiswaan Kemdikbud RI dan Universitas Teknologi Sumbawa Secara daring', '2021-10-18', 'Sub Direktorat Penalaran, Minat dan Bakat, Direktorat Kemahasiswaan dan Alumni', 3, 12, 64, '2600000', NULL, 'Mandiri', 'Putri Indah kencana', '1610004658287', '4061678fd94d519.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-06 01:46:53', '2021-12-07 08:23:06'),
(250, '239', 114, 24, 'Sertifikasi merupakan suatu proses untuk mendapatkan pengakuan resmi (keabsahan) atas produk, proses, keterangan, kepemilikian barang, atau orang. Sertifikasi diberikan karena yang bersangkutan mempunyai KOMPETENSI atas suatu tugas/pekerjaan/jabatan. Proses ini dikenal juga dengan Sertifikasi Kompetensi bila yang bersangkutan telah mendapatkan pengakuan atas kompetensinya, maka ia akan mendapatkan Sertifikasi Kompetensi.\nSelain itu jugam sesuai dengan Amanat UU Pendidikan Nasional Misi UTS untuk membekali para lulusannya dengan SKA (Skill, Knowledge, dan Attitude), maka Seritifikasi ini akan melengkapi Surat Keterangan Pendamping Ijazah (SKPI) yang dibuka 2 periode setiap tahunnya atau mengikuti jadwal wisuda.', 'Peserta dari Sertifikasi Kompetensi ini adalah para mahasiswa semester akhir.', 'a.	Mahasiswa yang mengikuti pelatihan mendapat bekal kemampuan SKA (Skill, Knowleg dan Atitude)  b.	Dan Menjadikan para Asesor Madya dan Asesor Muda untuk siap melakukan pelatihan Sertifikasi Kompetensi Keahlian baik secara teknis maupun non teknis. Melalui bahan atau tools ini, diharapkan para  Asesor dapat melakukan pelatihan bagi mahasiswa secara professional yang sesuai dengan prinsip Valid, Reliable, Flexible dan Fair sehingga Asesor Muda dan Asesor Madya diharapkan nantinya mampu mengidentifikasi bahan training, persiapan training, pelaksanaan, evaluasi training sampai Uji Kompetensi dilakukan.', 'Penyiapan alat dan bahan untuk mendukung proses pemberian sertifikat kompetensi yang dilakukan secara sistematis dan obyektif melalui pelatihan dan uji kompetensi yang mengacu kepada standar kompetensi kerja nasional, standar internasional, dan/atau standar khusus lainnya yang dilaksanakan secara Daring dan juga Luring', 'UTS/Zoom', '2021-10-10', 'Wakil Rektor 1', 3, 10, 49, '2052000', NULL, 'Mandiri', 'UTS.Career Development Center', '1610006352814', '40615d3d3fa106f.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-06 06:07:59', '2021-12-16 03:46:28'),
(251, '242', 114, 24, 'Sertifikasi merupakan suatu proses untuk mendapatkan pengakuan resmi (keabsahan) atas produk, proses, keterangan, kepemilikian barang, atau orang. Sertifikasi diberikan karena yang bersangkutan mempunyai KOMPETENSI atas suatu tugas/pekerjaan/jabatan. Proses ini dikenal juga dengan Sertifikasi Kompetensi bila yang bersangkutan telah mendapatkan pengakuan atas kompetensinya, maka ia akan mendapatkan Sertifikasi Kompetensi.\nSelain itu jugam sesuai dengan Amanat UU Pendidikan Nasional Misi UTS untuk membekali para lulusannya dengan SKA (Skill, Knowledge, dan Attitude), maka Seritifikasi ini akan melengkapi Surat Keterangan Pendamping Ijazah (SKPI) yang dibuka 2 periode setiap tahunnya atau mengikuti jadwal wisuda.', 'Peserta dari Sertifikasi Kompetensi ini adalah para mahasiswa semester akhir.', 'a.	Mahasiswa yang mengikuti pelatihan mendapat bekal kemampuan SKA (Skill, Knowleg dan Atitude)  b.	Dan Menjadikan para Asesor Madya dan Asesor Muda untuk siap melakukan pelatihan Sertifikasi Kompetensi Keahlian baik secara teknis maupun non teknis. Melalui bahan atau tools ini, diharapkan para  Asesor dapat melakukan pelatihan bagi mahasiswa secara professional yang sesuai dengan prinsip Valid, Reliable, Flexible dan Fair sehingga Asesor Muda dan Asesor Madya diharapkan nantinya mampu mengidentifikasi bahan training, persiapan training, pelaksanaan, evaluasi training sampai Uji Kompetensi dilakukan.', 'Dilaksanakan secara Daring dan Luring, Adapun pelaksanaan kegiatan dilakukan sesuai jadwal yang telah disusun untuk Sertifikasi Kompetensi Keahlian yang dimulai pada akhir Awal Oktober hingga Desember 2021.', 'UTS/Zoom', '2021-10-10', 'Wakil Rektor 1', 3, 10, 49, '3610000', NULL, 'Mandiri', 'Arie Kasmita', '1610006286871', '40615d3de01e891.pdf', 'progress', '4061b3046eb318e.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-06 06:10:40', '2021-12-10 07:40:31'),
(252, '135', 64, 24, 'Kegiatan ini dilaksanakan sebagai upaya mengedukasi siswa/i\npada tingkat SMP dan SMA se-Nusa Tenggara Barat.', 'Siswa/i SMP dan SMA di provinsi Nusa Tenggara Barat.', 'WR 2', 'Offline', 'Universitas Teknologi Sumbawa', '2021-10-27', 'DSTI', 3, 18, 81, '11000000', NULL, 'Mandiri', 'UPT Pusat Bahasa', '1610006267970', '40615da760595c7.pdf', 'progress', '4061b30b6d615e1.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-06 13:40:48', '2021-12-10 08:10:21'),
(253, '146', 67, 24, 'Sebagai lembaga jasa layanan psikologi, maka perlu memperluas jaringan kerja untuk mendapatkan peluang menjadi pengguna jasa layanan psikologi khususnya pada Sekolah SMA di Kota Bima, khususnya tentang Tes Bakat Minat.', 'Siswa di 4 SMA Negeri Kota Bima', '1.  Terjalin kesepakatan jangka panjang dalam bentuk Jasa Pelayanan Psikologi antara pengguna jasa dengan  UPT Lembaga Psikologi Terapan UTS.  2. Tercipta Kesepakatan Hubungan Kerjasama dalam bentuk Moratorium (MoU) antara Institusi Pendidikan terkait dengan Universitas Teknologi Sumbawa (UTS).', 'Promosi Tes Bakat Minat UPT Lembaga Psikologi Terapan UTS di Kota Bima.', 'Di 4 SMAN di Wilayah Kota Bima. (1). SMA Negeri 1 Kota Bima, (2). SMA Negeri 2 Kota Bima, (3). SMA Negeri 4 Kota Bima, (4). SMK Negeri 1 Kota Bima.', '2021-10-20', 'Sekniv, Warek 4 UTS (Direktorat KDN), Fakultas Psikologi UTS.', 3, 15, 72, '1305000', NULL, 'Bank Mandiri', 'UPT Lembaga Psikologi Terapan UTS', '1610006366160', '40615e5394a2050.pdf', 'progress', '4061b012e21b3b1.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-07 01:55:33', '2021-12-08 02:05:23'),
(254, '146', 67, 24, 'Sebagai lembaga jasa layanan psikologi, maka perlu memperluas jaringan kerja untuk mendapatkan peluang menjadi pengguna jasa layanan psikologi khususnya pada Sekolah SMA di Kota Taliwang, khususnya tentang Tes Bakat Minat.', 'Siswa di 3 SMA Negeri Kota Taliwang', '1.  Terjalin kesepakatan jangka panjang dalam bentuk Jasa Pelayanan Psikologi antara pengguna jasa dengan  UPT Lembaga Psikologi Terapan UTS.  2. Tercipta Kesepakatan Hubungan Kerjasama dalam bentuk Moratorium (MoU) antara Institusi Pendidikan terkait dengan Universitas Teknologi Sumbawa (UTS).', 'Promosi Tes Bakat Minat UPT Lembaga Psikologi Terapan UTS di Kota Taliwang dan Seteluk.', '1.	SMA Negeri 1 Taliwang  2.	SMA Negeri 1 Seteluk  3.	SMK Negeri 1 Taliwang', '2021-10-27', 'Sekniv, Warek 4 UTS (Direktorat KDN), Fakultas Psikologi UTS.', 3, 15, 72, '1305000', NULL, 'Bank Mandiri', 'UPT Lembaga Psikologi Terapan UTS', '1610006366160', '40615e555ae6c74.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-07 02:03:07', '2021-12-07 08:21:19'),
(255, '146', 67, 24, 'Sebagai lembaga jasa layanan psikologi, maka perlu memperluas jaringan kerja untuk mendapatkan peluang menjadi pengguna jasa layanan psikologi khususnya pada Sekolah SMA di Kota Dompu khususnya tentang Tes Bakat Minat.', 'Siswa di 3 SMA Negeri Kota Dompu', '1.  Terjalin kesepakatan jangka panjang dalam bentuk Jasa Pelayanan Psikologi antara pengguna jasa dengan  UPT Lembaga Psikologi Terapan UTS.  2. Tercipta Kesepakatan Hubungan Kerjasama dalam bentuk Moratorium (MoU) antara Institusi Pendidikan terkait dengan Universitas Teknologi Sumbawa (UTS).', 'Promosi Tes Bakat Minat UPT Lembaga Psikologi Terapan UTS di Kota Dompu.', '1.	SMA Negeri 1 Dompu 2.	SMA Negeri 2 Dompu  3.	SMK Negeri 1 Dompu', '2021-11-11', 'Sekniv, Warek 4 UTS (Direktorat KDN), Fakultas Psikologi UTS.', 3, 15, 72, '1305000', NULL, 'Bank Mandiri', 'UPT Lembaga Psikologi Terapan UTS', '1610006366160', '40615e561ad9eb7.pdf', 'progress', '4061b1a0538f7fb.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-07 02:06:19', '2021-12-09 06:21:08'),
(258, '433', 79, 21, '1. Berdasarkan hasil audit mutu internal dan evaluasi FEB UTS tahun 2020 diperoleh bahwa FEB UTS mempunyai mitra kerjasama tetap dan tidak ada perubahan mitra kerjasama. Hal ini berdampak pada kegiatan kerjasama yang serupa tiap tahunnya. Untuk itu, diperlukan jejaring kerjasama yang baru dengan tetap menjalin kerjasama dengan mitra tetap FEB UTS.\n2. Jumlah mahasiswa pada salah satu program studi di FEB UTS masih rendah, sehingga diperlukan perluasan jejaring kerjasama pendidikan dengan instansi tertentu untuk dapat meningkatkan animo siswa melalui kerjasama beasiswa pada calon mahasiswa FEB UTS.\n3. Adanya kampus merdeka mengharuskan mahasiswa untuk menempuh pembelajaran di luar kampus, sehingga diperlukan mitra kerjasama untuk kegiatan belajar di luar kampus mahasiswa melalui magang fakultas atau PMMB.\n4. Perwujudan dari misi FEB UTS tahun 2021-2025 yaitu: “Meningkatkan kualitas pelaksanaan Tri Dharma perguruan tinggi melaui kerjasama dan kolaborasi yang bertanggungjawab dan saling menguntungkan”.', 'Mitra kerjasama FEB UTS', 'Meningkatnya jumlah kerjasama FEB UTS yang dapat dilihat dari jumlah PKS yang dihasilkan.', 'Roadshow dan follow up kerjasama dengan beberapa instansi', 'Menyesuaikan', '2021-10-08', 'Warek IV', 4, 16, 74, '5000000', NULL, 'MANDIRI', 'UTS. FAKULTAS EKONOMI DAN BISNIS', '1610004679291', '40615e73fb7dd65.pdf', 'progress', '4061b19ccf4a064.pdf', NULL, NULL, '4061c95b5a59556.pdf', 4, 'Direktur Keuangan', '2021-10-07 04:13:47', '2021-12-29 05:23:18'),
(260, '432', 79, 21, '1. Sebagai karya ilmiah mandiri, struktur isi karya ilmiah, gaya bahasa, dan gaya tulisan yang dipakai sangatlah beragam. Tulisan yang mempunyai mutu yang tinggi salah satunya diukur dari tingkat plagiarisme tulisan tersebut.\n2. Perwujudan dari misi FEB UTS tahun 2021-2025 yaitu: “Melaksanakan kegiatan pembelajaran dan penelitian yang berkualitas dan adaptif terhadap kebutuhan lokal dan perkembangan global sehingga berkontribusi terhadap pengembangan ilmu pengetahuan ekonomi dan bisnis”.', 'Dosen FEB UTS', 'Meningkatnya pemahaman dosen tentang “Penggunaan Smart PLS”', 'Sharing session bersama dosen FEB UTS', 'Menyesuaikan', '2021-10-08', 'Warek III', 4, 17, 79, '1000000', NULL, 'MANDIRI', 'UTS. FAKULTAS EKONOMI DAN BISNIS', '1610004679291', '40615e7b4068750.pdf', 'progress', '4061b1afd1bbff9.pdf', NULL, NULL, '4061b6beab1e3fb.pdf', 4, 'Direktur Keuangan', '2021-10-07 04:44:48', '2021-12-13 06:38:38'),
(261, '88', 68, 24, 'Dalam menjalankan fungsi suatu universitas, sudah pasti dibutuhkan logistic, peralatan dan jasa lainnya  yang menunjang optimalnya kerja suatu instansi. Barang atau inventaris yang telah rusak, using, atau keperluan akan barang baru harus segera terpenuhi agar kegiatan suatu instansi dapat berjalan dengan lancar.', 'Tersedianya sarana dan prasarana yang memadai untuk seluruh unit kerja', 'terlaksananya pengadaan fasilitas kampus', 'Pengadaan Orbit', 'Universitas Teknologi Sumbawa', '2021-10-07', 'PascaSarjana', 2, 8, 43, '629000', NULL, 'BRI', 'Nova Aryanto,ST', '009301040570507', '40615e7bbe5e597.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek II Keuangan', '2021-10-07 04:46:54', '2021-12-10 08:24:25'),
(262, '426', 79, 24, '1. Salah satu target dari FEB UTS adalah meningkatnya Pengabdian kepada Masyarakat. \n2. Berdasarkan hasil evaluasi pada tahun 2020, jumlah PkM dosen FEB sudah mengalami peningkatan jika dibandingkan dengan tahun-tahun sebelumnya. Akan tetapi, ada ketimpangan jumlah PkM masing-masing dosen \n3. Untuk peningaktan PkM dosen, maka perlu ada kompetisi hibah internal PkM di FEB UTS khususnya untuk dosen yang tidak pernah melakukan kegiatan PkM. \n4. Perwujudan dari misi FEB UTS tahun 2021-2025 yaitu: “Melaksanakan kegiatan pembelajaran dan penelitian yang berkualitas dan adaptif terhadap kebutuhan lokal dan perkembangan global sehingga berkontribusi terhadap pengembangan ilmu pengetahuan ekonomi dan bisnis”.', 'Dosen FEB UTS', 'Jumlah PkM masing-masing prodi adalah 1', 'Pembiayaan Pengabdian kepada Masyarakat Bagi Dosen dan Mahasiswa', 'Menyesuaikan', '2021-10-08', 'Warek III', 4, 18, 81, '5000000', NULL, 'MANDIRI', 'UTS. FAKULTAS EKONOMI DAN BISNIS', '1610004679291', '40615e7d66be746.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-07 04:53:59', '2021-12-07 08:20:52'),
(263, '88', 68, 24, 'Dalam menjalankan fungsi suatu universitas, sudah pasti dibutuhkan logistic, peralatan dan jasa lainnya  yang menunjang optimalnya kerja suatu instansi. Barang atau inventaris yang telah rusak, using, atau keperluan akan barang baru harus segera terpenuhi agar kegiatan suatu instansi dapat berjalan dengan lancar.', 'Tersedianya sarana dan prasarana yang memadai untuk seluruh unit kerja', 'terlaksananya pengadaan fasilitas kampus', 'Pengadaan Orbit', 'Universitas Teknologi Sumbawa', '2021-10-07', 'PascaSarjana', 1, 4, 20, '629000', NULL, 'BRI', 'Nova Aryanto,ST', '009301040570507', '40615e81d693a4a.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek II Keuangan', '2021-10-07 05:12:54', '2021-12-10 08:24:09'),
(264, '152', 78, 21, 'Memperkenalkan Sekolah Pascasarjana UTS kepada mahasiswa baru Prodi Manajemen Inovasi', 'Mahasiswa Baru', 'Mahasiswa dapat menjalankan proses perkuliahan dengan lancar karena mengenal Sekolah Pascasarjana secara detail.', 'Online', 'Zoom Meeting', '2021-10-11', 'Warek 1 dan Warek 2', 2, 6, 27, '1000000', NULL, 'Mandiri', 'I Putu Widiantara', '9000018506460', '40615e846486610.pdf', 'progress', '4061b2cec846645.pdf', NULL, NULL, '4061b6f91c19346.pdf', 4, 'Direktur Keuangan', '2021-10-07 05:23:48', '2021-12-17 06:25:06'),
(265, '88', 68, 24, 'Dalam menjalankan fungsi suatu universitas, sudah pasti dibutuhkan logistic, peralatan dan jasa lainnya  yang menunjang optimalnya kerja suatu instansi. Barang atau inventaris yang telah rusak, using, atau keperluan akan barang baru harus segera terpenuhi agar kegiatan suatu instansi dapat berjalan dengan lancar.', 'Tersedianya sarana dan prasarana', 'terlaksananya pengadaan fasilitas kampus', 'Pembelian Atribut Security berupa Logo dan assesoris lainnya', 'Universitas Teknologi Sumbawa', '2021-10-07', 'Security UTS', 1, 4, 20, '1400000', NULL, 'BRI', 'Nova Aryanto,ST', '009301040570507', '40615e86a628be4.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-07 05:33:26', '2021-12-14 03:41:58'),
(266, '153', 78, 21, 'Untuk menambah wawasan dan wadah silaturahmi mahasiswa Sekolah Pascasarjana.Penggajuan untuk kekurangan dana berdasarkan RKAT perubahan.', 'Mahasiswa', 'Mahasiswa mendapatakan ide-ide tentang kewirausahaan dan inovasi khusus bidang agro industri dan pariwisata.', 'Offline', 'Ruang Publik Kreatif', '2021-09-18', 'Warek 2', 2, 6, 27, '1650000', NULL, 'Mandiri', 'I Putu Widiantara', '9000018506460', '40615e8747c5f6e.pdf', 'progress', NULL, NULL, NULL, '4061b6f96001d95.pdf', 4, 'Direktur Keuangan', '2021-10-07 05:36:08', '2021-12-17 07:56:46'),
(268, '323', 21, 23, 'Humas dan Protokoler melaksanakan Kopi Darat (pertemuan) dengan seluruh admin sosial media yang ada di lingkup universitas, sebagai bentuk menjaga silaturahmi antar admin, yang menjalankan tugas memberikan pelayanan kepada netizen UTS.', 'Seluruh admin social media di lingkungan UTS', 'dalam hal penyebaran informasi, branding, dan penyamaan persepsi tentang UTS', 'Dilaksanakan selama 1 hari', 'STP', '2021-10-14', 'Humas & Protokoler', 1, 1, 1, '3000000', NULL, 'Mandiri', 'Nurul Hudaningsih', '1610006292150', '40615eb480b1a4c.pdf', 'progress', NULL, NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-10-07 08:49:05', '2021-10-12 07:57:59'),
(269, '497', 85, 24, 'Pentingnya sosialisasi kepada mahasiswa dan dosen terkait SOP yang berjalan di lingkungan Program Studi Teknik Industri', 'Mahasiswa dan Dosen Program Studi Teknik Industri', 'Civitas Program Studi Teknik Industri dapat menjalankan Standard Operation Procedure (SOP) dengan baik', 'Sosialisasi', 'Sumbawa Technopark / online yang dilaksanakan pada 23 Oktober 2021', '2021-10-23', 'Wakil Rektor 1, 2, 3,dan 4', 1, 1, 3, '400000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa Fakultas Rekayasa Sistem', '1610007663755', '40615fad186c803.pdf', 'progress', '4061b0178328889.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-08 02:29:44', '2021-12-08 02:25:07'),
(271, '498', 85, 24, 'Perlunya meningkatkan minat calon mahasiswa Teknik Industri dengan melakukan sosialisasi tentang pengenalan ruang lingkup prodi teknik industri kepada calon mahasiswa', 'Siswa SMK sederajat', 'Meningkatkan eksistensi Program Studi Teknik Industri', 'Kuliah Secara Offline', 'Gedung Dikti, Lab Komputer, Lab Industri, Integrated Laboratory Universitas Teknologi Sumbawa', '2021-10-30', 'Wakil Rektor 1', 2, 5, 25, '1000000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa Fakultas Rekayasa Sistem', '1610007663755', '40615fd5c84a3c3.pdf', 'progress', '4061b2aa453a2fb.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-08 05:23:20', '2021-12-10 01:15:49'),
(272, '457', 77, 24, 'Program ini dilaksanakan sebagai salah satu bentuk evaluasi kegiatan mentoring', 'mentor 2021', 'Terlaksananya Program Mentoring', 'Evaluasi', '-', '2021-10-08', 'BPKO', 3, 10, 48, '600000', NULL, 'Mandiri', 'WIN ARIGA MANSUR MAL', '1610007249993', '40615feb28dec88.pdf', 'progress', 'default.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-08 06:54:33', '2021-12-29 03:17:18'),
(273, '499', 85, 24, 'Perlunya meningkatkan kuantitas dan kualitas input dan output mahasiswa Teknik Industri UTS serta meningkatkan eksistensi Program Studi Teknik Industri', 'Mahasiswa dan siswa SMK sederajat', 'diikuti 40% mahasiswa Teknik Industri dan minimal 5 siswa SMA/MA/SMK', 'Kunjungan Lapangan ke Perusahaan', 'Industri di sekitar Sumbawa', '2021-11-24', 'Wakil Rektor 1', 2, 5, 25, '1500000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa Fakultas Rekayasa Sistem', '1610007663755', '40615ffb55897dc.pdf', 'progress', '4061b2f782daac6.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-08 08:03:34', '2021-12-10 06:45:24'),
(274, '500', 85, 24, 'Pelatihan software CAD dan LISREL untuk mahasiswa dan umum', 'Mahasiswa dan umum', 'Peningkatan kualitas dan kapasitas sumberdaya manusia di lingkungan Program Studi Teknik Industri UTS', 'Workshop', 'Laboratorium Komputer', '2021-11-06', 'Wakil Rektor 1', 2, 9, 47, '440000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa Fakultas Rekayasa Sistem', '1610007663755', '40615ffcb2363ed.pdf', 'progress', '4061b2f6f167d9a.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-08 08:09:22', '2021-12-10 06:42:57'),
(275, '531', 57, 3333, 'Perkembangan industri 4.0 menuntut percepatan penerapan teknologi informasi hampir di seluruh sektor usaha. Begitu juga dengan bidang pendidikan, untuk menuju kampus yang memiliki daya saing harus didukung oleh infrastruktur teknologi informasi yang tepat, baik dalam bentuk perangkat keras atau perangkat lunak untuk mendukung pelayanan yang efektif dan efisien Universitas Teknologi Sumbawa merupakan sebuah kampus teknologi yang berlokasi di Sumbawa. \nBerbagai macam sistem informasi telah diimplementasi di UTS, tentunya penerapan sistem informasi tersebut tentunya harus didukung oleh infrastruktur yang optimal. Kondisi saat ini hampir seluruh gedung telah tercover jaringan WiFi, seluruh gedung terhubung dengan menggunakan media Fiber Optic dan Gelombang Radio dengan mode Point to Point.\nNamun, seiring dengan meningkatnya kapasitas internet yang disediakan oleh provider yang kini hingga 300 MBPS, dibutuhkan infrastruktur yang lebih baik. Kondisi saat ini di UTS masih banyak Switch/Hub yang menggunakan port Fast Ethernet 10/100 MBPS dan Access Point menggunakan kode jaringan a/b/g/n dengan kecepatan maksimal up to 150 MBPS. Hal ini berdampak pada kurang maksimalnya lalu lintas data pada jaringan yang ada, karena dari 300 MBPS yang ada, namun hanya 100 MBPS yang mampu terdistribusi karena tidak didukung oleh infrastruktur jaringan.\nBerdasarkan kondisi tersebut, solusi yang bisa diterapkan adalah menambahkan atau mengganti Switch/Hub yang masih menggunakan port Fast Ethernet 10/100 MBPS menjadi Switch/Hub port Gigabit yang mampu mengirimkan data hingga 1000 MBPS. Dan menambahkan Access Point dengan teknologi terbaru yaitu W-Fi versi 6 dengan kode AX atau AC yang mampu mendistribusikan data hingga 1500 MBPS dengan Dual Band (5GHz dan 2,4GHz).', 'Dosen, Staff dan Mahasiswa yang menggunakan layanan internet', 'Koneksi internet menjadi lebih cepat dan stabil', 'Pembelian perangkat, dilanjutkan proses instalasi, konfigurasi dan pengujian koneksi.', 'Universitas Teknologi Sumbawa, 1 Oktober 2021', '2021-10-11', 'Direktorat Sistem dan Teknologi Informasi', 1, 1, 4, '6000000', NULL, 'MANDIRI', 'ERLIYANI KURNIA', '1610006298330', '40615ffd5893e98.pdf', 'progress', 'default.jpg', NULL, '406203742799ffd.pdf', '4062037188a9a84.pdf', 4, 'Sekniv', '2021-10-08 08:12:08', '2022-02-09 07:59:44'),
(276, '522', 71, 24, 'Akreditasi jurnal merupakan wujud pengakuan resmi atas penjaminan mutu jurnal ilmiah melalui kegiatan penilaian kewajaran penyaringan naskah, kelayakan pengelolaan, dan ketepatan waktu terbitnya jurnal tersebut. Setiap dosen yang melakukan penelitian tentunya akan menyusun karya ilmiah berbasis dari hasil penelitianyang dilakukan. Setelah menyusun naskah karya ilmiah, tentunya perlu dipublikasikan agar manfaat dari karya ilmiah ini lebih kompleks untuk berbagai pihak. Memastikan karya ilmiah yang disusun masuk ke dalam jurnal nasional terakreditasi juga menjadi hal penting. Sebab tidak bisa asal dipublikasikan, karena terdapat aturan khusus terkait proses publikasi karya ilmiah.  Oleh karna itu memastikan suatu karya ilmiah sebelum terpublikasi sudah memenuhi kaidah yang berlaku. Sekaligus dipublikasikan oleh lembaga yang memang sudah terpercaya dalam menerbitkan berbagai jurnal ilmiah nasional berkualitas.', 'Akadimisi dan masyarakat', 'Kegiatan ini diharapkan para dosen menghasilkan karya ilmiah yang akan dipublikasikan serta meningkatkan kualitas karya ilmiah lembaga yang memang sudah terpercaya dalam menerbitkan berbagai jurnal ilmiah nasional berkualitas.', 'Pelaksanaan secara offline dan online', 'Universitas Teknologi Sumbawa', '2021-10-08', 'Direktorat Pengabdian kepada Masyarakat dan Publikasi', 2, 7, 33, '2000000', NULL, 'MANDIRI', 'ERLIYANI KURNIA', '1610006298330', '40615fffdb60860.pdf', 'progress', '4061b96a5119dd9.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-08 08:22:51', '2021-12-15 04:08:49'),
(277, '501', 85, 24, 'Lomba desain produk untuk siswa SMP/MTS', 'Siswa SMA sederajat', 'Meningkatkan eksistensi Program Studi Teknik Industri', 'Lomba', 'Universitas Teknologi Sumbawa', '2021-10-30', 'Wakil Rektor 1', 2, 5, 25, '510000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa Fakultas Rekayasa Sistem', '1610007663755', '406160002ee6e10.pdf', 'progress', '4061b2aa1d82ddc.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-08 08:24:15', '2021-12-10 01:15:09'),
(278, '523', 71, 24, 'Sudah menjadi pengetahuan umum bahwa keperluan publikasi adalah memaparkan, mempresentasikan hasil penelitian atau temuan lainnya kepada orang lain. Publikasi ilmiah merupakan cara agar suatu hasil penelitian, pengabdian, dan proses belajar dapat diketahui oleh banyak orang sehingga dapat diperoleh manfaat yang banyak. Publikasi ilmiah ini juga digunakan untuk membuktikan suatu temuan seseorang sehingga dapat dilakukan pengakuan apabila ada upaya plagiarisme. Terutama agar dapat disitasi oleh orang lain, dipertimbangkan kemanfaatannya dan sebagai inspirasi untuk penelitian atau pembelajaran selanjutnya. \nPublikasi ilmiah sebenarnya dimulai dari catatan pribadi tentang hasil proses belajar, kemudian disusun secara sistematis membentuk suatu tulisan yang harapannya dapat dipahami oleh orang lain. Apabila pemikiran tersebut hanya tersimpan di media pribadi, website, tanpa melakukan indeksasi jurnal ke media yang banyak dicari orang dengan keperluan sitasi dan pencarian referensi yang sesuai bidang minat, tulisan tersebut tidak dapat tersebar secara luas dan berdampak.   \n \nSeorang akademisi harus mengukur kredibilitasnya berdasarkan pendidikan, penelitian dan pengabdian, sehingga indeksasi jurnal ilmiah berfungsi sebagai salah satu faktor yang mengukur keberhasilan akademisi tersebut dalam memanfaatkan ilmunya, hal ini dapat dinilai dengan meningkatnya nilai kinerja karya ilmiah sahabat (dikenal dengan istilah h-index). Oleh karena itu perlu bagi pengelola jurnal maupun akademisi untuk mampu mempublikasikan karya ilmiahnya pada jurnal yang terindeksasi seperti Scopus, WoS, Google Scholar, dan lain-lain.', 'Akadimisi dan masyarakat.', 'Kegiatan ini diharapkan para dosen menghasilkan karya ilmiah yang akan dipublikasikan serta meningkatkan kualitas karya ilmiah', 'Kegiatan ini diharapkan para dosen menghasilkan karya ilmiah yang akan dipublikasikan serta meningkatkan kualitas karya ilmiah', 'Universitas Teknologi Sumbawa', '2021-10-08', 'Direktorat Pengabdian kepada Masyarakat dan Publikasi', 4, 17, 78, '1000000', NULL, 'Mandiri', 'ERLIYANI KURNIA', '1610006298330', '40616001dd9e82e.pdf', 'progress', '4061b060335167e.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-08 08:31:25', '2021-12-08 07:35:16'),
(281, '178', 80, 24, 'Penyusunan RIP, Renstra, Renop Fakultas yang belum tersedia dan akan expired', 'Dekan, Wadek, Kaprodi dan Sekprodi TIP THP', 'Adanya dokumen RIP, Renstra, Renop dan Pembaharuan Visi Misi Fakultas', 'Meeting', 'STP', '2021-10-17', 'Program Studi TIP dan THP', 1, 1, 5, '2000000', NULL, 'Mandiri', 'Ihlana Nairfana', '1610004215286', '406162aa1ecbb40.pdf', 'progress', '4061b1a2c09a59c.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-10 08:53:51', '2021-12-09 06:31:28'),
(283, '182', 80, 24, 'Pelatihan Mendeley utk mahasiswa angk 2018 sd 2020', 'Mahasiswa THP TIP', 'Mahasiswa memahami dan menggunakan Mendeley dalam pembuatan KTI dan Skripsi', 'Pelatihan', 'STP', '2021-10-24', 'Prodi TIP dan THP', 3, 10, 49, '1600000', NULL, 'Mandiri', 'Ihlana Nairfana', '1610004215286', '406162b4d9dbdc4.pdf', 'progress', '4061b1b1c47c2a4.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-10 09:39:38', '2021-12-09 07:35:33'),
(284, '458', 77, 24, 'Program ini dilaksanakan sebagai bentuk usaha dalam mengurangi buta huruf al-qur\'an dikalangan civitas UTS', 'Mahasiswa dan Dosen', 'Mengurangi angka buta huruf al-qur\'an di kalangan civitas UTS.', 'Online', 'online', '2021-10-11', 'BPKO', 3, 10, 48, '500000', NULL, 'Mandiri', 'WIN ARIGA MANSUR MAL', '1610007249993', '4061638a32c81c0.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-11 00:49:55', '2021-12-07 08:15:52'),
(285, '459', 77, 24, 'Program ini dilaksanakan sebagai salah satu bentuk cara menebar kata-kata seruan kebaikan', '-', 'Terpublikasinya sejumlah spanduk/poster seruan kebaikan', 'Penyebaran dalam bentuk spanduk/poster', 'Lingkungan UTS', '2021-10-11', 'BPKO', 3, 10, 48, '2000000', NULL, 'Mandiri', 'WIN ARIGA MANSUR MAL', '1610007249993', '4061638d36cd2d4.pdf', 'progress', 'default.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-11 01:02:47', '2021-12-29 03:25:20'),
(286, '88', 68, 24, 'Dalam menjalankan fungsi suatu universitas, sudah pasti dibutuhkan logistic, peralatan dan jasa lainnya  yang menunjang optimalnya kerja suatu instansi. Barang atau inventaris yang telah rusak, using, atau keperluan akan barang baru harus segera terpenuhi agar kegiatan suatu instansi dapat berjalan dengan lancar.', 'Tersedianya sarana dan prasarana', 'terlaksananya pengadaan fasilitas kampus', 'Pembelian Atribut Security berupa Logo dan assesoris lainnya', 'Universitas Teknologi Sumbawa', '2021-10-11', 'Security UTS', 1, 4, 20, '1400000', NULL, 'BRI', 'Nova Aryanto,ST', '009301040570507', '406163baab939b7.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-11 04:16:44', '2021-12-14 03:41:53'),
(287, '197', 54, 24, 'Renstra merupakan acuan Fakultas dan program studi dalam menjalankan kegiatan-kegiatan ditingkat Fakultas dan program studi', 'Civitas Akademika Fikom', 'Dokumen Renstra Fikom', 'Penyusunan Renstra Fikom', 'Dekanat Fakultas Ilmu Komunikasi', '2021-10-18', 'Tata Pamong', 1, 1, 5, '2000000', NULL, 'Mandiri', 'UTS Fakultas Ilmu Komunikasi', '1610003673147', '406163de1f6ca72.pdf', 'progress', NULL, NULL, NULL, NULL, 0, 'Direktur Keuangan', '2021-10-11 06:47:59', '2021-10-13 11:51:32'),
(288, '421', 113, 24, 'Program ini dilaksanakan sebagai salah satu bentuk melengkapi bagian administrasi asrama UTS', 'Asrama UTS', 'Tersedianya Printer di UPT ASRAMA UTS', 'Pembelian', '-', '2021-10-11', 'UPT ASRAMA UTS', 2, 8, 41, '3500000', NULL, 'Mandiri', 'ANWAR SA', '1610002572803', '406163e20d271e0.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Sekniv', '2021-10-11 07:04:45', '2021-10-11 09:22:48'),
(289, '418', 113, 24, 'program ini dilaksanakan sebagai salah satu bentuk cara untuk memperlancar saluran air di asrama dan memelihara sarana diUTS', 'Asrama UTS', '-', 'perbaikan', 'asrama uts', '2021-10-12', 'UPT ASRAMA UTS', 2, 8, 41, '2000000', NULL, 'Mandiri', 'ANWAR SA', '1610002572803', '406164da239f294.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Sekniv', '2021-10-12 00:43:16', '2021-10-19 06:26:39'),
(290, '88', 68, 24, ': Dalam menjalankan fungsi suatu universitas, sudah pasti dibutuhkan logistic, peralatan dan jasa lainnya  yang menunjang optimalnya kerja suatu instansi. Barang atau inventaris yang telah rusak, using, atau keperluan akan barang baru harus segera terpenuhi agar kegiatan suatu instansi dapat berjalan dengan lancar.', 'Tersedianya sarana dan prasarana yang memadai untuk seluruh unit kerja', 'Terlaksananya pengadaan fasilitas kampus', 'Pengadaan Peralatan berupa wifi orbit', 'PascaSarjana', '2021-10-12', 'PascaSarjana', 1, 4, 20, '629000', NULL, 'BRI', 'Nova Aryanto,ST', '009301040570507', '406164f40a8cb70.pdf', 'progress', '4061b17818da4f8.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-12 02:33:46', '2021-12-09 03:29:30'),
(292, '81', 68, 24, 'Dalam menjalankan fungsi suatu universitas, sudah pasti dibutuhkan logistic, peralatan dan jasa lainnya  yang menunjang optimalnya kerja suatu instansi. Barang atau inventaris yang telah rusak, using, atau keperluan akan barang baru harus segera terpenuhi agar kegiatan suatu instansi dapat berjalan dengan lancar.', 'Tersedianya sarana dan prasarana', 'Peningkatan sarana dan prasarana universitas', 'Pembelian material', 'FTLM', '2021-10-12', 'Sarana dan Prasarana', 1, 4, 20, '5120000', NULL, 'BRI', 'Nova Aryanto,ST', '009301040570507', '4061653db1b7d34.pdf', 'progress', '4061bc47182c907.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-12 07:48:02', '2021-12-17 08:15:20'),
(293, '195', 81, 24, 'pendaftaran, pengembangan jumlah dan kualitas publikasi jurnal Fakultas', 'dosen, peneliti dan mahasiswa', 'Publikasi awal', 'Publikasi jurnal', 'Fakultas Teknobiologi', '2021-10-12', 'WR3', 5, 19, 82, '1000000', NULL, 'BSI', 'Lili Suharli', '8347132860', '4061653dffdf81a.pdf', 'progress', '4061ca7c177b9c7.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-12 07:49:20', '2021-12-28 02:53:12'),
(294, '283', 60, 24, 'Tracer Study merupakan salah satu program atau metode yang digunakan oleh beberapa Perguruan Tinggi, khususnya di Indonesia untuk memperoleh umpan balik dari alumni. Umpan balik yang diperoleh dari alumni ini dibutuhkan oleh perguruan tinggi dalam usahanya untuk perbaikan serta pengembangan kualitas dan sistem pendidikan', 'Alumni lulusan tahun 2019 sampai 2020', 'Minimal 85% Responden yang berasal dari kalangan alumni yang lulus pada tahun 2019 & lulus pada periode bulan September 2020 dari total responden 850', 'a. Penyebaran Koesiener Tracer Study melalui Ecampuz  b. Pengolahan data dan, c. Pelaporan Data', 'UTS/Portal Alumni (SIAKAD', '2021-10-13', 'Wakil Rektor 1', 1, 2, 6, '5500000', NULL, 'Mandiri', 'Arie Kasmita', '1610006286871', '', 'progress', '4061bad88f4ed6b.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-13 02:03:52', '2021-12-16 06:11:28'),
(295, '323', 21, 24, 'Humas dan Protokoler melaksanakan Kopi Darat (pertemuan) dengan seluruh admin sosial media yang ada di lingkup universitas, sebagai bentuk menjaga silaturahmi antar admin, yang menjalankan tugas memberikan pelayanan kepada netizen UTS.', 'Seluruh admin social media di lingkungan UTS', 'dalam hal penyebaran informasi, branding, dan penyamaan persepsi tentang UTS', 'Dilaksankan dalam sehari', 'Sumbawa Techno Park (STP)', '2021-10-14', 'Humas dan Protokoler', 1, 1, 1, '3000000', NULL, 'mandiri', 'Nurul Hudaningsih', '1610006292150', '40616650785f5cc.pdf', 'progress', '4061bad7ff8ec5c.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-13 03:20:24', '2021-12-16 06:09:04'),
(296, '335', 111, 21, 'Rapat rutin Bulanan pimpinan fakultas yang terdiri dari Dekan, Wadek, Kaprodi, dan Sekprodi yang dilakukan sekali 1 bulan', 'Pimpinan Fakultas, Program Studi dan Dosen', 'Menghasilkan koordinasi yang baik antara Pimpinan Fakultas dan Dosen', 'Rapat Rutin Fakultas', '-', '2021-10-26', 'Fakultas Rekayasa Sistem', 2, 6, 27, '1200000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa Fakultas Rekayasa Sistem', '1610007663755', '4061668f882707f.pdf', 'progress', '4061b019682e9a6.jpg', NULL, NULL, '4061cbbffaab880.pdf', 4, 'Direktur Keuangan', '2021-10-13 07:49:29', '2021-12-29 05:48:40'),
(297, '300', 60, 21, 'PROTOKOLER GOES TO SCHOOL ini  adalah melihat beberapa SMA yang ada di Kota Sumbawa saat ini,  banyak sekali  kegiatan yang di selenggarakan oleh siswa SMA baik kegiatan sekolah maupun dalam  komunitas ataupun organisasi  lainnya', 'Pengurus OS1IS /SMA/SMK/MA se-kota Sumbawa', 'apat membuat event atau acara sesuai dengan prosedur  keprotokoleran baik secara  formal  maupun non formal.', 'Talkshow dan Focus Group Discussion', 'SMK Negeri 1 Sumbawa', '2021-10-23', 'Sub Direktorat Penalaran, Minat dan Bakat, Direktorat Kemahasiswaan dan Alumni', 3, 10, 49, '750000', NULL, 'mandiri', 'TEGUH IMAN HADINULLAH', '1610006273952', '406167b3d1768e9.pdf', 'progress', '4061b0216e54886.jpg', NULL, NULL, '4061ca88f59d724.pdf', 4, 'Direktur Keuangan', '2021-10-14 04:36:33', '2021-12-29 05:51:43'),
(298, '441', 79, 21, 'Belum tersedianya fasilitas Digital Library dan Lab Ekonomi Terpadu sehingga menyebabkan kurangnya mobilitas kegiatan yang dilaksanakan oleh dosen dan mahasiswa FEB UTS', 'Dosen dan mahasiswa', 'Terbentuknya Digital Library dan Lab Ekonomi Terpadu guna memperkenalkan semua prodi di FEB, serta memberikan edukasi kepada masyarakat tentang permasalahan-permasalahan ekonomi', 'Pembuatan Digital Library dan Lab Ekonomi Terpadu', 'Gedung FEB', '2021-10-15', 'FEB', 2, 8, 41, '17000000', NULL, 'MANDIRI', 'UTS. FAKULTAS EKONOMI DAN BISNIS', '1610004679291', '406167bcf8d0ab3.pdf', 'progress', '4061b2c98d46c7b.pdf', NULL, NULL, '4061c975082dbee.pdf', 4, 'Direktur Keuangan', '2021-10-14 05:15:37', '2021-12-29 08:10:29'),
(300, '341', 111, 21, 'Kegiatan ini dilakukan untuk menjalin komunikasi dan koordinasi dengan semua Orwama tingkat fakultas', 'Organisasi mahasiswa tingkat fakultas', 'Menghasilkan koordinasi yang baik antara Ormawa dan Fakultas', 'Silaturrahim dan koordinasi dengan Ormawa tingkat Fakultas', '-', '2021-10-29', 'Fakultas Rekayasa Sistem', 2, 6, 27, '350000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa Fakultas Rekayasa Sistem', '1610007663755', '406168e31ad4160.pdf', 'progress', '4061b1b0b0deb8b.pdf', NULL, NULL, '4061b96ea78cc56.pdf', 4, 'Direktur Keuangan', '2021-10-15 02:10:35', '2021-12-17 07:34:01'),
(301, '342', 111, 21, 'kegiatan ini dimaksudkan untuk menjalin silaturrahim dan membuat kerjasama dengan antar alumni tingkat fakultas', 'alumni mahasiswa fakultas rekayasa sistem', 'terjalinnya silaturrahim yang baik antara alumni dengan fakultas', 'Silaturrahim dan menjalin kerjassama dengan alumni tingkat Fakultas', '-', '2021-10-30', 'Fakultas Rekayasa Sistem', 3, 11, 53, '500000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa Fakultas Rekayasa Sistem', '1610007663755', '406168e73cabd72.pdf', 'progress', '4061b0167d424cb.jpg', NULL, NULL, '4061c91ddf5d7e8.pdf', 4, 'Direktur Keuangan', '2021-10-15 02:28:13', '2021-12-27 02:14:46'),
(302, '197', 54, 21, 'Renstra Merupakan acuan Civitas Fikom dalam menjalankan kegiatan Tridharma Perguruan Tinngi. Sehingga penyusunan dokumen ini sangat penting untuk kegiatan kerja Fikom', 'Civitas Akademika Fikom', 'Tersedianya dokumen Renstra Fikom', 'Penyusunan Renstra Fikom', 'Dekanat Fakultas Ilmu Komunikasi', '2021-10-18', 'Tata Pamong', 1, 1, 5, '2000000', NULL, 'Mandiri', 'UTS Fakultas Ilmu Komunikasi', '1610003673147', '406168f6f5f0311.pdf', 'progress', '4061b2cdf07cc16.pdf', NULL, NULL, '4061c9682a68dda.pdf', 4, 'Direktorat Keuangan', '2021-10-15 03:35:18', '2022-02-10 07:22:13'),
(303, '503', 97, 24, 'Dalam menyelanggarakan Program Studi Teknik Mesin dibutuhkan Kerjasama antar prodi Teknik Mesin se-Indonesia untuk meningkatkan kualitas Pendidikan, Penelitian dan Pengabdian kepada Masyarakat sehingga berdampak terhadap peningkatan mutu dan daya saing lulusan pada tingkat nasional. Oleh karena itu, program studi Teknik Mesin perlu bergabung menjadi anggota tetap Badan Kerjasama Teknik Mesin Indonesia, sehingga memiliki akses dalam Kerjasama dengan Program Studi Teknik Mesin se Indonesia dan mendapat bimbingan dari BKS-TM Indonesia dalam menyelenggarakan Program Studi Teknik Mesin', 'Mahasiswa dan Dosen', 'Program Studi Teknik Mesin, UTS, menjadi anggota tetap BKS-TM Indonesia', 'Menghadiri Kegiatan Musyawarah Anggota dan Mengajukan permohonan sebagai anggota tetap BKS-TM Indonesia.', 'Universitas Muhammadiyah Yogyakarta (online)', '2021-10-12', 'Warek 2, Warek 4', 1, 1, 3, '4000000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa-FRS', '161000766375', '4061691df679a8c.pdf', 'progress', '4061b2cd5eab388.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-15 06:21:42', '2021-12-10 03:45:35'),
(304, '507', 97, 24, 'Banyaknya siswa sma dan SMK di Sumbawa yang masih kurang berminat melanjutkan pendidikan di Program Studi Teknik Mesin, UTS. Hal ini dapat dilihat dari jumlah mahsiswa yang masuk di Program Studi Teknik Mesin pada TA 2019/2020 dan TA 2020/2021hanya 1 kelas menurun dari tahun sebelumnya.', 'Sosialisasi Program Studi Teknik Mesin UTS', 'Awarness dan Jumlah Peminat Program Studi Teknik Mesin Meningkat', 'Lomba Perancangan Mesin Tingkat SMA/SMK', 'Universitas Teknologi Sumbawa', '2021-11-11', 'Warek II dan Warek I', 1, 2, 9, '2000000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa-FRS', '161000766375', '4061692234d84ab.pdf', 'progress', '4061b2fafb7235b.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-15 06:39:49', '2021-12-10 07:00:12'),
(305, '253', 61, 24, 'Adanya Asesor BKD PTS Ber NIRA yang akan menyamakan Persepsi Asessor untuk\nRubrik BKD terbaru tahun 2021', 'Asesor perwakilan Prodi', 'Dosen mengerti secara teknis dalam penyusunan BKD & LKD', 'sosialiasi', 'Lokasi : Ruang Rapat lantai 2 Gedung Rektorat\nWaktu : Selasa, 19 Oktober 2021\nJam 09.00 –selesai', '2021-10-19', 'WAREK I, Direktorat Akademik', 1, 3, 16, '1000000', NULL, 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '406169397672880.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-15 08:19:02', '2021-12-27 06:36:29'),
(306, '188', 81, 24, 'Peningkatan pengetahuan mahasiswa, alumni Fakultas Teknobiologi dan umum berdasarkan berbagai background keilmuan bioteknologi yang sedang berkembang (Riset dan Industri) dan kesiapannya untuk kuliah lanjut', 'dosen, peneliti dan mahasiswa', 'keikutsertaan mahasiswa, alumni dan umum', 'Webinar', 'Online', '2021-10-22', 'WR3, WR4, WR 1', 3, 11, 53, '3500000', NULL, 'BSI', 'Lili Suharli', '8347132860', '40616cd80a1dcff.pdf', 'progress', '4061ca7d6ab09fc.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-18 02:12:26', '2021-12-28 02:58:51'),
(307, '380', 112, 24, 'Untuk meningkatkan penelitian dan \npotensi alam Sumbawa di bidang \nmaterial serat hayati', 'Dosen teknik metalurgi, Mahasiswa  teknik metalurgi dan industri sisal di  sumbawa', 'Adanya ruang inkubasi riset antara \nmahasiswa dan dosen dan terjalin \nkerjasama pendidikan antara industri dan \nuniv', 'FGD dengan industri sisal dengan dosen  teknik metalurgi Studi lapangan mahasiswa dan dosen ke  lahan perkebunan sisal Tim riset penelitian sisal', 'Lokasi : Gedung GBO, plampang (lahan \npertanian sisal), Lab. Teknik metalurgi', '2021-07-22', 'Berisi bidang-bidang rektor yang  berhubungan dengan rencana kegiatan  *Akademik, Kemahasiswaan PSDM :  Wakil Rektor 1, akademik Wakil rektor 4, kerjasama', 4, 16, 75, '2000000', NULL, 'Mandiri', 'UTS. FAKULTAS TEKNIK', '1610004786245', '40616ce0236919c.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-18 02:46:59', '2021-12-07 07:52:26'),
(308, '384', 112, 24, 'Akan dibentuk Tim Pengembangan \nModul Praktikum sesuai dengan rumpun \nkeilmuan dosen. Nantinya tim akan \nmengevaluasi modul praktikum yang \nsudah ada dan mengembangkan emodul \npraktikum yang baru yang interaktif dan \nadaptif digunakan di masa pandemi \nsekalipun.', 'Seluruh Dosen teknik metalurgi', 'Seluruh modul dapat tersusun dengan \nbaik dan tercetak.', 'FGD dari seluruh dosen pengembang  modul praktikum dan pencetakan modul', 'Lokasi : gedung GBO', '2021-08-13', 'Berisi bidang-bidang rektor yang  berhubungan dengan rencana kegiatan  *Akademik, Kemahasiswaan PSDM :  Wakil Rektor 1, akademik', 2, 9, 44, '500000', NULL, 'Mandiri', 'UTS. FAKULTAS TEKNIK', '1610004786245', '40616ce296b9a65.pdf', 'progress', '4061b6df6e0a35c.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-18 02:57:27', '2021-12-13 05:51:42'),
(309, '388', 112, 24, 'Perlu adanya pemahaman tentang \nrencana strategis Teknik metalurgi \nkepada seluruh civitas akademik untuk \ndiwujudkan pada periode yang \nditetapkan,sehingga seluruh civitas \nakademik mempersiapkan Langkah \nuntuk mewujudkan kebijakan strategis \nTeknik metalurgi tersebut. Selain itu, \ndiharapkan masukan/saran dari \npeserta/stakeholder untuk perbaikan', '- Civitas Akademik Teknik  Metalurgi - Stakeholder', 'Kehadiran peserta 100%', 'Sosialisasi', 'Raberas Resto', '2021-10-16', 'Fasilitas: Wakil Rektor 2 Akademik ;Warek 1 PKM : Warek 3 Kerjasama :Warek 4', 1, 1, 5, '1500000', NULL, 'Mandiri', 'UTS. FAKULTAS TEKNIK', '1610004786245', '40616ce4d8e8a89.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Fakultas Teknik Lingkugan dan Mineral', '2021-10-18 03:07:05', '2021-10-28 05:44:05'),
(310, '391', 112, 24, 'Merupakan rangkaian acara yang terdiri \ndari kompetisi paper antar mahasiswa \ndan seminar seputar proses pada \nmetalurgi di tingkat Program studi \nsebelum mengikuti kompetensi IPM \nyang diselenggarakan oleh Himpunan \nMetallurgi Se-Indonesia Setiap Bulan \nNovember 2022.', 'Peserta yang mengikuti perlombaan  minimal semester III.', '1. Kehadiran peserta 40%\n2. Teranggarkannya keuangan dengan \nbaik tanpa terjadi kekurangan dana \n30%\n3. Pemahaman peserta lomba terhadap \nisu-isu dalam metalurgi 30%', 'Perlombaan, seminar', 'Universitas Teknologi \nSumbawa.', '2021-11-04', 'Pengadaan Sarana, Prasarana, Fasilitas:  Wakil Rektor 2', 3, 10, 50, '2000000', NULL, 'Mandiri', 'UTS. FAKULTAS TEKNIK', '1610004786245', '40616ce6dc9100e.pdf', 'progress', '4061b6de355f980.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-18 03:15:40', '2021-12-13 05:46:29');
INSERT INTO `pengajuan` (`id_pengajuan`, `kode_rkat`, `id_user`, `next`, `latar_belakang`, `sasaran`, `target_capaian`, `bentuk_pelaksanaan_program`, `tempat_program`, `tanggal`, `bidang_terkait`, `id_iku_parent`, `id_iku_child1`, `id_iku_child2`, `biaya_program`, `biaya_disetujui`, `bank`, `atn`, `no_rek`, `rab`, `status_pengajuan`, `pencairan`, `id_period`, `lpj_kegiatan`, `lpj_keuangan`, `validasi_status`, `nama_status`, `created_at`, `updated_at`) VALUES
(311, '379', 112, 24, 'Dalam mewujudkan Teknik Metalurgi \nyang unggul perlu kesepakatan Bersama \ndalam menentukan kegiatan/program \nkerja yang mendukung kemajuan \nT.metalurgi sesuai dengan rencana \nstrategis Teknik Metalurgi. Selain itu, \nperlu adanya evaluasi pada setiap \nkegiatan yang telah dilakukan untuk \nmengukur keberhasilan yang telah \ndilakukan.', 'Dosen dan Tendik Teknik Metalurgi.', '1. Dosen 100%\n2. Tendik 100%', 'Sosialisasi', 'Raberas Resto', '2021-12-07', 'Akademik, Kemhasiswaan : Wakil  Rektor 1 Fasilitas : Wakil Rektor 2 PKM : Wakil Rektor 3 Kerjasama :Wakil Rektor 4', 1, 3, 10, '1500000', NULL, 'Mandiri', 'UTS. FAKULTAS TEKNIK', '1610004786245', '40616d03a823502.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Fakultas Teknik Lingkugan dan Mineral', '2021-10-18 05:18:32', '2021-10-28 05:43:08'),
(312, '383', 112, 24, 'Peningkatan Mutu adalah suatu \nkeharusan bagi semua Program Studi \nyang ingin meningkatkan kualitasnya. \nSalah satu upaya yang dilakukan adalah \ndengan melakukan audit mutu internal \n(AMI) secara berkala setiap tahunnya.', 'Seluruh Dosen di Program Studi Teknik  Metalurgi', 'Jumlah item yang mendapatkan nilai \nOB+ meningkat dari tahun sebelumnya.', 'Diskusi/ Rapat', 'Ruang Dekanat FT', '2021-10-22', 'BPMA', 1, 2, 7, '500000', NULL, 'Mandiri', 'UTS. FAKULTAS TEKNIK', '1610004786245', '40616d054817116.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Fakultas Teknik Lingkugan dan Mineral', '2021-10-18 05:25:28', '2021-10-28 05:42:52'),
(316, '81', 68, 24, 'Dalam menjalankan fungsi suatu universitas, sudah pasti dibutuhkan logistic, peralatan dan jasa lainnya  yang menunjang optimalnya kerja suatu instansi. Barang atau inventaris yang telah rusak, using, atau keperluan akan barang baru harus segera terpenuhi agar kegiatan suatu instansi dapat berjalan dengan lancar.', 'Tim taman', 'Terpeliharanya kebersihan taman dan keamanan', 'Pengadaan peralatan taman', 'Kawasan Universitas', '2021-10-19', 'DPPF/Tim Taman', 1, 4, 20, '9640000', NULL, 'BRI', 'Nova Aryanto,ST', '009301040570507', '40616e56e4a22a2.pdf', 'progress', '4061bc4334c2639.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-19 05:25:56', '2021-12-17 07:58:45'),
(322, '248', 61, 24, 'Pelatihan merupakan kewajiban organisasi dan semua pihak yang terkait dalam pengembangan dan perencanaan usaha. Hal ini dikarenakan dengan diadakannya pelatihan, maka organisasi melakukan investasi jangka panjang terhadap pengembangan nilai yang dimiliki. Melalui adanya pelatihan, organisasi dapat mengembangkan serta menambah pengetahuan dan keterampilan karyawan sehingga dapat semakin mengefisiensikan dan mengefektifkan kinerja karyawan.', 'Tenaga kependidikan Universitas Teknologi Sumbawa (50 orang)', 'Meningkatkan pengetahuan dan keterampilan yang diperlukan untuk \nmelaksanakan tugas sebagai Tenaga Kependidikan secara profesional;', 'Pelatihan', 'Universitas Teknologi Sumbawa', '2021-11-22', 'Wakil Rektor I', 1, 3, 13, '3514000', NULL, 'BSI', 'Lalu ahmad Taubih', '8348060680', '406170e91c5b070.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-10-21 04:14:20', '2021-10-25 12:01:11'),
(323, '71', 61, 24, 'SDM merupakan hal yang mutlak dimiliki oleh setiap perusahaan terlepas dari perusahaan tersebut besar atau kecil, SDM inilah yang melaksanakan aktivitas perusahaan dan menggerakkan organisasi. Pengadaan tenaga kerja merupakan langkah pertama dan yang mencerminkan berhasil tidaknya suatu perusahaan mencapai tujuannya.', 'Calon Dosen dan Tenaga Kependidikan', 'Tersaringnya Dosen dan Tendik yang sesuai dengan kebutuhan organisasi', 'Tes Potensi Akademik, Wawancara', 'Universitas Teknologi Sumbawa', '2020-12-28', 'Wakil Rektor I', 1, 3, 11, '996000', NULL, 'BSI', 'Lalu ahmad Taubih', '8348060680', '406171002ad5401.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-21 05:52:44', '2021-12-27 06:36:22'),
(324, '502', 97, 24, 'Perlunya diskusi terkait seluruh kegiatan tridarma dan evaluasi di program studi teknik mesin', 'Program Studi', 'Terselenggaranya seluruh kegiatan tridarma dan evaluasi di program studi teknik mesin', 'Focus Group Discussion', 'Cluster FT Universitas Teknologi Sumbawa', '2021-11-01', 'Wakil Rektor 1, 3, dan 4', 5, 21, 86, '1000000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa FRS', '1610007663755', '406171fa41dd432.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-21 23:39:46', '2021-12-10 07:57:04'),
(325, '321', 97, 24, 'Kebijakan Menteri Pendidikan, Kebudayaan, Riset, dan Teknologi baru terkait Merdeka Belajar Kampus Merdeka mengharuskan setiap Program Studi menyesuaikan kurikulumnya. Prodi Teknik Mesin telah melakukan hal tersebut. Untuk menyampaikan kurikulum baru dan visi misi Program Studi ke pemangku kepentingan perlu dilakukan sosialisasi.', 'Program Studi', 'Peningkatan Mutu Program Studi', 'Sosialisasi', 'Menyesuaikan', '2021-11-15', 'Wakil Rektor 1', 1, 1, 3, '2000000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa - FRS', '161000766375', '4061720e41647a7.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Fakultas Rekayasa Sistem', '2021-10-22 01:05:05', '2021-10-22 01:42:05'),
(326, '261', 53, 24, 'Ketidakakuratan data status mahasiswa berdampak pada database akademik dan keuangan mahasiswa di bagian keuangan kampus, sehingga perlu dilakukan update data setiap semester untuk memperbarui data sebelumnya', 'Database mahasiswa', '100% data mahasiswa akurat pada awal semester ganjil', 'offline', 'warek 1', '2021-10-25', 'Bagian akademik, kaprodi dan dekan masing-masing fakultas, bagian keuangan', 1, 1, 4, '400000', NULL, 'BSI', 'Eva Juliani', '7730066710', '4061725a561bfad.pdf', 'progress', '4061b6c0a48d0a6.pdf', NULL, NULL, '', 1, 'Direktorat Akademik', '2021-10-22 06:29:42', '2021-12-28 01:18:57'),
(327, '367', 53, 24, 'Kurangnya informasi yang didapatkan oleh civitas akademika', 'Mahasiswa Baru angkatan 2021-2022', 'Tersebarnya informasi mengenai kampus', 'offline', 'warek 1', '2021-10-29', 'wakil rektor 1', 1, 1, 4, '4500000', NULL, 'BSI', 'Eva Juliani', '7730066710', '4061725b3e12454.pdf', 'progress', '4061b05d2b33e84.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-22 06:33:34', '2021-12-08 07:22:20'),
(336, '298', 60, 24, 'wilayah indonesia yang terbentang luas harus mendapat perhatian, salah saunya melalui pengabdian masysarakat yang dilakukan oleh mahasiswa dalam hal ini diwakilkan oleh BEM Universitas UTS', 'Kemeterian Sisial BEM UTS', 'Menjalankan Tri dharma Perguruan Tinggi yaitu pengabdian masyarakat', 'Pengabdian Masyarakat', 'Politeknik Negeri Semarang', '2021-10-26', 'Direktur Kemahasiswaan dan Alumni UTS', 4, 18, 81, '1000000', NULL, 'Bank NTB Syariah', 'BEM UTS', '0090200700276', '4061777a11d2fd4.pdf', 'progress', '4061b19b53e4617.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-26 03:46:26', '2021-12-09 05:59:49'),
(337, '299', 60, 24, 'Kegiatan sosialisasi RUU Pemira merupakan kegiatan yang dilakukan sebagai landasan untuk melaksanakan Pemilu raya di lingkungan UTS', 'Mahasiswa Universitas Teknologi Sumbawa', 'Panitia pelaksanaan Pemira nantinya dapat berjalan dengan lancar', 'Sisialisasi secara Offline', 'Lingkungan Universitas Teknologi Sumbawa', '2021-11-01', 'Direktur Kemahasiswaan dan Alumni UTS', 1, 1, 3, '440000', NULL, 'Bank mandiri', 'Teguh Iman Hadinullah', '1610006273952', '40617789fb237ba.pdf', 'progress', '4061bad694df120.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-26 04:54:20', '2021-12-16 06:03:02'),
(338, '299', 60, 21, 'Dikarenakannya masih belum adanya fasilitas erupa bendera dan palu sidan DPM UTS', 'DPM Universitas', 'adanya falitas untuk kebutuhan dan kegiatan DPM universitas', '-', 'UTS', '2021-11-01', 'Direktur Kemahasiswaan dan Alumni UTS', 1, 1, 1, '400000', NULL, 'Bank mandiri', 'Teguh Iman hAdinullah', '1610006273952', '4061778e7de9374.pdf', 'progress', '4061bad661b40d6.pdf', NULL, NULL, '4061bc3cd439e11.pdf', 4, 'Direktur Keuangan', '2021-10-26 05:13:34', '2021-12-17 07:55:26'),
(339, '103', 73, 24, 'Pembuatan tabloit/booklet yang berisi informasi seputar UTS per tahun dan souvenir untuk dikirim ke sponsor dan seluruh mitra kerja sama UTS sebagai bentuk report sekaligus feedback pihak Universitas kepada pihak Mitra.', 'Penguatan kerja sama UTS dengan Mitra Kerja Sama.', 'Mendapatkan respon positif dari mitra dan munculnya mitra kerja sama baru.', 'Pemberian souvenir dan booklet', 'Pengiriman via pos dan pemberian saat acara Gathering', '2021-11-03', 'Mitra Kerja Sama', 1, 2, 9, '24999000', NULL, 'Mandiri', 'Anita Gusmiarti', '161000723450', '406177a0bdd8b58.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-10-26 06:31:26', '2021-12-27 06:36:18'),
(340, '560', 69, 24, 'Monitoring dan evaluasi adalah kegiatan rutin setiap semester yang dilaksanakan oleh UPT Beasiswa. Adapun indikator penilaian dalam kegiatan ini adalah IP, keaktifan organisasi, dan keaktifan mentoring. Dengan adanya monev ini, diharapkan mahasiswa dapat lebih aktif mengikuti organisasi, mentoring dan berprestasi.', 'Mahasiswa berbeasiswa 2018 - 2020', 'Memonitoring dan mengevaluasi seluruh mahasiswa berbeasiswa dalam satu semester terkakhir.', 'Surat keterangan aktif organisasi, surat keterangan aktif mentoring.', 'Rektorat', '2021-11-01', 'BPKO dan Direktorat Kemahasiswaan', 3, 11, 55, '1600000', NULL, 'Bank Mandiri', 'Zulfikar Rahadian Tamin', '1610006291079', '40617a09a005d6e.pdf', 'progress', '4061b6c184c70a3.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-10-28 02:23:28', '2021-12-13 03:44:05'),
(341, '300', 60, 21, 'Dirasa perlunya kegiatan bersama untuk menjalin silaturrahmi atar perguruan/dojang taekwondo sesumbawa', 'Mahasiswa/anggota  aktif UKM Tekwondo UTS', 'Bertambah wawasan bidang taekwondo dan terciptanya mental terlatih anggota anggota UKM', 'Latihan Bersamadi Ruang RPK UTS', 'Ruang Publik Kreatif UTS', '2021-11-07', 'Sub Direktorat Penalaran, Minat dan Bakat, Direktorat Kemahasiswaan dan Alumni', 3, 10, 50, '750000', NULL, 'Mandiri', 'TEGUH IMAN HADINULLAH', '1610006273952', '40617a2b3971440.pdf', 'progress', '4061b1a4759e389.pdf', NULL, NULL, '4061ca88999cdea.pdf', 4, 'Direktur Keuangan', '2021-10-28 04:46:49', '2021-12-30 04:36:36'),
(343, '324', 21, 24, 'Duta Mahasiswa adalah generasi muda mitra universitas yang memiliki kepedulian terhadap pengembangan dan promosi universitas, sebagai penjewantahan universitas baik pihak internal maupun eksternal.', 'Para mahasiswa perwakilan prodi masing-masing yang ada di UTS.', 'Tim humas dapat melaksanakan salah satu program dalam RKAT sesuai target.', 'Dilaksanakan pada 2-5 November 2021.', 'STP UTS', '2021-11-02', 'Humas dan Protokoler', 1, 1, 1, '5750000', NULL, 'mandiri', 'Nurul Hudaningsih', '1610006292150', '40617a467f5d625.pdf', 'progress', 'default.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan', '2021-10-28 06:43:11', '2022-02-09 05:28:23'),
(344, '555', 75, 24, 'Menciptakan kenyamanan ruangan dalam bekerja, menambah aksesoris ruangan, marka-marka, dan bilik untuk mahassiswa internasional', 'Ruangan Warek 4', 'Penataan ruang WR 4 sesuai dengan kebutuhan dan menambah estetika ruangan', 'Renovasi', 'Warek 4', '2021-11-05', 'Perencanaan', 2, 8, 42, '35000000', NULL, 'Mandiri', 'Acuh Dharmawan Junaidi', '1610006295146', '40617f8ffbb5563.pdf', 'progress', NULL, NULL, NULL, NULL, 1, 'Direktorat Perencanaan & Pengembangan Universitas', '2021-10-29 01:13:45', '2021-11-01 06:58:04'),
(345, '552', 61, 24, 'Kurangnya anggaran untuk melengkapi kebutuhan kerumahtanggaan Unit Warek 1', 'Unit Warek 1', 'Keperluan kerumahtanggan Unit Warek 1 dapat  terpenuhi', 'offline', 'Universitas Teknologi Sumbawa', '2021-10-28', 'Wakil Rektor I', 1, 1, 1, '2000000', NULL, 'BSI', 'Lalu ahmad Taubih', '8348060680', '40617b5a8a52968.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-10-29 02:20:58', '2021-11-03 04:29:24'),
(347, '576', 54, 121, 'Pameran merupakan kegiatan yang dilakukan untuk menyampaikan sebuah ide atau gagasan kepada masyrakat luas melalui media karya seni. Serta, hal ini dapat digunakan sebagai media untuk memperkenalkan suatu budaya yang ada pada daerah tertentu kepada masyarakat luas. Dalam hal ini FIKOM akan menyelenggarakan kegiatan Pameran Internasional yang merupakan pertukaran budaya antara Indonesia dan Kolumbia', 'Civitas Akademika UTS dan Masyrakat Luas', 'Terlaksananya kegiatan', 'Pameran Internasional Fikom', 'Ruang HKI UTS', '2021-11-05', 'Kerjasam FIKOM', 5, 22, 90, '3000000', NULL, 'Mandiri', 'UTS Fakultas Ilmu Komunikasi', '1610003673147', '40617f5ef641ab1.pdf', 'progress', '4061b2fa4e5d9ec.pdf', NULL, NULL, '4061c95ccd898a6.pdf', 0, 'Direktur Keuangan (LPJ)', '2021-11-01 03:28:54', '2021-12-30 04:38:53'),
(349, '324', 21, 24, 'Ajang pengembangan diri mahasiswa', 'Mahasiswa', 'Ubah', 'Ubah', 'Ubah', '2021-11-02', 'Ubah', 2, 7, 36, '5750000', NULL, 'MANDIRI', 'BNI', '1111', '40617f8a30b7934.pdf', 'progress', '4061bc47613b7df.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-11-01 06:33:21', '2021-12-17 08:16:33'),
(350, '590', 21, 24, 'Humas Goes to School adalah kegiatan sharing knowledge tentang kehumasan kepada sekolah untuk pengembangan soft skill kaitannya dengan branding, pun potensi kehumasan yang bermanfaat lainnya.', 'sekolah-sekolah mitra UTS', 'Terselenggaranya kegiatan humas goes to school', 'Dilaksanakan selama 1 hari pada 18 November 2021', 'Sumbawa Grand Hotel', '2021-11-18', 'Humas dan Protokoler', 4, 18, 80, '4250000', NULL, 'MANDIRI', 'Nurul Hudaningsih', '1610006292150', '40617fa5d0a44c2.pdf', 'progress', '4061b1a14c3dd50.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-11-01 06:33:21', '2021-12-09 06:25:16'),
(351, '532', 57, 24, 'Rencana Induk Teknologi Informasi (DSTI) atau Information Technology Master\nPlan (ITMP) memaparkan pengembangan DSTI sebuah organisasi selama 3 sampai\ndengan 5 tahun ke depan. Tujuannya adalah menentukan arah dan prioritas\npengembangan perangkat keras, jaringan komputer, serta Sistem Informasi, agar sesuai\ndengan proses bisnis organisasi, demi tercapainya sasaran strategis organisasi tersebut.\nUniversitas Teknologi Sumbawa (UTS) adalah sebuah universitas yang mengarah\nkepada electronic university atau e-university, sehingga sangat membutuhkan rencana\ninduk DSTI atau DSTI Master Plan (DSTIMP). Hal ini tertuang sebagai - Terwujudnya DSTI\nMaster Plan kampus UTS untuk mencapai e-campus pada dokumen rencana strategis\n(renstra) UTS 2020-2024. Hingga tahun 2020, DSTI belum memiliki dokumen Rencana\nInduk Teknologi Informasi. Oleh karena itu sangat penting DSTI UTS menyusun rencana\ninduk DSTI tahun 2020-2024 untuk memandu arah pengembangan DSTI UTS sesuai\nrenstra. Adapun output dari kegiatan ini akan diadakan uji public yang melibatkan\nstakeholder terkait diantaranya DISKOMINFOTIK, KCD DIKNAS NTB, PROFESIONAL IT,\ndan PRUSDA KAB.SUMBAWA.', 'Dosen, Staff dan Mahasiswa yang menggunakan layanan internet', 'Penyusunan buku masterplan IT menuju smart campus yang menjadi rujukan dalam\npengembangan teknologi informasi.', 'Pembentukan tim Master Plan, Penyusunan Buku, dan Uji Publik.', 'Universitas Teknologi Sumbawa dan PRUSDA Kab.Sumbawa, 8 November – 29 November 2021', '2021-11-02', 'Direktorat Sistem Teknologi dan Informasi', 1, 1, 2, '5000000', NULL, 'MANDIRI', 'ERLIYANI KURNIA', '1610006298330', '406180ecca7cb97.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 3 Riset & Inovasi', '2021-11-02 07:46:18', '2021-11-04 03:45:23'),
(352, '422', 79, 24, '1. Salah satu target dari FEB UTS adalah meningkatnya jumlah penelitian dan publikasi. \n2. Berdasarkan hasil evaluasi pada tahun 2020, jumlah publikasi dan penelitian dosen FEB sudah mengalami peningkatan jika dibandingkan dengan tahun-tahun sebelumnya. Akan tetapi, secara kualitas publikasi masih tergolong rendah, karena sebagian besar publikasi dosen adalah di jurnal tidak terakreditasi. \n3. Untuk peningaktan mutu publikasi dosen, maka perlu ada kompetisi hibah internal penelitian di FEB UTS. \n4. Perwujudan dari misi FEB UTS tahun 2021-2025 yaitu: “Melaksanakan kegiatan pembelajaran dan penelitian yang berkualitas dan adaptif terhadap kebutuhan lokal dan perkembangan global sehingga berkontribusi terhadap pengembangan ilmu pengetahuan ekonomi dan bisnis”.', 'Dosen FEB UTS', 'Jumlah publikasi di jurnal nasional terakreditasi dosen FEB UTS adalah minimal 2 di masing-masing prodi', 'Subsidi dana publikasi di jurnal nasional terakreditasi minimal SINTA 4 dan jurnal internasional bereputasi', 'FEB UTS', '2021-11-10', 'Warek III', 4, 17, 79, '2655000', NULL, 'MANDIRI', 'UTS. FAKULTAS EKONOMI DAN BISNIS', '1610004679291', '406181f6773dd90.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-11-03 02:39:51', '2021-12-27 06:36:15'),
(353, '426', 79, 24, '1. Salah satu target dari FEB UTS adalah meningkatnya Pengabdian kepada Masyarakat. \n2. Berdasarkan hasil evaluasi pada tahun 2020, jumlah PkM dosen FEB sudah mengalami peningkatan jika dibandingkan dengan tahun-tahun sebelumnya. Akan tetapi, ada ketimpangan jumlah PkM masing-masing dosen \n3. Untuk peningaktan PkM dosen, maka perlu ada kompetisi hibah internal PkM di FEB UTS khususnya untuk dosen yang tidak pernah melakukan kegiatan PkM. \n4. Perwujudan dari misi FEB UTS tahun 2021-2025 yaitu: “Melaksanakan kegiatan pembelajaran dan penelitian yang berkualitas dan adaptif terhadap kebutuhan lokal dan perkembangan global sehingga berkontribusi terhadap pengembangan ilmu pengetahuan ekonomi dan bisnis”.', 'Dosen FEB UTS', 'Jumlah PkM masing-masing prodi adalah 1', 'Pembiayaan Pengabdian kepada Masyarakat Bagi Dosen dan Mahasiswa', 'Menyesuaikan', '2021-11-10', 'Warek III', 4, 18, 81, '5000000', NULL, 'MANDIRI', 'UTS. FAKULTAS EKONOMI DAN BISNIS', '1610004679291', '406181f72aa73cd.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-11-03 02:42:50', '2021-12-27 06:36:12'),
(354, '428', 79, 21, 'Pentingnya memberikan fasilitas dan pembinanaan kepada mahasiswa dalam penyaluran bakat dan minat melalui lembaga kemahasiswaan., serta memberikan kesempatan seluas-luasnya kepada mahasiswa dalam mengembangkan potensi yang dimiliki. Pembinaan Kemahasiswaan ditekankan pada pengembangan akademik, karakter, Penalaran dan karya tulis mahasiswa.', 'Organisasi Mahasiswa', 'Meningkatnya kompetensi dan karakter mahasiswa', 'Pelatihan, pembinaan, edukasi', 'FEB UTS', '2021-11-10', 'Warek I', 2, 10, 49, '4000000', NULL, 'MANDIRI', 'UTS. FAKULTAS EKONOMI DAN BISNIS', '1610004679291', '406181f8612f7c1.pdf', 'progress', '4061b7f67ea688b.pdf', NULL, NULL, '4061b8101966048.pdf', 4, 'Direktur Keuangan', '2021-11-03 02:48:01', '2021-12-17 07:54:20'),
(355, '431', 79, 24, 'Sehubungan dengan rendahnya keikutsertaan dosen dan staf FEB terkait kegiatan pengembangan kompetensi yang masih terkendala biaya pribadi, maka FEB dianggap penting untuk memfasilitasi dosen dan staf untuk mengikuti kegiatan baik di dalam maupun di luar daerah guna mengembangkan kompetensi dosen dan staf di FEB', 'Dosen dan Staf FEB UTS', 'Peningkatan kompetensi dosen dan staf FEB', 'Bantuan / dukungan untuk mengikuti sertifikasi kompetensi, pelatihan di luar, dll (dikompetisikan tingkat fakultas)', 'Menyesuaikan', '2021-11-10', 'Warek III', 1, 3, 15, '5000000', NULL, 'MANDIRI', 'UTS. FAKULTAS EKONOMI DAN BISNIS', '1610004679291', '406181f9533b4cf.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-11-03 02:52:03', '2021-12-27 06:36:08'),
(356, '434', 79, 21, '1. FEB sebagai salah satu fakultas di UTS berusaha untuk selalu meningkakan mutu penelitian dan publikasi dosen dan mahasiswa. \n2. Berdasarkan hasil evaluasi pada tahun 2020, tingkat plagisme tulisan dosen dan mahsiswa di 4 Jurnal yang dikelola oleh FEB UTS masih tinggi. \n3. Arahan dari Dikti bahwa jurnal yang diterbitkan harus bebas plagiasme, sehingga perlua adalanya alat untuk mendeteksi plagiarism tulisan yang dipublikasikan di keempat jurnal tersebut, sehingga artikel yang dipublikasikan di keempat jurnal tersebut.\n4. Perwujudan dari misi FEB UTS tahun 2021-2025 yaitu: “Melaksanakan kegiatan pembelajaran dan penelitian yang berkualitas dan adaptif terhadap kebutuhan lokal dan perkembangan global sehingga berkontribusi terhadap pengembangan ilmu pengetahuan ekonomi dan bisnis”.', 'Jurnal di FEB UTS: JEBI, NJE, JAFA, JMB', 'Memberikan pendanaan untuk DOI jurnal guna menjadikan jurnal di FEB terakreditasi', 'Pembiayaan DOI', 'FEB UTS', '2021-11-10', 'Warek III', 5, 19, 83, '2500000', NULL, 'MANDIRI', 'UTS. FAKULTAS EKONOMI DAN BISNIS', '1610004679291', '406181fa4a253de.pdf', 'progress', 'default.jpg', NULL, NULL, '4061cab87584c65.pdf', 4, 'Direktur Keuangan', '2021-11-03 02:56:10', '2021-12-30 04:42:08'),
(357, '191', 81, 21, 'Untuk mendukung peningkatan mutu akademik maka program studi dan fakultas melaksanakan Pelayanan Akademik dan Pendidikan Mahasiswa dengan sosialiasasi akademik dan pembuatan pedoman, manual dan panduan akademik.', 'Mahasiswa Fakultas Teknobiologi Universitas Teknologi Sumbawa', 'Kegiatan ini diharapkan dapat meningkatkan mutu akademik para mahasiswa', 'Pelaksanaan secara tatap muka (offline) di lakukan 1 (satu) hari.', 'Gedung Belakang Orange (GBO)', '2021-11-06', 'Wakil Rektor I Bidang Akademik', 2, 8, 43, '1000000', NULL, 'BRI', 'Reza Handika Supriatna', '476501006624533', '406182045469a2e.pdf', 'progress', '4061b17c1c3259e.pdf', NULL, NULL, '4061c03cc6353bf.pdf', 4, 'Direktur Keuangan', '2021-11-03 03:39:00', '2021-12-22 12:34:44'),
(358, '194', 81, 24, 'Dalam perkuliahan, mahasiswa perlu mengetahui etika-etika yang berlaku dalam kuliah. Oleh karena itu, dengan memberikan etika-etika dalam perkuliahan dapat membangkitkan semangat belajar mahasiswa, etika berkomunikasi, etika pengiriman surel, etika presentasi, bedah jurnal, pengenalan dunia pasca kampus, dll.', 'Mahasiswa Fakultas Teknobiologi Universitas Teknologi Sumbawa', 'Mahasiswa mendapatkan training pembelajaran, pengenalan dunia pasca kampus dll', 'Pelaksanaan secara tatap muka (offline) di lakukan 1 (satu) hari.', 'Gedung Belakang Orange (GBO)', '2021-11-06', 'Wakil Rektor I Bidang Akademik', 2, 8, 43, '500000', NULL, 'BRI', 'Reza Handika Supriatna', '476501006624533', '406182064088bec.pdf', 'progress', '4061b17c9fdeed3.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-11-03 03:47:12', '2021-12-20 08:22:26'),
(359, '339', 111, 24, 'Pelaksanaan Webinar Fakultas Sebagai Wadah Pengabdian Kepada Masyarakat dan Roadshow ke Desa dan Sekolah.', 'Fakultas Rekayasa Sistem Desa dan Sekolah', 'Menjalin kerjasama antara Fakultas dengan Desa dan Sekolah', 'Webinar Fakultas', 'Uma Beringin, SMK Borsya, dan SMPN 2 Sumbawa Besar', '2021-11-05', 'Fakultas Rekayasa Sistem', 4, 18, 80, '1200000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa - FRS', '1610007663755', '4061820c003c4ea.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-11-03 04:11:45', '2021-12-29 04:10:56'),
(361, '553', 53, 24, 'Kurangnya anggaran untuk melengkapi kebutuhan kerumahtanggan unit warek 1', 'Unit warek 1', 'Keperluan kerumahtanggaan unit warek 1 dapat terpenuhi', 'offline', 'warek 1', '2021-11-10', 'wakil rektor 1', 1, 3, 17, '2000000', NULL, 'BSI', 'Eva Juliani', '7730066710', '4061820e16e0755.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-11-03 04:20:39', '2021-11-03 04:29:42'),
(362, '536', 57, 24, 'Perkembangan industri 4.0 menuntut percepatan penerapan teknologi informasi hampir di seluruh sektor usaha. Begitu juga dengan bidang pendidikan, untuk menuju kampus yang memiliki daya saing harus didukung oleh infrastruktur teknologi informasi yang tepat, baik dalam bentuk perangkat keras atau perangkat lunak untuk mendukung pelayanan yang efektif dan efisien Universitas Teknologi Sumbawa merupakan sebuah kampus teknologi yang berlokasi di Sumbawa. \nBerbagai macam teknologi dalam pengambangan sistem informasi telah hadir. Salah satunya adalah teknologi yang disebut Mobile App Builder. Mobile App Builder adalah sebuah aplikasi yang dapat membantu developer dalam membuat aplikasi Mobile baik berbasis Android maupun Mac OS. Kemudahan yang ditawarkan oleh Mobile App Builder ini adalah developer tidak harus memahami bahasa pemrograman platform tertentu, karena dalam pembuatan aplikasi menggunakan fitur Drag and Drop. \nKemudahan yang ditawarkan oleh Mobile App Builder diiharapkan dapat menjadi trigger fakultas atau unit lainnya berkreasi dan membuat aplikasi. Aplikasi-aplikasi yang dapat dibuat dengan menggunakan Mobile App Builder ini antara lain Aplikasi Profile Unit, Aplikasi Penjadwalan, Aplikasi Berita, Aplikasi Bukut Tamu, dan masih banyak lagi aplikasi lainnya. Semakin beragamnya aplikasi yang lahir harapanya dapat meningkatkan pelayanan kepada mahasiwa, dosen, staff serta masyarakat umum. Dengan adanya Mobile App Builder ini juga dapat meningkatkan branding UTS sebagai kampus berbasi Teknologi di Sumbawa.', 'Dosen, Staff, Mahasiswa dan Masyarakat Umum', 'Lahirnya aplikasi berbasis Android dan Mac Os', 'Pembelian lisensi perangkat,  pengembangan aplikasi, pembuatan buku dan video tutoriual', 'Universitas Teknologi Sumbawa, 10 Nopember 2021', '2021-11-04', 'Direktorat Sistem Teknologi Dan Informasi', 1, 1, 2, '5000000', NULL, 'Mandiri', 'Erliyani Kurnia', '1610006298330', '40618356a37acaa.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 3 Riset & Inovasi', '2021-11-04 03:42:28', '2021-11-04 03:44:28'),
(364, '333', 111, 24, 'Memenuhi keperluan pelayanan administrasi surat menyurat di lingkungan FRS', 'Fakultas Rekayasa Sistem', 'Menunjang kenerja karyawan untuk memberikan pelayanan yang baik', 'ATK Fakultas', 'FRS', '2021-11-08', 'Fakultas Rekayasa Sistem', 1, 1, 1, '2501000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa - FRS', '1610007663755', '4061889c757f08c.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-11-08 03:41:41', '2021-12-29 04:10:52'),
(367, '373', 115, 24, 'Pelaksanaan diskusi pada Program Studi Teknik Sipil perlu diadakan secara rutin karena berkaitan dengan pelaksanaan kegiatan tridharma dan evaluasi di Program Studi Teknik Sipil', 'Melakukan peningkatan Prodi sipil dan juga SDM', 'Untuk Menjadikan Prodi Sipil Lebih Maju lagi untuk kedepannya sesuai dengan visi misi prodi', 'Rapat Bersama dan Uji Pablik pada visi dan misi prodi sipil', 'Universitas Teknologi Sumbawa dan Luar Universitas Teknologi Sumbawa', '2021-11-08', 'Wakil Rektor 1, 2, 3 dan 4', 1, 1, 2, '3000000', NULL, 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '406189f079c88b6.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Fakultas Teknik Lingkugan dan Mineral', '2021-11-09 03:52:26', '2021-11-09 03:59:14'),
(369, '136', 64, 24, 'UPT Pusat Bahasa membekali mahasiswa/i dengan muatan bahasa Inggris dalam kurikulumnya yang ditandai dengan tes bahasa Inggris     English Academic Proficiency Test (EAPT) sebagai syarat Yudisium.  Untuk menjamin mutu tes EAPT maka diperlukan pemutahiran naskah tes tahunan. Hal ini juga berguna untuk menghindari kecurangan atau kebocoran naskah ujian.  Untuk itu diperlukan adanya update soal tes.', 'Mahasiswa/I Universitas Teknologi Sumbawa serta peserta umum.', 'Sebagai syarat wajib mahasiswa/I untuk Yudisium yang hendak menyelesaikan pendidikannya di Universitas Teknologi Sumbawa.', 'Paper-Based (offline)', 'Universitas Teknologi Sumbawa, Perpustakaan.', '2021-11-10', 'Warek 2', 3, 11, 58, '2050000', NULL, 'Mandiri', 'UTS UPT Pusat Bahasa', '1610006267970', '40618b736197921.pdf', 'progress', '4061b6dbcfbf875.pdf', NULL, NULL, '4061cd582de8c19.pdf', 1, 'Pusat bahasa', '2021-11-10 07:23:14', '2021-12-30 06:56:46'),
(370, '506', 97, 24, 'Program Kreatifitas Mahasiswa adalah kompetisi tingkat nasional antar mahasiswa untuk menumbuhkan, mewadahi dan mewujudkan ide kreatif serta inovatif mahasiswa. Pelatihan PKM di program Studi Teknik Mesin diharapkan mampu membantu mahasiswa dalam membuat proposal PKM, masuk ke PIMNAS dan menjadi juara.', 'Mahasiswa', 'Meningkatkan jumlah mahasiswa berprestasi di level nasional', 'Pelatihan', 'Universitas Teknologi Sumbawa', '2021-11-22', 'Wakil Rektor 1', 3, 12, 63, '250000', NULL, 'Mandiri', 'Universitas Teknologi Sumbawa - FRS', '1610007663755', '40618b861d12df9.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-11-10 08:43:09', '2021-12-10 07:56:49'),
(371, '278', 60, 21, 'Dalam kehidupan sehari-hari penampilan diri (grooming) merupakan hal yang sangat penting. Setiap orang ingin selalu tampil serasi dan menarik agar disukai oleh orang lain. Penampilan menarik mencerminkan kepribadian seseorang. Orang berpenampilan menarik akan dinilai sebagai orang yang berkepribadian baik. Sebaliknya, orang kurang memperhatikan penampilannya dinilai sebagai orang yang berkepribadian kurang menarik. (Grooming). Penampilan yang menarik akan memberikan kesan yang positif bagi orang lain. Oleh karena itu, penampilan diri perlu diperhatikan agar sedapat mungkin selaras dengan nilai-nilai keindahan dan tata krama yang berlaku dalam kehidupan masyarakat. (Grooming) dan juga sopan santun/ tata krama merupakan cara berperilaku seseorang dalam keadaan atau lingkungan tertentu sesuai dengan tata krama atau aturan yang berlaku. yang mempengaruhi professional image diantaranya : Cara Berpenampilan, Cara Berkomunikasi Informal, Cara Berbicara didepan Umum, dan Cara Bersikap \nKetika sudah terjun ke dunia kerja, terutama sektor bisnis dan manajemen, manfaat personal grooming adalah suatu hal yang sangat penting. Apalagi jika Anda menjabat posisi sebagai petugas frontliner atau back office, jelas harus memperhatikan penampilan. Mengapa? Karena nantinya bisa berimbas pada personal branding perusahaan atau bisnis. \nDi dalam kehidupan sehari-hari, berbicara dan mendengarkan adalah dua kegiatan yang paling sering kita lakukan. Dalam hal kali ini “Seni Berbicara” ini, kita akan belajar bagaimana menjadi lawan bicara yang baik, agar sebuah pembicaraan menjadi efektif. Di dalam percakapan sehari-hari atau komunikasi informal. Kepandaian berbicara sangat menentukan apakah orang lain akan merasa senang berbicara dengan kita atau tidak.', 'Peserta dari acara Exellent Training “Manner & Professional Grooming” ini adalah para Alumni UTS dan Umum termasuk Alumni kampus-kampus yang ada diwilayah NTB.', 'Dengan mengikuti Webinar ini, para peserta diharapkan mampu:\na.	Meningkatkan rasa percaya diri dalam pergaulan sehari-hari\nb.	Mampu Berpenampilan Lebih Menarik dan sesuai Tempat\nc.	Memahami Seni Berkomunikasi dalam Berinteraksi sehari hari \nd.	Memiliki image positif dalam setiap situasi dan lingkungannya \ne.	Mampu tampil lebih profesional dalam setiap keadaan', 'Adalah Dilaksanakan secara Online (Webinar) dengan menghadirkan Pembicara dari Lembaga atau Institusi yang berkompeten.', 'Hari/Tanggal	: Kamis / 18 November 2021\nJam 		        : 13.00 – 16.00 Wita\nTempat		: Zoom', '2021-11-18', 'Wakil Rektor 1 Direktorat Kemahasiswaan dan Alumni Sub Direktorat Pengembangan Karir dan Alumni', 3, 13, 67, '1455000', NULL, 'Mandiri', 'Arie Kasmita', '1610006286871', '40618cc5eb54bbc.pdf', 'progress', '4061b1a8011a181.pdf', NULL, '4061b6e298d0d3e.pdf', '4061b2f72f03e50.pdf', 1, 'Direktorat Kemahasiswaan & Alumni', '2021-11-11 07:27:39', '2021-12-13 06:05:13'),
(372, '180', 80, 24, 'Jurnal', 'Pengelola', 'Terbit 2 kali', 'Meeting', 'UTS', '2021-11-12', 'Tim Jurnal', 5, 19, 82, '500000', NULL, 'Mandiri', 'Ihlana Nairfana', '1610004215286', '40618d3944438ff.pdf', 'progress', '4061b1a3f9dca1a.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-11-11 15:39:49', '2021-12-09 06:36:42'),
(373, '271', 53, 24, 'Opti E-Learning adalah sebuah sistem yang memudahkan proses pembelajaran yang memanfaatkan teknologi IT (​Information and Technology​) yang memberikan solusi dalam mengatasi masalah ruang dan waktu. E-Learning memberikan harapan baru sebagai alternatif solusi atas sebagian besar permasalahan pendidikan di Indonesia, dengan fungsi yang dapat disesuaikan dengan kebutuhan, baik sebagai suplemen (tambahan), komplemen (pelengkap), ataupun substitusi (pengganti) atas kegiatan pembelajaran di dalam kelas yang selama ini digunakan.\n\nSistem e-Learning adalah sistem pembelajaran era digital yang sudah seharusnya dikembangkan secara serius di perguruan tinggi untuk mengantisipasi perkembangan era Teknologi Informasi yang sangat pesat. Mengantisipasi kebutuhan pemanfaatan sistem e-Learning di dunia kampus, maka sosialisasi pemanfaatan dan pengembangannya menjadi hal penting untuk dikuasai khususnya oleh para dosen\n\nTersedianya Infrastruktur yang telah memadai di Lingkungan UTS, sistem aplikasi moodle untuk e-Learning yang telah terintegrasi pada sistem SIAKAD maka sudah sangat mudah bagi para dosen di UTS memindahkan konten-konten pembelajaran ke system e-Learning. Untuk mempercepat keinginan tersebut maka pelatihan bagi para dosen UTS menjadi sangat perlu untuk terus dilakukan hingga semua dosen terbiasa dan telah memindahkan materi-materi pembelajaran mereka ke media e-Learning.\nmalisasi E-Learnning UTS dan SIAKAD', 'Pelatihan E-Learning diperuntukkan untuk Semua Dosen Program Studi di Lingkungan Universitas Teknologi Sumbawa. Kegiatan ini akan dilaksanakan secara Daring dan Luring Untuk Kegiatan Luring, akan dilaksanakan di Ruang Rapat Rektorat lt 2 dan lebih diutamakan kepada Dosen Baru di lingkungan UTS dengan Kapasitas 40 orang Dosen Baru 31 orang Tim PIA 5 Orang Tim DSTI 4 Orang Untuk Kegiatan Daring, akan dilaksanakan melalui Platform Zoom Meeting dan boleh diikuti oleh Seluruh Dosen di lingkungan UTS.', 'Dosen peserta Pelatihan E-Learning diharapkan dapat mengimplementasikan Platform LMS dalam kegiatan perkuliahan untuk semester genap tahun ajaran 2021/2022.', 'Offline selama 2 hari', 'Ruang Rapat Rektorat Lt. 2', '2021-11-17', 'DSTI', 2, 9, 44, '1500000', NULL, 'Mandiri', 'Arya Zulfikar Akbar', '1610005622829', '40618e03b792d8a.pdf', 'progress', '4061b7f45291606.pdf', NULL, NULL, '4061c033618d1f2.pdf', 1, 'Direktorat Akademik', '2021-11-12 06:03:36', '2021-12-20 07:40:17'),
(374, '300', 60, 24, 'Perbandingan jumlah permintaan darah yang tidak seimbang dengan stok darah di UDD PMI', 'Seluruh Civitas Akdemika UTS', 'Tercapainya jumlag persediaan darah yang dibutuhkan di UDD PMI Kab. Sumbawa', 'Doror Darah', 'Lapangan Belakang Rektorat UTS', '2021-11-15', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 10, 50, '750000', NULL, 'Mandiri', 'Teguh Iman Hadinullah', '1610006273952', '40618e157878ac8.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-11-12 07:19:20', '2021-12-10 07:56:45'),
(375, '382', 112, 24, 'Sehubungan dengan Bearkhirnya Renstra \n2018-2020 dan adanya perubahan \nfakultas baru dari FT menjadi FTLM \nmaka perlu adanya penyusuan dokumen \nbaru mengenai rencana strategis program \nstudi Teknik metalurgi 2021-2024', 'Seluruh Dosen Teknik Metalurgi', '1) Terbentuknya tim penyusun dokumen \nrenstra prodi.\n2) Rampungnya dokumen Renstra Prodi \nTeknik Metalurgi 2021-2024', 'Sosialisasi', 'Lokasi : FTLM\nWaktu : Desember 2021', '2021-12-13', 'Warek 1 dan Warek 3', 1, 1, 5, '1500000', NULL, 'Mandiri', 'fakultas Teknik', '1610004786245', '406191c01daa07b.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Fakultas Teknik Lingkugan dan Mineral', '2021-11-15 02:04:14', '2021-11-15 02:23:01'),
(376, '387', 112, 24, 'Sehubungan dengan terbentuknya \nkurikulum baru yaitu “Kurikulum\nMerdeka Belajar Kampus Merdeka”\nTeknik Metalurgi, Maka perlu adanya \nsosialisasi kurikulum pada seluruh \nCivitas akademika maupun stakeholder \nuntuk memperkenalkan kurikulum.', 'Seluruh Civitas Akademika dan Stake  Holder', '1) Acara Sosialisasi dihadiri oleh \nperwakilan mahasiswa tiap angkatan, \ndosen dan stakeholder.\n2) Adanya umpan balik dari peserta yang \nhadir', 'Sosialisasi', 'Raberas Resto', '2021-11-18', 'Warek 1', 2, 6, 29, '1500000', NULL, 'mandiri', 'fakultas Teknik', '1610004786245', '406191c22078116.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Fakultas Teknik Lingkugan dan Mineral', '2021-11-15 02:12:48', '2021-11-15 02:22:44'),
(377, '392', 112, 24, 'Program kerja ini merupakan pre-event\nuntuk Dies Natalies HMMt dan dalam \nacara ini akan dilakukan donor darah\nserta bakti sosial dan Metal Talent. Dies \nNatalies Himpunan Mahasiswa Teknik \nMetalurgi UTS akan dirangkaikan \ndengan kegiatan metal telent yang di\ndalamnya terdapat berbagai macam mata \nlomba seperti olahraga dan kesenian.', 'Peserta yang hadir berasal dari  mahasiswa aktif berbagai angkatan,  dosen, dan alumni.  2) Tersalurnya Baksos ke masyarakat  yang membutuhkan', 'Kehadiran peserta 100%\n3. Tercapainya nilai nilai yang ingin \nditanamkan oleh HMMt-UTS 30%', 'Donor darah, bakti sosial, dan  perlombaan', 'Universitas Teknologi \nSumbawa.', '2021-11-30', 'Warek 2 bidang sarana dan prasarana', 3, 10, 50, '2000000', NULL, 'Mandiri', 'Fakultas Teknik', '1610004786245', '406191c36ab5374.pdf', 'progress', NULL, NULL, NULL, NULL, 2, 'Fakultas Teknik Lingkugan dan Mineral', '2021-11-15 02:18:19', '2021-11-15 02:22:27'),
(380, '517', 70, 24, 'Kampus merupakan lembaga pendidikan tinggi yang memiliki banyak potensi untuk melakukan gerakan perubahan karena kampus merupakan pusat inovasi. Sebagai lembaga pendidikan tinggi, pastinya kampus memiliki modal cukup besar untuk menciptakan dan membangun inovasi. Inovasi sangat dibutuhkan, untuk menjawab berbagai persoalan yang dihadapi masyarakat. Keberadaannya sebagai pusat inovasi, tentunya menuntut lembaga perguruan tinggi, baik negeri maupun swasta untuk bergerak menyesuaikan kebutuhan jaman. Oleh karena itu, Universitas Teknologi Sumbawa yang merupakan salah satu pergurruan tinggi swasta yang terus melakukan perbaikan dan pengembangan. Sebagai upaya yang dilakukan yaitu memberikan bantuan berupa hibah kepada para dosen untuk menghasilkan inovasi. Harapannya inovasi yang terlahir dari para dosen UTS dapat di hilirisasi.', 'dosen universitas teknologi sumbawa', 'Bertambahnya jumlah kekayaan intelektual dan penghargaan', 'Para dosen mengajukan proposal kegiatan kepada direktur riset dan inovasi', 'Universitas Teknologi Sumbawa', '2021-11-17', 'Wakil Rektor III Bidang Riset dan Inovasi', 5, 21, 86, '10000000', NULL, 'Mandiri', 'ERLIYANI KURNIA', '1610006298330', '406194bbba491c8.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 3 Riset & Inovasi', '2021-11-17 08:22:18', '2021-12-06 04:54:18'),
(381, '282', 60, 24, 'Kompetisi Bisnis UTS merupakan salah satu rangkaian dari program “Entrepreneur Day” yang diinisiasi oleh Bagian Kemahasiswaan melalui lembaga Carrier Development Center (CDC) UTS bekerjasama dengan UTS Launchpad (lembaga inkubator bisnis UTS). Kompetisi ini adalah ajang kompetisi wirausaha muda yang inovatif dan kreatif dari mahasiswa di lingkungan UTS. Kompetisi ini dilaksanakan  untuk mewujudkan ide-ide inovatif dan kreatif dalam bidang : a) Jasa; b) Industri Kreatif; c) Kuliner (makanan dan minuman); d) Teknologi; dan e) Budidaya. Hal ini tentu menjadi peluang besar bagi mahasiswa untuk meraih prestise dari ide-ide tersebut. Kompetisi bergengsi ini juga cara yang bagus untuk memperluas jaringan, memperoleh bakat baru, dan mendapatkan umpan balik tentang pengembangan ide wirausaha.\nKompetisi bisnis UTS menawarkan berbagai peluang bagi mahasiswa untuk memenangkan kompetisi dari dua kategori, yaitu: Start Up Business dan Scale Up Business. Start Up Business adalah pelaku inovasi bisnis atau pengembangan bisnis yang baru masuk atau masih berada pada fase pengembangan ide usaha. Sementara, Scale Up Business adalah pelaku bisnis melinial yang mampu mendatangkan keuntungan (profitable) dan berkelanjutan (sustainable).\nTujuan utama kompetisi ini adalah untuk menumbuhkan dan meningkatkan motivasi kewirausahaan dan praktiknya, serta mempertajam soft skill mahasiswa di era pasar global dewasa ini. selain itu untuk mengembangkan proses berfikir analitis, inovatif, kreatif, pemecahan masalah, komunikatif, kolaboratif mahasiswa di bidang entrepreneurship.\n\nTahun 2021 ini merupakan event pertama yang diselenggarakan oleh CDC UTS bekerjasama dengan UTS Launchpad di internal UTS. Kami mengundang tim mahasiswa dari semua program studi yang berada di lingkungan UTS untuk berpartisipasi dalam event ini. Panel juri terdiri dari akademisi dan praktisi wirausaha yang bereputasi. Para juri dipilih berdasarkan keahlian, pengalaman, dan berkomitmen terhadap pengembangan kewirausahaan mahasiswa. Peserta dapat mengirimkan karyanya dari berbagai latar belakang disiplin ilmu dan minat usaha.', 'Peserta Enterpreneur Day 2021 ini adalah para Mahasiswa/ti UTS yang baru memiliki ide ataupun yang sudah berjalan', 'Para Mahasiswa/ti akan meningkatkan pengetahuan dan pemahaman mahasiswa soal bisnis dan mempraktekkannya setelah menempuh teori yang diajarkan oleh dosen pengampu mata kuliah kewirausahaan. Kemudian bagaimana supaya mereka kreatif, memulai usaha, supaya mereka tergerak membuka usaha, dan kelak mereka bisa membuka lapangan kerjaan  dan para Finalis wajib masuk dalam Inkubator Bisnis UTS selama 1 tahun.', 'Kompetisi ide bisnis dengan mengadakan seleksi peserta kompetesi yang akan dipilih 5 kelompok di masing-masing kategorinya yaitu kategori Start Up Business dan Scale Up Business. Adapun tahap-tahap kegiatannya sendiri ; Sosialisasi, Pendaftaran & Pengumpulan Proposal, Penilaian, Pengumuman Finalis, Presentasi Proposal & Talk Show, Grand Final Enterpreneur Day 2021', 'Universitas Teknologi sumbawa', '2021-11-08', 'Wakil Rektor III Bidang Riset dan Inovasi dan UTS Lauchpad, Dan Wakil Rektor 1 Direktorat Kemahasiswaan dan Alumni Sub Direktorat Pengembangan Karir dan Alumni,', 3, 14, 68, '2580000', NULL, 'MANDIRI', 'sherwin ary busman', '1610004629056', '406195c61a73ff7.xlsx', 'progress', 'default.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-11-18 03:18:50', '2021-12-29 02:40:20'),
(382, '88', 68, 24, 'dalam menjalankan fungsi suatu universitas, sudah pasti dibutuhkan logistik, peralatan dan jasa lainnyayang ,menunjang optimalnya kerja suatu unstansi. barang atau inventaris yang telah rusak, using, atau keperluan akan barang baru harus segera terpenuhi agar kegiatan suatu instansi dapat berjalan dengan lancar', 'tim dppf', 'Terpenuhinya kebutuhan sarana dan prasarana universitas', 'Pengadaan kebutuhan unit kerja', 'Kawasan UTS', '2021-11-18', 'DPPF', 1, 4, 20, '15000000', NULL, 'BRI', 'Nova Aryanto,ST', '009301040570507', '406195c87b4ee5e.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-11-18 03:29:00', '2021-12-10 07:56:09'),
(383, '520', 70, 24, 'Kompetisi Bisnis UTS merupakan salah satu rangkaian dari program “Entrepreneur Day” yang diinisiasi oleh Bagian Kemahasiswaan melalui lembaga Carrier Development Center (CDC) UTS bekerjasama dengan UTS Launchpad (lembaga inkubator bisnis UTS). Kompetisi ini adalah ajang kompetisi wirausaha muda yang inovatif dan kreatif dari mahasiswa di lingkungan UTS. Kompetisi ini dilaksanakan  untuk mewujudkan ide-ide inovatif dan kreatif dalam bidang : a) Jasa; b) Industri Kreatif; c) Kuliner (makanan dan minuman); d) Teknologi; dan e) Budidaya. Hal ini tentu menjadi peluang besar bagi mahasiswa untuk meraih prestise dari ide-ide tersebut. Kompetisi bergengsi ini juga cara yang bagus untuk memperluas jaringan, memperoleh bakat baru, dan mendapatkan umpan balik tentang pengembangan ide wirausaha. Kompetisi bisnis UTS menawarkan berbagai peluang bagi mahasiswa untuk memenangkan kompetisi dari dua kategori, yaitu: Start Up Business dan Scale Up Business. Start Up Business adalah pelaku inovasi bisnis atau pengembangan bisnis yang baru masuk atau masih berada pada fase pengembangan ide usaha. Sementara, Scale Up Business adalah pelaku bisnis melinial yang mampu mendatangkan keuntungan (profitable) dan berkelanjutan (sustainable).\nTujuan utama kompetisi ini adalah untuk menumbuhkan dan meningkatkan motivasi kewirausahaan dan praktiknya, serta mempertajam soft skill mahasiswa di era pasar global dewasa ini. selain itu untuk mengembangkan proses berfikir analitis, inovatif, kreatif, pemecahan masalah, komunikatif, kolaboratif mahasiswa di bidang entrepreneurship. Tahun 2021 ini merupakan event pertama yang diselenggarakan oleh CDC UTS bekerjasama dengan UTS Launchpad di internal UTS. Kami mengundang tim mahasiswa dari semua program studi yang berada di lingkungan UTS untuk berpartisipasi dalam event ini. Panel juri terdiri dari akademisi dan praktisi wirausaha yang bereputasi. Para juri dipilih berdasarkan keahlian, pengalaman, dan berkomitmen terhadap pengembangan kewirausahaan mahasiswa. Peserta dapat mengirimkan karyanya dari berbagai latar belakang disiplin ilmu dan minat usaha.', 'Peserta Enterpreneur Day 2021 ini adalah para Mahasiswa/ti UTS yang baru memiliki ide ataupun yang sudah berjalan', 'Para Mahasiswa/ti akan meningkatkan pengetahuan dan pemahaman mahasiswa soal bisnis dan mempraktekkannya setelah menempuh teori yang diajarkan oleh dosen pengampu mata kuliah kewirausahaan. Kemudian bagaimana supaya mereka kreatif, memulai usaha, supaya mereka tergerak membuka usaha, dan kelak mereka bisa membuka lapangan kerjaan  dan para Finalis wajib masuk dalam Inkubator Bisnis UTS selama 1 tahun.', 'Kompetisi ide bisnis dengan mengadakan seleksi peserta kompetesi yang akan dipilih 5 kelompok di masing-masing kategorinya yaitu kategori Start Up Business dan Scale Up Business. Adapun tahap-tahap kegiatannya sendiri ; Sosialisasi, Pendaftaran & Pengumpulan Proposal, Penilaian, Pengumuman Finalis, Presentasi Proposal & Talk Show, Grand Final Enterpreneur Day 2021', 'Universitas Teknologi Sumbawa', '2021-11-08', 'Wakil Rektor III Bidang Riset dan Inovasi dan UTS Lauchpad, Dan Wakil Rektor 1 Direktorat Kemahasiswaan dan Alumni Sub Direktorat Pengembangan Karir dan Alumni,', 3, 14, 68, '7000000', NULL, 'MANDIRI', 'ERLIYANI KURNIA', '1610006298330', '406195c8b714c46.xlsx', 'progress', 'default.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-11-18 03:29:59', '2021-12-29 07:08:04'),
(384, '521', 70, 24, 'Kompetisi Bisnis UTS merupakan salah satu rangkaian dari program “Entrepreneur Day” yang diinisiasi oleh Bagian Kemahasiswaan melalui lembaga Carrier Development Center (CDC) UTS bekerjasama dengan UTS Launchpad (lembaga inkubator bisnis UTS). Kompetisi ini adalah ajang kompetisi wirausaha muda yang inovatif dan kreatif dari mahasiswa di lingkungan UTS. Kompetisi ini dilaksanakan  untuk mewujudkan ide-ide inovatif dan kreatif dalam bidang : a) Jasa; b) Industri Kreatif; c) Kuliner (makanan dan minuman); d) Teknologi; dan e) Budidaya. Hal ini tentu menjadi peluang besar bagi mahasiswa untuk meraih prestise dari ide-ide tersebut. Kompetisi bergengsi ini juga cara yang bagus untuk memperluas jaringan, memperoleh bakat baru, dan mendapatkan umpan balik tentang pengembangan ide wirausaha. Kompetisi bisnis UTS menawarkan berbagai peluang bagi mahasiswa untuk memenangkan kompetisi dari dua kategori, yaitu: Start Up Business dan Scale Up Business. Start Up Business adalah pelaku inovasi bisnis atau pengembangan bisnis yang baru masuk atau masih berada pada fase pengembangan ide usaha. Sementara, Scale Up Business adalah pelaku bisnis melinial yang mampu mendatangkan keuntungan (profitable) dan berkelanjutan (sustainable).\nTujuan utama kompetisi ini adalah untuk menumbuhkan dan meningkatkan motivasi kewirausahaan dan praktiknya, serta mempertajam soft skill mahasiswa di era pasar global dewasa ini. selain itu untuk mengembangkan proses berfikir analitis, inovatif, kreatif, pemecahan masalah, komunikatif, kolaboratif mahasiswa di bidang entrepreneurship. Tahun 2021 ini merupakan event pertama yang diselenggarakan oleh CDC UTS bekerjasama dengan UTS Launchpad di internal UTS. Kami mengundang tim mahasiswa dari semua program studi yang berada di lingkungan UTS untuk berpartisipasi dalam event ini. Panel juri terdiri dari akademisi dan praktisi wirausaha yang bereputasi. Para juri dipilih berdasarkan keahlian, pengalaman, dan berkomitmen terhadap pengembangan kewirausahaan mahasiswa. Peserta dapat mengirimkan karyanya dari berbagai latar belakang disiplin ilmu dan minat usaha.', 'Peserta Enterpreneur Day 2021 ini adalah para Mahasiswa/ti UTS yang baru memiliki ide ataupun yang sudah berjalan', 'Para Mahasiswa/ti akan meningkatkan pengetahuan dan pemahaman mahasiswa soal bisnis dan mempraktekkannya setelah menempuh teori yang diajarkan oleh dosen pengampu mata kuliah kewirausahaan. Kemudian bagaimana supaya mereka kreatif, memulai usaha, supaya mereka tergerak membuka usaha, dan kelak mereka bisa membuka lapangan kerjaan  dan para Finalis wajib masuk dalam Inkubator Bisnis UTS selama 1 tahun.', 'Kompetisi ide bisnis dengan mengadakan seleksi peserta kompetesi yang akan dipilih 5 kelompok di masing-masing kategorinya yaitu kategori Start Up Business dan Scale Up Business. Adapun tahap-tahap kegiatannya sendiri ; Sosialisasi, Pendaftaran & Pengumpulan Proposal, Penilaian, Pengumuman Finalis, Presentasi Proposal & Talk Show, Grand Final Enterpreneur Day 2021', 'UNIVERSITAS TEKNOLOGI SUMBAWA', '2021-11-08', 'Wakil Rektor III Bidang Riset dan Inovasi dan UTS Lauchpad, Dan Wakil Rektor 1 Direktorat Kemahasiswaan dan Alumni Sub Direktorat Pengembangan Karir dan Alumni,', 3, 14, 68, '5000000', NULL, 'MANDIRI', 'ERLIYANI KURNIA', '1610006298330', '406195c98742d55.xlsx', 'progress', 'default.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-11-18 03:33:27', '2021-12-29 02:41:42');
INSERT INTO `pengajuan` (`id_pengajuan`, `kode_rkat`, `id_user`, `next`, `latar_belakang`, `sasaran`, `target_capaian`, `bentuk_pelaksanaan_program`, `tempat_program`, `tanggal`, `bidang_terkait`, `id_iku_parent`, `id_iku_child1`, `id_iku_child2`, `biaya_program`, `biaya_disetujui`, `bank`, `atn`, `no_rek`, `rab`, `status_pengajuan`, `pencairan`, `id_period`, `lpj_kegiatan`, `lpj_keuangan`, `validasi_status`, `nama_status`, `created_at`, `updated_at`) VALUES
(385, '512', 78, 24, 'Sebagai sarana membantu dosen dan mahasiswa mendapatkan informasi yang valid tentang proses perkuliahan', 'Mahasiswa, dosen, dan tim pasca', 'Mahasiswa dapat mengetahui secara detail informasi tentang proses perkuliahan Magister Manajemen Inovasi', 'Rapat dan ouput dalam bentuk buku', 'STP Sekretariat Sekolah Pascasarjana', '2021-11-22', 'Warek 2', 1, 1, 2, '6685000', NULL, 'Mandiri', 'I Putu Widiantara', '9000018506460', '406195cc095560b.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-11-18 03:44:09', '2021-12-07 07:47:16'),
(386, '254', 61, 24, 'Dirasakan perlunya bincang Dosen dari berbagai angkatan dan keilmuan karena dipelukan sharing knowledge antara Dosen2 muda dan Dosen2 senior sehingga semua Dosen mengetahui peran dan fungsinya dalam pelaksanaan Tridharma.', 'Seluruh Dosen UTS', '31 Dosen Muda mendapat sharing pengalaman dari para Dosen senior terkait pelaksanaan Tridharma.', 'Rapat', 'Gedung Rektorat Lt.1', '2021-11-23', 'Wakil Rektor I', 1, 3, 13, '1000000', NULL, 'BSI', 'Lalu ahmad Taubih', '8348060680', '406195e0b0649a9.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-11-18 05:12:16', '2021-12-27 06:35:52'),
(387, 'null', 3333, 3333, 'Belum teroptimalisasikan penggunaan menu-menu yang ada didalam SIAKAD', 'Kaprodi, admin prodi, back office', 'Pemahaman akan penggunaan SIAKAD dapat terlaksana dengan baik.', 'offline', 'Ruang Eks. FEB Lt. 2 Rektorat', '2021-11-24', 'Kantor PMB, Bag. Keuangan, Bag. Beasiswa, Kaprodi', 1, 1, 4, '7980000', NULL, 'BNI', 'Rabiatul', '1316921971', '40619607bd51599.xlsx', 'progress', NULL, NULL, NULL, NULL, 0, 'Direktur Keuangan', '2021-11-18 08:02:18', '2021-11-25 03:16:24'),
(388, '571', 54, 24, 'Fakultas Ilmu Komunikasi memiliki Mata Kuliah Praktik diantaranya MK Fotografi. Untuk menunjanga MK ini dibutuhkan peralatan yang memadai yaitu Kamera', 'Mahasiswa Fakultas ilmu Komunikasi', 'Tersedianya Kamera dan kartu memori', 'Pengadaan Kamera dan Kartu Memori', 'Dekanat Fakultas Ilmu Komunikasi', '2021-11-29', 'Sarana dan Prasarana', 2, 8, 40, '7000000', NULL, 'BNI', 'Topan Rahmatul Iman', '1317761095', '40619af339f0863.pdf', 'progress', NULL, NULL, NULL, NULL, 1, 'Fakultas Ilmu Komunikasi', '2021-11-22 01:32:42', '2021-11-22 01:32:42'),
(389, '300', 60, 24, 'Mahasiswa anggota baru UKM KSM dan mahasiswa UTS umumnya merupakan mahasiswa yang masih kurangnya pengetahuan dan wawasan terkait buku Manambai Sang Inspirator Sumbawa, maka perlu dibuatakan kegiatan yang khusus untuk membahas dan membedah BUku yang bertemakan Refleksi Perjuangan Manambai Sang Motivator', 'Mahasiswa Aktif Universitas Teknologi Sumbawa', 'Dapat tercapainya tujuan yang ingin disampaikan penulis dalam buku tersebut dan mahasiswa semakin termotivasi untuk maju serta berkembang', 'Bedah buku bersama Nurdin Ranggabarani', 'Ruang Publik Kreatif UTS', '2021-11-28', 'Sub Direktorat Penalaran, minat dan bakat', 3, 10, 49, '900000', NULL, 'Mandiri', 'Putri Indah Kencana', '1610004658287', '40619c8f7c37c91.xlsx', 'progress', '4061b81e1a75dde.pdf', NULL, NULL, '', 1, 'Direktorat Kemahasiswaan & Alumni', '2021-11-23 06:51:40', '2021-12-28 03:50:35'),
(390, '371', 64, 24, 'Bersamaan dengan berkembangnya  teknologi dan multimedia, cara  \npemasaran yang berbasis digital menjadi alternatif pilihan yang sangat efektif. Oleh karena itu mengingat perubahan jejaring sosial dan komunikasi digital alami perubahan yang benar – benar cepat sehingga salah satu langkah yang akan diambil untuk meningkatkan brand awareness UPT Pusat Bahasa membuat video company Profile untuk promosi kegiatan unggulan UPT Pusat Bahasa .', 'Mahasiswa/I Universitas Teknologi Sumbawa serta peserta umum.', 'Pembuatan video company profil  dijadwalkan rampung pada bulan Desember.', 'offline', 'Universitas Teknologi Sumbawa', '2021-12-13', 'WR 2', 1, 4, 20, '1500000', NULL, 'Mandiri', 'UTS UPT BAHASA', '1610006267970', '40619eefddc5068.pdf', 'progress', '4061ca7fb88edfe.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-11-25 02:07:26', '2021-12-28 03:08:41'),
(391, '592', 21, 24, 'Kebutuhan promosi universitas dalam berbagai medium menjadikan kebutuhan photoshoot sebagai salah satu hal penting. Melalui program ini, promosi yang membutuhkan visual dengan kualitas maksimal dapat dipenuhi, serta dapat digunakan oleh unit kerja lain untuk promosi, sebagai contoh Kantor Penerimaan Mahasiswa Baru (PMB) UTS.', 'melibatkan mahasiswa sebagai talent dan objek visual untuk photoshoot.', 'terlaksananya kegiatan pemotretan bersama para mahasiswa', 'Dilaksanakan pada 30 November 2021.', 'studio foto Magita Picture, Sumbawa.', '2021-11-30', 'Humas dan Protokoler', 1, 1, 1, '1000000', NULL, 'Mandiri', 'Nurul Hudaningsih', '1610006292150', '40619f071133f09.xlsx', 'progress', '4061ca7ed789714.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-11-25 03:46:25', '2021-12-28 03:04:56'),
(392, '588', 21, 24, 'pembuatan kalender UTS adalah program pembuatan kalender tahunan dari universitas, yang nantinya akan dibagikan atau sebarluaskan, sebagai media promosi UTS.', 'Disebarluaskannya kalender tahunan dari UTS kepadamitra kampus, ataupun masyarakat.', 'Dicetak dan sebarkannya kalender sebanyak 100 pcs.', 'dilaksanakan dalam rentang waktu 2 minggu,mulai dari design dan lainnya.', 'UTS', '2021-12-09', 'Humas dan Protokoler', 1, 1, 1, '4000000', NULL, 'Mandiri', 'Nurul Hudaningsih', '1610006292150', '40619f0c70a9e4b.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Sekniv', '2021-11-25 04:09:21', '2021-11-25 04:09:21'),
(393, '259', 53, 24, 'Belum teroptimalisasikan penggunaan menu-menu yang ada didalam SIAKAD', 'Kaprodi, admin prodi, back office', 'Pemahaman akan penggunaan SIAKAD dapat terlaksana dengan baik.', 'offline', 'STP (Science Technopark)', '2021-12-01', 'Kantor PMB, Bag. Keuangan, Bag. Beasiswa, Kaprodi', 1, 1, 4, '5795000', NULL, 'BNI', 'Rabiatul', '1316921971', '40619f17282e8ae.xlsx', 'progress', '4061b17a8db9c5d.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-11-25 04:55:04', '2021-12-09 03:39:58'),
(394, '137', 64, 21, 'Setelah di adakannya berbagai program UPT Pusat Bahasa selama satu\ntahun terakhir, perlu diadakan sebuah refleksi dari program – program\ntersebut, agar kedepannya program tersebut dapat dieksekusi dengan lebih baik.\nSelain Itu, kesempatan ini juga digunakan sebagai wadah untuk   menyusun RKAT 2022 yang akan datang yang diikuti oleh seluruh  pengurus UPT Pusat Bahasa.', '-', 'Bulan Desember 2021', 'offline', '-', '2021-12-16', 'Wr 2', 1, 1, 1, '1000000', NULL, 'Mandiri', 'UPT Pusat Bahasa', '1610006267970', '4061a44cf2bd114.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Pusat bahasa', '2021-11-29 03:45:55', '2021-11-29 03:45:55'),
(395, '460', 77, 24, 'Program ini dilaksanakan guna memberikan pengalaman kepada mahasiswa untuk terjun langsung dalam membantu masyakat desa dalam kegiatan keagamaan.', 'Mahasiswa', 'Terlaksananya program pengabdian mahasiswa kepada masyarakat', 'Kegiatan Lapangan ke Desa', 'Desa-desa sekitar UTS', '2021-11-29', 'BPKO', 3, 10, 50, '1000000', NULL, 'Bank Nasional Indonesia (BNI)', 'WIN ARIGA MANSUR MAL', '0798450575', '4061a45c756bc74.xlsx', 'progress', '4061b814cd04339.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-11-29 04:52:05', '2021-12-14 03:51:41'),
(396, '461', 77, 24, 'Program ini dilaksanakan sebagai salah satu upaya meningkatkan kreatifitas mahasiswa UTS dalam bidang keilmuan maupun keagamaan dan meningkatkan persaudaraan sesama mahasiswa', 'Mahasiswa', 'Terlaksanya pekan Olimpiade Mentoring', 'Olimpiade Mentoring', 'UTS', '2021-11-29', 'BPKO', 3, 10, 49, '2000000', NULL, 'BNI', 'WIN ARIGA MANSUR MAL', '0798450575', '4061a45f3971777.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Badan Pengembangan Karakter & Hubungan Ortu', '2021-11-29 05:03:53', '2021-11-29 05:03:53'),
(397, '514', 78, 24, 'Sebagai bahan untuk melengkapi tridarma perguruan tinggi untuk Prodi Magister Manajemen Inovasi Sekolah Pascasarjana-UTS', 'Dosen', 'Dapat menjadi pendukung untuk penelitian selanjutnya di Sekolah Pascasarjana Universitas Teknologi Sumbawa  pada tingkat Internasional', 'Interview,Seminar, dan Publikasi', 'Sumbawa', '2021-11-03', 'Warek 2', 4, 17, 77, '3950000', NULL, 'Mandiri', 'I Putu Widiantara', '9000018506460', '', 'progress', NULL, NULL, NULL, NULL, 0, 'Direktur Keuangan', '2021-11-30 03:04:55', '2021-12-22 03:28:36'),
(398, '372', 64, 21, 'Sebagai sarana prasasarana operasional UPT Pusat Bahasa, maka perlu adanya beberapa pengadaan piranti elektronik untuk kelancaran operasional UPT Pusat Bahasa.', '-', '-', '-', '-', '2021-12-04', 'WR 2', 1, 4, 20, '1000000', NULL, 'Mandiri', 'UPT Pusat Bahasa', '1610006267970', '4061a5ba0e7b730.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Pusat bahasa', '2021-11-30 05:53:11', '2021-11-30 05:53:11'),
(399, '370', 64, 21, 'Menjadi sebuah keharusan bagi setiap SDM Pusat Bahasa untuk mendapatkan upgrading skill disiplin ilmu yang dimiliki. Upgrading tersebut baik berupa sertifikasi, pelatihan, atau kompetensi sesuai bidang keilmuan.', '-', '-', 'offline', '-', '2021-12-24', 'WR 2', 1, 3, 10, '1600000', NULL, 'Mandiri', 'UPT PUSAT BAHASA', '1610006267970', '4061a5bf0092c33.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Pusat bahasa', '2021-11-30 06:04:48', '2021-11-30 06:04:48'),
(400, '100', 73, 24, 'Rangkaian acara gathering akan dilaksanakan selama 2 hari :\nHari pertama akan dilakukan seminar dengan mahasiswa, dilanjutkan ke Batu Tering untuk pengenalan produk Program Merdeka, dilanjutkan sore hari acara coffee break.\nHari ke dua akan dilakukan kunjungan ke Teluk Santong, dilanjutkan makan siang di Padak Talas. Dilanjutkan acara malam hari, malam puncak Gala Dinner di Raberas Resto.', 'Mitra kerja sama BUMN, Industri, Pemda, Pemprov', 'Dapat meningkatkan kerja sama UTS dengan para mitra kerja sama.', 'Seminar, coffee break, gala dineer', 'Lingkungan UTS, Batu Tering, Teluk Santong, Raberas Resto', '2021-12-17', 'Mitra Kerja Sama', 1, 2, 9, '15000000', NULL, 'BNI', 'Anita Gusmiarti', '1318654719', '4061a5c8826776a.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek IV Kerjasama', '2021-11-30 06:45:22', '2021-12-08 07:07:59'),
(401, '301', 60, 24, 'Dikarenakan masa kepengurusan Pengurus Ormawa tahun 2020/2021, dan telah terprogramnya kegiatan Pemilu Raya UTS untuk memilih Ketua dan Wakil Ketua baru BEM dan DPM serta Ormawa di Universitas', 'Seluruh Mahasiswa aktif UTS', 'terpilihnya kader ataupun ketua dan wakil ketua BEM dan DPM sertaOrmawa UTS periode kepemimpinan 2022 yang amanah dan dapat menjadi panutan bagi anggota dan mahasiswa lainnya', 'kegiatan pemira dilaksanakan secara offline dengan melakukan pemungutan suara memilih calon ketua dan wakil ketua BEM serta Ormawa Lainnya', 'Universitas teknologi Sumbawa', '2021-12-10', 'Sub Direktorat Kemahasiswaan dan Alumni', 1, 3, 12, '4000000', NULL, 'Mandiri', 'Teguh Iman Hadinullah', '1610006273952', '4061ad9c3ad914c.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-12-02 03:29:21', '2021-12-10 08:22:12'),
(402, '427', 79, 21, '1. Pelatihan Penulisan Buku Ajar merupakan kegiatan perkuliahan/ceramah yang menghadirkan praktisi dari industri/instansi serta para pakar dari kalangan perguruan tinggi untuk memberikan wawasan kepada para dosen dari berbagai program studi khususnya Program studi akuntansi. Pelatihan Penulisan Buku Ajar diselenggarakan dalam bentuk ceramah dan merupakan bagian dari proses pembelajaran yang berkaitan dengan bidang ilmu atau bidang konsentrasi sebuah program studi.\n2. Untuk menunjang peningkatan kemampuan tenaga pengajar, dipandang perlu untuk memutakhirkan pengetahuan serta keterampilan membuat bahan ajar. Salah satu cara pemutakhiran pengetahuan ini adalah dengan melaksanakan “Pelatihan Penulisan Buku Ajar” yang bertemakan “Workshop pelatihan penulisan buku ajar”. Di sini Dosen FEB UTS dapat memperoleh kesempatan untuk membuka wawasan serta meningkatkan pengetahuan dan kompetensinya tentang penulisan buku ajar.\n3. Perwujudan dari misi FEB UTS tahun 2021-2025 yaitu: “Melaksanakan kegiatan pembelajaran dan penelitian yang berkualitas dan adaptif terhadap kebutuhan lokal dan perkembangan global sehingga berkontribusi terhadap pengembangan ilmu\npengetahuan ekonomi dan bisnis”.', 'Dosen FEB UTS', 'Terdapat buku ajar yang dijadikan referensi pada program studi akuntansi', 'Kuliah umum sekaligus coaching penulisan buku ajar', 'Gedung STP', '2021-12-06', 'Warek I & Warek IV', 1, 3, 10, '3000000', NULL, 'BNI', 'IRAWATI', '1319350094', '4061a83f571ea90.xlsx', 'progress', 'default.jpg', NULL, NULL, '4061cd42ab44c4c.pdf', 4, 'Direktur Keuangan', '2021-12-02 03:36:55', '2021-12-30 05:56:59'),
(405, '300', 60, 21, 'Pendidikan merupakan investasi jangka panjang. Pentingnya pendidikan tinggi membuat pemerintah Nusa Tenggara Barat menginisiasi program Beasiswa untuk memberikan kesempatan kepada pemuda-pemudi Nusa Tenggaran Barat agar mendapatkan pendidikan yang lebih baik. Dalam rangka roadshow Beasiswa NTB di Pulau Sumbawa, diadakan acara Nonton Bareng Film Documenter Beasiswa NTB \"1000 Candekia\" dan akan diselenggarakan di Universitas Teknologi Sumbawa. Untuk itu, CINE CLUB sebagai UKM yang memiliki ketertarikan terhadap film ikut andil dalam kegiatan tersebut.', 'Seluruh Civitas Akdemika UTS', 'Seluruh Civitas Akademika UTS', 'Nonton Bareng Film 1000 Candekia', 'STP Sumbawa', '2021-12-06', 'Sub Direktorat Penalaran, minat dan bakat', 2, 5, 23, '1100000', NULL, 'Mandiri', 'Putri Indah Kencana', '1610004658287', '4061a99230e8fd3.xlsx', 'progress', '4061b703a4e7431.pdf', NULL, NULL, '4061c915bd5653a.pdf', 4, 'Direktur Keuangan', '2021-12-03 03:42:41', '2021-12-27 02:29:36'),
(406, '423', 79, 24, '1. Sebagai karya ilmiah mandiri, struktur isi karya ilmiah, gaya bahasa, dan gaya tulisan yang dipakai sangatlah beragam. Tulisan yang mempunyai mutu yang tinggi salah satunya diukur dari tingkat plagiarisme tulisan tersebut.\n2. Perwujudan dari misi FEB UTS tahun 2021-2025 yaitu: “Melaksanakan kegiatan pembelajaran dan penelitian yang berkualitas dan adaptif terhadap kebutuhan lokal dan perkembangan global sehingga berkontribusi terhadap pengembangan ilmu pengetahuan ekonomi dan bisnis”.', 'Dosen FEB UTS', 'Meningkatnya pemahaman dosen tentang “Metode Penelitian Kualitatif”', 'Sharing session bersama dosen FEB UTS', 'FEB UTS', '2021-12-03', 'Warek III', 4, 16, 73, '1000000', NULL, 'BNI', 'IRAWATI', '1319350094', '4061a9a74bf1896.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Fakultas Ekonomi & Bisnis', '2021-12-03 05:12:44', '2021-12-03 05:12:44'),
(407, '430', 79, 24, 'Meningkatkan jumlah mahasiswa berprestasi, baik secara akademik maupun non akademik', 'Mahasiswa FEB UTS', 'Pembinaan mahasiswa untuk pengembangan prestasi dan Pengembangan organisasi kemahasiswaan sebagai wahana untuk melatih keterampilan organisasi mahasiswa', 'Kegiatan ini akan dilakukan oleh BEM dengan koordinator bagian kemahasiswaan FEB UTS', 'FEB', '2021-12-06', 'Warek III', 3, 10, 49, '1500000', NULL, 'BNI', 'IRAWATI', '1319350094', '4061a9a91ceb1fb.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-12-03 05:20:29', '2021-12-27 06:35:29'),
(408, '305', 62, 24, 'Pelatihan Tim Sosialisasi', 'Panitia PMB', 'Dua Ribu Pendaftar', 'ofline', 'Ruang Eks FEB', '2021-12-09', 'Tim PanitiaPMB', 2, 5, 22, '1160000', NULL, 'BSI', 'Widyawati Lestari', '8419676840', '4061ad784c974dc.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-12-06 02:41:16', '2021-12-09 04:06:24'),
(409, '401', 111, 24, 'Tunjangan Bagi maneger di tingkat fakultas yang telah melaksanakan tugas dan fungsi dengan baik', 'Manager Fakutas Rekayasa Sistem', '-', 'insentiv manager Fakultas', '-', '2021-12-13', 'Fakultas Rekayasa Sistem', 1, 3, 17, '3600000', NULL, 'Bank BNI', 'Nora Dery Sofya', '1317925840', '4061ad94f0b496f.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Fakultas Rekayasa Sistem', '2021-12-06 04:43:29', '2021-12-06 04:43:29'),
(410, '565', 63, 24, 'Sebagai strategi promosi perpustakaan dalam upaya meningkatkan minat baca dan menumbuhkembangkan budaya gemar membaca bagi civitas akademika Universitas Teknologi Sumbawa , UPT Perpustakaan  menyelenggarakan Pemilihan Duta Baca tahun 2021.\nTugas utama duta baca adalah sebagai motivator peningkatan minat baca civitas akademika Perpustakaan Universitas Teknologi Sumbawa serta sebagai pengungkit dan/atau memperkuat kegiatan perpustakaan dalam gerakan gemar membaca.', 'Mahasiswa Universitas Teknologi Sumbawa', '1.	Meningkatnya minat baca\n2.	Perpustakaan lebih dikenal oleh masyarakat', '1.	Seleksi Administrasi 2.	Babak Penyisihan Duta Baca 3.	Final Pemilihan Duta Baca (5 besar cewek dan 5 besar cowok)', 'Lokasi :  Kampus UTS (RPK UTS atau STP)', '2021-12-20', 'Sekniv, UPT Perpustakaan', 3, 11, 57, '4972000', NULL, 'Mandiri', 'UTS UPT PERPUSTAKAAN', '1610006267947', '4061ad9c0271bbd.xlsx', 'progress', 'default.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-12-06 05:13:39', '2021-12-30 04:07:56'),
(411, '300', 60, 24, 'Guna mempererat tali persaudaraan dan silaturrahmi antar mahasiswa Universitas Teknologi Sumbawa dan Perguruan Tinggi Se-Kabupaten Sumbawa. UKM Voli Jum Serve Club UTS akan mengadakan kompetisi Volly antar mahasiswa', 'Tim Voli Mahasiswa Universitas Teknologi Sumbawa dan Tim Voli Mahasisswa Universitas SeKabupaten Sumbawa', 'Tercapainya apa yang menjadi tujuan terlaksananya kegitan dan semakin majunya UKM dan TIM Vli Universitas Teknologi Sumbawa', 'Pertandingan Voli di GOR Mampis Rungan Kab. Sumbawa', 'Gor Mampis Rungan UTS', '2021-12-18', 'Sub Direktorat Penalaran, minat dan bakat', 3, 10, 50, '1000000', NULL, 'Mandiri', 'Teguh Iman Hadinullah', '1610006273952', '4061adc0cbc4262.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Rektor', '2021-12-06 07:50:36', '2021-12-10 08:00:40'),
(413, '589', 21, 24, 'Pengembangan Tim Humas dan Protokoler menjadi salah satu program tahunan yang diagendakan, sebagai program pengembangan dalam bentuk studi banding, konverensi, pelatihan, lomba dan sejenisnya.', 'Tim Humas dan Protokoler', 'Tim Humas dan Protokoler dapat mengikuti kegiatan pengembangan baik studi banding, konverensi, pelatihan, lomba dan sejenisnya.', 'Dilaksanakan selama 3 hari pada 21-23 Desember 2021.', 'Universitas Muhammadiyah Malang', '2021-12-21', 'Humas dan Protokoler', 1, 1, 1, '8000000', NULL, 'Mandiri', 'Nurul Hudaningsih', '1610006292150', '4061aed4a944c6f.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Sekniv', '2021-12-07 03:27:37', '2021-12-07 03:27:38'),
(414, '586', 21, 24, 'sebaggai ajang untuk memberikan apresiasi kepada sosok yang memberikan kontribusi bagi kemajuan Daerah, baik dalam bidang pendidikan, lingkungan, masyarakat danlainnya.', 'tokoh, sosok, atau seseorang dari masyarakat Sumbawa.', 'terselenggaranya pemberian UTS Award atau penghargaan kepada sosok yang dianggap telah memberikan kontribusi bagi daerah.', 'Dilaksanakan dalam sehari pada 28 Desember 2021', 'UTS', '2021-12-28', 'Humas dan Protokoler', 1, 1, 1, '2350000', NULL, 'Mandiri', 'Nurul Hudaningsih', '1610006292150', '4061af141e2f55c.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Sekniv', '2021-12-07 07:58:22', '2021-12-07 07:58:22'),
(415, '183', 80, 24, 'PKM camp dan reward', 'Mahasiswa', 'PKM proposal dan reward lomba', 'PKM Camp, Pemberian Atensi', 'Fateta', '2021-12-09', 'Prodi TIP dan THP', 3, 12, 61, '3000000', '3000000', 'Mandiri', 'Ihlana Nairfana', '1610004215286', '4061affd453cdc7.pdf', 'progress', NULL, '2', NULL, NULL, 2, 'Rektor', '2021-12-08 00:33:09', '2022-02-09 07:29:22'),
(417, '473', 74, 24, 'Pandemi Covid-19 menjadi tantangan berat bagi UTS dalam melaksanakan kegiatan belajar bagi mahasiswa asing yang telah diterima sebagai mahasiswa UTS melalui program UTS Global Ambassador Scholarship (U-GAS) sejak tahun 2020. Pada Oktober 2021, seiring dengan menurunnya angka kasus positif Covid-19 di Indonesia, pemerintah membuka kembali layanan visa dan akses masuk bagi orang asing ke Indonesia guna meningkatkan pemulihan ekonomi nasional. Sehingga, Direktorat Kerjasama Luar Negeri bisa mengajukan permohonan visa bagi mahasiswa internasional yang telah melengkapi persyaratan pengajuan visa.', 'Mahasiswa Internasional program U-GAS', 'Terbitnya Visa Tinggal Terbatas (Index C316) bagi mahasiswa internasional. Kehadiran 2 mahasiswa international program U-GAS ke Sumbawa', 'Dokumen', 'UTS', '2021-12-10', 'Tidak ada', 1, 2, 9, '6000000', NULL, 'BNI', 'Anita Gusmiarti', '1318654719', '4061b05ea9ddb27.xlsx', 'progress', '4061b822339135c.pdf', NULL, NULL, NULL, 3, 'Direktur Keuangan (Pencairan)', '2021-12-08 07:28:43', '2021-12-14 04:48:52'),
(418, '425', 79, 24, '1. Berdasarkan hasil audit mutu internal dan evaluasi FEB UTS tahun 2020 diperoleh bahwa FEB UTS mempunyai mitra kerjasama tetap dan tidak ada perubahan mitra kerjasama. Hal ini berdampak pada kegiatan kerjasama yang serupa tiap tahunnya. Untuk itu, diperlukan jejaring kerjasama yang baru dengan tetap menjalin kerjasama dengan mitra tetap FEB UTS.\n2. Jumlah mahasiswa pada salah satu program studi di FEB UTS masih rendah, sehingga diperlukan perluasan jejaring kerjasama pendidikan dengan instansi tertentu untuk dapat meningkatkan animo siswa melalui kerjasama beasiswa pada calon mahasiswa FEB UTS.\n3. Adanya kampus merdeka mengharuskan mahasiswa untuk menempuh pembelajaran di luar kampus, sehingga diperlukan mitra kerjasama untuk kegiatan belajar di luar kampus mahasiswa melalui magang fakultas atau PMMB.\n4. Perwujudan dari misi FEB UTS tahun 2021-2025 yaitu: “Meningkatkan kualitas pelaksanaan Tri Dharma perguruan tinggi melaui kerjasama dan kolaborasi yang bertanggungjawab dan saling menguntungkan', 'Mitra kerjasama FEB UTS', 'Meningkatnya jumlah kerjasama FEB UTS yang dapat dilihat dari jumlah PKS yang dihasilkan.', 'Roadshow dan follow up kerjasama dengan beberapa instansi yang menjadi mitra kerjasama FEB, seperti OJK NTB, BI, Bappeda NTB, Inspektorat NTB, Bappenda NTB, Unram, BPK Kanwil NTB', 'Mataram', '2021-12-13', 'Warek IV', 5, 22, 89, '5000000', '3500000', 'BNI', 'IRAWATI', '1319350094', '4061b1a273c473e.xlsx', 'progress', NULL, '2', NULL, NULL, 2, 'Rektor', '2021-12-09 06:30:12', '2022-02-09 07:29:20'),
(419, '144', 65, 3333, 'Era globalisasi menuntut sumber daya manusia yang handal. Dinamika kehidupan bergerak dengan cepat dan menghadirkan perubahan dengan cepat pula di setiap sendi kehidupan. Manusia adalah aspek terpenting karena manusia merupakan penyebab dominan dari perubahan zaman dari masa ke masa. Manusia yang berkualitas yang tentu saja akan mampu membawa perubahan ke arah yang lebih baik, minimal untuk dirinya sendiri.\nKemampuan komunikasi dan berbicara di depan umum menjadi kemampuan yang sangat penting dalam semua bidang dan profesi. Hal ini akan membantu setiap individu dalam pencapaian karir dan masa depannya. Upaya itu dapat dilakukan dengan beragam media pelatihan, salah satunya pelatihan yang di selenggarakan oleh lembaga yang fokus pada upaya peningkatan kemampuan public speaking.\nBerangkat dari fenomena di atas, Universitas Teknologi Sumbawa memiliki tanggung jawab untuk menghasilkan lulusan yang tidak hanya memiliki ilmu dan pengetahuan yang mengendap di dalam pikiran tetapi mampu juga didistibusikan ke orang lain dengan cara disampaikan secara lisan. Hal ini bisa dilakukan jika mereka memiliki kemampuan komunikasi lisan yang baik. Untuk itu salah satu terobosan yang dilakukan oleh UPT. UTS School of Public Speaking Universitas Teknologi Sumbawa adalah penyelenggaraan Lomba Public Speaking', 'Pelajar SD/SMP Se-Kabupaten Sumbawa', 'SD & SMP Se-Kabupaten Sumbawa.', 'Lomba', 'Kampus UTS dan Aula Pemda Sumbawa', '2021-12-13', 'Public Speaking / Pengembangan.', 4, 18, 81, '5000000', '4000000', 'Mandiri', 'Universitas Teknologi Sumbawa - UTS School of Public Speaking', '1610006412063', '4061b30da2d0554.xlsx', 'progress', 'default.jpg', '1', '4062035247e9480.pdf', '40620351e42baa1.pdf', 4, 'Sekniv', '2021-12-10 08:19:47', '2022-02-10 07:29:49'),
(420, '102', 73, 24, 'UTS Coffee Break” yang merupakan forum sharing kerja sama yang diselenggarakan oleh Direktorat Kerja Sama Dalam Negeri Universitas Teknologi Sumbawa. Forum UTS Coffee Break adalah forum diskusi sharing ilmu pengetahuan dan informasi baik dari nara sumber itu sendiri maupun dari para dosen terkait isu-isu strategis dan terkini, dengan harapan ada ruang kolaborasi dan sinergi antar pihak sehingga bersama-sama ikut berpartisipasi dalam pembangunan daerah.', 'Terciptanya kolaborasi dan sinergi antar pihak internal seperti Dekan, Kaprodi, dan dosen.', 'Munculnya peluang kerja sama.', 'Diskusi kerja sama', 'Raberas Resto', '2021-12-23', 'Narasumber danPimpinan di UTS', 1, 2, 9, '6310000', '200000', 'BNI', 'Anita Gusmiarti', '1318654719', '4061c2ccf636564.xlsx', 'progress', 'default.jpg', NULL, NULL, NULL, 3, 'Direktur Keuangan', '2021-12-22 07:00:06', '2022-02-09 07:44:48'),
(423, '358', 113, 21, 'Program ini dilaksanakan sebagai upaya meningkatkan kesadaran mahasiswa untuk peduli lingkungan di sekitarnya.', 'Mahasiswa Asrama Universitas Teknologi Sumbawa', 'Meningkatkan kedasaran mahasiswa terhadap lingkungan sekitar', 'Bersih pantai', 'Pantai seliper', '2022-01-02', 'lingkungan hidup', 4, 18, 80, '500000', NULL, 'BRI', 'Massita', '005201173882500', '4061c55a596b94d.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Asrama', '2021-12-24 05:27:54', '2021-12-24 05:27:54'),
(424, '359', 113, 21, 'Menjaga kesehatan penghuni asrama mahasiswa UTS menjadi hal yang terpenting demi keefektifan proses belajar siswa', 'Penghuni asrama', 'Agar meningkatkan kesehatanpenghuni asrama', 'Klinik Layanan kesehatan', 'Asrama', '2022-01-02', 'KSR PMI', 2, 8, 40, '500000', NULL, 'BRI', 'Massita', '005201173882500', '4061ca646b901d4.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Asrama', '2021-12-28 01:12:11', '2021-12-28 01:12:12'),
(425, '360', 113, 21, 'Menjaga gangguan dari hewan hewan liar dan meningkatkan keindahan, kenyamanan dan kesejukan asrama', 'Penghuni asrama', 'Berkurangnya gangguan dari hewan hewan liar dan meningkatnya keindahan serta kenyamanan penghuni asrama', 'Pemeliharaan pagar dan taman', 'Asrama', '2022-01-09', 'Kerja fisik', 2, 8, 40, '2500000', NULL, 'BRI', 'Massita', '005201173882500', '4061ca657bbaa74.xlsx', 'progress', NULL, NULL, NULL, NULL, 1, 'Asrama', '2021-12-28 01:16:44', '2021-12-28 01:16:44'),
(426, '514', 78, 23, 'Sebagai bahan untuk melengkapi tridarma perguruan tinggi untuk Prodi Magister Manajemen Inovasi Sekolah Pascasarjana-UTS', 'Dosen', 'Dapat menjadi pendukung untuk penelitian selanjutnya di Sekolah Pascasarjana Universitas Teknologi Sumbawa  pada tingkat Internasional', 'Interview,Seminar, dan Publikasi', 'Sumbawa', '2021-11-12', 'Warek 2', 4, 17, 77, '3950000', '2000000', 'Mandiri', 'I Putu Widiantara', '9000018506460', '4061cbec95df98f.xlsx', 'progress', NULL, NULL, NULL, NULL, 2, 'Direktorat Keuangan', '2021-12-29 05:05:27', '2022-02-09 04:04:41'),
(464, '82', 24, 24, 'q', 'q', 'q', 'q', 'q', '2022-02-09', 'q', 5, 20, 85, '1222', '1000', 'qw', 'qw', '1212', NULL, 'progress', NULL, NULL, NULL, NULL, 0, 'Direktorat Keuangan', '2022-02-08 16:59:39', '2022-02-09 05:54:57'),
(467, '535', 57, 22, 'Contoh pengajuan', 'Contoh pengajuan', 'Contoh pengajuan', 'Contoh pengajuan', 'Contoh pengajuan', '2022-02-09', 'Wakil Rektor 1', 4, 17, 78, '4250000', '4000000', '324234', '23423', '12312312', NULL, 'progress', NULL, '1', NULL, NULL, 2, 'Warek II Keuangan', '2022-02-09 07:00:31', '2022-02-10 05:38:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_pencairan`
--

CREATE TABLE `pengajuan_pencairan` (
  `id_pencairan_image` int(11) NOT NULL,
  `pengajuan_id` varchar(255) NOT NULL,
  `nominal` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengajuan_pencairan`
--

INSERT INTO `pengajuan_pencairan` (`id_pencairan_image`, `pengajuan_id`, `nominal`, `images`, `created_at`, `updated_at`) VALUES
(1, '339', '24999000', '4061ca88e9b30c4.pdf', '2021-12-28', '2021-12-28'),
(2, '339', '10000000', '4061ca89196da05.pdf', '2021-12-28', '2021-12-28'),
(3, '385', '600000', '4061cbc7553ef1a.pdf', '2021-12-29', '2021-12-29'),
(4, '272', '600000', '4061cbd336089c8.pdf', '2021-12-29', '2021-12-29'),
(5, '410', '3408000', '4061cd30952fdd4.pdf', '2021-12-30', '2021-12-30'),
(6, '175', '232323232232', '4061d3a0b07ce0a.jpg', '2022-01-04', '2022-01-04'),
(7, '175', '232323232232', '4061d3c38e6d9e4.pdf', '2022-01-04', '2022-01-04'),
(8, '175', '213213', '4061d3c3ab973b8.pdf', '2022-01-04', '2022-01-04'),
(9, '175', '232323232232', '4061d3c43b4b39a.pdf', '2022-01-04', '2022-01-04'),
(10, '175', '213123', '4061d3c525f3c44.pdf', '2022-01-04', '2022-01-04'),
(11, '447', '12222', '4061e543cda4af0.pdf', '2022-01-17', '2022-01-17'),
(12, '447', '322222', '4061e544625dcbe.pdf', '2022-01-17', '2022-01-17'),
(13, '447', '23232', '4061e545b2d70ce.pdf', '2022-01-17', '2022-01-17'),
(14, '447', '23232', '4061e545bb5eb7b.pdf', '2022-01-17', '2022-01-17'),
(15, '447', '23232', '4061e545c91b0a2.pdf', '2022-01-17', '2022-01-17'),
(16, '447', '23234234', '4061e545dfb7b16.pdf', '2022-01-17', '2022-01-17'),
(17, '343', '232323232232', '40620350f0124d3.pdf', '2022-02-09', '2022-02-09'),
(18, '419', '232323232232', '4062035140c81e4.pdf', '2022-02-09', '2022-02-09'),
(19, '420', '1200000', '406203701036b7f.pdf', '2022-02-09', '2022-02-09'),
(20, '275', '2000000', '4062037166e59b5.pdf', '2022-02-09', '2022-02-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_validasi`
--

CREATE TABLE `pengajuan_validasi` (
  `id_validasi` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `id_struktur` int(11) NOT NULL,
  `status_validasi` int(5) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengajuan_validasi`
--

INSERT INTO `pengajuan_validasi` (`id_validasi`, `id_pengajuan`, `id_struktur`, `status_validasi`, `message`, `created_at`, `updated_at`) VALUES
(1, 160, 114, 1, 'UPT  Career Development Center - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(2, 160, 21, 0, 'Sekniv - revisi', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(3, 164, 61, 1, 'Direktorat Sumber Daya Manusia - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(4, 164, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(5, 164, 24, 2, 'Direktur Keuangan - silahkan dilengkapi daftar panitia dan peserta yang 30 orang ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(6, 164, 23, 0, 'Warek II Keuangan - kenapa harus ada konsumsi? bukannya zoom?', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(7, 164, 23, 0, 'Warek II Keuangan -  kenapa harus ada konsumsi? bukannya zoom?', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(8, 175, 73, 1, 'Direktorat Kerjasama Dalam Negeri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(9, 175, 117, 2, 'Warek VI Kerjasama - Disetujui oleh Plt WR4 a.n. Abdul Hadi Ilman', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(10, 175, 24, 2, 'Direktur Keuangan - mohon dirincikan penggunaan dana dari masing-masing, misal untuk konsumsi, transportasi dll ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(11, 175, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(12, 175, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(13, 175, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(14, 179, 64, 1, 'Pusat bahasa - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(15, 179, 21, 0, 'Sekniv - Rekening Pencairan menggunakan Rekening unit', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(16, 179, 64, 1, 'Pusat bahasa - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(17, 179, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(18, 180, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(19, 180, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(20, 180, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar, RAB di submit dalam bentuk PDF, RAB sangat tidak detail. coba buat lebih sangat detail, kenapa rapat, sosialisasi, penyusunan dokumen, dll harus ada pengeluaran? ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(21, 180, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(22, 180, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(23, 180, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(24, 180, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(25, 181, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(26, 181, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(27, 181, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar, RAB di submit dalam bentuk PDF, RAB sangat tidak detail. coba buat lebih sangat detail, kenapa rapat, sosialisasi, feedback, dll harus ada pengeluaran? ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(28, 181, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(29, 181, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(30, 181, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(31, 181, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(32, 181, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(33, 181, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(34, 182, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(35, 182, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(36, 182, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar. RAB di submit dalam bentuk pdf. RAB tidak detail, rapat tim kenapa harus ada pengeluaran? siapa saja tim penyusun? berapa honor tim penyusun per-orangnya? sosialisasi kenapa harus ada pengeluaran? intinya harus dijelaskan lebih detail di RAB nya', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(37, 182, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(38, 182, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(39, 182, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(40, 189, 53, 1, 'Direktorat Akademik - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(41, 189, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(42, 192, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(43, 192, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(44, 192, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(45, 192, 23, 0, 'Warek II Keuangan - mohon didetailkan RAB nya', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(46, 192, 116, 1, 'Teknik Lingkungan - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(47, 192, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(48, 192, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(49, 192, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(50, 193, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(51, 193, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(52, 193, 24, 0, 'Direktur Keuangan - mohon lengkapi surat, waktu pelaksanaan di kerangka acuan kerja, serta nama dosen yang mengikuti pelatihan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(53, 193, 116, 1, 'Teknik Lingkungan - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(54, 194, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(55, 194, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(56, 197, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(57, 197, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(58, 197, 24, 0, 'Direktur Keuangan - mohon lengkapi surat, waktu pelaksanaan kegiatan dan nama dosen yang mengikuti pelatihan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(59, 197, 116, 1, 'Teknik Lingkungan - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(60, 198, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(61, 198, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(62, 198, 24, 0, 'Direktur Keuangan - mohon pengajuannya dilengkapi dengan surat, waktu pelaksanaan kegiatan, dan nama dosen yang mengikuti pelatihan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(63, 198, 116, 1, 'Teknik Lingkungan - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(64, 198, 24, 0, 'Direktur Keuangan - rab yang diupload tidak sesuai dengan Kegiatan untuk RKAT no. 7', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(65, 198, 24, 0, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(66, 198, 116, 1, 'Teknik Lingkungan - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(67, 203, 62, 1, 'Kantor Penerimaan Mahasiswa Baru - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(68, 203, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(69, 206, 111, 1, 'Fakultas Rekayasa Sistem - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(70, 206, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(71, 206, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(72, 206, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(73, 206, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(74, 206, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(75, 206, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(76, 206, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(77, 206, 111, 1, 'Fakultas Rekayasa Sistem - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(78, 206, 111, 1, 'Fakultas Rekayasa Sistem - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(79, 206, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(80, 207, 111, 1, 'Fakultas Rekayasa Sistem - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(81, 207, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(82, 207, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(83, 207, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(84, 207, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(85, 207, 111, 1, 'Fakultas Rekayasa Sistem - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(86, 207, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(87, 217, 84, 1, 'Informatika - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(88, 217, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(89, 217, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(90, 217, 23, 0, 'Warek II Keuangan - untuk pengadaan lemari besi di revisi yg disetujui Rp.2.500.000', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(91, 217, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(92, 217, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(93, 217, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(94, 221, 76, 1, 'Badan Penjamin Mutu Akademik - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(95, 221, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(96, 221, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(97, 221, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(98, 221, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(99, 222, 76, 1, 'Badan Penjamin Mutu Akademik - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(100, 222, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(101, 222, 23, 2, 'Warek II Keuangan - jangan lupa no rekening penerima honor', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(102, 222, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(103, 222, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(104, 222, 76, 1, 'Badan Penjamin Mutu Akademik - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(105, 223, 76, 1, 'Badan Penjamin Mutu Akademik - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(106, 223, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(107, 223, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(108, 223, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(109, 224, 61, 1, 'Direktorat Sumber Daya Manusia - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(110, 224, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(111, 224, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(112, 224, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(113, 224, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(114, 227, 54, 1, 'Fakultas Ilmu Komunikasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(115, 227, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(116, 227, 23, 0, 'Warek II Keuangan - tempat pelaksanaan dilengkapi dan rincikan konsumsinya apa saja', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(117, 228, 61, 1, 'Direktorat Sumber Daya Manusia - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(118, 228, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(119, 232, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(120, 232, 58, 0, 'Warek 1 Akademik - belum ada detail RAB-nya', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(121, 232, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(122, 232, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(123, 233, 73, 1, 'Direktorat Kerjasama Dalam Negeri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(124, 233, 117, 2, 'Warek IV Kerjasama - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(125, 233, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(126, 233, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(127, 233, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(128, 233, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(129, 233, 73, 1, 'Direktorat Kerjasama Dalam Negeri - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(130, 233, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(131, 233, 73, 1, 'Direktorat Kerjasama Dalam Negeri - Upload LPJ Kegiatan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(132, 235, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(133, 235, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(134, 235, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(135, 235, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(136, 235, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(137, 235, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(138, 263, 68, 1, 'Dikrektorat Pengelolaan & Pemeliharaan Fasilitas - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(139, 263, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(140, 265, 68, 1, 'Dikrektorat Pengelolaan & Pemeliharaan Fasilitas - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(141, 265, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(142, 265, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(143, 265, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(144, 265, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(145, 268, 21, 1, 'Sekniv - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(146, 268, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(147, 268, 23, 0, 'Warek II Keuangan - tanggal pelaksanaan belum ada, ttd pejabat penanggung jawab belum ada, dan untuk penyewaan tempat usahakan diminimalisir budgetnya', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(148, 269, 85, 1, 'Industri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(149, 269, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(150, 269, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(151, 269, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(152, 269, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(153, 269, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(154, 269, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(155, 275, 57, 1, 'Direktorat Sistem &Teknologi Informasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(156, 275, 56, 2, 'Warek 3 Riset & Inovasi - gaskeun', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(157, 275, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(158, 275, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(159, 275, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(160, 281, 80, 1, 'Fakultas Teknologi Pertanian - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(161, 281, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(162, 281, 23, 2, 'Warek II Keuangan - di acc sebesar  Rp. 1.220.000', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(163, 281, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(164, 281, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(165, 281, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(166, 286, 68, 1, 'Dikrektorat Pengelolaan & Pemeliharaan Fasilitas - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(167, 286, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(168, 286, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(169, 286, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(170, 286, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(171, 287, 54, 1, 'Fakultas Ilmu Komunikasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(172, 287, 24, 0, 'Direktur Keuangan - mohon maaf pengajuannya kami tolak dulu ya, mohon dilengkapi dengan surat, kerangka acuan kerja yang lengkap disertai no. RKAT, waktu, dan tempat pelaksanaan kegiatan ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(173, 290, 68, 1, 'Dikrektorat Pengelolaan & Pemeliharaan Fasilitas - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(174, 290, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(175, 290, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(176, 290, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(177, 290, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(178, 290, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(179, 292, 68, 1, 'Dikrektorat Pengelolaan & Pemeliharaan Fasilitas - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(180, 292, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(181, 292, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(182, 292, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(183, 292, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(184, 292, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(185, 294, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(186, 294, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(187, 294, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(188, 294, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(189, 294, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(190, 294, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(191, 294, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(192, 295, 21, 1, 'Sekniv - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(193, 295, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(194, 295, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(195, 295, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(196, 295, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(197, 302, 54, 1, 'Fakultas Ilmu Komunikasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(198, 302, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(199, 302, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(200, 302, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(201, 302, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(202, 302, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(203, 302, 54, 1, 'Fakultas Ilmu Komunikasi - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(204, 302, 121, 0, 'Direktur Keuangan (LPJ) - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(205, 303, 97, 1, 'Teknik Mesin - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(206, 303, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(207, 303, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(208, 303, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(209, 303, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(210, 303, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(211, 304, 97, 1, 'Teknik Mesin - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(212, 304, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(213, 304, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(214, 304, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(215, 304, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(216, 304, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(217, 304, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(218, 305, 61, 1, 'Direktorat Sumber Daya Manusia - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(219, 305, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(220, 305, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(221, 305, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(222, 305, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(223, 309, 112, 1, 'Metalurgi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(224, 309, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(225, 311, 112, 1, 'Metalurgi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(226, 311, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(227, 312, 112, 1, 'Metalurgi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(228, 312, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(229, 316, 68, 1, 'Dikrektorat Pengelolaan & Pemeliharaan Fasilitas - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(230, 316, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(231, 316, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(232, 316, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(233, 316, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(234, 316, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(235, 322, 61, 1, 'Direktorat Sumber Daya Manusia - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(236, 322, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(237, 323, 61, 1, 'Direktorat Sumber Daya Manusia - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(238, 323, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(239, 323, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(240, 323, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(241, 323, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(242, 325, 97, 1, 'Teknik Mesin - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(243, 325, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(244, 326, 53, 1, 'Direktorat Akademik - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(245, 326, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(246, 326, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(247, 326, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(248, 326, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(249, 326, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(250, 326, 53, 1, 'Direktorat Akademik - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(251, 326, 53, 1, 'Direktorat Akademik - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(252, 327, 53, 1, 'Direktorat Akademik - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(253, 327, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(254, 327, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(255, 327, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(256, 327, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(257, 327, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(258, 337, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(259, 337, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(260, 337, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(261, 337, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(262, 337, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(263, 337, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(264, 338, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(265, 338, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(266, 338, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(267, 338, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(268, 338, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(269, 338, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(270, 338, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(271, 338, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(272, 339, 73, 1, 'Direktorat Kerjasama Dalam Negeri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(273, 339, 117, 2, 'Warek IV Kerjasama - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(274, 339, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(275, 339, 23, 2, 'Warek II Keuangan - sisa 10 jt lagi (termin 3)', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(276, 339, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(277, 343, 21, 1, 'Sekniv - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(278, 343, 24, 0, 'Direktur Keuangan - mohon dirincikan rab nya', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(279, 343, 21, 1, 'Sekniv - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(280, 343, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(281, 343, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(282, 343, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(283, 345, 61, 1, 'Direktorat Sumber Daya Manusia - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(284, 345, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(285, 351, 57, 1, 'Direktorat Sistem &Teknologi Informasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(286, 351, 56, 2, 'Warek 3 Riset & Inovasi - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(287, 355, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(288, 355, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(289, 355, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(290, 355, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(291, 361, 53, 1, 'Direktorat Akademik - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(292, 361, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(293, 362, 57, 1, 'Direktorat Sistem &Teknologi Informasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(294, 362, 56, 2, 'Warek 3 Riset & Inovasi - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(295, 364, 111, 1, 'Fakultas Rekayasa Sistem - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(296, 364, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(297, 364, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(298, 364, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(299, 367, 115, 1, 'Teknik Sipil - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(300, 367, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(301, 375, 112, 1, 'Metalurgi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(302, 375, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(303, 382, 68, 1, 'Dikrektorat Pengelolaan & Pemeliharaan Fasilitas - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(304, 382, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(305, 382, 24, 2, 'Direktur Keuangan - akan dicairkan 3 juta', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(306, 382, 23, 2, 'Warek II Keuangan - cair hanya 3 juta ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(307, 382, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(308, 385, 78, 1, 'Sekolah Pascasarjana - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(309, 385, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(310, 385, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(311, 385, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(312, 386, 61, 1, 'Direktorat Sumber Daya Manusia - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(313, 386, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(314, 386, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(315, 386, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(316, 386, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(317, 387, 53, 1, 'Direktorat Akademik - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(318, 387, 58, 2, 'Warek 1 Akademik - perbaikan RAB', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(319, 387, 24, 0, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(320, 390, 64, 1, 'Pusat bahasa - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(321, 390, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(322, 390, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(323, 390, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(324, 390, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(325, 390, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(326, 391, 21, 1, 'Sekniv - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(327, 391, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(328, 391, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(329, 391, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(330, 391, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(331, 392, 21, 1, 'Sekniv - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(332, 393, 53, 1, 'Direktorat Akademik - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(333, 393, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(334, 393, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(335, 393, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(336, 393, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(337, 393, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(338, 394, 64, 1, 'Pusat bahasa - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(339, 398, 64, 1, 'Pusat bahasa - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(340, 399, 64, 1, 'Pusat bahasa - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(341, 400, 73, 1, 'Direktorat Kerjasama Dalam Negeri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(342, 400, 117, 2, 'Warek IV Kerjasama - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(343, 401, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(344, 401, 58, 0, 'Warek 1 Akademik - Anggaran peralatan tidak perlu dimasukkan: tripod', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(345, 401, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(346, 401, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(347, 401, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(348, 401, 24, 2, 'Direktur Keuangan - on progress RAB dikeuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(349, 401, 23, 2, 'Warek II Keuangan - panitia mohon datang ke wr2 , karena RAB perlu direvisi', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(350, 401, 22, 2, 'Rektor - cairkan 3 jt', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(351, 402, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(352, 402, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(353, 402, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(354, 402, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(355, 402, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(356, 402, 79, 1, 'Fakultas Ekonomi & Bisnis - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(357, 402, 79, 1, 'Fakultas Ekonomi & Bisnis - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(358, 402, 79, 1, 'Fakultas Ekonomi & Bisnis - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(359, 402, 79, 1, 'Fakultas Ekonomi & Bisnis - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(360, 402, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(361, 409, 111, 1, 'Fakultas Rekayasa Sistem - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(362, 413, 21, 1, 'Sekniv - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(363, 414, 21, 1, 'Sekniv - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(364, 417, 74, 1, 'Direktorat Kerjasama Luar Negeri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(365, 417, 117, 2, 'Warek IV Kerjasama - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(366, 417, 24, 2, 'Direktur Keuangan - on progress', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(367, 417, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(368, 417, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(369, 417, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(370, 420, 73, 1, 'Direktorat Kerjasama Dalam Negeri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(371, 420, 117, 2, 'Warek IV Kerjasama - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(372, 420, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(373, 420, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(374, 420, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(375, 196, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(376, 196, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(377, 196, 24, 0, 'Direktur Keuangan - pengajuan RKAT disertai dengan surat. mohon untuk dilengkapi.', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(378, 196, 116, 1, 'Teknik Lingkungan - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(379, 196, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(380, 196, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(381, 196, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(382, 196, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(383, 204, 62, 1, 'Kantor Penerimaan Mahasiswa Baru - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(384, 204, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(385, 204, 24, 2, 'Direktur Keuangan - mohon lengkapi surat dan kerangka acuan kerja, serta berkas harus ditanda tangan.', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(386, 204, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(387, 204, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(388, 205, 62, 1, 'Kantor Penerimaan Mahasiswa Baru - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(389, 205, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(390, 205, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(391, 205, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(392, 205, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(393, 211, 54, 1, 'Fakultas Ilmu Komunikasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(394, 211, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(395, 211, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(396, 211, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(397, 211, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(398, 211, 54, 1, 'Fakultas Ilmu Komunikasi - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(399, 211, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(400, 214, 84, 1, 'Informatika - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(401, 214, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(402, 214, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(403, 218, 84, 1, 'Informatika - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(404, 218, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(405, 218, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(406, 218, 23, 0, 'Warek II Keuangan - pengadaan ATK dilakukan melalui DPPF dan konsumsi tolong dirincikan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(407, 218, 84, 1, 'Informatika - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(408, 218, 84, 1, 'Informatika - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(409, 219, 84, 1, 'Informatika - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(410, 219, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(411, 219, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(412, 219, 23, 0, 'Warek II Keuangan - mohon dibaca kembali surat sebelum dikirim. dari kalimat sampai bulan pelaksanaan dengan tanggal surat tidak sinkron. pelaksanaan agustus tanggal surat september', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(413, 225, 53, 1, 'Direktorat Akademik - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(414, 225, 58, 2, 'Warek 1 Akademik - lanjutkan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(415, 225, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(416, 225, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(417, 225, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(418, 243, 61, 1, 'Direktorat Sumber Daya Manusia - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(419, 243, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(420, 243, 24, 2, 'Direktur Keuangan - akan dicairkan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(421, 261, 68, 1, 'Dikrektorat Pengelolaan & Pemeliharaan Fasilitas - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(422, 261, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(423, 264, 78, 1, 'Sekolah Pascasarjana - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(424, 264, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(425, 264, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(426, 264, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(427, 264, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(428, 264, 78, 1, 'Sekolah Pascasarjana - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(429, 264, 78, 1, 'Sekolah Pascasarjana - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(430, 264, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(431, 266, 78, 1, 'Sekolah Pascasarjana - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(432, 266, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(433, 266, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(434, 266, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(435, 266, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(436, 266, 78, 1, 'Sekolah Pascasarjana - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(437, 266, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(438, 271, 85, 1, 'Industri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(439, 271, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(440, 271, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(441, 271, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(442, 271, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(443, 271, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(444, 273, 85, 1, 'Industri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(445, 273, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(446, 273, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(447, 273, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(448, 273, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(449, 273, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(450, 274, 85, 1, 'Industri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(451, 274, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(452, 274, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(453, 274, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(454, 274, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(455, 274, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(456, 274, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(457, 276, 71, 1, 'Direktorat Pengabdian Kepada Masyarakat - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(458, 276, 56, 2, 'Warek 3 Riset & Inovasi - Gaskeun', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(459, 276, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(460, 276, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(461, 276, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(462, 276, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(463, 277, 85, 1, 'Industri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(464, 277, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(465, 277, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(466, 277, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(467, 277, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(468, 277, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(469, 288, 113, 1, 'Asrama - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(470, 288, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(471, 289, 113, 1, 'Asrama - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(472, 289, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(473, 296, 111, 1, 'Fakultas Rekayasa Sistem - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(474, 296, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(475, 296, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(476, 296, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(477, 296, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(478, 296, 111, 1, 'Fakultas Rekayasa Sistem - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(479, 296, 111, 1, 'Fakultas Rekayasa Sistem - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(480, 296, 111, 1, 'Fakultas Rekayasa Sistem - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(481, 296, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(482, 298, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(483, 298, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(484, 298, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(485, 298, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(486, 298, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(487, 298, 79, 1, 'Fakultas Ekonomi & Bisnis - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(488, 298, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(489, 300, 111, 1, 'Fakultas Rekayasa Sistem - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(490, 300, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(491, 300, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09');
INSERT INTO `pengajuan_validasi` (`id_validasi`, `id_pengajuan`, `id_struktur`, `status_validasi`, `message`, `created_at`, `updated_at`) VALUES
(492, 300, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(493, 300, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(494, 300, 111, 1, 'Fakultas Rekayasa Sistem - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(495, 300, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(496, 308, 112, 1, 'Metalurgi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(497, 308, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(498, 308, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(499, 308, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(500, 308, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(501, 308, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(502, 344, 75, 1, 'Direktorat Perencanaan & Pengembangan Universitas - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(503, 344, 117, 2, 'Warek IV Kerjasama - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(504, 344, 24, 0, 'Direktur Keuangan - mohon untuk melenkapi surat, kerangka acuan kerja dan rab', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(505, 344, 75, 1, 'Direktorat Perencanaan & Pengembangan Universitas - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(506, 349, 21, 1, 'Sekniv - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(507, 349, 24, 0, 'Direktur Keuangan - Revisi', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(508, 349, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(509, 349, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(510, 349, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(511, 349, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(512, 354, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(513, 354, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(514, 354, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(515, 354, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(516, 354, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(517, 354, 79, 1, 'Fakultas Ekonomi & Bisnis - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(518, 354, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(519, 357, 81, 1, 'Fakultas Teknobiologi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(520, 357, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(521, 357, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(522, 357, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(523, 357, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(524, 357, 81, 1, 'Fakultas Teknobiologi - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(525, 357, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(526, 358, 81, 1, 'Fakultas Teknobiologi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(527, 358, 24, 2, 'Direktur Keuangan - kami terima dan akan kami cairkan, mohon untuk di ttd surat dan kerangka acuan kerja', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(528, 358, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(529, 358, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(530, 358, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(531, 358, 81, 1, 'Fakultas Teknobiologi - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(532, 373, 53, 1, 'Direktorat Akademik - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(533, 373, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(534, 373, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(535, 373, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(536, 373, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(537, 373, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(538, 373, 53, 1, 'Direktorat Akademik - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(539, 376, 112, 1, 'Metalurgi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(540, 376, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(541, 388, 54, 1, 'Fakultas Ilmu Komunikasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(542, 405, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(543, 405, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(544, 405, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(545, 405, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(546, 405, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(547, 405, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(548, 405, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(549, 405, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(550, 405, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(551, 405, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(552, 408, 62, 1, 'Kantor Penerimaan Mahasiswa Baru - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(553, 408, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(554, 424, 113, 1, 'Asrama - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(555, 425, 113, 1, 'Asrama - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(556, 166, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(557, 166, 58, 0, 'Warek 1 Akademik - 1. harus tetap ada KAK dari direktorat kemahasiswaan; 2. di RAB perlu ditulis anggaran untuk kegiatan di RKAT berapa, trus berapa yang sudah dan rencana digunakan, dan sisanya', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(558, 166, 58, 0, 'Warek 1 Akademik - revisi', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(559, 168, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(560, 168, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(561, 168, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(562, 168, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(563, 168, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(564, 170, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(565, 170, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(566, 170, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(567, 170, 23, 0, 'Warek II Keuangan - pemateri  siapa? mc siapa? ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(568, 171, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(569, 171, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(570, 171, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(571, 171, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(572, 171, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(573, 184, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(574, 184, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(575, 184, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar, RAB di submit dalam bentuk pdf, siapa pemateri dan mc nya? konsumsi cukup sekali saja. konsumsi rapat tidak perlu.', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(576, 184, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(577, 184, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(578, 184, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(579, 184, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(580, 191, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(581, 191, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(582, 195, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(583, 195, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(584, 195, 24, 0, 'Direktur Keuangan - mohon lengkapi surat, waktu pelaksanaan di kerangka acuan kerja, dan dilampirkan nama-nama tim penyusun dokumen kurikulum', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(585, 195, 116, 1, 'Teknik Lingkungan - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(586, 195, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(587, 195, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(588, 195, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(589, 195, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(590, 215, 84, 1, 'Informatika - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(591, 215, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(592, 215, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(593, 215, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(594, 215, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(595, 215, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(596, 216, 84, 1, 'Informatika - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(597, 216, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(598, 216, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(599, 216, 23, 0, 'Warek II Keuangan - maaf mohon melampirkan photo barang yang akan di pesan ya', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(600, 220, 84, 1, 'Informatika - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(601, 220, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(602, 220, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(603, 220, 23, 2, 'Warek II Keuangan - Akan dicairkan dengan terlebih dahulu melengkapi nama pemateri dan no rekening pemateri', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(604, 220, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(605, 220, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(606, 220, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(607, 220, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(608, 220, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(609, 220, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(610, 220, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(611, 220, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(612, 220, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(613, 220, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(614, 220, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(615, 220, 84, 1, 'Informatika - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(616, 220, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(617, 230, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(618, 230, 58, 0, 'Warek 1 Akademik - ada inkonsistensi, ada yang tertulis 750ribu, ada yang 1 juta. mohon diperbaiki terlebih dahulu', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(619, 230, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(620, 230, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(621, 230, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(622, 230, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(623, 230, 23, 0, 'Warek II Keuangan - No RKAT di surat dan di pengajuan berbeda? ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(624, 230, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(625, 230, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(626, 230, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(627, 230, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(628, 230, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(629, 236, 67, 1, 'Lembaga Psikologi Terapan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(630, 237, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(631, 237, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(632, 237, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(633, 237, 23, 2, 'Warek II Keuangan - Honor pemateri akan ditransfer oleh keuangan.  MC/moderator usahakan dari cdc tanpa honor. yang dicairkan ke cdc sebesar Rp 215.000', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(634, 237, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(635, 238, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(636, 238, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(637, 238, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(638, 238, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(639, 238, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(640, 240, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(641, 240, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(642, 240, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(643, 240, 23, 2, 'Warek II Keuangan - Honor pemateri akan ditransfer oleh keuangan.  MC/moderator usahakan dari cdc tanpa honor. yang dicairkan ke cdc sebesar Rp 215.000', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(644, 240, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(645, 240, 24, 3, 'Direktur Keuangan - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(646, 241, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(647, 241, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(648, 241, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(649, 241, 23, 2, 'Warek II Keuangan - yang disetujui dan akan dicairkan hanya Rp. 750.000', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(650, 241, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(651, 245, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(652, 245, 24, 0, 'Direktur Keuangan - mohon dilengkapi dengan surat permohonan pencairan dan nama kegiatan pada form pengajuan RKAT ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(653, 245, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(654, 245, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(655, 245, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(656, 245, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(657, 245, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(658, 246, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(659, 246, 24, 0, 'Direktur Keuangan - mohon dilengkapi dengan surat permohonan pencairan dan nama kegiatan pada form pengajuan RKAT ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(660, 246, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(661, 246, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(662, 246, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(663, 246, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(664, 246, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(665, 247, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(666, 247, 24, 0, 'Direktur Keuangan - mohon dilengkapi dengan surat', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(667, 247, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(668, 247, 24, 0, 'Direktur Keuangan - mohon dilengkapi dengan surat permohonan pencairan dan nama kegiatan pada form pengajuan RKAT ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(669, 247, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(670, 247, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(671, 247, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(672, 247, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(673, 247, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(674, 248, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(675, 248, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(676, 248, 24, 0, 'Direktur Keuangan - mohon maaf pengajuannya kami tolak dulu ya, mohon dirincikan lagi RAB nya', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(677, 248, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(678, 248, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(679, 248, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(680, 248, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(681, 250, 114, 1, 'UPT  Career Development Center - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(682, 250, 21, 0, 'Sekniv - revisi', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(683, 250, 21, 0, 'Sekniv - revisi', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(684, 250, 114, 1, 'UPT  Career Development Center - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(685, 250, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(686, 250, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(687, 250, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(688, 250, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(689, 251, 114, 1, 'UPT  Career Development Center - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(690, 251, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(691, 251, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(692, 251, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(693, 251, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(694, 251, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(695, 251, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(696, 252, 64, 1, 'Pusat bahasa - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(697, 252, 21, 0, 'Sekniv - perbaiki biaya program, agar dijadikan sama dengan nominal RKAT pada program terkait', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(698, 252, 64, 1, 'Pusat bahasa - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(699, 252, 64, 1, 'Pusat bahasa - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(700, 252, 64, 1, 'Pusat bahasa - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(701, 252, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(702, 252, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(703, 252, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(704, 252, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(705, 252, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(706, 252, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(707, 253, 67, 1, 'Lembaga Psikologi Terapan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(708, 253, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(709, 253, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(710, 253, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(711, 253, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(712, 253, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(713, 254, 67, 1, 'Lembaga Psikologi Terapan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(714, 254, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(715, 254, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(716, 254, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(717, 254, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(718, 255, 67, 1, 'Lembaga Psikologi Terapan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(719, 255, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(720, 255, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(721, 255, 23, 2, 'Warek II Keuangan - tidak boleh ada honor karena merupakan tupoksi.  Yang lain OK', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(722, 255, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(723, 255, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(724, 272, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(725, 272, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(726, 272, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(727, 272, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(728, 272, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(729, 283, 80, 1, 'Fakultas Teknologi Pertanian - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(730, 283, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(731, 283, 23, 2, 'Warek II Keuangan - di acc sebesar  Rp. 1.355.000', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(732, 283, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(733, 283, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(734, 284, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(735, 284, 24, 2, 'Direktur Keuangan - akan dicairkan, akan tetapi mohon diperbaiki RAB nya (dilengkapi dengan nama dan no. rekening)', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(736, 284, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(737, 284, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(738, 285, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(739, 285, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(740, 285, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(741, 285, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(742, 285, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(743, 297, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(744, 297, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(745, 297, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(746, 297, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(747, 297, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(748, 297, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(749, 297, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(750, 297, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(751, 297, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(752, 297, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(753, 297, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(754, 297, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(755, 297, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(756, 297, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(757, 297, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(758, 301, 111, 1, 'Fakultas Rekayasa Sistem - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(759, 301, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(760, 301, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(761, 301, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(762, 301, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(763, 301, 111, 1, 'Fakultas Rekayasa Sistem - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(764, 301, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(765, 306, 81, 1, 'Fakultas Teknobiologi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(766, 306, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(767, 306, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(768, 306, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(769, 306, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(770, 310, 112, 1, 'Metalurgi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(771, 310, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(772, 310, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(773, 310, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(774, 310, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(775, 310, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(776, 340, 69, 1, 'Beasiswa - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(777, 340, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(778, 340, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(779, 340, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(780, 340, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(781, 340, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(782, 341, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(783, 341, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(784, 341, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(785, 341, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(786, 341, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(787, 341, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(788, 341, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(789, 341, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(790, 341, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(791, 341, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(792, 341, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(793, 341, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(794, 369, 64, 1, 'Pusat bahasa - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(795, 369, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(796, 369, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(797, 369, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(798, 369, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(799, 369, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(800, 369, 64, 1, 'Pusat bahasa - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(801, 370, 97, 1, 'Teknik Mesin - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(802, 370, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(803, 370, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(804, 370, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(805, 370, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(806, 371, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(807, 371, 58, 2, 'Warek 1 Akademik - diperbaiki RAB nya', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(808, 371, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(809, 371, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(810, 371, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(811, 371, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(812, 371, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(813, 371, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(814, 371, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Kegiatan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(815, 371, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Kegiatan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(816, 374, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(817, 374, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(818, 374, 24, 2, 'Direktur Keuangan - on progress', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(819, 374, 23, 2, 'Warek II Keuangan - cairkan 500 saja', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(820, 374, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(821, 377, 112, 1, 'Metalurgi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(822, 377, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(823, 381, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(824, 381, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(825, 381, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(826, 381, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(827, 381, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(828, 381, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(829, 383, 70, 1, 'Direktorat Riset & Inovasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(830, 383, 56, 2, 'Warek 3 Riset & Inovasi - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(831, 383, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(832, 383, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(833, 383, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(834, 383, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(835, 384, 70, 1, 'Direktorat Riset & Inovasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(836, 384, 56, 2, 'Warek 3 Riset & Inovasi - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(837, 384, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(838, 384, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(839, 384, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(840, 384, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(841, 389, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(842, 389, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(843, 389, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(844, 389, 23, 2, 'Warek II Keuangan - cair 800.000', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(845, 389, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(846, 389, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(847, 389, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(848, 389, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(849, 389, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(850, 389, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(851, 389, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(852, 389, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(853, 395, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(854, 395, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(855, 395, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(856, 395, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(857, 395, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(858, 396, 77, 1, 'Badan Pengembangan Karakter & Hubungan Ortu - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(859, 407, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(860, 407, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(861, 407, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(862, 407, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(863, 410, 63, 1, 'Perpustakaan - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(864, 410, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(865, 410, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(866, 410, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(867, 410, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(868, 410, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(869, 411, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(870, 411, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(871, 411, 24, 2, 'Direktur Keuangan - on progress RAB dikeuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(872, 411, 23, 2, 'Warek II Keuangan - 750 cairnya', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(873, 411, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(874, 415, 80, 1, 'Fakultas Teknologi Pertanian - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(875, 415, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(876, 415, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(877, 415, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(878, 183, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(879, 183, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(880, 183, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar, siapa pemateri nya ? konsumsi untuk berapa orang? mohon RAB di submit dalam bentuk pdf', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(881, 183, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(882, 183, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(883, 183, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(884, 185, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(885, 185, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(886, 185, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar, RAB di kirim dg file PDF, RAB minta yg lebih detail (konsumsi untuk berapa orang? perorang nya berapa?)', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(887, 185, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(888, 187, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(889, 187, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(890, 187, 23, 0, 'Warek II Keuangan - surat pengantar mohon di submit, untuk RAB minta yg lebih detail, mohon file dikirim dalam bentuk pdf.', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(891, 187, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(892, 187, 23, 0, 'Warek II Keuangan - revisi', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(893, 187, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(894, 187, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(895, 187, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(896, 212, 84, 1, 'Informatika - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(897, 212, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(898, 212, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(899, 212, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(900, 212, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(901, 212, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(902, 212, 84, 1, 'Informatika - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(903, 212, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(904, 229, 71, 1, 'Direktorat Pengabdian Kepada Masyarakat - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(905, 229, 56, 2, 'Warek 3 Riset & Inovasi - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(906, 229, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(907, 229, 23, 2, 'Warek II Keuangan - Akan dicairkan jika sudah melengkapi administrasi yaitu keputusan tentang tim dan nama2 yang lolos hibah internal PKM dosen, dan berapa dana masing-masing Tim PKM, dan nama PJ dan no rekening PJ Tim', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(908, 229, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(909, 229, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(910, 244, 70, 1, 'Direktorat Riset & Inovasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(911, 244, 56, 2, 'Warek 3 Riset & Inovasi - Gaskeun', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(912, 244, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(913, 244, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(914, 244, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(915, 244, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(916, 258, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(917, 258, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(918, 258, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(919, 258, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(920, 258, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(921, 258, 79, 1, 'Fakultas Ekonomi & Bisnis - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(922, 258, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(923, 260, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(924, 260, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(925, 260, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(926, 260, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(927, 260, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(928, 260, 79, 1, 'Fakultas Ekonomi & Bisnis - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(929, 260, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(930, 262, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(931, 262, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(932, 262, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(933, 262, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(934, 278, 71, 1, 'Direktorat Pengabdian Kepada Masyarakat - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(935, 278, 56, 2, 'Warek 3 Riset & Inovasi - Oke mantab', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(936, 278, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(937, 278, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(938, 278, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(939, 278, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(940, 307, 112, 1, 'Metalurgi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(941, 307, 89, 2, 'Fakultas Teknik Lingkugan dan Mineral - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(942, 307, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(943, 307, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(944, 307, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(945, 336, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(946, 336, 58, 2, 'Warek 1 Akademik - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(947, 336, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(948, 336, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(949, 336, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(950, 336, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(951, 350, 21, 1, 'Sekniv - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(952, 350, 24, 0, 'Direktur Keuangan - Revisi', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(953, 350, 21, 1, 'Sekniv - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(954, 350, 24, 0, 'Direktur Keuangan - mohon diubah kode RKAT sesuaikan dengan kode RKATP sekniv', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(955, 350, 21, 1, 'Sekniv - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(956, 350, 21, 1, 'Sekniv - Update pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(957, 350, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(958, 350, 23, 2, 'Warek II Keuangan - untuk tempat diarahkan ke raberas resto', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(959, 350, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(960, 350, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(961, 352, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(962, 352, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(963, 352, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(964, 352, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(965, 353, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(966, 353, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(967, 353, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(968, 353, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(969, 359, 111, 1, 'Fakultas Rekayasa Sistem - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(970, 359, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(971, 359, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(972, 359, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(973, 397, 78, 1, 'Sekolah Pascasarjana - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(974, 397, 24, 0, 'Direktur Keuangan - mohon di upload ulang ', '2022-01-13 02:22:09', '2022-01-13 02:22:09');
INSERT INTO `pengajuan_validasi` (`id_validasi`, `id_pengajuan`, `id_struktur`, `status_validasi`, `message`, `created_at`, `updated_at`) VALUES
(975, 406, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(976, 419, 65, 1, 'UTS School of Public Speaking - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(977, 419, 21, 2, 'Sekniv - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(978, 423, 113, 1, 'Asrama - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(979, 426, 78, 1, 'Sekolah Pascasarjana - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(980, 186, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(981, 186, 24, 2, 'Direktur Keuangan - mohon untuk dirincikan nama-nama dosen yang menerima dana talangan publikasi', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(982, 186, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(983, 186, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(984, 202, 74, 1, 'Direktorat Kerjasama Luar Negeri - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(985, 202, 117, 2, 'Warek IV Kerjasama - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(986, 213, 84, 1, 'Informatika - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(987, 213, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(988, 293, 81, 1, 'Fakultas Teknobiologi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(989, 293, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(990, 293, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(991, 293, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(992, 293, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(993, 324, 97, 1, 'Teknik Mesin - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(994, 324, 111, 2, 'Fakultas Rekayasa Sistem - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(995, 324, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(996, 324, 23, 2, 'Warek II Keuangan - untuk konsumsi 500 saja', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(997, 324, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(998, 347, 54, 1, 'Fakultas Ilmu Komunikasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(999, 347, 24, 2, 'Direktur Keuangan - untuk biaya pemateri yang dibayarkan hanya Mauro saja, dan akan ditransfer oleh tim keuangan.', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1000, 347, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1001, 347, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1002, 347, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1003, 347, 54, 1, 'Fakultas Ilmu Komunikasi - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1004, 347, 121, 0, 'Direktur Keuangan (LPJ) - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1005, 356, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1006, 356, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1007, 356, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1008, 356, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1009, 356, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1010, 356, 79, 1, 'Fakultas Ekonomi & Bisnis - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1011, 356, 79, 1, 'Fakultas Ekonomi & Bisnis - Upload LPJ Keuangan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1012, 356, 24, 4, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1013, 372, 80, 1, 'Fakultas Teknologi Pertanian - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1014, 372, 24, 2, 'Direktur Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1015, 372, 23, 2, 'Warek II Keuangan - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1016, 372, 22, 2, 'Rektor - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1017, 372, 24, 3, 'Direktur Keuangan (Pencairan) - Telah dilakukan pencairan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1018, 380, 70, 1, 'Direktorat Riset & Inovasi - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1019, 380, 56, 2, 'Warek 3 Riset & Inovasi - ', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1020, 418, 79, 1, 'Fakultas Ekonomi & Bisnis - Input pengajuan', '2022-01-13 02:22:09', '2022-01-13 02:22:09'),
(1021, 435, 21, 1, '0 Input pengajuan', '2022-01-13 08:26:13', '2022-01-13 08:26:13'),
(1022, 436, 21, 1, '0 Input pengajuan', '2022-01-13 08:26:23', '2022-01-13 08:26:23'),
(1023, 438, 21, 1, '0 Input pengajuan', '2022-01-13 08:28:34', '2022-01-13 08:28:34'),
(1024, 441, 21, 1, '0 Input pengajuan', '2022-01-13 08:34:28', '2022-01-13 08:34:28'),
(1025, 444, 21, 1, '0 Input pengajuan', '2022-01-14 01:56:18', '2022-01-14 01:56:18'),
(1026, 445, 21, 1, '0 Input pengajuan', '2022-01-14 02:02:36', '2022-01-14 02:02:36'),
(1027, 446, 21, 1, 'Sekniv Input pengajuan', '2022-01-14 02:05:16', '2022-01-14 02:05:16'),
(1028, 446, 24, 0, 'Sekniv kwkkw', '2022-01-14 02:12:02', '2022-01-14 02:12:02'),
(1029, 446, 24, 0, 'Direktur Keuangan OKE', '2022-01-14 02:20:48', '2022-01-14 02:20:48'),
(1030, 446, 24, 2, 'Direktur Keuangan OKE', '2022-01-14 02:20:57', '2022-01-14 02:20:57'),
(1031, 447, 21, 1, 'Sekniv Input pengajuan', '2022-01-14 02:25:57', '2022-01-14 02:25:57'),
(1032, 447, 24, 0, 'Direktur Keuangan kwkkw', '2022-01-14 02:45:00', '2022-01-14 02:45:00'),
(1037, 447, 21, 1, 'Sekniv Update pengajuan', '2022-01-14 03:12:21', '2022-01-14 03:12:21'),
(1038, 447, 24, 0, 'Direktur Keuangan Terima mo LPJ ta', '2022-01-14 03:13:53', '2022-01-14 03:13:53'),
(1039, 447, 24, 2, 'Direktur Keuangan Terima mo LPJ ta', '2022-01-14 03:14:31', '2022-01-14 03:14:31'),
(1040, 447, 23, 0, 'Warek II Keuangan kwkkw', '2022-01-14 07:01:26', '2022-01-14 07:01:26'),
(1041, 447, 23, 2, 'Warek II Keuangan Terima mo', '2022-01-14 07:01:42', '2022-01-14 07:01:42'),
(1042, 447, 22, 0, 'Rektor Tolak dunung gina', '2022-01-17 10:19:20', '2022-01-17 10:19:20'),
(1043, 447, 22, 2, 'Rektor Terima mo', '2022-01-17 10:19:48', '2022-01-17 10:19:48'),
(1044, 447, 24, 7777, 'Direktur Keuangan - Pencairan dana sebesar Rp. 23232', '2022-01-17 10:32:41', '2022-01-17 10:32:41'),
(1045, 447, 24, 7777, 'Direktur Keuangan - Pencairan dana sebesar Rp. 23234234', '2022-01-17 10:33:03', '2022-01-17 10:33:03'),
(1046, 447, 24, 3, 'Direktur Keuangan (Pencairan) Pencairan selesai', '2022-01-17 10:49:12', '2022-01-17 10:49:12'),
(1048, 447, 21, 1, 'Sekniv Upload LPJ Keuangan', '2022-01-17 11:15:21', '2022-01-17 11:15:21'),
(1049, 447, 121, 0, 'Direktur Keuangan (LPJ) OKE', '2022-01-17 11:26:04', '2022-01-17 11:26:04'),
(1050, 447, 24, 4, 'Direktur Keuangan Terima mo LPJ ta', '2022-01-17 11:31:13', '2022-01-17 11:31:13'),
(1051, 447, 21, 1, 'Sekniv Upload LPJ Kegiatan', '2022-01-17 11:31:40', '2022-01-17 11:31:40'),
(1052, 447, 21, 0, 'Sekniv OKE', '2022-01-17 11:32:22', '2022-01-17 11:32:22'),
(1053, 447, 21, 4, 'Sekniv Terima mo LPJ ta', '2022-01-17 11:32:46', '2022-01-17 11:32:46'),
(1054, 233, 21, 4, 'Sekniv Terima mo', '2022-01-17 16:15:13', '2022-01-17 16:15:13'),
(1055, 448, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 13:53:33', '2022-02-08 13:53:33'),
(1056, 449, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 13:56:22', '2022-02-08 13:56:22'),
(1057, 450, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 13:59:00', '2022-02-08 13:59:00'),
(1058, 451, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 14:01:52', '2022-02-08 14:01:52'),
(1059, 452, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:37:21', '2022-02-08 16:37:21'),
(1060, 453, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:39:52', '2022-02-08 16:39:52'),
(1061, 454, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:41:27', '2022-02-08 16:41:27'),
(1062, 455, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:41:57', '2022-02-08 16:41:57'),
(1063, 456, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:43:04', '2022-02-08 16:43:04'),
(1064, 457, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:45:30', '2022-02-08 16:45:30'),
(1065, 458, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:47:33', '2022-02-08 16:47:33'),
(1066, 459, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:49:57', '2022-02-08 16:49:57'),
(1067, 460, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:51:02', '2022-02-08 16:51:02'),
(1068, 461, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:54:15', '2022-02-08 16:54:15'),
(1069, 462, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:56:19', '2022-02-08 16:56:19'),
(1070, 463, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:58:09', '2022-02-08 16:58:09'),
(1071, 464, 24, 1, 'Direktur Keuangan Input pengajuan', '2022-02-08 16:59:39', '2022-02-08 16:59:39'),
(1074, 426, 24, 0, 'Direktorat Keuangan List pencairan (Pending)', '2022-02-09 01:39:18', '2022-02-09 01:39:34'),
(1075, 420, 24, 0, 'Direktorat Keuangan List pencairan (Pending)', '2022-02-09 02:05:35', '2022-02-09 02:06:24'),
(1076, 419, 24, 0, 'Direktorat Keuangan List pencairan (Pending)', '2022-02-09 02:05:37', '2022-02-09 02:06:19'),
(1077, 426, 24, 0, 'Direktorat Keuangan List pencairan (Pending)', '2022-02-09 03:19:44', '2022-02-09 03:19:48'),
(1078, 426, 24, 0, 'Direktorat Keuangan List pencairan (Pending)', '2022-02-09 03:38:34', '2022-02-09 03:38:45'),
(1079, 420, 24, 0, 'Direktorat Keuangan List pencairan (Pending)', '2022-02-09 03:38:36', '2022-02-09 03:38:47'),
(1080, 426, 24, 0, 'Direktorat Keuangan List pencairan (Pending)', '2022-02-09 03:39:39', '2022-02-09 03:39:42'),
(1081, 426, 24, 2, 'Direktorat Keuangan List pencairan', '2022-02-09 04:04:41', '2022-02-09 04:04:41'),
(1082, 420, 24, 2, 'Direktorat Keuangan List pencairan', '2022-02-09 04:04:44', '2022-02-09 04:04:44'),
(1083, 419, 24, 0, 'Direktorat Keuangan List pencairan (Pending)', '2022-02-09 05:03:08', '2022-02-09 05:06:23'),
(1084, 419, 24, 2, 'Direktorat Keuangan List pencairan', '2022-02-09 05:06:51', '2022-02-09 05:06:51'),
(1085, 419, 23, 2, 'Warek II Keuangan ', '2022-02-09 05:24:24', '2022-02-09 05:24:24'),
(1086, 419, 22, 2, 'Rektor ', '2022-02-09 05:26:26', '2022-02-09 05:26:26'),
(1087, 343, 24, 7777, 'Direktur Keuangan - Pencairan dana sebesar Rp. 232323232232', '2022-02-09 05:28:16', '2022-02-09 05:28:16'),
(1088, 343, 24, 3, 'Direktur Keuangan Pencairan selesai', '2022-02-09 05:28:23', '2022-02-09 05:28:23'),
(1089, 419, 24, 7777, 'Direktur Keuangan - Pencairan dana sebesar Rp. 232323232232', '2022-02-09 05:29:37', '2022-02-09 05:29:37'),
(1090, 419, 24, 3, 'Direktur Keuangan Pencairan selesai', '2022-02-09 05:29:46', '2022-02-09 05:29:46'),
(1091, 419, 65, 1, 'UTS School of Public Speaking Upload LPJ Keuangan', '2022-02-09 05:32:20', '2022-02-09 05:32:20'),
(1092, 419, 24, 4, 'Direktur Keuangan Terima mo', '2022-02-09 05:33:32', '2022-02-09 05:33:32'),
(1093, 419, 65, 1, 'UTS School of Public Speaking Upload LPJ Kegiatan', '2022-02-09 05:34:00', '2022-02-09 05:34:00'),
(1095, 464, 23, 2, 'Warek II Keuangan Terima mo', '2022-02-09 05:50:20', '2022-02-09 05:50:20'),
(1096, 464, 24, 0, 'Direktorat Keuangan List pencairan (Pending)', '2022-02-09 05:54:27', '2022-02-09 05:54:57'),
(1097, 465, 57, 1, 'Direktorat Sistem &Teknologi Informasi Input pengajuan', '2022-02-09 05:56:27', '2022-02-09 05:56:27'),
(1098, 465, 56, 0, 'Warek 3 Riset & Inovasi Terima mo', '2022-02-09 05:57:05', '2022-02-09 05:57:05'),
(1099, 465, 57, 1, 'Direktorat Sistem &Teknologi Informasi Update pengajuan', '2022-02-09 05:58:06', '2022-02-09 05:58:06'),
(1100, 465, 56, 0, 'Warek 3 Riset & Inovasi kwkkw', '2022-02-09 05:59:14', '2022-02-09 05:59:14'),
(1101, 465, 57, 1, 'Direktorat Sistem &Teknologi Informasi Update pengajuan', '2022-02-09 05:59:58', '2022-02-09 05:59:58'),
(1102, 465, 56, 0, 'Warek 3 Riset & Inovasi kwkkw', '2022-02-09 06:01:49', '2022-02-09 06:01:49'),
(1103, 465, 57, 1, 'Direktorat Sistem &Teknologi Informasi Update pengajuan', '2022-02-09 06:02:24', '2022-02-09 06:02:24'),
(1104, 465, 56, 0, 'Warek 3 Riset & Inovasi kwkkw', '2022-02-09 06:03:09', '2022-02-09 06:03:09'),
(1105, 465, 57, 1, 'Direktorat Sistem &Teknologi Informasi Update pengajuan', '2022-02-09 06:03:49', '2022-02-09 06:03:49'),
(1106, 465, 56, 2, 'Warek 3 Riset & Inovasi Terima mo', '2022-02-09 06:04:20', '2022-02-09 06:04:20'),
(1107, 465, 24, 2, 'Direktorat Keuangan List pencairan', '2022-02-09 06:05:11', '2022-02-09 06:05:11'),
(1108, 466, 57, 1, 'Direktorat Sistem &Teknologi Informasi Input pengajuan', '2022-02-09 06:36:47', '2022-02-09 06:36:47'),
(1109, 466, 56, 2, 'Warek 3 Riset & Inovasi Terima mo', '2022-02-09 06:40:09', '2022-02-09 06:40:09'),
(1110, 466, 24, 2, 'Direktorat Keuangan List pencairan', '2022-02-09 06:41:25', '2022-02-09 06:41:25'),
(1111, 467, 57, 1, 'Direktorat Sistem &Teknologi Informasi Input pengajuan', '2022-02-09 07:00:31', '2022-02-09 07:00:31'),
(1112, 467, 56, 2, 'Warek 3 Riset & Inovasi Terima mo', '2022-02-09 07:01:31', '2022-02-09 07:01:31'),
(1113, 467, 24, 2, 'Direktorat Keuangan List pencairan', '2022-02-09 07:02:46', '2022-02-09 07:02:46'),
(1114, 418, 24, 2, 'Direktorat Keuangan List pencairan', '2022-02-09 07:20:03', '2022-02-09 07:20:03'),
(1115, 415, 24, 2, 'Direktorat Keuangan List pencairan', '2022-02-09 07:20:46', '2022-02-09 07:20:46'),
(1116, 418, 23, 2, 'Warek II Keuangan ', '2022-02-09 07:28:12', '2022-02-09 07:28:12'),
(1117, 415, 23, 2, 'Warek II Keuangan ', '2022-02-09 07:28:13', '2022-02-09 07:28:13'),
(1118, 418, 22, 2, 'Rektor ', '2022-02-09 07:29:20', '2022-02-09 07:29:20'),
(1119, 415, 22, 2, 'Rektor ', '2022-02-09 07:29:22', '2022-02-09 07:29:22'),
(1120, 420, 24, 7777, 'Direktur Keuangan - Pencairan dana sebesar Rp. 1200000', '2022-02-09 07:41:04', '2022-02-09 07:41:04'),
(1121, 420, 24, 3, 'Direktur Keuangan Pencairan selesai', '2022-02-09 07:44:48', '2022-02-09 07:44:48'),
(1122, 275, 24, 7777, 'Direktur Keuangan - Pencairan dana sebesar Rp. 2000000', '2022-02-09 07:46:47', '2022-02-09 07:46:47'),
(1123, 275, 24, 3, 'Direktur Keuangan Pencairan selesai', '2022-02-09 07:46:53', '2022-02-09 07:46:53'),
(1124, 275, 57, 1, 'Direktorat Sistem &Teknologi Informasi Upload LPJ Keuangan', '2022-02-09 07:47:20', '2022-02-09 07:47:20'),
(1125, 275, 24, 4, 'Direktur Keuangan Terima mo LPJ ta', '2022-02-09 07:58:04', '2022-02-09 07:58:04'),
(1126, 275, 57, 1, 'Direktorat Sistem &Teknologi Informasi Upload LPJ Kegiatan', '2022-02-09 07:58:31', '2022-02-09 07:58:31'),
(1127, 275, 21, 4, 'Sekniv Terima mo oleh pak rektor', '2022-02-09 07:59:44', '2022-02-09 07:59:44'),
(1128, 467, 23, 2, 'Warek II Keuangan ', '2022-02-10 05:38:21', '2022-02-10 05:38:21'),
(1129, 175, 24, 0, 'Direktorat Keuangan wewewewewe', '2022-02-10 07:20:24', '2022-02-10 07:20:24'),
(1130, 175, 24, 4, 'Direktorat Keuangan wdwdwdwdw', '2022-02-10 07:20:43', '2022-02-10 07:20:43'),
(1131, 302, 24, 0, 'Direktorat Keuangan Tolak', '2022-02-10 07:21:47', '2022-02-10 07:21:47'),
(1132, 302, 24, 4, 'Direktorat Keuangan Terima', '2022-02-10 07:22:13', '2022-02-10 07:22:13'),
(1133, 419, 21, 0, 'Sekniv TOLAK AHAHHAHAHA', '2022-02-10 07:29:12', '2022-02-10 07:29:12'),
(1134, 419, 21, 4, 'Sekniv AHHAHAHAH OKEMO', '2022-02-10 07:29:49', '2022-02-10 07:29:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `period`
--

CREATE TABLE `period` (
  `id_period` int(11) NOT NULL,
  `period` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `period`
--

INSERT INTO `period` (`id_period`, `period`, `created_at`, `updated_at`) VALUES
(1, 'Minggu 1 Januari 2022', '2022-02-01 14:39:16', '2022-02-10 14:39:16'),
(2, 'List pencairan Periode minggu 2 februari', '2022-02-08 14:39:16', '2022-02-10 14:39:16'),
(3, 'werwerwe', '2022-02-10 14:39:16', '2022-02-10 14:39:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `print`
--

CREATE TABLE `print` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `print`
--

INSERT INTO `print` (`id`, `id_user`, `id_pengajuan`) VALUES
(131, 23, 465),
(138, 24, 418),
(139, 24, 415),
(140, 22, 467),
(142, 121, 175);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rab`
--

CREATE TABLE `rab` (
  `id_rab` int(11) NOT NULL,
  `pengajuan_id` int(11) NOT NULL,
  `jenis_barang` varchar(255) NOT NULL,
  `harga_satuan` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rab`
--

INSERT INTO `rab` (`id_rab`, `pengajuan_id`, `jenis_barang`, `harga_satuan`, `qty`, `total`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 467, 'Makan siang', '15000', '12', '180000', 'untuk makan siang', '2022-02-09 07:00:31', '2022-02-09 07:00:31'),
(2, 467, 'Minuman', '5000', '12', '60000', 'untuk minuman', '2022-02-09 07:00:31', '2022-02-09 07:00:31'),
(3, 467, 'Kopi', '1500', '12', '18000', 'Ngopi bos', '2022-02-09 07:00:31', '2022-02-09 07:00:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rkat`
--

CREATE TABLE `rkat` (
  `id_rkat` int(11) NOT NULL,
  `kode_rkat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `sasaran_strategi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `indikator_sasaran_strategi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_program` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_kerja` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai_program` date NOT NULL,
  `selesai_program` date NOT NULL,
  `tempat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_anggaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rencana_anggaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_anggaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggaran_digunakan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rkat`
--

INSERT INTO `rkat` (`id_rkat`, `kode_rkat`, `id_user`, `sasaran_strategi`, `indikator_sasaran_strategi`, `nama_program`, `program_kerja`, `deskripsi`, `tujuan`, `mulai_program`, `selesai_program`, `tempat`, `sumber_anggaran`, `rencana_anggaran`, `total_anggaran`, `anggaran_digunakan`, `created_at`, `updated_at`) VALUES
(69, 'WR1-01', 61, 'Pegawai', 'Sumberdaya Manusia', 'Penyusunan dan Pengesahan SOP terkait Kepegawaian', 'Penyusunan dan Pengesahan SOP terkait Kepegawaian', 'Kegiatan penyusunan Standart Operasional Prosedur terkait Kepegawaian seperti SOP Rekrutmen,SOP Rotasi, dll', 'Pegawai', '2021-04-01', '2021-04-24', 'UTS', 'kampus', '1000000', '1000000', '0', '2021-07-27', '2021-07-27'),
(71, 'WR1-05', 61, 'Rekrutmen', 'Tenaga Pendidik Baru', 'Rekrutmen Dosen dan Tenaga kependidikan 2021', 'Rekrutmen Dosen dan Tenaga kependidikan 2021', 'Kegiatan pasca Pemetaan Kebutuhan dan Analisis Kebutuhan Beban Kerja, melengkapi kekurangan SDM dengan melakukan Open Recruitment baik Dosen dan Tendik', 'rekrutmen', '2021-06-01', '2021-07-01', 'kampus', 'Kampus', '1000000', '1000000', '0', '2021-07-27', '2021-07-27'),
(72, 'WR1-11', 61, 'Kaprodi & Sekpro', 'Seluruh Kaprodi', 'Managing People Effectively (Kaprodi & Sekpro)', 'Managing People Effectively (Kaprodi & Sekpro)', 'Membantu para Pengelola Program Studi dalam meningkatkan kapasitas dirinya agar mampu melaksanakan tugas dan tanggung jawabnya sebagai pimpinan dalam lingkup jabatannya masing -masing sehingga tatakelola akademik Universitas dapat berjalan optimal', 'Managing People Effectively (Kaprodi & Sekpro)', '2021-09-01', '2021-09-30', 'Univeristas', 'Kampus', '5000000', '5000000', '5000000', '2021-07-27', '2021-12-07'),
(73, 'WR1-12', 61, 'Dekan & Wadek', 'Seluruh Dekan Se-Universitas', 'Project Management (Dekan & Wadek)', 'Project Management (Dekan & Wadek)', 'Membantu para Pengelola Fakultas dalam meningkatkan kapasitas dirinya agar mampu menyusun projek penataan dan pengembangan fakultas', 'Project Management (Dekan & Wadek)', '2021-11-01', '2021-11-30', 'UTS', 'kampus', '5000000', '5000000', '0', '2021-07-27', '2021-07-30'),
(74, 'WR1-18', 61, 'Rekrutmen', 'Sumber daya manusia baru', 'Rekrutmen Dosen S3', 'Rekrutmen Dosen S3', 'Melakukan rekrutmen Dosen dengan gelar Doktor', 'Melakukan rekrutmen Dosen dengan gelar Doktor', '2021-12-01', '2021-12-30', 'UTS', 'Universitas', '2000000', '3000000', '0', '2021-07-27', '2021-07-27'),
(75, 'WR1-28', 61, 'Mahasiswa', 'Panduan', 'Buku Panduan Akademik', 'Buku Panduan Akademik', 'Pembuatan (cetak) Buku Peraturan Akademik', 'Pembuatan (cetak) Buku Peraturan Akademik', '2021-08-01', '2021-08-31', 'Kampus', 'universitas', '4500000', '5000000', '0', '2021-07-27', '2021-07-30'),
(78, 'WR2-01', 23, 'Pembangunan UTS', 'Periode 2020 - 2024', 'Pembuatan Master Plan Pembangunan UTS selama 2020-2024', 'Pembuatan Master Plan Pembangunan UTS selama 2020-2024', 'Pembuatan Master Plan Pembangunan UTS selama 2020-2024 agar terbentuknya city of inovatio', 'Pembuatan Master Plan Pembangunan UTS selama 2020-2024 agar terbentuknya city of inovatio', '2021-08-01', '2021-08-31', 'Kawasan Univerisitas', 'Kampus', '10000000', '10000000', '0', '2021-07-27', '2021-07-28'),
(79, 'WR2-09', 23, 'Penyediaan', 'fasilitas', 'Penyediaan Fasilitas Pendukung dan suporting kegiatan Tri Darma Perguruan Tinggi', 'Penyediaan Fasilitas Pendukung dan suporting kegiatan Tri Darma Perguruan Tinggi', 'Penyediaan Fasilitas Pendukung dan suporting kegiatan Tri Darma Perguruan Tinggi', 'Penyediaan Fasilitas Pendukung dan suporting kegiatan Tri Darma Perguruan Tinggi', '2021-08-04', '2021-08-31', 'Kampus', 'universitas', '120000000', '120000000', '0', '2021-07-27', '2021-07-28'),
(80, 'WR2-15', 68, 'Seluruh civitas akademika', 'Universitas', 'Pengadaan Sistem Informasi Sarana dan Prasarana (SISAPA)', 'Pengadaan Sistem Informasi Sarana dan Prasarana (SISAPA)', 'Pengadaan Sistem Informasi Sarana dan Prasarana (SISAPA) yang berguna untuk Sistem Pemeliharaan Peralatan, Peminjaman, Managemen Ruangan hingga Perhitungan nilai aset hingga penyusutan maupun proses Pengadaan, Penyusunan RAB di DPPP', 'Pengadaan Sistem Informasi Sarana dan Prasarana (SISAPA)', '2021-11-01', '2021-11-23', 'Univeristas Teknologi Sumbawa', 'universitas', '7500000', '7500000', '0', '2021-07-28', '2021-07-28'),
(81, 'WR2-10', 68, 'unit', 'kampus', 'Menjaga keberlangsungan', 'Menjaga keberlangsungan dan kegunaan fasilitas', 'Pemeliharaan Peralatan Kampus dari elektronik, sublimesiber, instalasi Air, instalasi listrik,Bus, Kendaraan Operaional dll', 'Menjaga keberlangsungan dan kegunaan fasilitas penunjang peraltan kampus agar menimalisir ke', '2021-08-01', '2021-12-31', 'Kawasan Univerisitas', 'Kampus', '30000000', '30000000', '14760000', '2021-07-28', '2021-12-17'),
(82, 'WR2-16', 24, 'Pengadaan sistem informasi penggajian pegawai', 'Gaji Pegawai', 'Pengadaan sistem informasi penggajian pegawai', 'Pengadaan sistem informasi penggajian pegawai', 'pembuatan aplikasi informasi data gaji pegawai', 'pembuatan aplikasi informasi data gaji pegawai', '2021-09-01', '2021-09-30', 'Univerisitas', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(83, 'WR2-17', 24, 'Sistem Keuangan', 'pengadaan sistem pelaporan', 'pengadaan sistem pelaporan keuangan', 'pengadaan sistem pelaporan keuangan', 'pengadaan aplikasi sistem pelaporan keuangan yang terintegrasi', 'pengadaan aplikasi sistem pelaporan keuangan yang terintegrasi', '2021-10-01', '2021-10-31', 'Universitas', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(84, 'WR2-18', 24, 'Administrasi Keuangan', 'Pengadaan sistem administrasi', 'Pengadaan sistem administrasi keuangan', 'pembuatan sistem tata kelola administrasi yang lebih rapi', 'pembuatan sistem tata kelola administrasi yang lebih rapi', 'pembuatan sistem tata kelola administrasi yang lebih rapi', '2021-09-01', '2021-09-30', 'Universitas', 'universitas', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(85, 'WR2-19', 23, 'Seluruh Unit', 'Sosialisasi', 'Kegiatan sosialiasi penyusunan laporan keuangan semua unit', 'Kegiatan sosialiasi penyusunan laporan keuangan semua unit', 'sosialsi penuyunan pelaporan keuangan yang bak dan benar dilaksanakan selama 1 hari dengan semua unit', 'sosialsi penuyunan pelaporan keuangan yang bak dan benar', '2021-10-01', '2021-10-31', 'Kawasan Universitas', 'universitas', '7000000', '7000000', '0', '2021-07-28', '2021-07-28'),
(86, 'WR2-20', 23, 'Setiap Unit', 'Audit Keuangan', 'Kegiatan audit internal keuangan dari setiap unit', 'Kegiatan audit internal keuangan dari setiap unit', 'menguji dan mengevaluasi sistem pelaporan keuangan dari setiap unit universitas', 'menguji dan mengevaluasi sistem pelaporan keuangan dari setiap unit', '2021-11-01', '2021-11-30', 'Universitas', 'Kampus', '7000000', '7000000', '0', '2021-07-28', '2021-07-28'),
(87, 'WR2-21', 23, 'Mahasiswa', 'Verifikasi', 'Kegiatan Verifikasi data administrasi keuangan mahasiswa', 'Kegiatan Verifikasi data administrasi keuangan mahasiswa', 'pengecekan/ pemeriksaan kembali data pembayaran/administrasi keuangan mahasiswa yang dilakukan kepada semua angkatan dan prodi. Dilaksanakan dalam jangka waktu 14 hari', 'Kegiatan Verifikasi data administrasi keuangan mahasiswa', '2021-10-01', '2021-10-31', 'Universitas', 'universitas', '7000000', '7000000', '0', '2021-07-28', '2021-07-28'),
(88, 'WR2-22', 68, 'fasilitas', 'kampus', 'Penyediaan Fasitas penunjang', 'Penyediaan Fasitas penunjang', 'Pengadaan fasilitas pendukung seperti AC, PC ATK dll', 'Penyediaan Fasitas penunjang', '2021-08-01', '2021-08-31', 'Kawasan Univerisitas', 'universitas', '15000000', '15000000', '629000', '2021-07-28', '2021-12-09'),
(89, 'WR3-01', 70, 'Dosen', 'Proposal', 'Workshop series/Coaching Clinic', 'Workshop series/Coaching Clinic', 'Program pendampingan kepenulisan proposal penelitian dilakukan dengan metode work shop dan coaching clinic', 'Workshop series/Coaching Clinic', '2021-05-01', '2021-11-30', 'Universitas', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(90, 'WR3-05', 70, 'Research', 'Penelitian Dosen', 'Research tour', 'Research tour', 'Melakukan kunjungan dan membuat kontrak resmi yang disepakati antara kedua belah pihak', 'Research tour', '2021-08-01', '2021-08-31', 'Universitas', 'kampus', '10000000', '10000000', '0', '2021-07-28', '2021-07-28'),
(91, 'WR3-10', 70, 'Pendampingan dan inkubasi teknologi', 'Startup competition', 'Pendampingan dan inkubasi teknologi', 'Pendampingan dan inkubasi teknologi', '-Workshop pengembangan prototype\n-Pendampingan intensif', 'Pendampingan intensif', '2021-05-01', '2021-10-31', 'Universitas', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-08-05'),
(92, 'WR3-11', 71, 'Dosen Se-Universitas', 'Pengabdian Masyarakat', 'Hibah pendanaan pengabdian dosen', 'Hibah pendanaan pengabdian dosen', 'Pelaksanaan hibah pengabdian untuk dosen yang produktif membina dan mendampingi desa serta menghasilkan produk inovasi berbasis TTG', 'Hibah pendanaan pengabdian dosen', '2021-06-01', '2021-10-31', 'Kawasan Univerisitas', 'universitas', '12000000', '12000000', '12000000', '2021-07-28', '2021-12-13'),
(93, 'WR3-13', 71, 'Pengembagan Desa', 'Tim Ahli Pengembangan Desa', 'Follow up kegiatan program merdeka', 'Follow up kegiatan program merdeka', 'Pembentukan tim ahli desa dan dosen pembimbing magang di desa binaan', 'Tim Ahli Pengembangan Desa', '2021-11-01', '2021-11-30', 'Desa desa sekabupaten Sumbawa', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(94, 'WR3-17', 71, 'Penerbitan Tambora', 'OMP 2021', 'Penerbitan Tambora dan OMP 2021', 'Penerbitan Tambora dan OMP 2021', '- SK reviewer, editor, manajer dan keanggotaan yang berperan langsung dalam jurnal (Universita, Fakultas, dan Prodi)\n- Perbaikan kualitas artikel dan administrasi jurnal Universitas, Fakultas, dan Prodi\n- Meningkatkan kualitas buku yang diterbitkan oleh OMP sesuai dengan kriteria-kriteria yang telah ditentukan oleh Universitas\n- Bekerjasama dengan perusahaan setempat atau perusahaan nasional untuk memasarkan buku hasil dari karya dosen UTS', 'Penerbitan Tambora dan OMP 2021', '2021-08-01', '2021-08-01', 'Universitas', 'UTS', '1500000', '1500000', '0', '2021-07-28', '2021-07-28'),
(95, 'WR3-18', 71, 'Desa Desa', 'Inovasi desa', 'Inovasi desa', 'Inovasi desa', 'Membentuk tim penilai tingkat kesiapan teknologi inovasi suatu produk (KATSINOV)', 'Inovasi desa', '2021-09-01', '2021-09-30', 'Kawasan Univerisitas', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(96, 'WR3-19', 71, 'Produk Unggulan desa', 'Pengenalan sosialisasi', '(mengadakan expo hasil PKM)', 'mengadakan expo hasil PKM)', 'Perbaikan dan peningkatan kualitas produk unggulan/inovasi UTS', 'Perbaikan dan peningkatan kualitas produk unggulan/inovasi UTS', '2021-09-01', '2021-09-30', 'Kawasan Univerisitas', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(97, 'WR3-20', 71, 'Peningkatan Produl', 'Desa Binaan', 'Program peningkatan kapasitas produk inovasi dari Desa Binaan dan Mitra UTS pelaksanaa', 'Program peningkatan kapasitas produk inovasi dari Desa Binaan dan Mitra UTS pelaksanaa', 'Mengadakan dan melaksanakan kegiatan sosialisasi produk hasil penelitian UTS kepada masyarakat seperti:', 'Program peningkatan kapasitas produk inovasi dari Desa', '2021-09-01', '2021-09-30', 'Kawasan Univerisitas', 'UTS', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(98, 'WR3-21', 71, 'Pendampingan', 'Katsinov', 'Pendampingan Katsinow', 'Pendampingan Katsinow', 'a) Tim ahli UTS melakukan instalasi cold storage di Pulau Bungin, Alas Barat\nb) Melaksanakan kegiatan expo produk-produk PKM hasil penelitian dan pengabdian UTS\nc) Mengenalkan produk sepeda motor listrik UTS dengan merek Ngebuts, dll', 'Pendampingan Katsinow', '2021-09-01', '2021-09-30', 'kampus', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(99, 'WR4-01', 73, 'Kerjasama', 'Provinsi NTB', 'Workshop Kerja sama', 'Workshop Kerja sama', 'Pelatihan untuk tim kerja sama yang tersertifikasi', 'Pelatihan untuk tim kerja sama yang tersertifikasi', '2021-05-31', '2021-12-31', 'Luar Provinsi NTB', 'Kampus', '7000000', '7000000', '0', '2021-07-28', '2021-07-28'),
(100, 'WR4-02', 73, 'Virtual Gathering', 'Virtual Gathering', 'Virtual Gathering', 'Virtual Gathering', 'Penjajakan kerja sama dan silaturahmi dengan Mitra Kerja sama dan Media Partner ataupun calon mitra kerja sama.', 'Virtual Gathering', '2021-12-01', '2021-12-31', 'kampus', 'Kampus', '15000000', '15000000', '0', '2021-07-28', '2021-07-28'),
(101, 'WR4-03', 73, 'Penjajakan Kerja Sama', 'Penjajakan Kerja Sama', 'Penjajakan Kerja Sama', 'Penjajakan Kerja Sama', 'Menjajaki kerja sama dan audiensi dengan para mitra dan calon mitra di setiap instansi pemerintahan kabupaten, provinsi dan pusat serta dengan pihak swasta', 'Penjajakan Kerja Sama', '2021-01-01', '2021-12-31', 'kampus', 'Kampus', '3000000', '3000000', '3000000', '2021-07-28', '2022-01-10'),
(102, 'WR4-04', 73, 'UTS Coffee Break', 'UTS Coffee Break', 'UTS Coffee Break', 'UTS Coffee Break', 'Forum sharing peluang kerja sama antar pihak dengan mengundang pihak mitra dan atau sosialisasi peluang kerja sama hasil audiensi dengan \npihak luar kepada \npara dosen', 'UTS Coffee Break', '2021-08-01', '2021-12-31', 'Kawasan Univerisitas', 'UTS', '10000000', '10000000', '2550000', '2021-07-28', '2021-12-10'),
(103, 'WR4-05', 73, 'Booklet UTS', 'Booklet UTS', 'Booklet UTS', 'Booklet UTS', '1. Pembuatan tabloit/booklet yang berisi informasi seputar UTS per tahun untuk dikirim ke sponsor dan seluruh mitra kerja sama UTS sebagai bentuk report sekaligus feedback pihak Universitas kepada pihak Mitra.', 'Booklet UTS', '2021-11-01', '2021-12-31', 'Kawasan Univerisitas', 'Kampus', '25000000', '25000000', '0', '2021-07-28', '2021-07-28'),
(104, 'WR4-06', 73, 'Pembuatan merchandise', 'Pembuatan merchandise', 'Pembuatan merchandise', 'Pembuatan merchandise', 'Merchandise/ souvenir sebagai cendramata dari UTS sebagai sarana penguatan kerja sama dengan partner', 'Pembuatan merchandise', '2021-11-01', '2021-12-31', 'Kawasan Univerisitas', 'UTS', '25000000', '25000000', '0', '2021-07-28', '2021-07-28'),
(105, 'WR4-07', 73, 'Rapat Koordinasi Kerja', 'Rapat Koordinasi Kerja', 'Rapat Koordinasi Kerja', 'Rapat Koordinasi Kerja', 'Rapat Koordinasi Kerja dan sosialisasi program dengan seluruh unit/divisi Universitas', 'Rapat Koordinasi Kerja', '2021-06-01', '2021-12-31', 'Universitas', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(106, 'WR4-13', 74, 'Inbound Mobility Program', 'Inbound Mobility Program', 'Inbound Mobility Program', 'Inbound Mobility Program', 'Mendesain dan mempromosikan program mobilitas mahasiswa asing ke\nUTS melalui program seperti Rural-up, P2A, dsb', 'Inbound Mobility Program', '2021-08-01', '2021-08-31', 'kampus', 'Kampus', '4000000', '4000000', '0', '2021-07-28', '2021-08-27'),
(107, 'WR4-16', 74, 'UTS Overseas Diaspora Engagement', 'UTS Overseas Diaspora Engagement', 'UTS Overseas Diaspora Engagement', 'UTS Overseas Diaspora Engagement', 'Himpunan civitas akademika dan alumni UTS di luar negeri melalui kegiatan rutin seperti virtual meeting, kompetisi, sharing session, dll', 'UTS Overseas Diaspora Engagement', '2021-08-01', '2021-12-31', 'Kawasan Univerisitas', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(108, 'WR4-18', 74, 'Social Media Engagement', 'Social Media Engagement', 'Social Media Engagement', 'Social Media Engagement', 'Pemanfaatan dan manajemen media sosial untuk berbagi informasi, edukasi dan hiburan dalam sudut pandang global. Instagram Takeover menjadi program yang diselenggarakan secara rutin dengan partisipasi\nmahasiswa internasional.', 'Social Media Engagement', '2021-08-01', '2021-12-31', 'Universitas', 'Kampus', '1500000', '1500000', '0', '2021-07-28', '2021-07-28'),
(109, 'WR4-19', 74, 'MoU', 'MoU', 'MoU', 'MoU', 'Melakukan inisiasi kerjasama dengan institusi luar negeri baik itu institusi akademik maupun industri untuk membuka kolaborasi saling menguntungkan dengan UTS', 'MoU', '2021-08-01', '2021-12-31', 'Universitas', 'universitas', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(110, 'WR4-20', 74, 'International Corporation Fund Raising (Darmasiswa, KNB)', 'International Corporation Fund Raising (Darmasiswa, KNB)', 'International Corporation Fund Raising (Darmasiswa, KNB)', 'International Corporation Fund Raising (Darmasiswa, KNB)', 'Mengajukan pembiayaan program-program UTS terutama yang bersifat global pada program CSR krporasi dan program pembiayaan pemerintah & non\npemerintah yang sudah tersedia', 'International Corporation Fund Raising (Darmasiswa, KNB)', '2021-08-01', '2021-12-31', 'Universitas', 'Kampus', '500000', '500000', '0', '2021-07-28', '2021-07-28'),
(111, 'WR4-21', 74, 'Ambassador Lecture', 'Ambassador Lecture', 'Ambassador Lecture', 'Ambassador Lecture', 'Kuliah tamu/sharing session/talkshow dengan duta besar Indonesia di luar negeri atau duta besar negara sahabat di Indonesia dengan audiens mahasiswa dan\nwarga UTS lain', 'Ambassador Lecture', '2021-08-01', '2021-12-31', 'Universitas', 'universitas', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(112, 'WR4-22', 74, 'Peningkatan rekognisi global UTS melalui platform rekognisi global', 'Peningkatan rekognisi global UTS melalui platform rekognisi global', 'Peningkatan rekognisi global UTS melalui platform rekognisi global', 'Peningkatan rekognisi global UTS melalui platform rekognisi global', 'Mendesain dan menerapkan strategi peningkatan rekognisi global UTS melalui platform rekognisi global seperti green metric, Green Campus, Times HE dan\nmenghubungkan dengan strategi rebranding UTS', 'Peningkatan rekognisi global UTS melalui platform rekognisi global', '2021-08-01', '2021-12-31', 'kampus', 'universitas', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(113, 'WR4-24', 74, 'Pelatihan Academic Global Networking & Collaboration', 'Pelatihan Academic Global Networking & Collaboration', 'Pelatihan Academic Global Networking & Collaboration', 'Pelatihan Academic Global Networking & Collaboration', 'Kegiatan workshop untuk meningkatkan kemampuan akademisi dalam membangun dan menjaga network dan menciptakan kolaborasi dengan berfokus pada polishing profile and disseminate them through\navalaible network platform such as LinkedIn and medium', 'Pelatihan Academic Global Networking & Collaboration', '2021-08-01', '2021-08-31', 'Kawasan Univerisitas', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(114, 'WR4-31', 75, 'Pembuatan dan pengiriman proposal', 'Pembuatan dan pengiriman proposal', 'Pembuatan dan pengiriman proposal', 'Pembuatan dan pengiriman proposal', 'Pembuatan proposal, pengiriman dan distribusi\nberkas administrasi kepada para pihak sponsor dan donatur', 'Pembuatan dan pengiriman proposal', '2021-08-01', '2021-11-30', 'Kawasan Univerisitas', 'kampus', '1500000', '1500000', '0', '2021-07-28', '2021-07-28'),
(115, 'WR4-33', 75, 'Renovasi Pengembangan Masjid Kampus', 'Renovasi Pengembangan Masjid Kampus', 'Renovasi Pengembangan Masjid Kampus', 'Renovasi Pengembangan Masjid Kampus', 'Perencanaan, pengawasan dan monitoring hasil pembangunan', 'Renovasi Pengembangan Masjid Kampus', '2021-08-01', '2021-11-30', 'Kawasan Universitas', 'Kampus', '40150000', '40150000', '0', '2021-07-28', '2021-07-28'),
(116, 'SEK-01', 21, 'Buku Laporan Tahunan UTS Tahun 2021', 'Buku Laporan Tahunan UTS Tahun 2021', 'Buku Laporan Tahunan UTS Tahun 2021', 'Buku Laporan Tahunan UTS Tahun 2021', 'Penyusunan dan penyetakan Buku Laporan Tahunan 2021', 'Buku Laporan Tahunan UTS Tahun 2021', '2021-11-01', '2021-12-31', 'UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(117, 'SEK-03', 21, 'Sekretariat', 'Sekretariat', 'Sekretariat', 'Sekretariat', 'Penyusunan dan penyetakan Laporan Kinerja Tahun 2020', 'Penyusunan dan penyetakan Laporan Kinerja Tahun 2020', '2021-11-01', '2021-12-31', 'Universitas', 'universitas', '1800000', '1800000', '0', '2021-07-28', '2021-07-28'),
(118, 'SEK-08', 21, 'Kalender UTS', 'Kalender UTS', 'Kalender UTS', 'Kalender UTS', 'Pembuatan Kalender UTS adalah program membuat Kalender tahunan oleh Humas yang nantinya akan disebar luaskan yang hakikatnya adalah medium promosi kampus.', 'Kalender UTS', '2021-11-01', '2021-11-06', 'UTS', 'kampus', '4000000', '4000000', '0', '2021-07-28', '2021-08-12'),
(119, 'SEK-09', 21, 'Pengembangan Tim Humas', 'Pengembangan Tim Humas', 'Pengembangan Tim Humas', 'Pengembangan Tim Humas', 'Pengembangan Tim Humas adalah program yang diagendakan utuk diikuti oleh staf Humas, baik dalam bentuk konverensi, pelatihan, lomba, dan sejenisnya.', 'Pengembangan Tim Humas', '2021-09-07', '2021-09-08', 'UTS', 'Kampus', '8000000', '8000000', '0', '2021-07-28', '2021-07-28'),
(120, 'SEK-12', 21, 'Give Away UTS', 'Give Away UTS', 'Give Away UTS', 'Give Away UTS', 'Pemberian hadiah kepada follower terpilih UTS', 'Give Away UTS', '2021-07-01', '2022-01-01', 'kampus', 'UTS', '1350000', '1350000', '0', '2021-07-28', '2021-07-28'),
(121, 'SEK-13', 21, 'Langganan Freepik', 'Langganan Freepik', 'Langganan Freepik', 'Langganan Freepik', 'Langganan aplikasi dan atribut media', 'Langganan Freepik', '2021-08-01', '2021-12-31', 'kampus', 'universitas', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(122, 'BPMA-03', 76, 'system penjaminan mutu telah dilaksanakan', 'system penjaminan mutu telah dilaksanakan', 'system penjaminan mutu telah dilaksanakan', 'system penjaminan mutu telah dilaksanakan', 'Memastikan bahwa standar mutu telah terpenuhi dan system penjaminan mutu telah dilaksanakan', 'system penjaminan mutu telah dilaksanakan', '2021-08-01', '2021-10-31', 'Universitas', 'Kampus', '19600000', '19600000', '0', '2021-07-28', '2021-07-28'),
(123, 'BPMA-05', 76, 'memastikan bahwa standar mutu telah terpenuhi', 'memastikan bahwa standar mutu telah terpenuhi', 'memastikan bahwa standar mutu telah terpenuhi', 'memastikan bahwa standar mutu telah terpenuhi dan system penjaminan mutu', 'Pengusulan Izin Penyelenggaraan Program Studi (Need  Analysis, Penyusunan Kajian/Naskah Akademik Prodi baru)', 'memastikan bahwa standar mutu telah terpenuhi', '2021-08-01', '2021-08-31', 'Kawasan Univerisitas', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(124, 'BPKO-01', 77, 'Pembinaan Dosen', 'Karakter', 'Program Pembinaan Karakter Dosen & Staff (PKDS)', 'Program Pembinaan Karakter Dosen & Staff (PKDS)', 'Meningkatkan wawasan dan kepahaman tentang Islam pada Dosen dan Staff UTS', 'Meningkatkan wawasan dan kepahaman tentang Islam pada Dosen dan Staff UTS', '2021-08-01', '2021-12-31', 'UTS', 'universitas', '3500000', '3500000', '0', '2021-07-28', '2021-07-28'),
(125, 'BPKO-04', 77, 'Menyegarkan kembali', 'meningkatkan wawasan', 'kepahaman tentang Islam pada Mahasiswa Baru UTS', 'Menyegarkan kembali, dan meningkatkan wawasan dan kepahaman tentang Islam pada Mahasiswa Baru UTS', 'Menyegarkan kembali, dan meningkatkan wawasan dan kepahaman tentang Islam pada Mahasiswa Baru UTS', 'kepahaman tentang Islam pada Mahasiswa Baru UTS', '2021-08-01', '2021-12-31', 'Kawasan Univerisitas', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(126, 'BPKO-05', 77, 'DAURAH MENTOR', 'DAURAH MENTOR', 'Peningkatan Kapasitas Mentor (DAURAH MENTOR)', 'Peningkatan Kapasitas Mentor (DAURAH MENTOR)', 'Para mentor mahasiswa baru mendapatkan pengetahuan dan skill sebagai mentor, mendapatkan pemahaman mengenai kurikulum dan capaian pembelajaran materi-materi', 'Peningkatan Kapasitas Mentor (DAURAH MENTOR)', '2021-08-01', '2021-09-30', 'Universitas', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(127, 'BPKO-07', 77, 'Program Pembinaan Terpadu Mahasiswa', 'Program Pembinaan Terpadu Mahasiswa', 'Program Pembinaan Terpadu Mahasiswa (PPTM)  Lanjutan UTS/ MENTORING LANJUTAN', 'Program Pembinaan Terpadu Mahasiswa (PPTM)  Lanjutan UTS/ MENTORING LANJUTAN', 'Proses pembinaan lanjutan mentoring pada Mahasiswa tingkat dua, tiga dan empat UTS. Meningkatkan wawasan dan kepahaman tentang Islam serta karakter mahasiswa', 'UTS/ MENTORING LANJUTAN', '2021-08-01', '2021-12-31', 'kampus', 'kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(128, 'BPKO-08', 77, 'DAURAH MENTOR LANJUTAN', 'DAURAH MENTOR LANJUTAN', 'Peningkatan Kapasitas Mentor Lanjutan (DAURAH MENTOR LANJUTAN)', 'Peningkatan Kapasitas Mentor Lanjutan (DAURAH MENTOR LANJUTAN)', 'Para mentor lanjutan mendapatkan pengetahuan dan skill sebagai mentor, mendapatkan pemahaman mengenai kurikulum dan capaian pembelajaran materi-materi mentoring', 'Peningkatan Kapasitas Mentor Lanjutan (DAURAH MENTOR LANJUTAN)', '2021-10-01', '2021-10-31', 'Kawasan Univerisitas', 'kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(129, 'BPKO-11', 77, 'Orang Tua Mahasiswa', 'Data Base', 'Data Base Orang Tua Mahasiswa', 'Data Base Orang Tua Mahasiswa', 'Pembuatan data base dan Mapping orang tua mahasiswa UTS', 'Data Base Orang Tua Mahasiswa', '2021-10-01', '2021-10-31', 'Kawasan Univerisitas', 'UTS', '200000', '200000', '0', '2021-07-28', '2021-07-28'),
(130, 'RPK-03', 68, 'Ruang Publik Kreative', 'Memperindah', 'merapikan fasilitas fisik', 'Memperindah dan merapikan fasilitas fisik', '- Perbaikan lantai GOR (pembuatan proposal dan perjalanan follow up proposal)\n-Perapihan danau\n-Perapihan taman buah-buahan (pembuatan proposal dan perjalanan follow up proposal)\n-Penambahan taman bunga (pembuatan proposal dna perjalanan follow up proposal)\n-Membentuk team untuk menjadi pengelola kegiatan bisnis di RPK', 'Memperindah dan merapikan fasilitas fisik', '2021-08-01', '2021-12-31', 'Ruang Publik Kreative UTS', 'UTS', '6000000', '6000000', '0', '2021-07-28', '2021-07-28'),
(131, 'BEA-01', 69, 'Mahasiswa', 'informasi beasiswa', 'Mempublikasikan informasi beasiswa melalui sosial media', 'Mempublikasikan informasi beasiswa melalui sosial media', '- Membagikan informasi peluang beasiswa melalui sosial media\n - Membagikan update terbaru informasi beasiswa terkait informasi monev, waktu pembayaran tunggakan mahasiswa, dll.', 'Mempublikasikan informasi beasiswa melalui sosial media', '2021-08-01', '2021-12-31', 'Ruang WR.2 - Rektorat Lt.1', 'Kampus', '1200000', '1200000', '0', '2021-07-28', '2021-07-28'),
(132, 'BEA-02', 69, 'Mahasiswa', 'Melayani', 'Melayani mahasiswa via online (whatsapp, DM instagram)', 'Melayani mahasiswa via online (whatsapp, DM instagram)', 'Melayani mahasiswa komplain, bertanya, melalui whatsapp dan DM instagram', 'Melayani mahasiswa via online (whatsapp, DM instagram)', '2021-08-01', '2021-12-31', 'Ruang WR 2, Rektorat Lt.1', 'UTS', '1200000', '1200000', '0', '2021-07-28', '2021-07-28'),
(133, 'PUS-04', 63, 'Mahasiswa', 'Lomba', 'Mengadakan Lomba Membaca Puisi dan Membaca Cerpen', 'Mengadakan Lomba Membaca Puisi dan Membaca Cerpen', 'Sebagai salah satu strategi promosi perpustakaan dalam upaya peningkatan minat baca di UTS', 'Mengadakan Lomba Membaca Puisi dan Membaca Cerpen', '2021-07-30', '2021-08-31', 'Perpustakaan UTS', 'kampus', '2500000', '2500000', '0', '2021-07-28', '2021-07-28'),
(134, 'PBH-07', 64, 'Konsultasi Mahasiswa Asing', 'bahasa indonesia', 'Konsultasi Bahasa Indonesia Bagi Mahasiswa Asing UTS', 'Konsultasi Bahasa Indonesia Bagi Mahasiswa Asing UTS', 'Program ini fokus pada pemberian layanan konsultasi yang menyangkut kesulitan -kesulitan mahasiswa asing dalam memahami kata ataupun kalimat bahasa Indonesia yang mereka temukan/ alami selama proses perkuliahan', 'Konsultasi Bahasa Indonesia Bagi Mahasiswa Asing UTS', '2021-09-01', '2021-11-30', 'Ruang Pusat Bahasa UTS', 'UTS', '1500000', '1500000', '0', '2021-07-28', '2021-07-28'),
(135, 'PBH-08', 64, 'Kompetisi', 'English', 'UTS English competition', 'UTS English competition', 'Lomba bahasa inggris edukatif, poetry, story telling, short essay, Public speaking', 'UTS English competition', '2021-08-01', '2021-09-30', 'R. Pusat Bahasa', 'kampus', '3000000', '3000000', '11000000', '2021-07-28', '2021-12-10'),
(136, 'PBH-13', 64, 'Pemutahiran naskah EAPT', 'Pemutahiran naskah EAPT', 'Pemutahiran naskah EAPT', 'Pemutahiran naskah EAPT', 'Menjaga adanya naskah tes TOEFL yang valid dan up to date', 'Menjaga adanya naskah tes TOEFL yang valid dan up to date', '2021-12-01', '2021-12-31', 'Universitas', 'Kampus', '1400000', '1400000', '2050000', '2021-07-28', '2021-12-13'),
(137, 'PBH-14', 64, 'Evaluasi kerja', 'Internal', 'Evaluasi kerja triwulan', 'Evaluasi kerja triwulan', 'Evaluasi internal keberhasilan program kerja UPT Bahasa', 'Evaluasi kerja triwulan', '2021-08-01', '2021-12-31', 'R. Pusat Bahasa', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(143, 'SPS-01', 65, 'Sertifikasi Mahasiswa', 'Trainer', 'Sertifikasi Trainerq', 'Sertifikasi Trainer', 'Mengikutsertakan trainer ke pelatihan sertifikasi profesi Badan Nasional Sertifikasi Profesi (BNSP) untuk mendapatkan gelar Certified Public Speaking (CPS).', 'Sertifikasi Trainer', '2021-05-01', '2021-06-30', 'R.SPS', 'universitas', '6000000', '6000000', '0', '2021-07-28', '2021-07-28'),
(144, 'SPS-02', 65, 'Childred', 'Lomba', 'Lomba Public Speaking for Children', 'Lomba Public Speaking for Children', 'Menyelenggarakan lomba Public Speaking untuk anak-anak, sebagai bentuk go public-nya UPT UTS School of Public Speaking, diharapkan lomba ini akan berkelanjutan serta konsisten memberikan Public Speakng Awards kepada pelajar, yang dalam hal ini adalah siswa/i SD dan SMP.', 'Lomba Public Speaking for Children', '2021-07-01', '2021-08-31', 'UTS', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(145, 'SPS-03', 65, 'Pwmbuatan Modul', 'Public Speaking Module', 'Pembuatan Modul Public Speaking', 'Pembuatan Modul Public Speaking', 'Penulisan dan pencetakan modul berbentuk buku dengan ISBN, yang berisi tentang materi Public Speaking yang disusun dan menjadi produk dari UPT SPS', 'Pembuatan Modul Public Speaking', '2021-04-01', '2021-07-31', 'Universitas', 'Kampus', '2500000', '2500000', '0', '2021-07-28', '2021-07-28'),
(146, 'LPT-02', 67, 'Sosialisasi', 'Khalayak Umum', 'Sosialisasi Lembaga Psikologi Terapan kepada Khalayak Umum.', 'Sosialisasi Lembaga Psikologi Terapan kepada Khalayak Umum.', 'Kunjungan Silaturahim ke berbagai Instansi Pemerintah/Sekolah/Lembaga yang sesuai dengan  ruang Lingkup jasa Layanan Psikologi dalam bidang Pendidikan, Industri dan Organisasi serta Konseling dan Sosial Komunitas', 'Sosialisasi Lembaga Psikologi Terapan kepada Khalayak Umum.', '2021-04-01', '2021-07-31', 'Seluruh SMP Se-Kabupaten Sumbawa', 'UTS', '9000000', '9000000', '2610000', '2021-07-28', '2021-12-09'),
(147, 'LPT-03', 67, 'Promosi', 'media sosial', 'Promosi LPT dalam bentuk Iklan melalui siaran udara (Radio)serta media sosia', 'Promosi LPT dalam bentuk Iklan melalui siaran udara (Radio)serta media sosia', 'Promosi dalam bentuk iklan di media saluran udara (Radio) serta akun media sosial influencer di Kota Sumbawa Besar seperti Semaras Sia, Rungan Samawa dll.', 'Promosi LPT dalam bentuk Iklan melalui siaran udara (Radio)serta media sosia', '2021-04-01', '2021-07-31', 'Media Stasiun Radio, Influencer Kota Sumbawa', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(148, 'LPT-04', 67, 'Webiner', 'lapisan Masyrakat', 'Webinar : \"Perkenalkan, kami adalah Psikolog dan ada untuk anda', 'Webinar : \"Perkenalkan, kami adalah Psikolog dan ada untuk anda', 'Webinar yang dilakukan dengan Zoom Meeting serta  peserta seluruh lapisan masyarakat di Kota Sumbawa. Pemateri nantinya adalah Psikolog dari LPT.', 'Webinar : \"Perkenalkan, kami adalah Psikolog dan ada untuk anda', '2021-04-01', '2021-07-31', 'Kota Sumbawa', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-08-23'),
(150, 'PAS-01', 78, 'Penyempurnaan Kurikulum', 'RPS', 'Penyempurnaan Kurikulum Manajemen Inovasi', 'Penyempurnaan Kurikulum Manajemen Inovasi', 'Penyempurnaan Silabus, RPS, dan Sosialisasi Tim Kurikulum', 'Penyempurnaan Kurikulum Manajemen Inovasi', '2021-08-01', '2021-08-31', 'STP', 'Kampus', '15000000', '15000000', '0', '2021-07-28', '2021-07-28'),
(151, 'PAS-02', 78, 'Restra', 'Review', 'Review Renstra SPS - UTS', 'Review Renstra SPS - UTS', 'Review Renstra Sekolah Pascasarjana sesuai arahan Assesor tim akreditasi', 'Review Renstra SPS - UTS', '2021-07-01', '2021-08-31', 'STP', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(152, 'PAS-03', 78, 'Mahasiswa Baru', 'Pekan Orientasi', 'Pekan orientasi mahasiswa baru prodi manajemen inovasi', 'Pekan orientasi mahasiswa baru prodi manajemen inovasi', 'Melakukan pengenalan dan mengumpulkan mahasiswa baru prodi manajemen inovasi untuk dilakukan orientasi dan pengenalan sekolah pasca sarjana UTS', 'Pekan orientasi mahasiswa baru prodi manajemen inovasi', '2021-09-01', '2021-09-30', 'Ruang Publik Kreative UTS', 'kampus', '5000000', '5000000', '1000000', '2021-07-28', '2021-12-10'),
(153, 'PAS-04', 78, 'Kuliah Umum', 'Kuliah Umum', 'Kuliah Umum', 'Kuliah Umum', 'Untuk menambah wawasan dan sebagai wadah silaturahmi mahasiswa Sekolah Pascasarjana', 'Kuliah Umum', '2021-04-01', '2021-10-31', 'RPK UTS', 'Kampus', '5000000', '5000000', '1650000', '2021-07-28', '2021-12-07'),
(154, 'FEB-01', 79, 'Workshop kurikulum', 'Workshop kurikulum', 'Workshop kurikulum', 'Workshop kurikulum', 'Bentuk kegiatan program ini adalah Workshop kurikulum dengan melibatkan stakeholder dan seluruh dosen FEB UTS.  Adapun rincian kegiatannya adalah:\nHari pertama : Membahas CPL dengan stakeholder dan tim penyusun kurikulum prodi dan instrument monev ketercapaian CPL\nHari kedua : Penyusunan struktur mata kuliah sesuai dengan masukan stakeholder\nHari ketiga : Penyusunan RPS sesuai SN-Dikti dan CPL, dan penyusunan instrument monev ketercapaian RPS', 'Workshop kurikulum', '2021-07-01', '2021-07-31', 'Hotel atau Tempat Refresentatif lainnya', 'kampus', '9000000', '9000000', '0', '2021-07-28', '2021-07-28'),
(155, 'FEB-03', 79, 'Sosialisasi', 'Adaptasi Sistem', 'Sosialisasi dan adaptasi Sistem Akademik blended learning', 'Sosialisasi dan adaptasi Sistem Akademik blended learning', 'Sosialisasi, workshop dan pengadaan alat standar untuk taping video perkuliahan.', 'Sosialisasi dan adaptasi Sistem Akademik blended learning', '2021-08-01', '2021-08-14', 'FEB UTS', 'universitas', '7750000', '7750000', '0', '2021-07-28', '2021-07-28'),
(156, 'FEB-05', 79, 'Jurnal', 'Penguatan', 'Penguatan jurnal di FEB (JEBI, NJE, JAFA dan JMB)', 'Penguatan jurnal di FEB (JEBI, NJE, JAFA dan JMB)', 'Bentuk kegiatan (1) Akreditasi JEBI (2) Pendaftaran ISSN Cetak JMB, NJE dan JAFA', 'Penguatan jurnal di FEB (JEBI, NJE, JAFA dan JMB)', '2021-07-27', '2021-07-30', 'FEB UTS', 'kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(157, 'FEB-06', 79, 'Research Coaching', 'Research Coaching', 'Research Coaching', 'Research Coaching', 'Kegiatan sharing session peneliti senior dan junior terhadap tips dan trik untuk mendapatkan hibah penelitian, diskusi tentang metode dan topik penelitian yang sesuai dengan isu lokal, nasional dan global, serta pelatihan penggunaan alat analisis seperti SEM-PLS, STATA, R dan lainnya. Kegiatan ini akan dilakukan setiap sekali dalam sebulan dengan topik yang sesuai dengan rencana yang telah disusun.', 'Research Coaching', '2021-07-01', '2021-12-18', 'FEB UTS', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(158, 'FEB-07', 79, 'Workshop', 'Penelitian', 'Workshop Penelitian dan PkM', 'Workshop Penelitian dan PkM', 'Membuat dokumen roadmap penelitian dan PkM, RIP FEB dengan melibatkan seluruh dosen dan stakeholder.', 'Workshop Penelitian dan PkM', '2021-08-22', '2021-08-31', 'FEB UTS', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(159, 'FEB-08', 79, 'Singkronisasi', 'penyelarasan re-akreditasi', 'Sinkronisasi/ penyelarasan re-akreditasi program studi', 'Sinkronisasi/ penyelarasan re-akreditasi program studi', 'Penyediaan dokumen untuk kepentingan vistasi Re-akreditasi 3 prodi', 'Sinkronisasi/ penyelarasan re-akreditasi program studi', '2021-07-07', '2021-07-21', 'FEB UTS', 'kampus', '2500000', '2500000', '0', '2021-07-28', '2021-07-28'),
(160, 'FEB-09', 79, 'Pengembangan', 'Networking FEB', 'Pengembangan Networking FEB', 'Pengembangan Networking FEB', 'Berkunjung ke dinas dan mitra  FEB dalam menjalin kerjasama pendidikan, pengabdian dan penelitian', 'Pengembangan Networking FEB', '2021-07-24', '2021-07-10', 'Sumbawa, KSB, Mataram, Bima', 'universitas', '11500000', '11500000', '0', '2021-07-28', '2021-07-28'),
(161, 'FEB-10', 79, 'Soft Skill Class', 'Soft Skill Class', 'Soft Skill Class', 'Soft Skill Class', 'Pembinaan mahasiswa  untuk pengembangan prestasi dan Pengembangan organisasi kemahasiswaan sebagai wahana untuk melatih keterampilan organisasi mahasiswa. Kegiatan ini akan dilakukan oleh BEM dengan koordinator bagian kemahasiswaan FEB UTS', 'Soft Skill Class', '2021-08-08', '2021-08-21', 'FEB UTS', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(162, 'FEB-11', 79, 'Media Centre', 'Kemahasiswaan', 'Media Centre Kemahasiswaan', 'Media Centre Kemahasiswaan', 'Kegiatan membuat buletin kampus yang diterbitkan sekali dalam setahun, sebagai wadah untuk memperkenalkan VMTS FEB, Prodi di FEB, prestasi akademik dan non akademik mahasiswa serta peraturan akademik lainnya yang berlaku di FEB UTS', 'Media Centre Kemahasiswaan', '2021-08-28', '2021-08-31', 'FEB UTS', 'Kampus', '500000', '500000', '0', '2021-07-28', '2021-07-28'),
(163, 'FEB-12', 79, 'Aplikasi Administrasi Fakultas', 'Penguatan', 'Penguatan Aplikasi Administrasi Fakultas', 'Penguatan Aplikasi Administrasi Fakultas', 'Kegiatan pelayanan kepada mahasiswa secara online menggunakan aplikasi yang bisa di instal pada masing-masing ponsel mahasiswa, persiapan penambahan fitur pada aplikasi yang disesuaikan dengan kebutuhan', 'Penguatan Aplikasi Administrasi Fakultas', '2021-08-01', '2021-08-14', 'FEB UTS', 'universitas', '1500000', '1500000', '0', '2021-07-28', '2021-07-28'),
(164, 'FEB-13', 79, 'Rapat', 'Fakultas', 'Rapat Rutin Fakultas', 'Rapat Rutin Fakultas', 'Rapat rutin pekanan pimpinan fakultas yang terdiri dari Dekan, Wadek, Sekfak, Kaprodi, dan Kaprodi', 'Rapat Rutin Fakultas', '2021-07-29', '2021-11-30', 'FEB UTS', 'Kampus', '2400000', '2400000', '0', '2021-07-28', '2021-07-28'),
(165, 'FEB-14', 79, 'pelatihan', 'Administrasi staff sekpro', 'Pelatihan dan workshop manajemen administrasi fakultas untuk Staf dan Sekprodi', 'Pelatihan dan workshop manajemen administrasi fakultas untuk Staf dan Sekprodi', 'Kegiatan pelatihan kepada staf administrasi fakultas tentang sistem akademik seperti SIAKAD dll, pelatihan pelayanan dan tata kelola administrasi yang baik', 'Pelatihan dan workshop manajemen administrasi fakultas untuk Staf dan Sekprodi', '2021-08-08', '2021-07-10', 'Menyesuaikan', 'universitas', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(166, 'FEB-15', 79, 'penguatan Citra', 'Fakultas', 'Penguatan Citra Fakultas Ekonomi dan Bisnis`', 'Penguatan Citra Fakultas Ekonomi dan Bisnis', 'manajemen konten dan kualitas social media fakultas : website, facebook, instagram dan WhatsApp, dll (termasuk pengadaan device standar)', 'Penguatan Citra Fakultas Ekonomi dan Bisnis', '2021-07-01', '2021-12-31', 'FEB UTS', 'Kampus', '4700000', '4700000', '0', '2021-07-28', '2021-07-28'),
(167, 'FEB-17', 79, 'Renstra', 'Renop', 'Penyusunan Renstra dan Renop FEB 2021-2024', 'Penyusunan Renstra dan Renop FEB 2021-2024', 'Pembentukan tim perumus dan Penyusunan renstra dan renop fakultas', 'Penyusunan Renstra dan Renop FEB 2021-2024', '2021-10-01', '2021-11-30', 'FEB UTS', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(168, 'FEB-18', 79, 'Family Gathering', 'Family Gathering', 'Family Gathering', 'Family Gathering', 'Kegiatan family gathering yang di ikuti oleh seluruh dosen dan staf FEB', 'Family Gathering', '2021-08-22', '2021-08-28', 'Sumbawa', 'kampus', '2500000', '2500000', '0', '2021-07-28', '2021-07-28'),
(169, 'FEB-23', 79, 'Peningkatan Asesor', 'Sertifikasi Mahasiswa', 'Peningkatan kapasitas asesor untuk sertifikasi kompetensi Mahasiswa EP', 'Peningkatan kapasitas asesor untuk sertifikasi kompetensi Mahasiswa EP', 'Pelatihan tim asesor sertifikasi kompetensi EP', 'Peningkatan kapasitas asesor untuk sertifikasi kompetensi Mahasiswa EP', '2021-07-18', '2021-07-24', 'feb uts', 'Kampus', '2500000', '2500000', '0', '2021-07-28', '2021-07-28'),
(170, 'FEB-24', 79, 'Kuliah Umum', 'Kebanksentralan', 'Kuliah Umum Kebanksentralan', 'Kuliah Umum Kebanksentralan', 'Kegiatan ini merupakan kegiatan Kuliah Umum kepada mahasiswa program studi sebagai referensi peminatan konsentrasi yang ada pada program studi ekonomi pembangunan', 'Kuliah Umum Kebanksentralan', '2021-08-22', '2021-08-28', 'Menyesuaikan', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(171, 'FEB-25', 79, 'Anggota Profesi sarjana ekonomi', 'Mendaftar menjadi anggota profesi sarjana ekonomi Indonesia', 'Mendaftar menjadi anggota profesi sarjana ekonomi Indonesia', 'Mendaftar menjadi anggota profesi sarjana ekonomi Indonesia', 'Kegiatan mendaftar menjadi anggota profesi sarjana ekonomi Indonesia', 'Mendaftar menjadi anggota profesi sarjana ekonomi Indonesia', '2021-07-18', '2021-07-24', 'FEB uts', 'Kampus', '2500000', '2500000', '0', '2021-07-28', '2021-07-28'),
(172, 'FEB-30', 79, 'Membentuk Sekretaria IAI', 'Sumbawa', 'Membentuk Kantor Perwakilan (sekretariat) IAI di Sumbawa', 'Membentuk Kantor Perwakilan (sekretariat) IAI di Sumbawa', 'Mendaftarkan sejumlah dosen tertentu sebagai anggota IAI agar memenuhi syarat untuk membuka sekretariat IAI Cabang Sumbawa', 'Membentuk Kantor Perwakilan (sekretariat) IAI di Sumbawa', '2021-11-21', '2021-11-27', 'FEB UTS', 'Kampus', '2500000', '2500000', '0', '2021-07-28', '2021-07-28'),
(173, 'FEB-31', 79, 'Kuliah Tamu', 'Akuntansi', 'Kuliah Tamu \"akuntansi\"', 'Kuliah Tamu \"akuntansi\"', 'Melaksanakan kuliah tamu yang menghadirkan tokoh-tokoh penting dari instansi yang dapat dijadikan mitra kerjasama', 'Kuliah Tamu \"akuntansi\"', '2021-10-03', '2021-10-09', 'Menyesuaikan', 'kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(174, 'FEB-35', 79, 'Webiner Prodi', 'Webiner Prodi', 'Webiner Prodi', 'Webiner Prodi', 'Memfasilitasi dosen untuk menyebarluaskan ilmu pengetahuannya kepada masyarakat umum bersama dengan ahli/tokoh dari luar UTS', 'Webiner Prodi', '2021-08-22', '2021-08-28', 'Online', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(175, 'FEB-40', 79, 'Kuliah UMUM', 'Provinsi', 'Kuliah umum oleh pimpinan instansi dari Provinsi/dari luar sumbawa', 'Kuliah umum oleh pimpinan instansi dari Provinsi/dari luar sumbawa', 'Kuliah umum yang diisi oleh pemateri eksternal yang disesuaikan dengan topik yang sedang menjadi pembahasan di kalangan masyarakat', 'Kuliah umum oleh pimpinan instansi dari Provinsi/dari luar sumbawa', '2021-10-03', '2021-10-09', 'Menyesuaikan', 'UTS', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(176, 'FEB-42', 79, 'Anggota Asosiasi', 'Manajemen & Bisnis Indonesia', 'Mendaftar Menjadi anggota Asosiasi Program Studi Manajemen dan Bisnis Indonesia', 'Mendaftar Menjadi anggota Asosiasi Program Studi Manajemen dan Bisnis Indonesia', 'Mendaftarkan Prodi Manajemen untuk bergabung ke dalam asosiasi Prodi  Manajemen', 'Mendaftar Menjadi anggota Asosiasi Program Studi Manajemen dan Bisnis Indonesia', '2021-08-01', '2021-08-31', 'FEB UTS', 'Kampus', '2500000', '2500000', '0', '2021-07-28', '2021-07-28'),
(177, 'FEB-44', 79, 'Webinar prodi', 'Webinar prodi', 'Webinar prodi', 'Webinar prodi', 'Memfasilitasi dosen untuk menyebarluaskan ilmu pengetahuannya kepada masyarakat umum bersama dengan ahli/tokoh dari luar UTS', 'Webinar prodi', '2021-08-22', '2021-08-28', 'Online', 'universitas', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(178, 'FTA-01', 80, 'Pengembangan kurikulum', 'Pemutakhiran kurikulum', 'Pengembangan kurikulum  - Pemutakhiran dan penyesuain kurikulum', 'Pengembangan kurikulum - Pemutakhiran dan penyesuain kurikulum berdasarkan KKNI', 'Evaluasi dan peninjauan kurikulum , CP dan profil lulusan internal. Memastikan kurikulum sesuai dengan KKNI, dan pembuatan RPS. Rapat pembahasan akademik', 'berbasis Kualifikasi Kompetensi Nasional Indonesia (KKNI)', '2021-08-01', '2021-12-31', 'UTS / Online', 'Kampus', '2000000', '2000000', '2000000', '2021-07-28', '2021-12-09'),
(179, 'FTA-02', 80, 'karir Dosen', 'Peningkatan & pengembangan', 'Peningkatan dan pengembangan kualifikasi, kompetensi, serta karir dosen', 'Peningkatan dan pengembangan kualifikasi, kompetensi, serta karir dosen', 'Training pengembangan dosen, SCL, RPS, dan bahan ajar. Bertujuan untuk :\n- meningkatnya kapasitas dosen dalam mengajar\n- bahan ajar dapat terdeteksi dan terarsip dengan baik\n- memastikan RPS sesuai standar', 'Peningkatan dan pengembangan kualifikasi, kompetensi, serta karir dosen', '2021-10-01', '2021-12-31', 'UTS/ Online', 'universitas', '4000000', '4000000', '0', '2021-07-28', '2021-09-01'),
(180, 'FTA-03', 80, 'penglolaan', 'Jurnal FAGI', 'Pengelolaan Jurnal Ilmiah Fakultas (Food and Agroindustry Journal-FAGI', 'Pengelolaan Jurnal Ilmiah Fakultas (Food and Agroindustry Journal-FAGI', 'Meningkatkan kualitas dan kuantitas publikasi ilmiah fakultas', 'Pengelolaan Jurnal Ilmiah Fakultas (Food and Agroindustry Journal-FAGI', '2021-08-01', '2021-12-31', 'UTS/ Online', 'universitas', '500000', '500000', '500000', '2021-07-28', '2021-12-09'),
(181, 'FTA-04', 80, 'Pembeliaan Alat & Bahan', 'kelengkapan LAB', 'Pembelian Alat, Bahan Pengelolaan Laboratorium', 'Pembelian Alat, Bahan Pengelolaan Laboratorium', 'Pembelian alat, bahan dan pengelolaan laboratorium untuk kebutuhan penelitian', 'Pembelian Alat, Bahan Pengelolaan Laboratorium', '2021-09-01', '2021-12-31', 'UTS/ Online', 'universitas', '17000000', '17000000', '0', '2021-07-28', '2021-07-28'),
(182, 'FTA-05', 80, 'Mahasiswa', 'Pendidikan Karakter', 'Melaksanakan pendidikan kepribadian, karakter, dan akhlak mahasiswa', 'Melaksanakan pendidikan kepribadian, karakter, dan akhlak mahasiswa', 'Pembinaan dan Pendampingan Lomba-Lomba, Pengabdian Masyarakat, dan Pelatihan Soft Skill', 'Melaksanakan pendidikan kepribadian, karakter, dan akhlak mahasiswa', '2021-09-01', '2021-12-31', 'UTS/ Online', 'UTS', '1600000', '1600000', '1600000', '2021-07-28', '2021-12-09'),
(183, 'FTA-06', 80, 'pendampingan', 'PKM', 'Pendampingan dan Dukungan kegiatan PKM (Pelatihan dan Penghargaan dari fakultas)', 'Pendampingan dan Dukungan kegiatan PKM (Pelatihan dan Penghargaan dari fakultas)', 'Pembinaan, Pendampingan, dan Penghargaan untuk mahasiswa yang lolos PKM', 'Pendampingan dan Dukungan kegiatan PKM (Pelatihan dan Penghargaan dari fakultas)', '2021-08-01', '2021-12-31', 'UTS/ Online', 'kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(184, 'FTA-07', 80, 'Pendampingan dan dukungan', 'organisasi mahasiswa', 'Pendampingan dan Dukungan kegiatan Organisasi Mahasiswa', 'Pendampingan dan Dukungan kegiatan Organisasi Mahasiswa', 'Pendampingan dan dukungan kegatan positif mahasiswa seperti pelatihan sofskill, PKM, pemira, orientasi mahasiswa baru, kegiatan kerohanian, dan lainnya', 'Pendampingan dan Dukungan kegiatan Organisasi Mahasiswa', '2021-09-01', '2021-12-31', 'UTS/ Online', 'universitas', '11300000', '11300000', '0', '2021-07-28', '2021-07-28'),
(185, 'FTA-08', 80, 'Menjaring kemitraan, lokal, nasional dan internasional', 'Menjaring kemitraan, lokal, nasional dan internasional', 'Menjaring kemitraan, lokal, nasional dan internasional', 'Menjaring kemitraan, lokal, nasional dan internasional', 'Terjalinnya sinergi dengan beberapa instansi dalam mendukung tridharma perguruan tinggi dan lokasi PKL, KKN dan Penelitian Mahasisw', 'Menjaring kemitraan, lokal, nasional dan internasional', '2021-09-01', '2021-12-31', 'UTS/ Online', 'universitas', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(186, 'FTB 01', 81, 'Pengembangan Alumni', 'Pengembangan Alumni', 'Pengembangan Alumni', 'Pengembangan Alumni', 'Program peningkatan peran alumni terhadap pengembangan Fakultas . Program ini berupa kegiatan berkala temu alumni dan pembagian souvenir alumni', 'Pengembangan Alumni', '2021-11-01', '2021-11-30', 'Sumbawa', 'universitas', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(187, 'FTB 02', 81, 'Promosi Fakultas', 'BOC', 'PROMOSI FAKULTAS ( BOC dan  EXPEDISI CAMP)', 'PROMOSI FAKULTAS ( BOC dan  EXPEDISI CAMP)', 'program dalam peningkatan kualitas dan kuantitas jumlah calon mahaiswa Biotek dengan kegiatan lomba dan partisipasi ilmiah', 'PROMOSI FAKULTAS ( BOC dan  EXPEDISI CAMP)', '2021-12-01', '2021-12-31', 'UTS dan Tambora', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(188, 'FTB 04', 81, 'NGAJI BIOTEK', 'NGAJI BIOTEK', 'NGAJI BIOTEK', 'NGAJI BIOTEK', 'program pengkayaan materi keilmuan Bioteknologi yang bertujuan untuk menjaga silaturahim anatara dosen yang sedang studi lanjut, mitra Fakultas.', 'NGAJI BIOTEK', '2021-07-01', '2021-07-31', 'FTB UTS', 'universitas', '3500000', '3500000', '3500000', '2021-07-28', '2021-12-28'),
(189, 'FTB 06', 81, 'Pelatihan Dosen', 'Kepenulisan', 'Pelatihan Kepenulisan dan Riset Dosen', 'Pelatihan Kepenulisan dan Riset Dosen', 'program peningkatan skill kepenulisan Dosen melaui short training dan diskusi keilmuan', 'Pelatihan Kepenulisan dan Riset Dosen', '2021-07-01', '2021-07-31', 'Sumbawa', 'kampus', '4000000', '4000000', '0', '2021-07-28', '2021-07-28'),
(190, 'FTB 08', 81, 'Penelitian Dosen', 'Pengembangan', 'Pengembangan penelitian', 'Pengembangan penelitian', 'program pengadaan bahan penelitian dalam mendukung kualitas  Riset Fakultas', 'Pengembangan penelitian', '2021-06-01', '2021-06-30', 'FTB UTS', 'Kampus', '10000000', '10000000', '0', '2021-07-28', '2021-07-28');
INSERT INTO `rkat` (`id_rkat`, `kode_rkat`, `id_user`, `sasaran_strategi`, `indikator_sasaran_strategi`, `nama_program`, `program_kerja`, `deskripsi`, `tujuan`, `mulai_program`, `selesai_program`, `tempat`, `sumber_anggaran`, `rencana_anggaran`, `total_anggaran`, `anggaran_digunakan`, `created_at`, `updated_at`) VALUES
(191, 'FTB 11', 81, 'Pelayanan Mahasiswa', 'akademik', 'Pelayanan akademik dan Pendidikan Mahasiswa oleh Prodi dan Fakultas dalam peningkatan mutu akademik', 'Pelayanan akademik dan Pendidikan Mahasiswa oleh Prodi dan Fakultas', 'sosialisasi akademik dan pembuatan pedoman, manual dan panduan akademik', 'Pelayanan akademik dan Pendidikan Mahasiswa oleh Prodi dan Fakultas', '2021-06-01', '2021-06-30', 'FTB UTS', 'kampus', '1000000', '1000000', '1000000', '2021-07-28', '2021-12-09'),
(192, 'FTB 12', 81, 'Evaluasi Kurikulum', 'Riset', 'Evaluasi Kurikulum Prodi dalam peningkatan mutu riset', 'Evaluasi Kurikulum Prodi dalam peningkatan mutu riset', 'program monetoring dan evaluasi berkala terhadap mutu riset dosen Fakultas', 'Evaluasi Kurikulum Prodi dalam peningkatan mutu riset', '2021-06-01', '2021-06-30', 'FTB UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(193, 'FTB 13', 81, 'Pembekalan Dosen', 'Penyusunan RPS', 'Pembekalan Pembelajara dosen pengampu matakuliah dalam penyususan RPS', 'Pembekalan Pembelajara dosen pengampu matakuliah dalam penyususan RPS', 'sosialiasi dan pembekalan Dosen Fakutas terhadap standar, baku dan manual mutu akademik dan penyamaan persepsi terkait CPL masing-masing program studi', 'Pembekalan Pembelajara dosen pengampu matakuliah dalam penyususan RPS', '2021-08-01', '2021-08-31', 'FTB UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(194, 'FTB 14', 81, 'Training Pembelajaran', 'Training Pembelajaran Mahasiswa', 'Training Pembelajaran , Pengenalan dunia pasca kampus dll', 'Training Pembelajaran , Pengenalan dunia pasca kampus dll', 'sosialisasi dan trainang dasar kepada mahasiswa terkait etika dalam perkuliahan', 'Training Pembelajaran , Pengenalan dunia pasca kampus dll', '2021-09-01', '2021-09-30', 'FTB UTS', 'Kampus', '500000', '500000', '500000', '2021-07-28', '2021-12-09'),
(195, 'FTB 15', 81, 'Jurnal', 'Fakultas', 'Jurnal fakultas Biomaras', 'Jurnal fakultas Biomaras', 'pendaftaran, pengembangan jumlah dan kualitas publikasi jurnal Fakultas', 'Jurnal fakultas Biomaras', '2021-10-01', '2021-10-31', 'FTB UTS', 'Kampus', '1000000', '1000000', '1000000', '2021-07-28', '2021-12-28'),
(196, 'FTB 16', 81, 'Pembekalan Lomba', 'Mahasiswa', 'Pembekalan lomba-lomba dan lomba essay mahasiswa', 'Pembekalan lomba-lomba dan lomba essay mahasiswa', 'program lomba internal mahasiswa terkait presentasi ide dan proposal riset', 'Pembekalan lomba-lomba dan lomba essay mahasiswa', '2021-06-01', '2021-06-30', 'Sumbawa', 'kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(197, 'FKM-01', 54, 'Menyusun Renstra FIKOM 2021-2024', 'Menyusun Renstra FIKOM 2021-2024', 'Menyusun Renstra FIKOM 2021-2024', 'Menyusun Renstra FIKOM 2021-2024', 'Kegiatan menyusun Rencana Strategis Fakultas sebagai arah pengembangan Fakultas 4 tahun ke depan yang berisi Visi, Misi, Tujuan dan Sasaran Fakultas', 'Menyusun Renstra FIKOM 2021-2024', '2021-03-07', '2021-03-13', 'FIKOM', 'universitas', '700000', '700000', '2000000', '2021-07-28', '2021-12-10'),
(198, 'FKM-02', 54, 'Menyusun Visi Misi Progrm Studi 2021-2024', 'Menyusun Visi Misi Progrm Studi 2021-2024', 'Menyusun Visi Misi Progrm Studi 2021-2024', 'Menyusun Visi Misi Progrm Studi 2021-2024', 'Kegiatan menyusun Visi dan Misi Progrm studi sebagai arah pengembangan Prodi 4 tahun ke depan.', 'Menyusun Visi Misi Progrm Studi 2021-2024', '2021-03-14', '2021-03-20', 'FIKOM', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(199, 'FKM-03', 54, 'Menyusun SOP Akademik dan kemahasiswaan FIKOM', 'Menyusun SOP Akademik dan kemahasiswaan FIKOM', 'Menyusun SOP Akademik dan kemahasiswaan FIKOM', 'Menyusun SOP Akademik dan kemahasiswaan FIKOM', 'Menyusun SOP bidang akademik dan kemahasiswaan FIKOM', 'Menyusun SOP Akademik dan kemahasiswaan FIKOM', '2021-03-14', '2021-03-20', 'Universitas', 'Kampus', '1500000', '1500000', '0', '2021-07-28', '2021-07-28'),
(200, 'FKM-04', 54, 'Menyusun SOP', 'Pengabdian  Kepada Masyarakat FIKOM', 'Menyusun SOP penelitian dan Pengabdian  Kepada Masyarakat FIKOM', 'Menyusun SOP penelitian dan Pengabdian  Kepada Masyarakat FIKOM', 'Penyusunan SOP Penelitian dan Pengabdian Kepada Masyarakat FIKOM', 'Menyusun SOP penelitian dan Pengabdian  Kepada Masyarakat FIKOM', '2021-03-01', '2021-03-31', 'FIKOM', 'Kampus', '1500000', '1500000', '0', '2021-07-28', '2021-07-28'),
(201, 'FKM-05', 54, 'Sosiliasasi Optimal SIAKAD', 'Dosen Fikom', 'Sosialisasi Pengoptimalan penggunaan SIAKAD bagi Dosen FIKOM', 'Sosialisasi Pengoptimalan penggunaan SIAKAD bagi Dosen FIKOM', 'Mensosialisasikan bagaimana mengoptimalkan SIAKAD bagi Dosen FIKOM', 'Sosialisasi Pengoptimalan penggunaan SIAKAD bagi Dosen FIKOM', '2021-02-01', '2021-09-30', 'FIKOM', 'Kampus', '500000', '500000', '0', '2021-07-28', '2021-07-28'),
(202, 'FKM-06', 54, 'Pembentukan tim PMB FIKOM', 'Kelas Paralel dan Ekstensi', 'Pembentukan tim PMB FIKOM untuk Kelas Paralel dan Ekstensi', 'Pembentukan tim PMB FIKOM untuk Kelas Paralel dan Ekstensi', 'Membentuk Tim PMB FIKOM untuk kelas Paralel dan ekstensi', 'Pembentukan tim PMB FIKOM untuk Kelas Paralel dan Ekstensi', '2021-03-01', '2021-06-30', 'FIKOM', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(203, 'FKM-07', 54, 'Melaksakan audit mutu internal program studi', 'Melaksakan audit mutu internal program studi', 'Melaksakan audit mutu internal program studi', 'Melaksakan audit mutu internal program studi', 'Mengevaluasi kegiatan Tri Dharma Perguruan Tinggi', 'Melaksakan audit mutu internal program studi', '2021-07-01', '2021-10-31', 'FIKOM', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(204, 'FKM-08', 54, 'Workshop Pendampingan', 'Dosen pengajuan NIDN', 'Workshop dan pendampingan pengusulan NIDN, Jabatan Fungsional Dosen, dan Sertifikasi Dosen', 'Workshop dan pendampingan pengusulan NIDN, Jabatan Fungsional Dosen, dan Sertifikasi Dosen', 'Workshop dan pendampingan pengusulan NIDN,  Jabatan Fungsional Dosen (dari Asisten Ahli, Lektor, hingga Lektor Kepala), dan Sertifikasi Dosen', 'Workshop dan pendampingan pengusulan NIDN, Jabatan Fungsional Dosen, dan Sertifikasi Dosen', '2021-08-01', '2021-08-31', 'FIKOM', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(205, 'FKM-12', 54, 'Tendik', 'Arsip', 'Pelatihan administrasi dan pengarsipan bagi Tendik', 'Pelatihan administrasi dan pengarsipan bagi Tendik', 'Memberi Pelatihan administrasi dan pengarsipan bagi tendik', 'Pelatihan administrasi dan pengarsipan bagi Tendik', '2021-06-01', '2021-06-30', 'FIKOM', 'kampus', '500000', '500000', '0', '2021-07-28', '2021-07-28'),
(206, 'FKM-16', 54, 'Pengadaan Kamera dan memori', 'Pengadaan Kamera dan memori', 'Pengadaan Kamera dan memori', 'Pengadaan Kamera dan memori', 'Pengadaan 1 unit kamera dan kartu memori', 'Pengadaan Kamera dan memori', '2021-09-01', '2021-09-30', 'FIKOM', 'Kampus', '7000000', '7000000', '0', '2021-07-28', '2021-07-28'),
(207, 'FKM-18', 54, 'Renstra', 'SOP', 'Merancang Renstra Riset/SOP yang berkaitan dengan penelitian unggulan', 'Merancang Renstra Riset/SOP yang berkaitan dengan penelitian unggulan', 'Renstra Research ini berisi analisis mengenai situasi, stakeholder, dan sistem pembiayaan operasional riset awal.', 'Merancang Renstra Riset/SOP yang berkaitan dengan penelitian unggulan', '2021-06-01', '2021-06-30', 'Fikom', 'kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(208, 'FKM-19', 54, 'Pengelolaan Jurnal Program Studi Ilmu Komunikasi', 'Pengelolaan Jurnal Program Studi Ilmu Komunikasi', 'Pengelolaan Jurnal Program Studi Ilmu Komunikasi', 'Pengelolaan Jurnal Program Studi Ilmu Komunikasi', 'Mengelola situs jurnal program studi ilmu komunikasi agar mendapatkan reputasi', 'Pengelolaan Jurnal Program Studi Ilmu Komunikasi', '2021-05-01', '2021-08-31', 'FIKOM', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(209, 'FKM-20', 54, 'Pengurusan DOI Jurnal Prodi Ilmu Komunikasi', 'Pengurusan DOI Jurnal Prodi Ilmu Komunikasi', 'Pengurusan DOI Jurnal Prodi Ilmu Komunikasi', 'Pengurusan DOI Jurnal Prodi Ilmu Komunikasi', 'Mendaftarkan Jurnal kaganga komunika untuk mendapatkan DOI', 'Pengurusan DOI Jurnal Prodi Ilmu Komunikasi', '2021-07-01', '2021-07-31', 'FIKOM', 'Kampus', '2500000', '2500000', '0', '2021-07-28', '2021-07-28'),
(210, 'FKM-21', 54, 'Mengadakan Workshop Metodologi Penelitian lintas disiplin ilmu yang berkaitan dengan komunikasi', 'Mengadakan Workshop Metodologi Penelitian lintas disiplin ilmu yang berkaitan dengan komunikasi', 'Mengadakan Workshop Metodologi Penelitian lintas disiplin ilmu yang berkaitan dengan komunikasi', 'Mengadakan Workshop Metodologi Penelitian lintas disiplin ilmu yang berkaitan dengan komunikasi', 'Kegiatan ini adalah kegiatan workshop Metodologi Penelitian yang dilakukan untuk pengembangan kualitas peneliti Fikom dan dapat dibuka juga untuk Mahasiswa dan umum', 'Mengadakan Workshop Metodologi Penelitian lintas disiplin ilmu yang berkaitan dengan komunikasi', '2021-08-01', '2021-09-30', 'FIKOM', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(211, 'FKM-22', 54, 'Meyelenggarakan Pelatihan Penulisan Naskah Publikasi Ilmiah', 'Meyelenggarakan Pelatihan Penulisan Naskah Publikasi Ilmiah', 'Meyelenggarakan Pelatihan Penulisan Naskah Publikasi Ilmiah', 'Meyelenggarakan Pelatihan Penulisan Naskah Publikasi Ilmiah', 'Kegiatan ini adalah kegiatan Pelatihan Penulisan Naskah Publikasi Ilmiah yang dilakukan untuk pengembangan kualitas penelitian dan publikasi di Fikom dan dapat dibuka juga untuk mahasiswa dan umum.', 'Meyelenggarakan Pelatihan Penulisan Naskah Publikasi Ilmiah', '2021-10-01', '2021-11-30', 'FIKOM', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(212, 'FKM-24', 54, 'Kuliah umum ilmu komunikasi.', 'Kuliah umum ilmu komunikasi.', 'Kuliah umum ilmu komunikasi.', 'Kuliah umum ilmu komunikasi.', 'Mengadakan kuliah umum dengan mengundang para ahli dibidang ilmu komunikasi khususnya komunikasi politik, public relation, Film dan Media', 'Kuliah umum ilmu komunikasi.', '2021-09-01', '2021-09-30', 'FIKOM', 'kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(213, 'FKM-25', 54, 'Pengadaan dosen tamu terkait bidang komunikasi', 'Pengadaan dosen tamu terkait bidang komunikasi', 'Pengadaan dosen tamu terkait bidang komunikasi', 'Pengadaan dosen tamu terkait bidang komunikasi', 'Dalam program ini beberapa dosen pengampu mata kuliah akan mengundang dosen tamu sebagai bentuk kolaborasi keilmuan dalam bidang ilmu komunikasi', 'Pengadaan dosen tamu terkait bidang komunikasi', '2021-11-01', '2021-12-31', 'kampus', 'Kampus', '1500000', '1500000', '0', '2021-07-28', '2021-07-28'),
(214, 'FKM-26', 54, 'Pengembangan Minat, Bakat, dan Penalaran kegiatan kemahasiswaan FIKOM', 'Pengembangan Minat, Bakat, dan Penalaran kegiatan kemahasiswaan FIKOM', 'Pengembangan Minat, Bakat, dan Penalaran kegiatan kemahasiswaan FIKOM', 'Pengembangan Minat, Bakat, dan Penalaran kegiatan kemahasiswaan FIKOM', 'Pembentukan divisi Minat, Bakat, dan Penalaran untuk pembinaan pengembangan kemampuan akademik dan non akademik mahasiswa', 'Pengembangan Minat, Bakat, dan Penalaran kegiatan kemahasiswaan FIKOM', '2021-03-01', '2021-10-31', 'FIKOM', 'Kampus', '6000000', '6000000', '0', '2021-07-28', '2021-07-28'),
(215, 'FKM-27', 54, 'Pembinaan Ormawa (BEM, DPM, HMJ)', 'Pembinaan Ormawa (BEM, DPM, HMJ)', 'Pembinaan Ormawa (BEM, DPM, HMJ)', 'Pembinaan Ormawa (BEM, DPM, HMJ)', 'Program ini akan mendukung kegiatan dari Ormawa di lingkup FIKOM', 'Pembinaan Ormawa (BEM, DPM, HMJ)', '2021-07-01', '2021-09-30', 'FIKOM', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(216, 'FKM-28', 54, 'Program short course pengembangan ilmu komunikasi', 'Program short course pengembangan ilmu komunikasi', 'Program short course pengembangan ilmu komunikasi', 'Program short course pengembangan ilmu komunikasi', 'Menjalin kerjasama dengan Universitas/instansi yang memiliki aktreditasi yang unggul', 'Program short course pengembangan ilmu komunikasi', '2021-04-01', '2021-09-30', 'FIKOM', 'kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(217, 'FKM-29', 54, 'Hearing Session antara struktural dan mahasiswa', 'Hearing Session antara struktural dan mahasiswa', 'Hearing Session antara struktural dan mahasiswa', 'Hearing Session antara struktural dan mahasiswa', 'Dalam program ini akan diadakan evaluasi, hearing antara civitas akademik dan mahasiswa', 'Hearing Session antara struktural dan mahasiswa', '2021-03-01', '2021-10-31', 'FIKOM', 'Kampus', '680000', '680000', '2000000', '2021-07-28', '2021-12-28'),
(218, 'FPSI-04', 82, 'Webinar Series', 'Psikologi Pendidikan', 'Webinar Series : Psikologi Pendidikan', 'Webinar Series : Psikologi Pendidikan', 'seminar psikologi Pendidikan\nsecara online', 'seminar psikologi Pendidikan secara online', '2021-04-01', '2021-04-30', 'Gd.Karim', 'Kampus', '2000000', '2000000', '0', '2021-07-29', '2021-07-29'),
(219, 'FPSI-05', 82, 'Webinar Series 2', 'Psikologi Klinis 2', 'Webinar Series : Psikologi Klinis 2', 'Webinar Series : Psikologi Klinis', 'seminar psikologi klinis\nsecara online', 'Webinar Series : Psikologi Klinis', '2021-05-01', '2021-05-31', 'Psikolog', 'kampus', '2000000', '2000000', '0', '2021-07-29', '2021-07-29'),
(220, 'FPSI-07', 82, 'Webinar Series', 'psikologi industri dan organisasi', 'Webinar Series : psikologi industri dan organisasi', 'Webinar Series : psikologi industri dan organisasi', 'seminar psikologi industri\ndan organisasi secara online', 'Webinar Series : psikologi industri dan organisasi', '2021-06-01', '2021-06-30', 'Psikolog', 'Universitas', '2000000', '2000000', '0', '2021-07-29', '2021-07-29'),
(221, 'FPSI-08', 82, 'Webinar Series', 'Psikologi Sosial', 'Webinar Series: Psikologi Sosial', 'Webinar Series: Psikologi Sosial', 'seminar psikologi sosial\nsecara online', 'Webinar Series: Psikologi Sosial', '2021-07-01', '2021-07-31', 'Sumbawa Grand Hotel', 'Kampus', '2000000', '2000000', '0', '2021-07-29', '2021-07-29'),
(222, 'FPSI-18', 82, 'PKM', 'PKM', 'PKM', 'PKM', 'Peningkatan Prestasi Mahasiswa melalui PKM', 'PKM', '2021-09-01', '2021-09-30', 'Psikolog', 'Kampus', '1500000', '1500000', '0', '2021-07-29', '2021-07-29'),
(223, 'FPSI-19', 82, 'Mawapres', 'Mawapres', 'Mawapres', 'Mawapres', 'Peningkatan Prestasi Mahasiswa melalui Mawapres', 'Mawapres', '2021-05-01', '2021-05-31', 'psikolog', 'Psikologi', '1500000', '1500000', '0', '2021-07-29', '2021-07-29'),
(224, 'FPSI-20', 82, 'Ormawa', 'Ormawa', 'Ormawa', 'Ormawa', 'Pengembangan Ormawa Lingkup Fakultas Psikologi', 'Ormawa', '2021-03-01', '2022-03-31', 'Psikolog', 'Kampus', '8000000', '8000000', '0', '2021-07-29', '2021-07-29'),
(225, 'FPSI-21', 82, 'Penjajakan Kerjasama', 'Penjajakan Kerjasama', 'Penjajakan Kerjasama`', 'Penjajakan Kerjasama', 'kunjungan ke Instansi dan Institusi untuk Kerjasama', 'Penjajakan Kerjasama', '2021-03-01', '2021-03-31', 'Universitas Teknologi Sumbawa', 'Kampus', '3000000', '3000000', '0', '2021-07-29', '2021-07-29'),
(226, 'FPSI-22', 82, 'Program pendampingan psikologis', 'pada anak korban pelecehan seksual', 'Program pendampingan psikologis pada anak korban pelecehan seksual', 'Program pendampingan psikologis pada anak korban pelecehan seksual', 'Program pendampingan psikologis pada anak korban pelecehan seksual', 'Program pendampingan psikologis pada anak korban pelecehan seksual', '2021-03-01', '2021-03-31', 'Psikologi', 'kampus', '1500000', '1500000', '0', '2021-07-29', '2021-07-29'),
(227, 'FPSI-23', 82, 'Pengabdian kepada masyarkat', 'Bidang psikologi : Psikoedukasi untuk keluarga dan anak', 'Pengabdian kepada masyarkat bidang psikologi : Psikoedukasi untuk keluarga dan anak', 'Pengabdian kepada masyarkat bidang psikologi : Psikoedukasi untuk keluarga dan anak', 'Pengabdian kepada masyarkat bidang psikologi : Psikoedukasi untuk keluarga dan anak', 'Pengabdian kepada masyarkat bidang psikologi : Psikoedukasi untuk keluarga dan anak', '2021-03-01', '2021-03-31', 'Psikologi', 'Kampus', '1000000', '1000000', '0', '2021-07-29', '2021-07-29'),
(228, 'FPSI-24', 82, 'Pengabdian kepada masyarkat bidang psikologi', 'Pendampingan anak cacat hukum (6.1c)', 'Pengabdian kepada masyarkat bidang psikologi : Pendampingan anak cacat hukum (6.1c)', 'Pengabdian kepada masyarkat bidang psikologi : Pendampingan anak cacat hukum (6.1c)', 'Pengabdian kepada masyarkat bidang psikologi : Pendampingan anak cacat hukum (6.1c)', 'Pengabdian kepada masyarkat bidang psikologi : Pendampingan anak cacat hukum (6.1c)', '2021-03-01', '2021-03-31', 'Psikologi', 'Kampus', '500000', '500000', '0', '2021-07-29', '2021-07-29'),
(229, 'FPSI-25', 82, 'Pembinaan ke ranah pendidikan', 'inspirasi tingkat SMP/Mts dan sederajat', 'Pembinaan ke ranah pendidikan dan inspirasi tingkat SMP/Mts dan sederajat', 'Pembinaan ke ranah pendidikan dan inspirasi tingkat SMP/Mts dan sederajat', 'Peningkatan perkembangan moral, karakter, spiritual dan mental pada remaja', 'Pembinaan ke ranah pendidikan dan inspirasi tingkat SMP/Mts dan sederajat', '2020-09-01', '2021-02-28', 'SMPN/S Sumbawa', 'kampus', '5000000', '5000000', '0', '2021-07-29', '2021-07-29'),
(230, 'FPSI-27', 82, 'Achiepment Motivation Training (AMT', 'Achiepment Motivation Training (AMT', 'Achiepment Motivation Training (AMT', 'Achiepment Motivation Training (AMT', 'Pengembangan motivasi dasar mahasiswa baru', 'Achiepment Motivation Training (AMT', '2021-09-01', '2021-09-30', 'Psikologi', 'kampus', '500000', '500000', '0', '2021-07-29', '2021-07-29'),
(231, 'FPSI-28', 82, 'Forum ilmiah psikologi', 'Forum ilmiah psikologi', 'Forum ilmiah psikologi', 'Forum ilmiah psikologi', 'Pengingkatan penalaran mahasiswa dalam bidang psikologi', 'Forum ilmiah psikologi', '2021-12-01', '2021-12-31', 'Psikologi', 'Kampus', '500000', '500000', '0', '2021-07-29', '2021-07-29'),
(232, 'FPSI-29', 82, 'Sekolah Komunitas', 'Sekolah Komunitas', 'Sekolah Komunitas', 'Sekolah Komunitas', 'Penerapan dan peningkatan bakat minat mahasiswa', 'Sekolah Komunitas', '2021-09-01', '2022-02-28', 'Sumbawa', 'Kampus', '500000', '500000', '0', '2021-07-29', '2021-07-29'),
(233, 'FPSI-30', 82, 'psychology award', 'psychology award', 'psychology award', 'psychology award', 'Apresiasi dosen dan mahasiswa', 'psychology award', '2021-03-01', '2021-03-31', 'RPK', 'Kampus', '2000000', '2000000', '0', '2021-07-29', '2021-07-29'),
(234, 'FPSI-31', 82, 'Pengadaan LCD', 'Pengadaan LCD', 'Pengadaan LCD', 'Pengadaan LCD', 'Pengadaan LCD', 'Pengadaan LCD', '2021-03-01', '2023-03-31', 'Psikologi', 'kampus', '4000000', '4000000', '0', '2021-07-29', '2021-07-29'),
(235, 'FPSI-32', 82, 'Pengadaan Printer', 'Pengadaan Printer', 'Pengadaan Printer', 'Pengadaan Printer', 'Pengadaan Printer', 'Pengadaan Printer', '2021-03-01', '2021-03-31', 'Psikologi', 'Kampus', '2500000', '2500000', '0', '2021-07-29', '2021-07-29'),
(236, 'CDC-01', 114, 'Pengadaan Seragam CDC', 'Pengadaan Seragam CDC', 'Pengadaan Seragam CDC', 'Pengadaan Seragam CDC', 'Tersediannya Identitas organisasi UPT', 'Pengadaan Seragam CDC', '2021-03-01', '2021-12-31', 'UTS', 'Kampus', '900000', '900000', '0', '2021-07-29', '2021-08-16'),
(237, 'CDC-02', 114, 'Kegiatan Evaluasi SKEMA', 'Sertifikasi Kompetensi', 'Kegiatan Evaluasi SKEMA Sertifikasi Kompetensi', 'Kegiatan Evaluasi SKEMA Sertifikasi Kompetensi', 'Terlaksananya Skema yang dibutuhkan sesuai didunia kerja', 'Kegiatan Evaluasi SKEMA Sertifikasi Kompetensi', '2021-03-01', '2021-03-31', 'CDC, Prodi & Aseso', 'kampus', '600000', '600000', '0', '2021-07-29', '2021-08-16'),
(239, 'CDC-06', 114, 'Penyiapan Alat bahan Bahan Pelatihan & Asesmen', 'Penyiapan Alat bahan Bahan Pelatihan & Asesmen', 'Penyiapan Alat bahan Bahan Pelatihan & Asesmen', 'Penyiapan Alat bahan Bahan Pelatihan & Asesmen', 'Memberikan pelatihan sertifikasi kompetensi agar mahasiswa memeiliki kemampuan SKA ( Skill, Khowledge dan Attitude)', 'Penyiapan Alat bahan Bahan Pelatihan & Asesmen', '2021-06-01', '2021-11-30', 'CDC/WR2', 'Kampus', '3000000', '3000000', '0', '2021-07-29', '2021-12-16'),
(240, 'CDC-07', 114, 'Verifikasi Berkas Pendaftaran', 'Verifikasi Berkas Pendaftaran', 'Verifikasi Berkas Pendaftaran', 'Verifikasi Berkas Pendaftaran', 'Memberikan pelatihan sertifikasi kompetensi agar mahasiswa memeiliki kemampuan SKA ( Skill, Khowledge dan Attitude)', 'Verifikasi Berkas Pendaftaran', '2021-06-01', '2021-12-31', 'CDC/Asesi', 'Kampus', '500000', '500000', '0', '2021-07-29', '2021-08-16'),
(242, 'CDC-08', 114, 'Penyiapan Konsumsi Asesor dan Panitian', 'Penyiapan Konsumsi Asesor dan Panitian', 'Penyiapan Konsumsi Asesor dan Panitian', 'Penyiapan Konsumsi Asesor dan Panitian', 'Memberikan pelatihan sertifikasi kompetensi agar mahasiswa memeiliki kemampuan SKA ( Skill, Khowledge dan Attitude)', 'Penyiapan Konsumsi Asesor dan Panitian', '2021-06-01', '2021-12-31', 'CDC/Asesor', 'Kampus', '7000000', '7000000', '3610000', '2021-07-29', '2021-12-10'),
(243, 'CDC-09', 114, 'Pelatihan dan uji kompetens', 'Pelatihan dan uji kompetens', 'Pelatihan dan uji kompetens', 'Pelatihan dan uji kompetens', 'Honor Asesor', 'Pelatihan dan uji kompetens', '2021-09-01', '2021-12-31', 'CDC/Wr 2', 'kampus', '3000000', '3000000', '0', '2021-07-29', '2021-08-16'),
(244, 'WR1-04', 61, 'Launching DSDM', 'Training Center', 'Launching DSDM Training Center', 'Launching DSDM Training Center', 'Membuat\npusat pelatihan dan pengembangan SDM', 'Launching DSDM Training Center', '2021-06-01', '2021-06-30', 'UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(246, 'WR1-06', 61, 'Psikotes', 'pegawai baru', 'Psikotes pegawai baru', 'Psikotes pegawai baru', 'Setiap pegawai baru diwajibkan mengikuti Psikotes untuk mengetahui minat, bakat,  kelebihan dan kekurangan dirinya sebagai dasar penempatannya', 'Psikotes pegawai baru', '2021-03-01', '2021-03-31', 'UTS', 'Kampus', '2500000', '2500000', '0', '2021-07-30', '2021-07-30'),
(247, 'WR1-09', 61, 'Pelatihan', 'Manajerial Level 1', 'Pelatihan Manajerial Level 1', 'Pelatihan Manajerial Level 1', 'Materikulasi pada Pelatihan Manajerial Level 1 ini meliputi: Organisasi & Manajemen, Pranata Pengarsipan, Pelaporan Keuangan, Pelatihan Budaya Kerja dan Pelayanan Prima (Service Excelent)', 'Pelatihan Manajerial Level 1', '2021-04-01', '2021-04-30', 'UTS', 'Kampus', '3500000', '3500000', '0', '2021-07-30', '2021-07-30'),
(248, 'WR1-10', 61, 'Pelatihan', 'Manajerial level II', 'Pelatihan Manajerial level II', 'Pelatihan Manajerial level II', 'Materikulasi pada Pelatiha Manajerial Level 2 ini meliputi: Team Work, Public Speaking, Konseling Class, Professional Manner, dan Manajemen Sumber Daya Manusia', 'Pelatihan Manajerial level II', '2021-06-01', '2021-06-30', 'UTS', 'Kampus', '3500000', '3500000', '0', '2021-07-30', '2021-07-30'),
(249, 'WR1-13', 61, 'Sosialisasi alur pengajuan NIDN', 'Pengelolaan Siakad dan Sister Dosen', 'Sosialisasi alur pengajuan NIDN, Pengelolaan Siakad dan Sister Dosen', 'Sosialisasi alur pengajuan NIDN, Pengelolaan Siakad dan Sister Dosen', 'Membantu dan menyiapkan para dosen pemula dalam penyiapan NIDN, bagaimana mengelola Siakad, dan Sister Dosen', 'Sosialisasi alur pengajuan NIDN, Pengelolaan Siakad dan Sister Dosen', '2021-03-01', '2021-03-31', 'UTS', 'kampus', '500000', '500000', '0', '2021-07-30', '2021-07-30'),
(250, 'WR1-14', 61, 'Penyamaan Persepsi Asesor BKD', 'Penyamaan Persepsi Asesor BKD dan honorarium Asesor', 'Penyamaan Persepsi Asesor BKD dan honorarium Asesor', 'Penyamaan Persepsi Asesor BKD dan honorarium Asesor', 'Melakukan Rapat Kerja Asesor untuk menyamakan persepsi terkait Peraturan Rektor tentang Beban Kerja Dosen', 'Penyamaan Persepsi Asesor BKD dan honorarium Asesor', '2021-03-01', '2021-03-31', 'UTS', 'Kampus', '5000000', '5000000', '0', '2021-07-30', '2021-09-24'),
(251, 'WR1-15', 61, 'Sosialisasi', 'BKD & LKD', 'Sosialisasi BKD & LKD', 'Sosialisasi BKD & LKD', 'Melakukan sosialisasi penyusunan dan pengumpulan BKD LKD', 'Sosialisasi BKD & LKD', '2021-03-01', '2021-03-31', 'UTS', 'Kampus', '500000', '500000', '0', '2021-07-30', '2021-07-30'),
(252, 'WR1-16', 61, 'Sosialisasi dan Pembekalan Jafung', 'Asisten Ahli, Lektor, dan Lektor Kepala', 'Sosialisasi dan Pembekalan Jafung (Asisten Ahli, Lektor, dan Lektor Kepala)', 'Sosialisasi dan Pembekalan Jafung (Asisten Ahli, Lektor, dan Lektor Kepala)', 'Membantu dan menyiapkan para dosen dalam seluruh proses perjalanan karirnya sebagai dosen, sejak masuk sampai menjadi Guru Besar.', 'Sosialisasi dan Pembekalan Jafung (Asisten Ahli, Lektor, dan Lektor Kepala)', '2021-05-01', '2021-05-31', 'kampus', 'Kampus', '6000000', '6000000', '0', '2021-07-30', '2021-07-30'),
(253, 'WR1-17', 61, 'Seminar', 'TIPS Lolos Serdos', 'Seminar \"TIPS Lolos Serdos\"', 'Seminar \"TIPS Lolos Serdos\"', 'Membantu dan menyiapkan para dosen untuk lulus sertifikat dosen', 'Seminar \"TIPS Lolos Serdos\"', '2021-05-01', '2021-05-31', 'UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(254, 'WR1-24', 61, 'Ngopi', 'Ngumpul Pegawai & ngobrol santai', 'Ngopi (Ngumpul Pegawai & ngobrol santai)', 'Ngopi (Ngumpul Pegawai & ngobrol santai)q', 'Kegaitan silaturrahim seluruh Dosen dan atau seluruh Tendik, sambil ngumpul santai dan berbagi keluhan dan masalah untuk mendapat solusi', 'Ngopi (Ngumpul Pegawai & ngobrol santai)', '2021-04-01', '2021-10-31', 'UTS', 'kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(256, 'WR1-29', 53, 'Pencetakan dan legalisasi transkrip nilai sementara', 'Pencetakan dan legalisasi transkrip nilai sementara', 'Pencetakan dan legalisasi transkrip nilai sementara', 'Pencetakan dan legalisasi transkrip nilai sementara cetak transkrip nilai sementara', 'Pencetakan dan legalisasi transkrip nilai sementara\ncetak transkrip nilai sementara', 'Pencetakan dan legalisasi transkrip nilai sementara', '2021-07-30', '2022-07-31', 'Warek 1', 'Kampus', '1320000', '1320000', '0', '2021-07-30', '2021-07-30'),
(257, 'WR1-30', 53, 'Sosialisasi SOP', 'SOP Akademik', 'Sosialisasi SOP Bagian Akademik', 'Sosialisasi SOP Bagian Akademik', 'cetak buku SOP akademik', 'Sosialisasi SOP Bagian Akademik', '2021-09-01', '2021-09-30', 'UTS', 'Kampus', '2400000', '2400000', '0', '2021-07-30', '2021-07-30'),
(258, 'WR1-31', 53, 'Sosialisasi SIAKAD', 'Sosialisasi SIAKAD', 'Sosialisasi SIAKAD', 'Sosialisasi SIAKAD', 'Sosialisasi SIAKAD dengan MABA & Dosen Baru', 'Sosialisasi SIAKAD', '2021-09-01', '2021-09-30', 'UTS', 'Kampus', '500000', '500000', '0', '2021-07-30', '2021-07-30'),
(259, 'WR1-32', 53, 'Bedah Siakad', 'Bedah Siakad', 'Bedah Siakad', 'Bedah Siakad', '- Bedah SIAKAD Kaprodi + Wadek\n- Bedah SIAKAD Admin Prodi\n- Bedah SIAKAD Dosen+ DPA', 'Bedah Siakad', '2021-07-01', '2021-10-31', 'UTS', 'kampus', '7980000', '7980000', '5795000', '2021-07-30', '2021-12-09'),
(260, 'WR1-33', 53, 'Pengadaan Inventaris', 'Pengadaan Inventaris', 'Pengadaan Inventaris', 'Pengadaan Inventaris', '- PC\n- printer Scanner\n- HDD Eksternal', 'Pengadaan Inventaris', '2021-07-01', '2021-10-31', 'Warek 1', 'Kampus', '11500000', '11500000', '0', '2021-07-30', '2021-07-30'),
(261, 'WR1-34', 53, 'Update Database', 'Matching Data', 'Melakukan Update Database dan Matching Data', 'Melakukan Update Database dan Matching Data', 'Update data status akademik mahasiswa', 'Melakukan Update Database dan Matching Data', '2021-08-01', '2021-09-30', 'Warek 1', 'kampus', '400000', '400000', '400000', '2021-07-30', '2021-12-13'),
(262, 'WR1-35', 53, 'Validasi Data', 'Calon Wisudawan', 'Validasi Data Calon Wisudawan (2x Wisuda dalam 1 tahun)', 'Validasi Data Calon Wisudawan (2x Wisuda dalam 1 tahun)', 'Validasi ijazah dan transkrip nilai', 'Validasi Data Calon Wisudawan (2x Wisuda dalam 1 tahun)', '2021-09-01', '2022-03-31', 'Warek 1', 'Kampus', '600000', '600000', '0', '2021-07-30', '2021-07-30'),
(263, 'WR1-36', 53, 'Rapat RKAT', 'LPJ Internal DAA', 'Rapat RKAT Dan LPJ Internal DAA', 'Rapat RKAT Dan LPJ Internal DAA', 'Rapat', 'Rapat RKAT Dan LPJ Internal DAA', '2021-07-01', '2021-08-31', 'warek 1', 'universitas', '300000', '300000', '0', '2021-07-30', '2021-07-30'),
(264, 'WR1-37', 53, 'Studi banding', 'Studi bandingq', 'Studi banding', 'Studi banding', 'Studi banding Online dengan PIKA UGM', 'Studi banding', '2021-04-01', '2021-04-30', 'STP', 'Kampus', '1500000', '1500000', '0', '2021-07-30', '2021-07-30'),
(265, 'WR1-38', 53, 'Evaluasi tahunan Kurikulum Kampus Merdeka', 'Evaluasi tahunan Kurikulum Kampus Merdeka', 'Evaluasi tahunan Kurikulum Kampus Merdeka', 'Evaluasi tahunan Kurikulum Kampus Merdeka', 'Evaluasi tahunan Kurikulum KKNI berbasis Kampus Merdeka', 'Evaluasi tahunan Kurikulum Kampus Merdeka', '2021-07-01', '2021-07-30', 'STP', 'Kampus', '2500000', '2500000', '0', '2021-07-30', '2021-07-30'),
(266, 'WR1-39', 53, 'Pelatihan RPS', 'Pelatihan RPS`', 'Pelatihan RPS', 'Pelatihan RPS', 'Pelatihan RPS Online', 'Pelatihan RPS', '2021-08-01', '2021-08-31', 'STP', 'Kampus', '2500000', '2500000', '0', '2021-07-30', '2021-12-07'),
(267, 'WR1-40', 53, 'Sosialisai Panduan', 'Sosialisai Panduan', 'Sosialisai Panduan', 'Sosialisai Panduan', 'Sosialisasi buku panduan kurikulum , OBE, MBKM, Media Pembelajaran', 'Sosialisai Panduan', '2021-05-01', '2021-05-31', 'STP', 'Kampus', '1500000', '1500000', '0', '2021-07-30', '2021-07-30'),
(268, 'WR1-41', 53, 'Pelatihan tentang Assesment', 'Pelatihan tentang Assesment', 'Pelatihan tentang Assesment', 'Pelatihan tentang Assesment', 'Pelatihan Rubrik Pembelajaran dan Assesment Pembelajaran', 'Pelatihan tentang Assesment', '2021-09-01', '2021-09-30', 'STP', 'kampus', '2500000', '2500000', '0', '2021-07-30', '2021-07-30'),
(269, 'WR1-42', 53, 'Pengembangan inovasi pembelajaran', 'Pengembangan inovasi pembelajaran', 'Pengembangan inovasi pembelajaran', 'Pengembangan inovasi pembelajaran', 'pengembangan metode pembelajaran UTS', 'Pengembangan inovasi pembelajaran', '2021-12-01', '2021-12-31', 'STP', 'Kampus', '2500000', '2500000', '0', '2021-07-30', '2021-07-30'),
(270, 'WR1-43', 53, 'Pelatihan PBL', 'Pelatihan PBL', 'Pelatihan PBL', 'Pelatihan PBL', 'Pelatihan Metode Pembelajaran PBL', 'Pelatihan PBL', '2021-10-01', '2021-10-31', 'STP', 'Kampus', '2500000', '2500000', '0', '2021-07-30', '2021-07-30'),
(271, 'WR1-44', 53, 'Optimalisasi', 'E-Learnning UTS dan SIAKAD', 'Optimalisasi E-Learnning UTS dan SIAKAD', 'Optimalisasi E-Learnning UTS dan SIAKAD', 'Pelatihan E-Learning UTS dan SIAKAD', 'Optimalisasi E-Learnning UTS dan SIAKAD', '2021-11-01', '2021-11-30', 'STP', 'Kampus', '1500000', '1500000', '1500000', '2021-07-30', '2021-12-14'),
(272, 'WR1-45', 53, 'Evaluasi Pembelajaran', 'Evaluasi Pembelajaran', 'Evaluasi Pembelajaran', 'Evaluasi Pembelajaran', 'Evaluasi pembelajaran semester genap dan ganjil', 'Evaluasi Pembelajaran', '2021-09-01', '2021-01-31', 'STP', 'Kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(273, 'WR1-48', 60, 'Pembekalan Magang PMMB', 'Pembekalan Magang PMMB (1 Pemateri)', 'Pembekalan Magang PMMB (1 Pemateri)', 'Pembekalan Magang PMMB (1 Pemateri)', 'Membekali mahsiswa sebelum berangkat magang dengan table manner, enginner nal grooping, goal setting, dan communition skills', 'Pembekalan Magang PMMB (1 Pemateri)', '2021-01-01', '2021-07-31', 'Universitas', 'Kampus', '3240000', '3240000', '0', '2021-07-30', '2021-08-26'),
(274, 'WR1-49', 60, 'Self Management', 'Stress Management, Know Your Potency, Be Confident', 'Self Management (Stress Management, Know Your Potency, Be Confident) (1 Pemateri) – umum', 'Self Management (Stress Management, Know Your Potency, Be Confident) (1 Pemateri) – umum', 'Self Management (Stress Management, Know Your Potency, Be Confident) (1 Pemateri) – umum\nmembekali mahasiswa dengan kemampuan Self management', 'membekali mahasiswa dengan kemampuan Self management', '2021-03-01', '2021-03-31', 'UTS', 'kampus', '1710000', '1710000', '0', '2021-07-30', '2021-07-30'),
(275, 'WR1-50', 60, 'penataan karir pasca kelulusan)', 'What Should I Do After Graduation', 'What Should I Do After Graduation (penataan karir pasca kelulusan) (1 Pemateri) – umum', 'What Should I Do After Graduation (penataan karir pasca kelulusan) (1 Pemateri) – umum', 'Membekali mahasiswa dan alumni agar dapat mengetahui apa yang harus dilakukan pasca kelulusan', 'What Should I Do After Graduation (penataan karir pasca kelulusan) (1 Pemateri) – umum', '2021-09-01', '2021-09-30', 'UTS', 'Kampus', '1710000', '1710000', '1838000', '2021-07-30', '2021-12-07'),
(276, 'WR1-51', 60, 'How to make a eginner nal CV, email, and Cover Letter (1 Pemateri) – karir', 'How to make a eginner nal CV, email, and Cover Letter (1 Pemateri) – karir', 'How to make a eginner nal CV, email, and Cover Letter (1 Pemateri) – karir', 'How to make a eginner nal CV, email, and Cover Letter (1 Pemateri) – karir', 'membekali mahasiswa dengan kemampuan membuat CV yang menarik', 'How to make a eginner nal CV, email, and Cover Letter (1 Pemateri) – karir', '2021-04-01', '2021-04-30', 'Universitas', 'Kampus', '1710000', '1710000', '0', '2021-07-30', '2021-07-30'),
(277, 'WR1-52', 60, 'How to Get First Job (berkirim email, mempersiapkan CV, menghadapi Interview) (1 Pemateri) – karir', 'How to Get First Job (berkirim email, mempersiapkan CV, menghadapi Interview) (1 Pemateri) – karir', 'How to Get First Job (berkirim email, mempersiapkan CV, menghadapi Interview) (1 Pemateri) – karir', 'How to Get First Job (berkirim email, mempersiapkan CV, menghadapi Interview) (1 Pemateri) – karir', 'Membekali mahasiswa atau alumni agar dapat melamar pekerjaan secara profesional', 'How to Get First Job (berkirim email, mempersiapkan CV, menghadapi Interview) (1 Pemateri) – karir', '2021-10-01', '2021-10-31', 'UTS', 'Kampus', '1710000', '1710000', '1698000', '2021-07-30', '2021-11-10'),
(278, 'WR1-53', 60, 'Excellent Training (Manner, Profesional Grooming ) (1 Pemateri) – karir/umum', 'Excellent Training (Manner, Profesional Grooming ) (1 Pemateri) – karir/umum', 'Excellent Training (Manner, Profesional Grooming ) (1 Pemateri) – karir/umum', 'Excellent Training (Manner, Profesional Grooming ) (1 Pemateri) – karir/umum', 'Membekali mahasiswa dengan kemampuan Service Excelen', 'Excellent Training (Manner, Profesional Grooming ) (1 Pemateri) – karir/umum', '2021-11-01', '2021-11-30', 'UTS', 'Kampus', '1710000', '1710000', '1455000', '2021-07-30', '2021-12-09'),
(279, 'WR1-54', 60, 'How to Get Your Scholarship', 'How to Get Your Scholarship studi lanjut', 'Knowledge about Scholarship, how to make a good Motivation Letter', 'How to Get Your Scholarship', 'Membekali mahasiswa dan alumni dengan tips tips bagaimana cara mendapatkan beasiswa', 'Membekali mahasiswa dan alumni dengan tips tips bagaimana cara mendapatkan beasiswa', '2021-12-01', '2021-12-31', 'UTS', 'Kampus', '1710000', '1710000', '0', '2021-07-30', '2021-07-30'),
(280, 'WR1-55', 60, 'How to Branding in Social Media', 'How to Branding in Social Media (Collab dengan Humas) (1 Pemateri)', 'How to Branding in Social Media (Collab dengan Humas) (1 Pemateri)', 'How to Branding in Social Media (Collab dengan Humas) (1 Pemateri)', 'How to Branding in Social Media (Collab dengan Humas) (1 Pemateri)', 'How to Branding in Social Media (Collab dengan Humas) (1 Pemateri)', '2021-03-01', '2021-03-31', 'UTS', 'Kampus', '2580000', '2580000', '0', '2021-07-30', '2021-07-30'),
(281, 'WR1-56', 60, 'Communication Skills Training', 'Communication Skills Training', 'Communication Skills Training', 'Communication Skills Training', 'Communication Skills Training (MC, Moderator Training ) (1 Pemateri)', 'Communication Skills Training', '2021-04-01', '2021-04-30', 'UTS', 'kampus', '1710000', '1710000', '0', '2021-07-30', '2021-07-30'),
(282, 'WR1-57', 60, 'Pelatihan Bussiness for eginner', 'manajemen bisnis, administrasi, keuangan, pemasaran, proposal usaha', 'wirausaha', 'wirausaha', 'Pelatihan Bussiness for eginner; manajemen bisnis, administrasi, keuangan, pemasaran, proposal usaha, dll (Series) (1 Pemateri) – wirausaha', 'manajemen bisnis, administrasi, keuangan, pemasaran, proposal usaha', '2021-11-02', '2021-11-30', 'kampus', 'Kampus', '2580000', '2580000', '2580000', '2021-07-30', '2021-12-29'),
(283, 'WR1-58', 60, 'Tracer Study', 'Tracer Study', 'Tracer Study', 'Tracer Study', 'Melakukan pelacakan alumni untuk memenuhi kebutuhan LLDIKTI', 'Tracer Study', '2021-09-01', '2021-07-01', 'Universitas', 'Kampus', '5400000', '5400000', '5500000', '2021-07-30', '2021-12-16'),
(284, 'WR1-59', 60, 'Pembuatan Merchandise CDC', 'Pembuatan Merchandise CDC', 'Pembuatan Merchandise CDC', 'Pembuatan Merchandise CDC', 'Membuat merchandise berupa Buku, Tumbler, Totte Bag sebagai bingkisan bagi peserta yang aktif, quiz CDC, dan Tamu Perusahaan / rekanan', 'Pembuatan Merchandise CDC', '2021-01-01', '2022-01-31', 'Universita', 'Kampus', '6000000', '6000000', '0', '2021-07-30', '2021-07-30'),
(285, 'WR1-60', 60, 'Pembuatan Buku Profil / Flyer CDC', 'Pembuatan Buku Profil / Flyer CDC', 'Pembuatan Buku Profil / Flyer CDC', 'Pembuatan Buku Profil / Flyer CDC', 'Pembuat buku profil dan flyer untuk diberikan kepada perusahaan rekanan CDC', 'Pembuatan Buku Profil / Flyer CDC', '2021-01-01', '2022-01-31', 'Universita', 'Kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(286, 'WR1-61', 60, 'Pembuatan Roll Up Banner ( 2 buah)', 'Pembuatan Roll Up Banner ( 2 buah)', 'Pembuatan Roll Up Banner ( 2 buah)', 'Pembuatan Roll Up Banner ( 2 buah)', 'Pembuatan Roll Up Banner ( 2 buah)', 'Pembuatan Roll Up Banner ( 2 buah)', '2021-01-01', '2021-01-31', 'UTS', 'Kampus', '610000', '610000', '610000', '2021-07-30', '2021-12-10'),
(287, 'WR1-64', 60, 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kerumahtanggaan', 'Melengkapi kebutuhan rumah tangga seperti konsumsi rapat internal dan kegiatan lainnya', 'Kerumahtanggaan', '2021-07-30', '2022-07-31', 'UTS', 'universitas', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(288, 'WR1-65', 60, 'pekan Seni Mahasiswa Nasional', '(PEKSIMINAS)', 'pekan Seni Mahasiswa Nasional (PEKSIMINAS)', 'pekan Seni Mahasiswa Nasional (PEKSIMINAS)', 'peksiminas bertujuan untuk meningkatkan kegiatan ekstra kurikuler kemahasiswaan di Perguruan Tinggi melalui minat, bakat dan kemampuan para mahasiswanya khususnya di bidang seni, kegiatan ini juga bertujuan untuk meningkatkan kualitas dan kemampuan praktis mahasiswa dalam menumbuhkan apresiasi tehadap seni, baik seni suara, seni pertunjukan, penulisan sastra, dan seni rupa.', 'pekan Seni Mahasiswa Nasional (PEKSIMINAS)', '2021-06-01', '2021-10-31', 'UTS', 'Kampus', '1500000', '1500000', '0', '2021-07-30', '2021-07-30'),
(289, 'WR1-66', 60, 'Pekan Olahraga Mahasiswa Nasional', '(POMNAS)', 'Pekan Olahraga Mahasiswa Nasional (POMNAS)', 'Pekan Olahraga Mahasiswa Nasional (POMNAS)', 'Kegiatan kompetisi di bidang olahraga sebagai salah satu upaya untuk melengkapi kompetensi mahasiswa agar menjadi lulusan yang memiliki kecerdasan yang komprehensif. Kegiatan ini bertujuan untuk meningkatkan dan mengembangkan minat bakat olahraga mahasiswa, meningkatkan prestasi olahraga mahasiswa baik di tingkat nasional maupun internasional.', 'Pekan Olahraga Mahasiswa Nasional (POMNAS)', '2021-07-31', '2022-01-01', 'UTS', 'Kampus', '3000000', '3000000', '0', '2021-07-30', '2021-07-30'),
(290, 'WR1-67', 60, '(MTQMN)', 'Musabaqah Tilawatil Qur\'an Mahasiswa Tingkat Nasional', 'Musabaqah Tilawatil Qur\'an Mahasiswa Tingkat Nasional (MTQMN)', 'Musabaqah Tilawatil Qur\'an Mahasiswa Tingkat Nasional (MTQMN)', 'Kegiatan perlombaan dalam seni dan pemahaman Alqur\'an untuk mahasiswa yang diadakan setiap dua tahun sekali. Kegiatan ini bertujuan sebagai upaya pembinaan mental dan spiritual bagi mahasiswa untuk meningkatkan ketaqwaan kepada Tuhan Yang Maha Esa dengan pemahaman dan penghayatan terhadap isi kandungan Alqur\'an bagi', 'Musabaqah Tilawatil Qur\'an Mahasiswa Tingkat Nasional (MTQMN)', '2021-07-01', '2022-07-01', 'UTS', 'Kampus', '3000000', '3000000', '0', '2021-07-30', '2021-07-30'),
(291, 'WR1-68', 60, '(ON MIPA-PT)', 'Mahasiswa', 'Olimpiade Nasional Matematika dan Ilmu Pengetahuan Alam Perguruan Tinggi (ON MIPA-PT)', 'Olimpiade Nasional Matematika dan Ilmu Pengetahuan Alam Perguruan Tinggi (ON MIPA-PT)', 'Dalam rangka mendorong peningkatan prestasi mahasiswa, kemampuan akademik, wawasan dan kecintaan mahasiswa terhadap bidang studi Matematika dan Ilmu Pengetahuan Alam (IPA) serta peningkatan kualitas perguruan tinggi.', 'Olimpiade Nasional Matematika dan Ilmu Pengetahuan Alam Perguruan Tinggi (ON MIPA-PT)', '2021-02-01', '2021-07-31', 'UTS', 'Kampus', '3500000', '3500000', '0', '2021-07-30', '2021-07-30'),
(292, 'WR1-69', 60, 'PILMAPRES', 'Pemilihan Mahasiswa Berprestasi', 'PILMAPRES (Pemilihan Mahasiswa Berprestasi)', 'PILMAPRES (Pemilihan Mahasiswa Berprestasi)', 'Memilih dan memberikan penghargaan kepada mahasiswa yang meraih prestasi/capaian unggul dan membanggakan dalam kegiatan instrakurikuler, kokurikuler, dan ekstrakurikuler Memotivasi mahasiswa untuk melaksanakan kegiatan intrakurikuler, kokurikuler, dan ekstrakurikuler sebagai wahana untuk menyeimbangkan hard skills dan soft skills mahasiswa. Mendorong perguruan tinggi untuk mengembangkan budaya akademik yang dapat memfasilitasi mahasiswa mencapai prestasi/capaian unggul dan membanggakan secara berkesinambungan.', 'PILMAPRES (Pemilihan Mahasiswa Berprestasi)', '2021-03-01', '2021-05-31', 'UTS', 'Kampus', '3500000', '3500000', '0', '2021-07-30', '2021-07-30'),
(293, 'WR1-70', 60, 'UDC', '(National University Debate Championship)', 'UDC (National University Debate Championship)', 'UDC (National University Debate Championship)', 'Meningkatkan daya saing mahasiswa dan lulusan perguruan tinggi melalui media debat ilmiah Meningkatkan kemampuan bahasa inggris lisan dan menciptakan kompetisi yang sehat antar mahasiswa Meningkatkan kemampuan mahasiswa untuk berpikir kritis dan analitis, sehingga mahasiswa mampu bersaing di tingkat nasional maupun internasional Mengembangkan kemampuan mahasiswa dalam menyampaikan pendapat secara logis dan sistematis Memperkuat karakter mahasiswa melalui pemahaman akan permasalahan nasional dan internasional beserta aternatif pemecahannya melalui kompetisi debat.', 'UDC (National University Debate Championship)', '2021-07-01', '2021-06-02', 'UTS', 'Kampus', '3000000', '3000000', '0', '2021-07-30', '2021-07-30'),
(294, 'WR1-71', 60, 'Kompetisi Debat Mahasiswa Indonesia (KDMI)', 'Kompetisi Debat Mahasiswa Indonesia (KDMI)', 'Kompetisi Debat Mahasiswa Indonesia (KDMI)', 'Kompetisi Debat Mahasiswa Indonesia (KDMI)', 'Meningkatkan daya saing mahasiswa dan lulusan perguruan tinggi melalui media debat ilmiah. Meningkatkan kemampuan Bahasa Indonesia, dan menciptakan kompetisi yang sehat antar mahasiswa. Meningkatkan kemampuan mahasiswa untuk berpikir kritis, logis dan analitis, sehingga mahasiswa mampu bersaing di tingkat nasional maupun internasional. Mengembangkan kemampuan mahasiswa dalam menyampaikan pendapat secara logis dan sistematis. Memperkuat karakter mahasiswa melalui pemahaman akan permasalahan nasional dan internasional beserta alternatif \npemecahannya melalui kompetisi debat.', 'Kompetisi Debat Mahasiswa Indonesia (KDMI)', '2021-04-01', '2021-07-31', 'UTS', 'Kampus', '3000000', '3000000', '0', '2021-07-30', '2021-07-30'),
(295, 'WR1-72', 60, 'Kegiatan Berwirausaha Mahasiswa Indonesia (KBMI', 'Kegiatan Berwirausaha Mahasiswa Indonesia (KBMI', 'Kegiatan Berwirausaha Mahasiswa Indonesia (KBMI', 'Kegiatan Berwirausaha Mahasiswa Indonesia (KBMI', 'Kegiatan Berwirausaha Mahasiswa Indonesia (KBMI) merupakan rangkaian kegiatan Program Kewirausahaan Mahasiswa Indonesia 2021. Kegiatan ini bertujuan untuk menumbuhkan karakter wirausaha, menumbuhkembangkan wirausaha baru kreatif, membantu mahasiswa dalam menentukan keunikan usaha dengan menemukan celah pasar yang tepat untuk meningkatkan peluang keberhasilan usaha', 'Kegiatan Berwirausaha Mahasiswa Indonesia (KBMI', '2021-02-01', '2021-11-30', 'UTS', 'Kampus', '1500000', '1500000', '0', '2021-07-30', '2021-07-30'),
(296, 'WR1-73', 60, 'Program Kreatifitas Mahasiswa (PKM)', 'Program Kreatifitas Mahasiswa (PKM)', 'Program Kreatifitas Mahasiswa (PKM)', 'Program Kreatifitas Mahasiswa (PKM)', 'Program Kreativitas Mahasiswa merupakan salah satu upaya yang dilakukan oleh Ditjen Dikti untuk meningkatkan kemampuan mahasiswa di Perguruan Tinggi agar kelak menjadi anggota masyarakat yang memiliki kemampuan akademis/ profesional. Ada beberapa jenis PKM yang ditawarkan yaitu, PKM 5 bidang (PKM-R, PKM-K, PKM-PM, PKM-PI, PKM-KC), PKMGFK, PKM-GT, dan PKM-AI.', 'Program Kreatifitas Mahasiswa (PKM)', '2022-02-01', '2022-02-28', 'UTS', 'Kampus', '13000000', '13000000', '0', '2021-07-30', '2021-08-24'),
(297, 'WR1-74', 60, 'Rapat Kerja Anggaran Tahunan (RKAT ORMAWA SE-UTS)', 'Rapat Kerja Anggaran Tahunan (RKAT ORMAWA SE-UTS)', 'Rapat Kerja Anggaran Tahunan (RKAT ORMAWA SE-UTS)', 'Rapat Kerja Anggaran Tahunan (RKAT ORMAWA SE-UTS)', 'Mendapatkan gambaran terkait program kerja Ormawa Se-UTS selama satu tahun beserta dengan anggaran dana kegiatannya', 'Rapat Kerja Anggaran Tahunan (RKAT ORMAWA SE-UTS)', '2021-02-01', '2021-12-31', 'UTS', 'Kampus', '200000', '200000', '0', '2021-07-30', '2021-07-30'),
(298, 'WR1-75', 60, 'Dana Kegiatan BEM Univ', 'Dana Kegiatan BEM Univ', 'Dana Kegiatan BEM Univ', 'Dana Kegiatan BEM Univ', 'Dalam menunjang pelaksanaan program kerja selama 1 tahun', 'Dana Kegiatan BEM Univ', '2021-02-01', '2021-12-31', 'UTS', 'Kampus', '4000000', '4000000', '4250000', '2021-07-30', '2021-12-09'),
(299, 'WR1-76', 60, 'Dana Kegiatan DPM Univ', 'Dana Kegiatan DPM Univ', 'Dana Kegiatan DPM Univ', 'Dana Kegiatan DPM Univ', 'Dalam menunjang pelaksanaan program kerja selama 1 tahun', 'Dana Kegiatan DPM Univ', '2021-02-01', '2021-12-31', 'UTS', 'Kampus', '1500000', '1500000', '840000', '2021-07-30', '2021-12-16'),
(300, 'WR1-77', 60, 'Dana Kegiatan UKM Univ', 'Dana Kegiatan UKM Univ', 'Dana Kegiatan UKM Univ', 'Dana Kegiatan UKM Univ', 'Dalam menunjang pelaksanaan program kerja selama 1 tahun', 'Dana Kegiatan UKM Univ', '2021-02-01', '2021-12-31', 'kampus', 'Kampus', '17500000', '17500000', '4250000', '2021-07-30', '2021-12-14'),
(301, 'WR1-80', 60, 'Pelaksanaan Pemilu Raya (PEMIRA) dan Kongres Mahasiswa', 'Pelaksanaan Pemilu Raya (PEMIRA) dan Kongres Mahasiswa', 'Pelaksanaan Pemilu Raya (PEMIRA) dan Kongres Mahasiswa', 'Pelaksanaan Pemilu Raya (PEMIRA) dan Kongres Mahasiswa', 'Memberikan pengalaman kepada mahasiswa terkait pelaksanaan berdemokrasi di kampus dan memilih pemimpin organisasi (BEM/ DPM)', 'Pelaksanaan Pemilu Raya (PEMIRA) dan Kongres Mahasiswa', '2021-09-01', '2021-12-31', 'UTS', 'Kampus', '4000000', '4000000', '0', '2021-07-30', '2021-07-30'),
(302, 'WR1-81', 60, 'Program Holistik Pembinaan dan Pemberdayaan Desa (PHP2D)', 'Program Holistik Pembinaan dan Pemberdayaan Desa (PHP2D)', 'Program Holistik Pembinaan dan Pemberdayaan Desa (PHP2D)', 'Program Holistik Pembinaan dan Pemberdayaan Desa (PHP2D)', 'Kegiatan pemberdayaan masyarakat yang dilakukan oleh mahasiswa yang tergabung di dalam organisasi kemahasiswaan, Unit Kegiatan Mahasiswa (UKM) maupun Lembaga Eksekutif Mahasiswa, untuk menumbuhkan rasa peduli mahasiswa dan berkontribusi kepada masyarakat \ndesa agar terbangun desa binaan yang\naktif, mandiri, berwirausaha, dan \nsejahtera.', 'Program Holistik Pembinaan dan Pemberdayaan Desa (PHP2D)', '2021-02-01', '2021-04-30', 'UTS', 'Kampus', '1500000', '1500000', '0', '2021-07-30', '2021-07-30'),
(303, 'WR1-82', 60, 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kelengkapi kebutuhan rumah tangga seperti konsumsi rapat internal dan kegiatan lainnya', 'Kerumahtanggaan', '2021-07-01', '2021-12-31', 'UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(304, 'WR1-86', 62, 'Tingkat persebaran mahasiswa secara geografis', 'Tingkat persebaran mahasiswa secara geografis', 'Tingkat persebaran mahasiswa secara geografis', 'Sistem seleksi mahasiswa baru yang tranparan dan akuntabel', 'Persiapan Sosialisasi\n1. Menyiapkan dan mencetak brosur, kalender, Dan Spanduk\n2. Membuat Surat Permohonan sosialisasi untuk SMA/SMK/MA dan Instansi\n3. Pembentukan Panitia PMB Divisi Sosialisasi\n4. Membuat slide presentasi tentang profil universitas dan jurusan\n5. Membuat Rencana Anggaran Belanja kebutuhan\npelaksanaan Sosialisasi', 'Sistem seleksi mahasiswa baru yang tranparan dan akuntabel', '2021-01-01', '2021-01-28', 'Direktorat Pengelolaan dan Pemeliharaan Fasilitas', 'Kampus', '23950000', '23950000', '0', '2021-07-30', '2021-07-30'),
(305, 'WR1-87', 62, 'Pelaksanaan Sosialisas', 'Pelaksanaan Sosialisas', 'Pelaksanaan Sosialisas', 'Pelaksanaan Sosialisas', '1. Mendata sekolah yang akan di kunjungi untuk dilakukan sosialisasi\n2. Menghubungi Sekolah dan menentukan waktu sosialisasi\n3. Melakukan sosialisasi dalam bentuk ceramah, kuliah umum dan diskusi', 'Pelaksanaan Sosialisas', '2021-02-09', '2021-03-31', 'UPT. Dikmen SMA/SMK/MA dan Instansi di Kabupaten Sumbawa, Sumbawa Barat, Bima, dan Dompu', 'Kampus', '5733000', '5733000', '0', '2021-07-30', '2021-07-30'),
(306, 'WR1-88', 62, 'Publikasi PMB 2021', 'Publikasi PMB 2021', 'Publikasi PMB 2021', 'Publikasi PMB 2021', '1. Membuat berita PMB di media sosial dan media cetak Sarjana dan Pascasarjana\n2. Mencetak Spanduk PMB Sarjana dan Pascasarjana', 'Publikasi PMB 2021', '2021-02-02', '2021-06-30', 'Media online & Media Social kampus', 'Kampus', '9670000', '9670000', '0', '2021-07-30', '2021-07-30');
INSERT INTO `rkat` (`id_rkat`, `kode_rkat`, `id_user`, `sasaran_strategi`, `indikator_sasaran_strategi`, `nama_program`, `program_kerja`, `deskripsi`, `tujuan`, `mulai_program`, `selesai_program`, `tempat`, `sumber_anggaran`, `rencana_anggaran`, `total_anggaran`, `anggaran_digunakan`, `created_at`, `updated_at`) VALUES
(307, 'WR1-89', 62, 'Pelaksanaan Pendaftaran dan Seleksi', 'Pelaksanaan Pendaftaran dan Seleksi', 'Pelaksanaan Pendaftaran dan Seleksi', 'Pelaksanaan Pendaftaran dan Seleksi', '2. Pelaksanaan Pendaftaran dan Seleksi (Berkas, CBT dan Wawancara) Jalur Beasiswa Prestasi, Beasiswa Tau Samawa, Beasiswa Nusantara, Beasiswa OVTE dan BIP\ndan BIP\n1.1. Pendaftaran Mahasiswa Baru Jalur Beasiswa Prestasi\nPendaftaran Ofline :\n1. Melayani Pendaftar dan pengecekan kelengkapan\nberkas\n2. Pembuatan Kwitansi Pendaftaran\n3. Penginputan data di microsoft excel\n4. Pelaporan keuangan jumlah pendaftar kepada', 'Pelaksanaan Pendaftaran dan Seleksi', '2021-02-01', '2021-07-31', 'Kantor PMB', 'Kampus', '4530000', '4530000', '0', '2021-07-30', '2021-07-30'),
(308, 'WR1-90', 62, 'Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi,', 'Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi,', 'Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi,', 'Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi,', '3. Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi, Mahasiswa Internasional, Ekstensi dan Paralel 2020 - 2021\n1. Pendaftaran dan Seleksi Mahasiswa Baru\nPascasarjana, Ekstensi dan Paralel.\n1.1 Pelaksanaan Tes Potensi Akademik\n1.2 Pengumuman Kelulusan\n1.3 Pelaksanaan Pendaftaran Ulang', 'Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi,', '2021-02-09', '2021-07-31', 'kantor PMB & Online', 'Kampus', '2000000', '2000000', '0', '2021-07-30', '2021-07-30'),
(309, 'WR1-91', 62, 'Mendukung dan Bersinergi dengan Dosen,', 'Mendukung dan Bersinergi dengan Dosen,', 'Mendukung dan Bersinergi dengan Dosen,', 'Mendukung dan Bersinergi dengan Dosen,', 'Mendukung dan Bersinergi dengan Dosen, BEM, UKM dan HMJ dalam penyelenggaraan kegiatan yang melibatkan siswa SMA, SMK dan MA.', 'Mendukung dan Bersinergi dengan Dosen,', '2021-02-09', '2021-07-31', 'UTS', 'Kampus', '3500000', '3500000', '0', '2021-07-30', '2021-07-30'),
(310, 'WR3-03', 70, 'Workshop penulisan', 'jurnal internasional', 'Workshop penulisan jurnal internasional', 'Workshop penulisan jurnal internasional', 'Offline dan online dg pemateri internasional', 'Workshop penulisan jurnal internasional', '2021-05-01', '2021-05-31', 'UTS', 'Kampus', '2000000', '2000000', '0', '2021-08-05', '2021-08-05'),
(311, 'WR3-04', 70, 'Program I', 'dosen satu inovasi', 'Program I dosen satu inovasi', 'Program I dosen satu inovasi', 'Stimulus untuk para dosen yang menghasilkan invensi berpotensi paten', 'Program I dosen satu inovasi', '2021-06-01', '2021-06-30', 'UTS', 'kampus', '5000000', '5000000', '0', '2021-08-05', '2021-08-05'),
(312, 'WR3-06', 70, 'Program pendampingan penyusunan', 'HKI, paten, desain produksi', 'Program pendampingan penyusunan, HKI, paten, desain produksi', 'Program pendampingan penyusunan, HKI, paten, desain produksi', 'Program pendampingan HKI dilakukan dengan metode workshop', 'Program pendampingan penyusunan, HKI, paten, desain produksi', '2021-04-01', '2021-04-30', 'UTS', 'kampus', '2000000', '2000000', '0', '2021-08-05', '2021-08-05'),
(313, 'WR3-07', 70, 'Diseminasi', 'Riset', 'Diseminasi Riset', 'Diseminasi Riset', 'Melakukan monev terhadap penellitian dari dosen yang memperoleh hibah', 'Diseminasi Riset', '2021-05-01', '2021-05-31', 'UTS', 'kampus', '2500000', '2500000', '0', '2021-08-05', '2021-08-05'),
(314, 'WR3-08', 70, 'Buku profil', 'riset dan inovasi', 'Buku profil riset dan inovasi', 'Buku profil riset dan inovasi', '-Penyusunan buku profil Kompetensi Dosen di Bidang Penelitian dan Pengabdian, dan profile Riset dan pengabdian Dosen UTS\n-Expo hasil riset dan inovasi/TTG dosen', 'Buku profil riset dan inovasi', '2021-05-01', '2021-05-31', 'UTS', 'kampus', '2500000', '2500000', '0', '2021-08-05', '2021-08-05'),
(315, 'WR3-09', 70, 'Pengembangan aplikasi', 'Database riset', 'Pengembangan aplikasi database riset', 'Pengembangan aplikasi database riset', 'Perekapan data riset inovasi dosen', 'Pengembangan aplikasi database riset', '2021-03-01', '2021-03-31', 'UTS', 'kampus', '7000000', '7000000', '0', '2021-08-05', '2021-08-05'),
(318, 'INF-54', 84, 'Optimalisasi Perangkat Praktikum Artificial Inteligent, Internet Of Things dan Robotika', 'Tersedianya Perangkat Peraktikum untuk Konsentrasi Komputasi Cerdas dan IoT', 'Optimalisasi Kegiatan praktikum untuk meningkatkan Kompetensi Lulusan', 'Optimalisasi Kegiatan praktikum untuk meningkatkan Kompetensi Lulusan', 'Program ini di adakan untuk meningkatkan skil / kompetensi lulusan program studi Teknik Informatika bidang peminatan Komputasi Cerdas / Artificial Inteligent guna meningkatkan Daya Saing Lulusan.', 'Meningkatkan Mutu Praktikum serta meningkatkan Kompetensi lulusan', '2021-04-01', '2021-04-30', 'Informatika', 'kampus', '10000000', '10000000', '10000000', '2021-08-06', '2021-12-10'),
(319, 'FRS-53', 85, 'Praktikum', 'Teknik Industri', 'Praktikum Teknik Industri', 'Praktikum Teknik Industri', 'Kegiatan ini merupakan kegiatan pembelajaran dalam bentuk praktik', 'Praktikum Teknik Industri', '2021-04-21', '2021-04-21', 'Lab. Industri', 'kampus', '1000000', '1000000', '0', '2021-08-06', '2021-08-27'),
(320, 'INF-55', 84, 'Optimalisasi Perangkat Praktikum Jaringan', 'Tersedianya Perangkat Peraktikum untuk Konsentrasi Network & Security', 'Optimalisasi Kegiatan praktikum untuk meningkatkan Kompetensi Lulusan', 'Optimalisasi Kegiatan praktikum untuk meningkatkan Kompetensi Lulusan', 'Program ini di adakan untuk meningkatkan skil / kompetensi lulusan program studi Teknik Informatika bidang peminatan NETWORK & SECURITY guna meningkatkan Daya Saing Lulusan.', 'Meningkatkan Mutu Praktikum Bidang Jaringan serta meningkatkan Kompetensi lulusan', '2021-04-01', '2021-04-30', 'Lab. Informatika', 'kampus', '8500000', '8500000', '0', '2021-08-06', '2021-09-07'),
(321, 'FRS-57', 97, 'Sosialisasi', 'kurikulum dan visi-misi', 'Sosialisasi kurikulum dan visi-misi', 'Sosialisasi kurikulum dan visi-misi', 'Mengunjungi stake holder atau mengundang stake holder untuk membahas visi misi dan kurikulum Teknik Mesin', 'Sosialisasi kurikulum dan visi-misi', '2021-03-01', '2021-12-31', 'Menyesuaikan', 'universitas', '2000000', '2000000', '0', '2021-08-06', '2021-08-27'),
(322, 'SEK-02', 21, 'Buku SOP UTS', 'Buku SOP UTS', 'Buku SOP UTS', 'Buku SOP UTS', 'Penyusunan dan penyetakan Statuta UTS', 'Buku SOP UTS', '2021-07-01', '2021-07-31', 'UTS', 'kampus', '3000000', '3000000', '0', '2021-08-09', '2021-08-09'),
(323, 'SEK-04', 21, 'Kopi Dara', 'Medsos UTS Raya (Kodamin)', 'Kopi Darat bareng Mimin Medsos UTS Raya (Kodamin)', 'Kopi Darat bareng Mimin Medsos UTS Raya (Kodamin)', 'Kopdar ini adalah program Humas dengan mengundang para Admin akun media social yang ada di UTS, seperti Admin akun Media social Program Study, Fakultas, UPT, UKM, BEM Jurusan, BEM, Fakultas, BEM Senat, serta akun-akun komunitas UTS dan Influencer yang ada di UTS.', 'Kopi Darat bareng Mimin Medsos UTS Raya (Kodamin)', '2021-04-16', '2021-04-17', 'sumbawa', 'kampus', '3000000', '3000000', '3000000', '2021-08-09', '2021-12-16'),
(324, 'SEK-05', 21, 'Duta Mahasiswa UTS', 'Duta Mahasiswa UTS', 'Duta Mahasiswa UTS', 'Duta Mahasiswa UTS', 'Duta Mahasiswa adalah program tahunan UTS, yang dilaksanakan dalam bentuk karantina mahasiswa juga seleksi dengan memberikan pembekalan terkait public speaking, wawasan terkait UTS, serta menggali potensi mahasiswa yang unik yang nantinya akan bermanfaat bagi promosi kampus.', 'Duta Mahasiswa UTS', '2021-04-28', '2021-04-29', 'UTS', 'kampus', '5750000', '5750000', '5750000', '2021-08-09', '2021-12-17'),
(325, 'FTLM-01', 89, 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen renstra dan Renop periode 2021-2025', 'Terbentuknya tim penyusun dokumen renstra dan Renop Fakultas. & Rampungnya', 'Penyusunan dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral', 'Penyusunan dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral', 'Dekan membentuk tim penyusun dokumen renstra yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen renstra dan Renop.\n1) Terbentuknya tim penyusun dokumen renstra dan Renop Fakultas. \n2) Rampungnya dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Menyusun dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral (FTLM)', '2021-08-01', '2021-09-30', 'UTS', 'kampus', '1750000', '1750000', '1750000', '2021-08-09', '2021-12-16'),
(326, 'FTLM-02', 89, 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Visi, Misi, Tujuan dan Sasaran Fakultas', 'Terbentuknya tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran Fakultas.', 'Penyusunan dokumen Visi, Misi, Tujuan dan Sasaran Fakultas', 'Penyusunan dokumen Visi, Misi, Tujuan dan Sasaran Fakultas', 'Dekan membentuk tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen Visi, Misi, Tujuan dan Sasaran .\n1) Terbentuknya tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran Fakultas.\n2) Rampungnya dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM)', 'Menyusun dokumen Visi, Misi, Tujuan dan Sasaran Fakultas', '2021-08-01', '2021-10-31', 'UTS', 'kampus', '3000000', '3000000', '0', '2021-08-09', '2021-08-09'),
(327, 'FTLM-03', 89, 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Standar Operasional Prosedur (SOP)', 'Terbentuknya tim penyusun dokumen Standar Operasional Prosedur (SOP) Fakultas', 'Penyusunan dokumen Standar Operasional Prosedur (SOP) Fakultas', 'Penyusunan dokumen Standar Operasional Prosedur (SOP) Fakultas', 'Dekan membentuk tim penyusun dokumen Standar Operasional Prosedur (SOP) yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen SOP Fakultas\n1) Terbentuknya tim penyusun dokumen Standar Operasional Prosedur (SOP)Fakultas.\n2) Rampungnya dokumen Standar Operasional Prosedur (SOP)Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Menyusun dokumen Standar Operasional Prosedur (SOP) Fakultas', '2021-08-01', '2021-09-30', 'UTS', 'Kampus', '1500000', '1500000', '1500000', '2021-08-09', '2021-12-16'),
(328, 'FTLM-04', 89, 'Peningkatan kualitas SDM di Lingkungan Fakultas Teknologi Lingkungan dan Mineral (FTLM)', 'Dosen mengikuti coaching clinic. Menerapkan & Mengaplikasikan', 'Membekali dosen dengan coaching clinic membuat proposal Hibah.', 'Membekali dosen dengan coaching clinic membuat proposal Hibah.', 'Coachig Klinik dan Pembuatan Vidio pembelajaran merupakan salah satu pelatihan yang sangat berguna dalam mendukung kelancaran proses pembelajaran dan kualitas penelitian dari dosen di ligkungan FTLM untuk kemajuan Fakultas dan Dosen. \n1) Dosen mengikuti coaching clinic membuat proposal Hibah dan Pelatihan Pembuatan Vidio Pembelajaran yang menarik\n2) Dosen menerapkan apa yang diperoleh saat pelatihan\n3) Dosen yang telah mengikuti pelatihan mampu mengaplikasikan ilmunya dalam bentuk produk proposal hibah dan vidio pembelajaran.', 'Kegiatan ini dimaksudkan agar adanya peningkatan kualitas SDM terutama pembuatan proposal', '2021-10-01', '2021-10-31', 'During & laring', 'Kampus', '1500000', '1500000', '1500000', '2021-08-09', '2021-12-16'),
(329, 'FTLM-05', 89, 'Peningkatan wawasan mahasiswa baru terkait Fakultas Teknologi Lingkungan dan Mineral', 'Mahasiswa Baru akan lebih mengenalkan Fakultas Teknologi Lingkungan dan Mineral', 'Mengenalkan Fakultas Teknologi Lingkungan dan Mineral kepada mahasiswa baru angkatan 2021', 'Mahasiswa Baru akan lebih mengenalkan Fakultas Teknologi Lingkungan dan Mineral', 'Pengenalan Orientasi Fakultas dan Pengenalan Kampus FTLM merupakan agenda penting dengan tujuan mengenalkan, membentuk, dan menanamkan nilai-nilai yang sudah ada terlebih dahulu kepada mahasiswa baru Fakultas Teknologi Lingkungan dan Mineral  dengan harapan terciptanya mahasiswa teknik yang solid, aktif dan loyalitas serta memiliki nilai toleransi berbudaya yang tinggi antar sesama.', 'Kegiatan ini dimaksudkan agar adanya Kegiatan Oriesntasi Fakultas,', '2021-09-01', '2021-09-30', 'Kondisional', 'kampus', '1000000', '1000000', '1000000', '2021-08-09', '2021-12-10'),
(330, 'FTLM-06', 89, 'Meningkatkan kesadaran dosen dan mahasiswa terhadap lingkungan', 'Partisipasi dosen dan mahasiswa', 'Pengabdian Masyarakat Aksi Peduli Lingkungan', 'Pengabdian Masyarakat Aksi Peduli Lingkungan', 'Sebagai Wadah Pengabdian Dosen dan Mahasiswa Fakultas Teknnologi Lingkungan dan Mineral terhadap Lingkungan di Masyarakat Sekitar', 'Untuk menjadi wadah pengabdian Dosen dan Mahasiswa di Masyarakat Sekitar', '2021-11-01', '2021-11-30', 'Desa Binaan', 'Kampus', '1000000', '1000000', '0', '2021-08-09', '2021-08-09'),
(331, 'FTLM-07', 89, 'Meningkatnya mutu publikasi hasil penelitian dosen-dosen di Fakultas Teknologi Lingkungan dan Mineral', 'Angka dan Mutu Publikasi Meningkat', 'Program Talangan Publikasi Jurnal Internasional Bereputasi atau minimal Sinta 2.', 'Program Talangan Publikasi Jurnal Internasional Bereputasi atau minimal Sinta 2.', 'Program membantu proses Publikasi dengan talangan dari Fakultas', 'Meningkatkan Jumlah Publikasi Internasional Bereputasi atau minimal Sinta 2.', '2021-12-01', '2021-12-31', 'Gd. Rektorat, Lt.2 FTLM', 'kampus', '2250000', '2250000', '0', '2021-08-09', '2021-08-09'),
(332, 'FTLM-08', 89, 'Mempersiapkan Jurnal Fakultas menjadi Jurnal Terakreditasi', 'Pembiayaan DOI Jurnal Fakultas (Hexagon)', 'Pengembangan Jurnal Fakultas', 'Pengembangan Jurnal Fakultas', 'Pembiayaan DOI Jurnal', 'Meningkatkan indexing jurnal dan meningkatkan kualitas Jurnal', '2021-08-01', '2021-08-31', 'FTLM - Rektorat, Lt.2', 'Kampus', '1000000', '1000000', '1000000', '2021-08-09', '2021-12-16'),
(333, 'FRS-01', 111, 'ATK Fakultas', 'ATK Fakultas', 'ATK Fakultas', 'ATK Fakultas', 'Memenuhi keperluan pelayanan administrasi surat menyurat di lingkungan Fakultas Rekayasa Sistem', 'ATK Fakultas', '2021-08-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '2000000', '2000000', '0', '2021-08-09', '2021-08-27'),
(334, 'FRS-02', 111, 'Penyusunan Visi, Misi, Renstra dan Renop Serta Alur Pelayanan Administrasi Akademik FRS 2021-2024', 'Penyusunan Visi, Misi, Renstra dan Renop Serta Alur Pelayanan Administrasi Akademik FRS 2021-2024', 'Penyusunan Visi, Misi, Renstra dan Renop Serta Alur Pelayanan Administrasi Akademik FRS 2021-2024', 'Penyusunan Visi, Misi, Renstra dan Renop Serta Alur Pelayanan Administrasi Akademik FRS 2021-2024', 'Pembentukan tim perumus dan Penyusunan Visi, Misi, Renstra dan Renop serta Alur Pelayanan Administrasi Akademik FRS', 'Penyusunan Visi, Misi, Renstra dan Renop Serta Alur Pelayanan Administrasi Akademik FRS 2021-2024', '2021-07-01', '2021-09-30', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '2000000', '2000000', '1187000', '2021-08-09', '2021-12-07'),
(335, 'FRS-03', 111, 'Rapat Rutin Fakultas', 'Rapat Rutin Fakultas', 'Rapat Rutin Fakultas', 'Rapat Rutin Fakultas', 'Rapat rutin Bulanan pimpinan fakultas yang terdiri dari Dekan, Wadek, Maneger, Kaprodi, dan Sekprodi yang dilakukan sekali 1 bulan', 'Rapat Rutin Fakultas', '2021-08-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '1200000', '1200000', '1200000', '2021-08-09', '2021-12-08'),
(336, 'FRS-04', 111, 'Media Dokumentasi dan Publikasi Fakultas ( Handphone, Banner struktur dll)', 'Media Dokumentasi dan Publikasi Fakultas ( Handphone, Banner struktur dll)', 'Media Dokumentasi dan Publikasi Fakultas ( Handphone, Banner struktur dll)', 'Media Dokumentasi dan Publikasi Fakultas ( Handphone, Banner struktur dll)', 'Memenuhi keperluan pelayanan administrasi, penyampaian informasi melalui media sosial dan untuk mengenalkan struktur organisasi yang ada di lingkungan Fakultas Rekayasa Sistem', 'Media Dokumentasi dan Publikasi Fakultas ( Handphone, Banner struktur dll)', '2021-08-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '2500000', '2500000', '2500000', '2021-08-09', '2021-12-13'),
(337, 'FRS-06', 111, 'Pelatihan Penulisan Proposal Penelitian dan Pengabdian  Dosen', 'Pelatihan Penulisan Proposal Penelitian dan Pengabdian  Dosen', 'Pelatihan Penulisan Proposal Penelitian dan Pengabdian  Dosen', 'Pelatihan Penulisan Proposal Penelitian dan Pengabdian  Dosen', 'Kegiatan ini dimaksudkan untuk menghimpun para peneliti di Fakultas dalam klaster lintas disiplin ilmu selama 3 hari dengan output proposal penelitian dan pengabdian siap submit', 'Pelatihan Penulisan Proposal Penelitian dan Pengabdian  Dosen', '2021-11-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1500000', '1500000', '0', '2021-08-09', '2021-08-27'),
(338, 'FRS-07', 111, 'Pelatihan Penulisan Jurnal Terindek Sinta dan Scopus', 'Pelatihan Penulisan Jurnal Terindek Sinta dan Scopus', 'Pelatihan Penulisan Jurnal Terindek Sinta dan Scopus', 'Pelatihan Penulisan Jurnal Terindek Sinta dan Scopus', 'Kegiatan Ini dimasukkan untuk meningkatkan Publikasi Dosen', 'Pelatihan Penulisan Jurnal Terindek Sinta dan Scopus', '2021-09-01', '2021-10-31', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1200000', '1200000', '0', '2021-08-09', '2021-08-27'),
(339, 'FRS-08', 111, 'Webinar Fakultas', 'Webinar Fakultas', 'Webinar Fakultas', 'Webinar Fakultas', 'Pelaksanaan Webinar Fakultas Sebagai Wadah Pengabdian Kepada Masyarakat di Masa Pandemi', 'Webinar Fakultas', '2021-10-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1000000', '1000000', '0', '2021-08-09', '2021-08-27'),
(340, 'FRS-09', 111, 'Tim Penyusunan Rodmap Penelitian dan Pengabdian Masyarakat Fakultas Rekayasa Sistem Tahun 2021-2024', 'Tim Penyusunan Rodmap Penelitian dan Pengabdian Masyarakat Fakultas Rekayasa Sistem Tahun 2021-2024', 'Tim Penyusunan Rodmap Penelitian dan Pengabdian Masyarakat Fakultas Rekayasa Sistem Tahun 2021-2024', 'Tim Penyusunan Rodmap Penelitian dan Pengabdian Masyarakat Fakultas Rekayasa Sistem Tahun 2021-2024', 'Dalam pelaksanaan kegiatan penelitian dan pengbadian masyarakat sesuai dengan rodmap Fakultas', 'Tim Penyusunan Rodmap Penelitian dan Pengabdian Masyarakat Fakultas Rekayasa Sistem Tahun 2021-2024', '2021-09-01', '2021-10-31', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1000000', '1000000', '0', '2021-08-09', '2021-08-27'),
(341, 'FRS-10', 111, 'Silaturrahim dan koordinasi dengan Ormawa tingkat Fakultas', 'Silaturrahim dan koordinasi dengan Ormawa tingkat Fakultas', 'Silaturrahim dan koordinasi dengan Ormawa tingkat Fakultas', 'Silaturrahim dan koordinasi dengan Ormawa tingkat Fakultas', 'Kegiatan ini dilakukan untuk menjalin komunikasi dan koordinasi dengan semua Orwama tingkat fakultas', 'Silaturrahim dan koordinasi dengan Ormawa tingkat Fakultas', '2021-08-01', '2021-09-30', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '350000', '350000', '350000', '2021-08-09', '2021-12-09'),
(342, 'FRS-11', 111, 'Silaturrahim dan menjalin kerjassama dengan alumni tingkat Fakultas', 'Silaturrahim dan menjalin kerjassama dengan alumni tingkat Fakultas', 'Silaturrahim dan menjalin kerjassama dengan alumni tingkat Fakultas', 'Silaturrahim dan menjalin kerjassama dengan alumni tingkat Fakultas', 'Kegiatan ini dimaksudkan untuk mejalin silaturrahim dan membuat kerjasama dengan antar alumni tingkat fakultas', 'Silaturrahim dan menjalin kerjassama dengan alumni tingkat Fakultas', '2021-09-01', '2021-10-31', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '500000', '500000', '500000', '2021-08-09', '2021-12-08'),
(343, 'FRS-12', 111, 'Pemantauan terhadap  minat dan menganalisis potensi untuk menjaring mahasiswa berprestasi', 'Pemantauan terhadap  minat dan menganalisis potensi untuk menjaring mahasiswa berprestasi', 'Pemantauan terhadap  minat dan menganalisis potensi untuk menjaring mahasiswa berprestasi', 'Pemantauan terhadap  minat dan menganalisis potensi untuk menjaring mahasiswa berprestasi', 'Melakukan pemantauan terhadap minat dan menganalisis potensi mahasiswa baik akademik maupun non akademik sehingga bisa menjaring mahasiswa berprestasi', 'Pemantauan terhadap  minat dan menganalisis potensi untuk menjaring mahasiswa berprestasi', '2021-09-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '250000', '250000', '0', '2021-08-09', '2021-08-27'),
(344, 'FRS-13', 111, 'Sosialisasi, pelatihan dan  pendampingan kegiatan kompetisi mahasiswa', 'Sosialisasi, pelatihan dan  pendampingan kegiatan kompetisi mahasiswa', 'Sosialisasi, pelatihan dan  pendampingan kegiatan kompetisi mahasiswa', 'Sosialisasi, pelatihan dan  pendampingan kegiatan kompetisi mahasiswa', 'Melakukan sosialisasi, pelatihan dan pendampingan terhadap kegiatan mahasiswa (kompetensi akademik maupun non akademik)', 'Sosialisasi, pelatihan dan  pendampingan kegiatan kompetisi mahasiswa', '2021-08-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '3000000', '3000000', '0', '2021-08-09', '2021-08-27'),
(345, 'FRS-14', 111, 'FGD dan evaluasi kegiatan kemahasiswaan', 'FGD dan evaluasi kegiatan kemahasiswaan', 'FGD dan evaluasi kegiatan kemahasiswaan', 'FGD dan evaluasi kegiatan kemahasiswaan', 'Melakukan evaluasi kegiatan kemahasiswaan selama satu semester berjalan', 'FGD dan evaluasi kegiatan kemahasiswaan', '2021-12-01', '2021-12-31', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '500000', '500000', '0', '2021-08-09', '2021-08-27'),
(346, 'FRS-15', 111, 'Dana Kegiatan BEM dan DPM Fakultas', 'Dana Kegiatan BEM dan DPM Fakultas', 'Dana Kegiatan BEM dan DPM Fakultas', 'Dana Kegiatan BEM dan DPM Fakultas', 'Anggaran kegiatan dalam menjalankan program yang direncanakan', 'Dana Kegiatan BEM dan DPM Fakultas', '2021-08-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '1500000', '1500000', '0', '2021-08-09', '2021-08-27'),
(347, 'FRS-16', 111, 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dalam hal pendidikan dalam bentuk transfer knowledge melalui pendidikan dan pelatihan pertukaran mahasiswa, magang, KKN tematik di daerah dan riset', 'Kerjasama dengan perguruan tinggi dan steakholder', '2021-09-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1200000', '1200000', '0', '2021-08-09', '2021-08-27'),
(348, 'FRS-17', 111, 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Pengembangan penjaminan mutu Produk, SDM Dan Standar ISO', 'Kerjasama dengan perguruan tinggi dan steakholder', '2021-09-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '500000', '500000', '0', '2021-08-09', '2021-08-27'),
(349, 'FRS-18', 111, 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Dosen tamu  (guest lecturer) sebagai pemateri dalam webinar fakultas', 'Kerjasama dengan perguruan tinggi dan steakholder', '2021-10-01', '2021-11-30', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1000000', '1000000', '0', '2021-08-09', '2021-08-27'),
(350, 'FRS-19', 111, 'kerjasama Jasa dan royalti hak kekayaan intelektual (Non akademik)', 'kerjasama Jasa dan royalti hak kekayaan intelektual (Non akademik)', 'kerjasama Jasa dan royalti hak kekayaan intelektual (Non akademik)', 'kerjasama Jasa dan royalti hak kekayaan intelektual (Non akademik)', 'Memperoleh perlindungan secara hukum atas kekayaan intelektual pada Suatu karya atau produk sesuai dengan peraturan perundang-undangan di bidang HKI', 'kerjasama Jasa dan royalti hak kekayaan intelektual (Non akademik)', '2021-09-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Universitas', '500000', '500000', '0', '2021-08-09', '2021-08-27'),
(353, 'ASR-01', 113, 'Data Base Penghuni Asrama', 'Data Base Penghuni Asrama', 'Data Base Penghuni Asrama', 'Data Base Penghuni Asrama', 'Pembenahan dan Update Data Mahasiswa Penghuni Asrama', 'Data Base Penghuni Asrama', '2021-08-01', '2021-12-31', 'Gd. Asrama', 'Kampus', '1000000', '1000000', '0', '2021-08-10', '2021-08-10'),
(354, 'ASR-02', 113, 'Pembuatan Buku Panduan Asrama UTS', 'Pembuatan Buku Panduan Asrama UTS', 'Pembuatan Buku Panduan Asrama UTS', 'Pembuatan Buku Panduan Asrama UTS', 'Terbitnya buku panduan asrama UTS yang memuat semua informasi asrama : Aturan, kegiatan dan informasi penting lainnya', 'Pembuatan Buku Panduan Asrama UTS', '2021-08-01', '2021-12-31', 'Gd. Asrama', 'Kampus', '1000000', '1000000', '0', '2021-08-10', '2021-08-10'),
(355, 'ASR-03', 113, 'Sosialisasi dan Pengenalan Kehidupan Berasrama (Orientasi Asrama 2021 )', 'Sosialisasi dan Pengenalan Kehidupan Berasrama (Orientasi Asrama 2021 )', 'Sosialisasi dan Pengenalan Kehidupan Berasrama (Orientasi Asrama 2021 )', 'Sosialisasi dan Pengenalan Kehidupan Berasrama (Orientasi Asrama 2021 )', 'Memberikan pengenalan tentang keasramaan, manajemen keuangan, pola hidup sehat, adab bergaul dan berprestasi pada para penghuni baru asrama UTS', 'Sosialisasi dan Pengenalan Kehidupan Berasrama (Orientasi Asrama 2021 )', '2021-08-01', '2021-12-31', 'Asrama', 'kampus', '500000', '500000', '0', '2021-08-10', '2021-08-10'),
(356, 'ASR-04', 113, 'Rekreasi Asrama', 'Rekreasi Asrama', 'Rekreasi Asrama', 'Rekreasi Asrama', 'menjadikan Mahasiswa Penghuni Asrama yang lebih relaks setelah banyak pembinaan yang dia dapatkan dan juga mengenal  tentang keindahan alam di daerah sekitarnya serta mensyukuri segala ciptaan yang diberikan Tuhan Yang Maha Esa', 'Rekreasi Asrama', '2021-08-01', '2021-12-31', 'Asrama', 'Kampus', '500000', '500000', '0', '2021-08-10', '2021-08-10'),
(357, 'ASR-05', 113, 'Buka Puasa Bersama', 'Buka Puasa Bersama', 'Buka Puasa Bersama', 'Buka Puasa Bersama', 'memberikan pedoman kepada Mahasiswa Penghuni Asrama dalam hal ketaqwaan kepada tuhan Yang Maha Esa.', 'Buka Puasa Bersama', '2021-06-01', '2021-06-30', 'Asrama', 'Kampus', '1000000', '1000000', '0', '2021-08-10', '2021-08-10'),
(358, 'ASR-06', 113, 'Program Zero Waste dan Penghijauan Lingkungan', 'Program Zero Waste dan Penghijauan Lingkungan', 'Program Zero Waste dan Penghijauan Lingkungan', 'Program Zero Waste dan Penghijauan Lingkungan', 'Memberikan pemahaman kepada Mahasiswa Penghuni Asrama tentang pentingnya penghijauan lingkungan', 'Program Zero Waste dan Penghijauan Lingkungan', '2021-08-01', '2022-01-31', 'Asrama', 'Kampus', '500000', '500000', '0', '2021-08-10', '2021-08-10'),
(359, 'ASR-07', 113, 'Klinik Layanan Kesehatan', 'Klinik Layanan Kesehatan', 'Klinik Layanan Kesehatan', 'Klinik Layanan Kesehatan', 'Tersedianya sarana pelayanan kesehatan asrama berupa klinik, obat-obatan dan dokter praktek dua kali seminggu', 'Klinik Layanan Kesehatan', '2021-08-01', '2022-02-28', 'Asrama', 'Kampus', '500000', '500000', '0', '2021-08-10', '2021-08-10'),
(360, 'ASR-08', 113, 'Pemeliharaan Pagar dan Taman', 'Pemeliharaan Pagar dan Taman', 'Pemeliharaan Pagar dan Taman', 'Pemeliharaan Pagar dan Taman', 'Menjaga gangguan dari hewan-hewan liar dan meningkatkan keindahan, kenyamanan dan kesejukan asrama', 'Pemeliharaan Pagar dan Taman', '2021-08-01', '2022-04-30', 'Asrama', 'Kampus', '2500000', '2500000', '0', '2021-08-10', '2021-08-10'),
(361, 'ASR-09', 113, 'Pengadaan CPU computer', 'Pengadaan CPU computer', 'Pengadaan CPU computer', 'Pengadaan CPU computer', 'melengkapi kekurangan pada bagian administrasi di Asrama serta meningkatkan pelayanan Asrama yang lebih baik', 'Pengadaan CPU computer', '2021-08-01', '2021-12-31', 'Asrama', 'Kampus', '3500000', '3500000', '0', '2021-08-10', '2021-08-10'),
(362, 'SEK-06', 21, 'UTS Award', 'UTS Award', 'UTS Award', 'UTS Award', 'program dalam rangka dies natalis UTS, yang akan diberikan kepada orang-orang, tokoh, pejuang bagi kepentingan orang banya. Seperti pejuang lingkungan, guru honorer dll.', 'UTS Award', '2021-05-24', '2021-05-25', 'UTS', 'Kampus', '5600000', '5600000', '0', '2021-08-12', '2021-08-12'),
(363, 'SEK-07', 21, 'Media Gathering', 'Media Gathering', 'Media Gathering', 'Media Gathering', 'Merupakan spesial event Univeristas dengan mengundang wartawan dari berbagai media.', 'Media Gathering', '2021-05-06', '2021-05-07', 'Univeristas', 'kampus', '11000000', '11000000', '0', '2021-08-12', '2021-08-12'),
(364, 'SEK-14', 21, 'Pemotretan Media', 'Pemotretan Media', 'Pemotretan Media', 'Pemotretan Media', 'Pemotretan untuk keperluan media UTS', 'Pemotretan Media', '2021-06-01', '2021-06-30', 'UTS', 'universitas', '1000000', '1000000', '0', '2021-08-12', '2021-08-12'),
(365, 'upt-cdc00', 114, 'peltaihan', 'peltaihan', 'peltaihan', 'peltaihan', 'peltaihan', 'peltaihan', '2021-08-16', '2021-08-19', 'peltaihan', 'peltaihan', '1000000', '1000000', '0', '2021-08-16', '2021-08-16'),
(367, 'WR1-28', 53, 'Buku Panduan', 'Akademik', 'Buku Panduan Akademik', 'Buku Panduan Akademik', 'Pembuatan (cetak) Buku Peraturan Akademik', 'Buku Panduan Akademik', '2021-08-01', '2021-08-31', 'warek 1', 'Kampus', '4500000', '4500000', '4500000', '2021-08-18', '2021-12-08'),
(368, 'PBH-01', 64, 'Registration and certification system', 'Integrated Online EEAPT', 'Integrated Online EEAPT registration and certification system', 'Integrated Online EEAPT registration and certification system', 'Dengan adanya sistem pendaftaran online dan sertifikasi online maka akan memperpendek waktu tunggu penerbitan sertifikat dan dengan adanya sistem barcode akan menjamin keaslian dan keabsahan sertifikat tersebut.', 'Integrated Online EEAPT registration and certification system', '2021-06-01', '2021-12-31', 'Ruang - Pusat Bahasa', 'universitas', '2000000', '2000000', '0', '2021-08-23', '2021-08-23'),
(369, 'PBH-03', 64, 'Merchandise UPT Bahasa', 'Merchandise UPT Bahasa', 'Merchandise UPT Bahasa', 'Merchandise UPT Bahasa', 'Melakukan ekspansi layanan UPT dan\nsebagai media promosi UPT Bahasa\ndengan menjual Tshirt, thumbler, gantungan kunci', 'Merchandise UPT Bahasa', '2021-06-01', '2021-07-06', 'R.Pusat Bahasa', 'Kampus', '2000000', '2000000', '0', '2021-08-23', '2021-08-23'),
(370, 'PBH-10', 64, 'ES TOEFL ITP Bagi SDM Pubah', 'ES TOEFL ITP Bagi SDM Pubah', 'ES TOEFL ITP Bagi SDM Pubah', 'ES TOEFL ITP Bagi SDM Pubah', 'Untuk meningkatkan kapasitas SDM Pusat Bahasa maka perlu adanya sertifikat English Proficiency bagi SDM Pubah', 'ES TOEFL ITP Bagi SDM Pubah', '2021-08-24', '2021-11-30', 'Univeristas', 'Kampus', '1600000', '1600000', '0', '2021-08-23', '2021-08-23'),
(371, 'PBH-11', 64, 'Pembuatan Video', 'kegiatan unggulan dan profil UPT bahasa', 'Pembuatan Video kegiatan unggulan dan profil UPT bahasa', 'Pembuatan Video kegiatan unggulan dan profil UPT bahasa', 'ercapainya informasi yang jelas dan dapat dimengert', 'Pembuatan Video kegiatan unggulan dan profil UPT bahasa', '2021-04-01', '2021-04-30', 'Ruang bahasa', 'Kampus', '1500000', '1500000', '1500000', '2021-08-23', '2021-12-28'),
(372, 'PBH-12', 64, 'Pengadaan 2 unit Speaker', 'Pengadaan 2 unit Speaker', 'Pengadaan 2 unit Speaker', 'Pengadaan 2 unit Speaker', 'Pembelian 2 unit speaker miniso', 'Pengadaan 2 unit Speaker', '2021-04-01', '2021-04-30', 'R - Pusat Bahasa', 'kampus', '1000000', '1000000', '0', '2021-08-23', '2021-08-23'),
(373, 'SPL - 09', 115, 'Melakukan peningkatan Prodi sipil dan juga SDM', 'Kegiatan yang dilakukan  adalah sebagai peningkatan prodi dari segi mutu internal dan memiliki daya saing', 'Rapat Internal Program Studi', 'Rapat Internal Program Studi', 'Kegiatan Prodi yang dilaksanakan untuk perencanaan visi misi prodi dan renstra prodi yang mengundang stakholder, mahasiswa, alumni dan para dosen', 'Untuk Menjadikan Prodi Sipil Lebih Maju lagi untuk kedepannya sesuai dengan visi misi prodi', '2021-03-01', '2021-04-30', 'Ruang - FTLM', 'universitas', '3000000', '3000000', '0', '2021-08-26', '2021-08-26'),
(374, 'SPL - 34', 115, 'Peningkatkan SDM dari dosen Sipil dalam Bidang Keilmuannya', 'Pelatihan Keprofesian/bidang keahlian untuk dosen', 'Pelatihan Keprofesian/Bidang Keahlian sipil', 'Pelatihan Keprofesian/Bidang Keahlian sipil', 'Dalam kegiatan ini setiap dosen diminta untuk mengikuti asosiasi yang berkaitan dengan keilmuan', 'Memperoleh Informasi terkait pelaksanaan bidang keahlian Teknik Sipil', '2021-04-01', '2021-10-31', 'Mataram', 'universitas', '4000000', '4000000', '0', '2021-08-26', '2021-08-26'),
(375, 'SPL - 48', 115, 'Meningkatkan Program Studi dalam segi sarana dan Prasarana', 'Peningkatan Fasilitas Penunjang aktivitas program pendidikan dan penelitian', 'Praktikum Teknik Sipil', 'Praktikum Teknik Sipil', 'meningkatkan sarana dan prasarana Untuk mempermudah dalam kegiatan praktikum', 'sebagai kegiatan penunjang proses perkuliahan (bentuk implementasi dari hasil materi di kelas)', '2021-03-01', '2021-04-30', 'Jakarta', 'universitas', '20000000', '20000000', '0', '2021-08-26', '2021-08-26'),
(376, 'SPL - 82', 115, 'Peningkatan Pemahaman Mahasiswa dalam Ajang Perlombaan Tingkat Nasional maupun Internasional', 'Mengikuti perlombaan yang berkaitan tentang sipil baik tingkat rergional dan nasional', 'Perlombaan Civil', 'Perlombaan Civil', 'Mahasiswa mengikuti perlombaan baik perlombaan beton, jembatan, struktur gedung, jalan dalam bentuk maket maupun perancangan', 'untuk memperkenalkan program studi teknik sipil UTS di kancah nasional maupun internasional', '2021-04-01', '2021-04-02', 'R. FTLM', 'universitas', '2000000', '2000000', '0', '2021-08-26', '2021-08-26'),
(377, 'SPL - 89', 115, 'Sosialisasi tentang Mata Kuliah Yang didapat di Bangku Perkuliahan dalam Bentuk Kuliah Industri', 'Melaksanakan kuliah lapangan', 'Civil Kunjungan Industri', 'Civil Kunjungan Industri', 'Ada beberapa mata kuliah yang harus turun langsung kelapangan untuk melihat suatu kondisi lapangan, seperti jembatan, bendungan, bangunan gedung, transportasi, dan geoteknik', 'untuk memahami materi yang ada di dalam kelas yang diaplikasikan di lapangan', '2021-04-01', '2021-04-02', 'Kabupaten Sumbawa', 'universitas', '1500000', '1500000', '0', '2021-08-26', '2021-08-26'),
(378, 'MTL -10', 112, 'Mengawal berlangsungnya proses PPEPP pada setiap kegiatan yang dilakukan oleh prodi Teknik Metalurgi secara bersama-sama', 'Kehadiran dosen dalam setiap rapat mencapai 80%', 'Rapat (rutin) Prodi', 'Rapat (rutin) Prodi', 'Rapat Program Studi merupakan kegiatan rutin yang dilaksanakan setiap Jum\'at ke-3 di setiap bulannya. Pada rapat ini dibahas mulai dari perencanaan proker, progres proker hingga evaluasi terhadap kegiatan yang sudah berjalan.', 'Mempererat silaturrahim dan menjaga ritme organisasi agar tetap kompak', '2021-08-01', '2022-08-31', 'FTLM', 'Kampus', '1200000', '1200000', '0', '2021-08-26', '2021-08-26'),
(379, 'MTL - 11', 112, 'Tersusunnya RKAT 2022 dan Laporan Tahunan 2021', 'Telah tersusunnya RKAT untuk tahun 2022', 'Rapat Kerja dan Evaluasi Pencapaian Tahunan', 'Rapat Kerja dan Evaluasi Pencapaian Tahunan', 'Kegiatan ini merupakan rapat tahunan yang biasa digunakan oleh seluruh dosen di prodi teknik Metalurgi untuk menyusun rencana kerja selama satu tahun ke depan dan mengevaluasi capaian selama satu tahun ke belakang.', 'Menyusun Rencana Kerja Tahunan serta melakukan evaluasi terhadap pencapaian tahunan', '2021-12-01', '2021-12-31', 'Raberas resto', 'Kampus', '1500000', '1500000', '0', '2021-08-26', '2021-08-26'),
(380, 'MTL - 25', 112, 'Terbentuknya pusat studi pengolahan serat hayati', 'Adanya ruang inkubasi riset antara mahasiswa dan dosen', 'Membentuk pusat studi pengolahan serat hayati', 'Membentuk pusat studi pengolahan serat hayati', 'Untuk meningkatkan penelitian dan potensi alam Sumbawa di bidang material serat hayati', 'Menjadikan teknik metalurgi menjadi pusat studi pengolahan serat hayati di Sumbawa', '2021-07-01', '2021-07-31', 'UTS', 'universitas', '2000000', '2000000', '0', '2021-08-26', '2021-08-26'),
(381, 'MTL - 35', 112, 'Menyiapkan dosen Keahlian sesuai bidang Minat Program studi', 'Adanya dosen tersertifikasi keahlian di program studi Teknik Metalurgi', 'Sertifikasi Keahlian Dosen ( 2 Orang / Tahun)', 'Sertifikasi Keahlian Dosen ( 2 Orang / Tahun)', 'Mengikuti Diklat Implementasi Sistem Manajemen Keselamatan Pertambangan Minerba Berbasis Online Learning', 'Memperpersiapkkan Asesor, meningkatkan kompetensi dosen dalam bidang pertambangan', '2021-05-01', '2021-05-31', 'UTS', 'Daring', '3500000', '3500000', '0', '2021-08-26', '2021-08-26'),
(382, 'MTL - 42', 112, 'Prodi Teknik Metalurgi memiliki dokumen renstra periode 2021-2025', 'Adanya ruang inkubasi riset antara mahasiswa dan dosen', 'Penyusunan dokumen Renstra Prodi Teknik Metalurgi 2021-2025', 'Penyusunan dokumen Renstra Prodi Teknik Metalurgi 2021-2025', 'Kaprodi membentuk tim penyusun dokumen renstra yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen renstra.', 'Menyusun dokumen Renstra Prodi Teknik Metalurgi periode 2021-2025', '2021-04-01', '2021-04-30', 'UTS', 'kampus', '1000000', '1000000', '0', '2021-08-26', '2021-08-26'),
(383, 'MTL - 44', 112, 'Adanya peningkatan mutu dari tahun sebelumnya', 'Jumlah item yang dinilai OB+ meningkat dari tahun sebelumnya', 'Persiapan Audit Mutu Internal', 'Persiapan Audit Mutu Internal', 'Kegiatan Audit Mutu Internal merupakan kegiatan rutin yang dilakukan sekali dalam setahun oleh Badan Penjamin Mutu Akademik (BPMA). Melalui kegiatan ini salah satu fungsi monitoring atau kendali mutu di program studi dilakukan.', 'Untuk mempersiapkan segala dokumen yang diperlukan s', '2021-10-01', '2021-10-31', 'ruang FTLM', 'Kampus', '500000', '500000', '0', '2021-08-26', '2021-08-26'),
(384, 'MTL - 49', 112, 'Semua modul praktikum yang ada dibuat interaktif dan adaptif untuk digunakan di masa pandemi', 'Tersusunnya seluruh modul praktikum', 'Pengembangan Modul Praktikum yang adaptif di masa pandemi', 'Pengembangan Modul Praktikum yang adaptif di masa pandemi', 'Akan dibentuk Tim Pengembangan Modul Praktikum sesuai dengan rumpun keilmuan dosen. Nantinya tim akan mengevaluasi modul praktikum yang sudah ada dan mengembangkan emodul praktikum yang baru yang interaktif dan adaptif digunakan di masa pandemi sekalipun.', 'Mengevaluasi modul praktikum yang telah ada', '2021-08-01', '2021-08-31', 'UTS', 'kampus', '500000', '500000', '500000', '2021-08-26', '2021-12-13'),
(385, 'MTL - 51', 112, 'Mahasiswa mampu memahami sekaligus melakukan praktek bagaimana cara ekstraksi logam', 'Mahasiswa mampu melakukan praktek mandiri.', 'Praktikum Metalurgi Ekstraksi', 'Praktikum Metalurgi Ekstraksi', 'Praktikum metalurgi ekstraksi akan dilakukan di lab.kimia. Peserta yang hadir dari 2 kelas angkatan 2018. praktikum akan dibagi menjadi 4 kelompok yang terdiri dari kelompok ekstraksi besi, mangan, Silika, dan tembaga.', 'Kegiatan Praktikum ini bertujuan untuk menambah skill bagi mahasiswa dalam proses pengolahan logam.', '2021-04-01', '2021-04-30', 'Lab. Kimia', 'kampus', '2000000', '2000000', '0', '2021-08-26', '2021-08-26'),
(386, 'MTL - 52', 112, 'mahasiswa memahami setiap langkah percobaan/praktikum yang dilakukan', 'Mahasiswa mampu memahami proses dan reaksi kimia yang terjadi pada setiap acara yang dipraktekkan', 'Praktikum Kimia', 'Praktikum Kimia', 'Mahasiswa dibagi dalam beberapa kelompok dan akan mempraktekkan semua acara yang ada pada modul praktikum di laboratorium Kimia', 'Untuk memenuhi kompetensi pada MK Kimia', '2021-05-01', '2021-05-31', 'Lab. Kimia', 'kampus', '2000000', '2000000', '0', '2021-08-26', '2021-08-26'),
(387, 'MTL - 59', 112, 'Kurikulum baru program studi teknik metalurgi tersosialisasikan kepada mahasiswa, dosen dan stakeholder.', 'Acara Sosialisasi dihadiri oleh perwakilan mahasiswa tiap angkatan, dosen dan stakeholder.', 'Sosialisasi Kurikulum Baru Prodi Teknik Metalurgi \"Merdeka Belajar Kampus Merdeka\"', 'Sosialisasi Kurikulum Baru Prodi Teknik Metalurgi \"Merdeka Belajar Kampus Merdeka\"', 'Kegiatan akan dihadiri oleh seluruh civitas akademika yang ada di lingkungan prodi teknik metalurgi dan juga stakeholder. Pada kesempatan ini kaprodi dan jajaran memaparkan kurikulum baru yang akan diberlakukan sehingga para peserta yang hadir dapat lebih mengenal kurikulumnya dan dapat merencanakan perkuliahan dengan baik. Pada kegiatan ini juga diharapkan prodi dapat memperoleh umpan balik dari peserta yang hadir untuk menyempurnakan kuruikulum kedepannya.', 'Merdeka belajar merdeka kampus', '2021-02-01', '2021-08-31', 'Raberas Resto', 'Kampus', '1500000', '1500000', '0', '2021-08-26', '2021-08-26'),
(388, 'MTL - 60', 112, 'Dokumen Rencana Strategis Program Studi Teknik Metalurgi tersosialisasikan kepada civitas akademika di lingkungan prodi Teknik Metalurgi dan stakeholder.', 'Dokumen Rencana SStrategis Program Studi Teknik Metalurgi tersosialisasikan kepada civitas akademika di lingkungan prodi Teknik Metalurgi dan stakeholder.', 'Sosialisasi Dokumen Rencana Strategis Prodi Teknik Metalurgi Periode 2021-2025', 'Sosialisasi Dokumen Rencana Strategis Prodi Teknik Metalurgi Periode 2021-2025', 'Kegiatan akan dihadiri oleh seluruh civitas akademika yang ada di lingkungan prodi teknik metalurgi dan juga stakeholder. Pada kesempatan ini kaprodi dan jajaran akan memaparkan dokumen Rencana Strategis Prodi Teknik Metalurgi periode 2021-2025 sehingga para peserta yang hadir dapat lebih memahami rencana strategis dari Prodi teknik Metalurgi. Pada kegiatan ini juga diharapkan prodi dapat memperoleh umpan balik dari peserta yang hadir untuk menyempurnakan dokumen yang disosialisasikan.', 'mensosialisasikan Renstra Prodi Teknik Metalurgi Periode 2021-2025 kepada seluruh civitas akademika', '2021-05-01', '2021-05-31', 'RM . Goa', 'kampus', '1500000', '1500000', '0', '2021-08-26', '2021-08-26'),
(389, 'MTL - 61', 112, 'Semua Dosen dan Tendik di lingkungan Teknik Metalurgi mampu memahami dan  menjalanankan SPMI dengan baik', 'Dosen dan Tendik Memahami SPMI.', 'Sosialisasi Sistem Penjaminan Mutu Di Tingkat Prodi', 'Sosialisasi Sistem Penjaminan Mutu Di Tingkat Prodi', 'Kegiatan akan dihadiri oleh seluruh dosen di teknik metalurgi, kegiatan sosialisasi ini akan dilakukan oleh sekpro sebagai penjamin SPMI di tingkat prodi dan nanti akan diundang pihak BPMA sebagai pendamping.', 'Kegiatan Ini bertujuan untuk terciptanya sistem yang baik di lingkungan Teknik Metalurgi.', '2021-07-01', '2021-07-31', 'UTS', 'Kampus', '500000', '500000', '0', '2021-08-26', '2021-08-26'),
(390, 'MTL - 77', 112, 'Adanya peningkatan kemampuan mahasiswa dalam penggunaan Sotfware yang berkaitan dengan proses metalurgi.', 'Mahasiswa menguasai penggunaan berbagai software dengan melalukan kegiatan post tes diakhir kegiatan pelatihan', 'Pelatihan Software (Ansys, Origin, Mendeley/Zotero, Reitica (XRD), ImageJ (SEM, MO, TEM)', 'Pelatihan Software (Ansys, Origin, Mendeley/Zotero, Reitica (XRD), ImageJ (SEM, MO, TEM)', 'Merupakan rangkaian acara yang terdiri pelatihan software bagi seluruh mahasiswa Metalurgi', 'bertujuan untuk meningkatkan kemampuan Mahasiswa dalam menguasai software', '2021-08-01', '2021-08-31', 'UTS', 'kampus', '2000000', '2000000', '0', '2021-08-26', '2021-08-26'),
(391, 'MTL - 83', 112, 'Meningkatkan Skill \" Metallurgy Process\"', 'Peserta yang mengikuti perlombaan minimal semester IV.', 'Student Competation Matallurgy Process (SCMP) 2021 (Paper Compitation)', 'Student Competation Matallurgy Process (SCMP) 2021 (Paper Compitation)', 'Merupakan rangkaian acara yang terdiri dari kompetisi paper antar mahasiswa dan seminar seputar proses pada metalurgi di tingkat Program studi sebelum mengikuti kompetensi IPM yang diselenggarakan oleh Himpunan Metallurgi Se-Indonesia Setiap Bulan November 2021', 'untuk meningkatkan kamampuan mahasiswa dalam membuat paper dan processing.', '2021-09-01', '2021-09-30', 'UTS', 'Kampus', '2000000', '2000000', '2000000', '2021-08-26', '2021-12-13'),
(392, 'MTL - 95', 112, 'Menjalin kembali silaturrahmi antar mahasiswa, seluruh civitas dan Alumni', 'Peserta yang hadir berasal dari mahasiswa aktif berbagai angkatan, dosen, tendik, stakeholder dan alumni.', 'HMMt Charity Days and Dies Natalis', 'HMMt Charity Days and Dies Natalis', 'Program kerja ini merupakan pre-event untuk Dies Natalis HMMt dan dalam acara ini dilakukan donor darah serta bakti sosial. Dies Natalies Himpunan Mahasiswa Teknik Metalurgi UTS', 'rtujuan menjalin tali persaudaraan dan kekeluargaan, penyaluran berbagai potensi minat dan bakat', '2021-12-01', '2021-12-31', 'UTS', 'Kampus', '2000000', '2000000', '0', '2021-08-26', '2021-08-26'),
(393, 'MTL - 101', 112, 'Peningkatan kualitas SDM', 'Dosen mengikuti pelatihan pekerti', 'Membekali dosen dengan pelatihan pekerti', 'Membekali dosen dengan pelatihan pekerti', 'Pelatihan pekerti merupakan salah satu pelatihan yang sangat berguna dalam mendukung kelancaran proses pembelajaran.  Melalui kegiatan ini SDM akan dibekali pengetahuan mengenai konsep pengembangan kurikulum, desain pemelajaran, penyusunan RPS, Keterampilan dasar mengajar dan beberapa pengetahuan lain yang akan sangat berguna untuk kemajuan Program Studi dan Dosen.', 'peningkatan kualitas SDM dalam melakukan pengembangan kurikulum hingga desain pembelajaran', '2021-03-01', '2021-03-31', 'Daring Zoom Meeting', 'kampus', '2500000', '2500000', '0', '2021-08-26', '2021-08-26'),
(394, 'TL - 01', 116, 'proses PPEPP pada setiap kegiatan yang dilakukan oleh Prodi Teknik Lingkungan secara bersama-sama', 'Kehadiran dosen dalam setiap rapat mencapai 80%', 'Rapat (rutin) Prodi', 'Rapat (rutin) Prodi', 'Rapat Program Studi merupakan kegiatan rutin yang dilaksanakan setiap Jum\'at ke-3 di setiap bulannya. Pada rapat ini dibahas mulai dari perencanaan proker, progres proker hingga evaluasi terhadap kegiatan yang sudah berjalan.', 'Mempererat silaturrahim dan menjaga ritme organisas', '2021-08-01', '2022-08-31', 'UTS', 'Kampus', '500000', '500000', '500000', '2021-08-26', '2021-12-14'),
(395, 'TL - 02', 116, 'Data yang ada di program Studi Teknik Lingkungan dapat tersusun dengan rapi', 'Terbentuknya tim penyusun dokumen Kurikulum MBKM', 'Pelatihan Visualisasi Data Menggunakan Infografis/ Google Data Studio', 'Pelatihan Visualisasi Data Menggunakan Infografis/ Google Data Studio', 'Kegiatan ini merupakan kegiatan pelatihan atau workshop yang diisi oleh mentor yang akan mengajarkan bagaimana mengolah dan memvisualisasikan data ke dalam bentuk infografis menggunakan Google data Studio. Sasaran kegiatan adalah para dosen di Prodi Teknik Lingkungan dan Perwakilan Himpunan Mahasiswa Teknik Lingkungan UTS', 'Merapikan dan mengolah data Prodi Teknik Lingkungan sehingga dapat divisualisasikan', '2021-11-21', '2021-11-22', 'UTS', 'kampus', '500000', '500000', '0', '2021-08-26', '2021-08-26'),
(396, 'TL - 03', 116, 'Tersusunnya RKAT 2022 dan Laporan Tahunan 2021', 'Tersusunnya RKAT untuk Tahun 2022', 'Rapat Kerja dan Evaluasi Pencapaian Tahunan', 'Rapat Kerja dan Evaluasi Pencapaian Tahunan', 'Kegiatan ini merupakan rapat tahunan yang dapat digunakan oleh seluruh dosen diProdi Teknik Lingkungan untuk menyusun rencana kerja selama satu tahun ke depan dan mengevaluasi capaian selama satu tahun ke belakang.', 'Menyusun Rencana Kerja Tahunan serta melakukan evaluasi terhadap pencapaian tahunan', '2021-12-21', '2021-12-23', 'UTS', 'kampus', '500000', '500000', '0', '2021-08-26', '2021-08-26'),
(397, 'TL - 04', 116, 'Program Studi Teknik Lingkungan Memiliki Dokumen Kurikulum Merdeka Belajar Kampus Merdeka (MBKM)', 'Terbentuknya tim penyusun dokumen Kurikulum MBKM', 'Penyusunan Dokumen Kurikulum MBKM', 'Penyusunan Dokumen Kurikulum MBKM', 'Kaprodi membentuk tim penyusun Dokumen Kurikulum yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi dan sosialisasi) dalam penyusunan Dokumen Kurikulum MBKM', 'Menyusun Dokumen Kurikulum MBKM', '2021-09-01', '2021-11-30', 'UTS', 'Kampus', '2500000', '2500000', '2500000', '2021-08-26', '2021-12-09'),
(398, 'TL - 05', 116, 'Program Studi Teknik Lingkungan melanggan akun zoom premium dengan durasi 1 (satu) tahun.', 'Memiliki akun zoom premium berlangganan selama 1 (satu) tahun.', 'Pengadaan akun zoom premium berlangganan  selama 1 (satu) tahun.', 'Pengadaan akun zoom premium berlangganan  selama 1 (satu) tahun.', 'Program Studi Teknik Lingkungan melanggan akun zoom premium selama 1 (satu) tahun untuk kepentingan pendidikan di lingkungan Prodi Teknik Lingkungan.', 'Memfasilitasi prasarana yang digunakan untuk memperlancar proses pengajaran di masa pandemic', '2021-09-21', '2021-09-22', 'Kondisional', 'kampus', '1200000', '1200000', '1200000', '2021-08-26', '2021-12-10'),
(399, 'TL - 06', 116, 'Peningkatan kualitas SDM di Prodi Teknik Lingkungan', 'Dosen mengikuti pelatihan pekerti', 'Membekali dosen dengan pelatihan pekerti', 'Membekali dosen dengan pelatihan pekerti', 'Pelatihan pekerti merupakan salah satu pelatihan yang sangat berguna dalam mendukung kelancaran proses pembelajaran.  Melalui kegiatan ini SDM akan dibekali pengetahuan mengenai konsep pengembangan kurikulum, desain pemelajaran, penyusunan RPS, Keterampilan dasar mengajar dan beberapa pengetahuan lain yang akan sangat berguna untuk kemajuan Program Studi dan Dosen.', 'Kegiatan ini bertujuan agar adanya peningkatan kualitas SDM', '2021-10-21', '2021-10-22', 'Online Zoom', 'kampus', '2300000', '2300000', '0', '2021-08-26', '2021-08-26');
INSERT INTO `rkat` (`id_rkat`, `kode_rkat`, `id_user`, `sasaran_strategi`, `indikator_sasaran_strategi`, `nama_program`, `program_kerja`, `deskripsi`, `tujuan`, `mulai_program`, `selesai_program`, `tempat`, `sumber_anggaran`, `rencana_anggaran`, `total_anggaran`, `anggaran_digunakan`, `created_at`, `updated_at`) VALUES
(400, 'TL - 07', 116, 'Mendukung Pengembangan kapasitas SDM dengan mengikuti kegiatan-kegiatan pelatihan terkait Lingkungan Hidup', 'da dosen yang mengikuti pelatihan terkait Lingkungan Hidup', 'Pemberian Subsidi kepada dosen yang akan mengikuti Pelatihan', 'Pemberian Subsidi kepada dosen yang akan mengikuti Pelatihan', 'Program Studi memberikan subsidi kepada para dosen yang akan mengikuti diklat mengenai topik-topik Lingkungan Hidup yang sesuai dengan kompetensi prodi sebagai bentuk penguatan kapasitas terhadap SDM yang ada di Prodi Teknik Lingkungan.', 'Untuk Mengembangkan kapasitas Dosen yang ada di Prodi Teknik Lingkungan', '2021-09-21', '2021-09-22', 'UTS', 'kampus', '2500000', '2500000', '0', '2021-08-26', '2021-08-26'),
(401, 'FRS-05', 111, 'Insentif Maneger Fakultas', 'Insentif Maneger Fakultas', 'Insentif Maneger Fakultas', 'Insentif Maneger Fakultas', 'Tunjangan Bagi maneger di tingkat fakultas yang telah melaksanakan tugas dan fungsi dengan baik', 'Insentif Maneger Fakultas', '2021-08-01', '2022-02-28', 'Ruang. FRS', 'Kampus', '3600000', '3600000', '0', '2021-08-27', '2021-08-27'),
(402, 'INF-29', 84, 'Persiapan Akreditasi Jurnal Prodi (JINTEKS)', 'Terjwujudnya Jurnal Prodi sebagai jurnal Terakreditasi dan Bereputasi', 'Melakukan Akreditasi Jurnal untuk meningkatkan Branding Jurnal Prodi dan Program Studi', 'Melakukan Akreditasi Jurnal untuk meningkatkan Branding Jurnal Prodi dan Program Studi', 'kegiatan ini diperuntukan untuk mempersiapkan Jurnal Informatika, teknologi & Sains sebagai jurnal terakreditasi dan bereputasi minimal skala nasional', 'Meningkatkan Branding Jurnal Prodi Melaui akreditasi jurnal', '2021-09-01', '2021-09-30', 'Arjuna RISTEKDIKTI', 'Kampus', '4000000', '4000000', '4000000', '2021-09-07', '2021-12-07'),
(403, 'INF-30', 84, 'Dosen dalam dan luar perguruan tinggi', 'seminar nasional terselenggara dengan sukses', 'Melakukan Akreditasi Jurnal untuk meningkatkan Branding Jurnal Prodi dan Program Studi', 'Melakukan Akreditasi Jurnal untuk meningkatkan Branding Jurnal Prodi dan Program Studi', 'kegiatan ini diselenggarakan untuk meningkatkan branding jurnal program studi sehingga dapat meningkatkan partisipasi external untuk publikasi di jurnal prodi untuk kepentingan akreditasi jurnal', 'branding jurnal program studi (JINTEKS)', '2021-10-01', '2021-10-31', 'desa di kecamatan moyo hulu', 'Kampus', '5000000', '5000000', '0', '2021-09-07', '2021-09-07'),
(404, 'INF-36', 84, 'Dosen tetap Aktif Progrm Studi', 'Adanya Dosen Program studi yang memiliki sertifikat Profesioan sebagai asesor sesuai bidang konsentrasi', 'Sertifikasi Keahlian Dosen', 'Sertifikasi Keahlian Dosen', 'kegiatan ini untuk meningkatkan jumlah dosen yang memiliki sertifikat keahlian sesuai dengan bidang kompetensi', 'Mempersiapkan Asesor Sertifikasi keahlian Internal prodi', '2021-04-01', '2021-12-31', 'Opsional', 'Kampus', '9500000', '9500000', '0', '2021-09-07', '2021-09-10'),
(405, 'INF-56', 84, 'Optimalisasi Tempat Penyimpanan Perangkat Praktikum Non Komputer', 'Tersedianya Media Penyimpanan Perangkat Praktikum Non Komputer', 'Optimalisasi Tempat Penyimpanan Perangkat Praktikum untuk meningkatkan Keamanan Perangkat', 'Optimalisasi Tempat Penyimpanan Perangkat Praktikum untuk meningkatkan Keamanan Perangkat', 'program ini dilakukan untuk meningkatkan keamanan dan kerapian penyimpanan perangkat praktikum sehingga dapat digunakan dalam jangka waktu yang lama', 'meningkatkan keamanan penyimpanan perangkat praktikum', '2021-04-01', '2021-04-30', 'Lab. Komputer Dasar', 'kampus', '3500000', '3500000', '4500000', '2021-09-07', '2021-12-28'),
(406, 'INF-70', 84, 'Siswa siswi SMA / SMK se Pulau Sumbawa', '1. siswa SMA / SMK tertarik melanjutkan studi pada prodi informatika. 2.Siswa SMA - SMK tertarik belajar ilmu informatika. 3.Animo calon mahasiswa untuk masuk prodi Teknik Informatika meningkat', 'IT Bootcamp dan Kompetisi Programming dan Jaringan Tingkat SMA / SMK se Pulau Sumbawa', 'IT Bootcamp dan Kompetisi Programming dan Jaringan Tingkat SMA / SMK se Pulau Sumbawa', 'Program ini diadakan untuk meningkatkat branding prodi di masyarakat khususnya pada siswa siswi SMA/SMK sehingga dapat meningkatkan animo Calon mahasiswa untuk masuk program Studi Teknik Informatika', 'Branding Program Studi dan Meningkatkan Animo Calon Mahasiswa terhadao program studi', '2021-05-01', '2021-05-31', 'UTS', 'kampus', '7000000', '7000000', '0', '2021-09-07', '2021-09-07'),
(407, 'INF-71', 84, 'Desa desa  di kecamatan Moyo Hulu', 'Informatika Goes To Desa', 'Penyuluhan Pemanfaatan Teknologi Informasi pada Pemerintahan Desa', 'Penyuluhan Pemanfaatan Teknologi Informasi pada Pemerintahan Desa', 'Kegiatan ini diselenggarakan untuk meningkatkan partisipasi dosen program studi teknik Informatika dalam Pengembangan dan Penerapan Teknologi Informasi pada Tingkat Desa', 'meningkatkan Branding Image Prodi di Masyarakat', '2021-07-01', '2021-07-31', 'Opsional', 'kampus', '1500000', '1500000', '0', '2021-09-07', '2021-09-07'),
(408, 'INF-72', 84, 'Prodi & Himpunan Mahasiswa Teknik Informatika (HMTI)', 'Kegiatan FGD prodi HMTI dan Seluruh Koordinator Kelas dapat terselenggara', 'FGD program studi dengan HMTI untuk membuka ruang diskusi antara program studi dengan mahasiswa', 'FGD program studi dengan HMTI untuk membuka ruang diskusi antara program studi dengan mahasiswa', 'kegiatan ini diselenggarakan untuk meminimalisir mis persepsi antara program studi dengan mahasiswa terkait arah pengembangan program studi', 'penyamaan persepsi prodi dengan organisasi mahasiswa program studi', '2021-04-01', '2021-04-30', 'Opsional', 'kampus', '3000000', '3000000', '0', '2021-09-07', '2021-09-10'),
(409, 'INF-80', 84, 'Mahasiswa Aktif program Studi Informatika', 'Banyaknya Inovasi mahasiswa untuk mengembangkan perangkat Teknologi Informasi', 'Pameran Produk IT Gemilang', 'Pameran Produk IT Gemilang', 'kegiatan ini diadakan untuk meningkatkan motivasi mahasiswa dalam mengembangkan produk Teknologi informasi sehingga dapat meningkatkan lulusan prodi Teknik informatika yang mampu bersaing', 'memotivasi dan meningkatkan kemampuan serta inovasi mahasiswa dalam mengembangkan produk IT', '2021-08-01', '2021-08-31', 'opsional', 'kampus', '2500000', '2500000', '0', '2021-09-07', '2021-09-07'),
(410, 'INF-85', 84, 'Mahasiswa Aktif program Studi Informatika', 'Ada mahasiswa prodi Teknik informatika yang ikut kompetisi nasional sesuai bidang keilmuan', 'Kompetisi Mahasiswa Nasional Bidang Informatika', 'Kompetisi Mahasiswa Nasional Bidang Informatika', 'Program ini diadakan untuk mempersiapkan mahasiswa program studi Teknik Infornatika untuk mengikuti Kompetisi Nasional dalam bidang keilmuan Informatika untuk meningkatkan Branding Program Studi', 'Mempersiapkan Mahasiswa / Tim Mahasiswa untuk ikut Kompetisi Nasional dalam bidang ilmu Informatika', '2021-03-01', '2021-12-31', 'Optional', 'Kampus', '3500000', '3500000', '0', '2021-09-07', '2021-09-07'),
(411, 'INF-93', 84, 'perwakilan Mahasiswa setiap angkatan dan semua mahasiswa yang mengambil matakuliah Basis Data', 'Mahasiswa memahami Potensi, standar & konsep peluang Teknologi Data', 'Kuliah Tamu Tentang Teknologi Data dan Penerapannya pada Dunia Industri Univ. AMIKOM Yogyakarta', 'Kuliah Tamu Tentang Teknologi Data dan Penerapannya pada Dunia Industri Univ. AMIKOM Yogyakarta', 'Kuliah tamu ini diadakan untuk memberikan motivasi dan pemahaman kepada mahasiswa akan pentingnya teknologi data serta trend perkembangan teknologi Informasi, Teknogi data , data science dan BiG Data dimasa yang akan Datang', 'Membuka Wawasan serta meningkatkan pemahaman mahasiswa terhadap perkembangan Teknologi', '2021-03-01', '2021-03-31', 'STP R.multimedia', 'kampus', '3000000', '3000000', '3000000', '2021-09-07', '2021-12-07'),
(412, 'INF-94', 84, 'Mahasiswa Angkatan 2017dan 2018 yang akan program Skripsi', 'Standar naskah Publikasi Ilmiah mahasiswa Meningkat', 'Pelatihan Penulisan Jurnal untuk mahasiswa', 'Pelatihan Penulisan Jurnal untuk mahasiswa', 'kegiatan ini diadakan untuk meningkat kualitas naskah publikasi mahasiswa sehingga siap dipublikasi pada jurnal jurnal ilmiah nasional', 'Meningkatkan kualitas naskah publikasi ilmiah mahasiswa yang akan mengambil program skripsi', '2021-03-01', '2021-07-31', 'Gd. Newmont', 'kampus', '1000000', '1000000', '0', '2021-09-07', '2021-09-07'),
(415, 'RKAT-P ASR - 010', 113, '-', '-', '-', 'Data Base Penghuni Asrama', 'Belum diisi ', '-', '2021-09-01', '2021-12-30', 'UTS', '-', '0', '0', '0', '2021-09-08', '2021-09-09'),
(416, 'RKAT-P ASR - 011', 113, '-', '-', '-', 'Pembuatan Buku Panduan Asrama UTS', 'Belum diisi ', '-', '2021-09-01', '2021-12-30', 'UTS', '-', '1000000', '1000000', '0', '2021-09-08', '2021-09-09'),
(417, 'RKAT-P ASR - 012', 113, '-', '-', '-', 'Program Zero Waste dan Penghijauan Lingkungan', 'Belum diisi ', '-', '2021-09-01', '2021-12-30', 'UTS', '-', '500000', '500000', '0', '2021-09-08', '2021-09-09'),
(418, 'RKAT-P ASR - 013', 113, '-', '-', '-', 'Perbaikan saluaran kamar mandi', 'Belum diisi ', '-', '2021-09-01', '2021-12-30', 'UTS', '-', '2000000', '2000000', '0', '2021-09-08', '2021-09-09'),
(419, 'RKAT-P ASR - 014', 113, '-', '-', '-', 'Klinik Layanan Kesehatan ', 'Belum diisi ', '-', '2021-09-01', '2021-12-30', 'UTS', '-', '500000', '500000', '0', '2021-09-08', '2021-09-09'),
(420, 'RKAT-P ASR - 015', 113, '-', '-', '-', 'Pemeliharaan Pagar, dan Taman', 'Belum diisi ', '-', '2021-09-01', '2021-12-30', 'UTS', '-', '2500000', '2500000', '0', '2021-09-08', '2021-09-09'),
(421, 'RKAT-P ASR - 016', 113, '-', '-', '-', 'Pengadaan Printer', 'Belum diisi ', '-', '2021-09-01', '2021-12-30', 'UTS', '-', '3500000', '3500000', '0', '2021-09-08', '2021-09-09'),
(422, 'RKAT-P FEB - 045', 79, '-', '-', '-', 'Subsidi biaya publikasi ilmiah dosen pada jurnal terakreditasi', 'Belum diisi', '-', '2021-11-01', '2021-11-30', 'UTS', '-', '2655000', '2655000', '0', '2021-09-08', '2021-09-08'),
(423, 'RKAT-P FEB - 046', 79, '-', '-', '-', 'Research Coaching 3: Metode Penelitian Kualitatif', 'Belum diisi', '-', '2021-12-01', '2021-12-31', 'UTS', '-', '1000000', '1000000', '0', '2021-09-08', '2021-09-08'),
(424, 'RKAT-P FEB - 047', 79, '-', '-', '-', 'Subsidi Publikasi Termin 2', 'Belum diisi', '-', '2021-01-01', '2021-01-31', 'UTS', '-', '5000000', '5000000', '0', '2021-09-08', '2021-09-08'),
(425, 'RKAT-P FEB - 048', 79, '-', '-', '-', 'Follow up Kerjasama 2', 'Belum diisi', '-', '2021-12-01', '2021-12-31', 'UTS', '-', '5000000', '5000000', '0', '2021-09-08', '2021-09-08'),
(426, 'RKAT-P FEB - 049', 79, '-', '-', '-', 'Hibah Pengabdian Termin 2', 'Belum diisi', '-', '2021-10-01', '2021-10-30', 'UTS', '-', '5000000', '5000000', '0', '2021-09-08', '2021-09-08'),
(427, 'RKAT-P FEB - 050', 79, '-', '-', '-', 'Pelatihan Penulisan Buku Ajar untuk Dosen', 'Belum diisi', '-', '2021-11-01', '2021-11-30', 'UTS', '-', '3000000', '3000000', '3000000', '2021-09-08', '2021-12-28'),
(428, 'RKAT-P FEB - 051', 79, '-', '-', '-', 'Dana Ormawa Termin 2', 'Belum diisi', '-', '2021-11-01', '2021-11-30', 'UTS', '-', '4000000', '4000000', '4000000', '2021-09-08', '2021-12-14'),
(429, 'RKAT-P FEB - 052', 79, '-', '-', '-', 'Pilmapres ', 'Belum diisi', '-', '2021-09-01', '2021-09-30', 'UTS', '-', '2500000', '2500000', '0', '2021-09-08', '2021-09-08'),
(430, 'RKAT-P FEB - 053', 79, '-', '-', '-', 'Soft Skill Mahasiswa Termin 2', 'Belum diisi', '-', '2021-12-01', '2021-12-31', 'UTS', '-', '1500000', '1500000', '0', '2021-09-08', '2021-09-08'),
(431, 'RKAT-P FEB - 054', 79, '-', '-', '-', 'Hibah Pengembangan SDM Termin 2', 'Belum diisi', '-', '2021-11-01', '2021-11-30', 'UTS', '-', '5000000', '5000000', '0', '2021-09-08', '2021-09-08'),
(432, 'RKAT-P FEB - 055', 79, '-', '-', '-', 'Research Coaching 4: Penggunaan Smart PLS', 'Belum diisi', '-', '2021-10-01', '2021-10-30', 'UTS', '-', '1000000', '1000000', '1000000', '2021-09-08', '2021-12-09'),
(433, 'RKAT-P FEB - 056', 79, '-', '-', '-', 'Follow Up Kerjasama 3', 'Belum diisi', '-', '2021-10-01', '2021-10-30', 'UTS', '-', '5000000', '5000000', '5000000', '2021-09-08', '2021-12-09'),
(434, 'RKAT-P FEB - 057', 79, '-', '-', '-', 'Pengembangan & Akreditasi Junal Fakultas', 'Belum diisi', '-', '2021-11-01', '2021-11-30', 'UTS', '-', '2500000', '2500000', '2500000', '2021-09-08', '2021-12-28'),
(435, 'RKAT-P FEB - 058', 79, '-', '-', '-', 'Hibah PengabdianTermin 3', 'Belum diisi', '-', '2021-11-01', '2021-11-30', 'UTS', '-', '5000000', '5000000', '0', '2021-09-08', '2021-09-08'),
(436, 'RKAT-P FEB - 059', 79, '-', '-', '-', 'Peningkatan Animo Calon Mahasiswa: Enterprenur Days', 'Belum diisi', '-', '2021-01-01', '2021-01-31', 'UTS', '-', '5000000', '5000000', '0', '2021-09-08', '2021-09-08'),
(437, 'RKAT-P FEB - 060', 79, '-', '-', '-', 'Hibah Pengembangan SDM Termin 3', 'Belum diisi', '-', '2021-01-01', '2021-01-31', 'UTS', '-', '5000000', '5000000', '0', '2021-09-08', '2021-09-08'),
(438, 'RKAT-P FEB - 061', 79, '-', '-', '-', 'Memberikan Reward \"Employee of the Year FEB 2021\" Dosen & Tendik', 'Belum diisi', '-', '2021-12-01', '2021-12-31', 'UTS', '-', '3500000', '3500000', '0', '2021-09-08', '2021-09-08'),
(439, 'RKAT-P FEB - 062', 79, '-', '-', '-', 'Peresmian Kantor Baru dan Sosialisasi Akademik pra semester ganjil 21/22', 'Belum diisi', '-', '2021-09-01', '2021-09-30', 'UTS', '-', '4000000', '4000000', '0', '2021-09-08', '2021-09-08'),
(440, 'RKAT-P FEB - 063', 79, '-', '-', '-', 'Perbaikan atap dan plafon gedung orange', 'Belum diisi', '-', '2021-09-01', '2021-09-30', 'UTS', '-', '15000000', '15000000', '0', '2021-09-08', '2021-09-08'),
(441, 'RKAT-P FEB - 064', 79, '-', '-', '-', 'Digital Library dan Lab Ekonomi Terpadu', 'Belum diisi', '-', '2021-10-01', '2021-10-30', 'UTS', '-', '17000000', '17000000', '17000000', '2021-09-08', '2021-12-10'),
(442, 'RKAT-P FEB - 065', 79, '-', '-', '-', 'instalasi jaringan listrik', 'Belum diisi', '-', '2021-09-01', '2021-09-30', 'UTS', '-', '1000000', '1000000', '0', '2021-09-08', '2021-09-08'),
(443, 'RKAT-P FEB - 066', 79, '-', '-', '-', 'AC', 'Belum diisi', '-', '2021-09-01', '2021-09-30', 'UTS', '-', '4000000', '4000000', '0', '2021-09-08', '2021-09-08'),
(444, 'RKAT-P FEB - 067', 79, '-', '-', '-', 'Promosi Calon Mahasiswa Kewirausahaan', 'Belum diisi', '-', '2021-09-01', '2021-09-30', 'UTS', '-', '2000000', '2000000', '0', '2021-09-08', '2021-09-08'),
(445, 'RKAT-P BPMA-06', 76, '-', '-', '-', 'Standarisasi Mutu sesuai dengan permenristekdikti yang berlaku (Penyusunan SPMI Rev.03 2021, Panduan SPMI dan Indikator AMI, Pendampingan implementasi SPMI pada Unit/Program Studi)', 'Belum diisi ', '-', '2021-10-01', '2021-10-30', 'Ruang Multimedia-STP dan Fakultas', '-', '24500000', '24500000', '24480500', '2021-09-08', '2021-12-13'),
(447, 'RKAT-P BPMA-07', 76, '-', '-', '-', 'Pelatihan SPMI dan AMI', 'Belum diisi ', '-', '2021-09-01', '2021-09-30', 'Ruang Multimedia-STP/Aula', '-', '20000000', '20000000', '20000000', '2021-09-08', '2021-12-07'),
(448, 'RKAT-P BPMA-08', 76, '-', '-', '-', 'Pelaksanaan fungsi Satuan Pengawasan Internal, audit mutu internal dan monitoring evaluasi SPMI yang Kridibel, Unggul, Akuntabel dan Transparan', 'Belum diisi ', '-', '2021-07-01', '2022-03-02', 'Fakultas/Prodi', '-', '20500000', '20500000', '0', '2021-09-08', '2021-09-09'),
(451, 'RKAT-P BPMA-09', 76, '-', '-', '-', 'pendampingan SPMI (Standar luaran dan capaian Tridharma) dalam Peningkatan IKU Universitas (Akreditasi \"Baik Sekali\") untuk Semua Program Studi (SK tahun 2013 dan 2014)', 'Belum diisi ', '-', '2021-06-01', '2021-12-30', 'Unit Pelaksana SPMI', '-', '0', '0', '0', '2021-09-08', '2021-09-09'),
(452, 'RKAT-P BPMA-10', 76, '-', '-', '-', 'Pengusulan Izin Penyelenggaraan Program Studi', 'Belum diisi ', '-', '2021-07-01', '2021-08-30', 'BPMA', '-', '0', '0', '0', '2021-09-08', '2021-09-09'),
(453, 'RKAT-P BPKO - 012', 77, '-', '-', '-', 'Pembentukan Takmir Masjid Al-Kahfi UTS', 'Belum diisi', '-', '2021-09-01', '2021-10-01', 'Mesjid Al-Kahfi UTS', '-', '250000', '250000', '0', '2021-09-08', '2021-09-08'),
(454, 'RKAT-P BPKO - 013', 77, '-', '-', '-', 'Penyiapan kurikulum pembinaan Mahasiswa dan Dosen UTS', 'Belum diisi', '-', '2021-09-01', '2021-10-01', 'UTS', '-', '500000', '500000', '500000', '2021-09-08', '2021-12-10'),
(455, 'RKAT-P BPKO - 014', 77, '-', '-', '-', 'Pengadaan Buku Materi Untuk Mentor (Mahasiswa/Dosen) dan Rapot Pembinaan Bagi Mahasiswa UTS', 'Belum diisi', '-', '2021-09-01', '2021-10-01', 'UTS', '-', '2000000', '2000000', '2000000', '2021-09-08', '2021-12-29'),
(456, 'RKAT-P BPKO - 015', 77, '-', '-', '-', 'Rekrutment dan Pembinaan Mentor Mahasiswa dan Dosen Periode 2021-2022', 'Belum diisi', '-', '2021-09-01', '2021-10-01', 'Ruang Multimedia STP Sumbawa', '-', '2000000', '2000000', '2000000', '2021-09-08', '2021-12-14'),
(457, 'RKAT-P BPKO - 016', 77, '-', '-', '-', 'Monitoring dan Evaluasi Pembinaan Karakter civitas UTS', 'Belum diisi', '-', '2021-09-01', '2021-12-31', 'Mesjid Al-Kahfi UTS', '-', '600000', '600000', '600000', '2021-09-08', '2021-12-29'),
(458, 'RKAT-P BPKO - 017', 77, '-', '-', '-', 'Kelas Tahasin Al-Qur\'an', 'Belum diisi', '-', '2021-10-01', '2021-10-30', 'Kelas Online', '-', '500000', '500000', '0', '2021-09-08', '2021-09-08'),
(459, 'RKAT-P BPKO - 018', 77, '-', '-', '-', 'Kampanye \"Kata Baik\"', 'Belum diisi', '-', '2021-10-01', '2021-10-30', 'Lingkungan UTS', '-', '2000000', '2000000', '2000000', '2021-09-08', '2021-12-29'),
(460, 'RKAT-P BPKO - 019', 77, '-', '-', '-', 'Mentoring Masuk Desa (MMD)', 'Belum diisi', '-', '2021-11-01', '2021-11-30', 'Desa-Desa Binaan', '-', '1000000', '1000000', '1000000', '2021-09-08', '2021-12-14'),
(461, 'RKAT-P BPKO - 020', 77, '-', '-', '-', 'Pekan Pembinaan/ Olimpiade Mentoring', 'Belum diisi', '-', '2021-12-01', '2021-12-30', 'UTS', '-', '2000000', '2000000', '0', '2021-09-08', '2021-09-08'),
(462, 'RKAT-P BPKO - 021', 77, '-', '-', '-', 'Sila Pro (Silaturohim UTS berbasis Prodi)', 'Belum diisi', '-', '2021-09-01', '2021-12-01', 'Prodi/ Fakultas/ tempat lainnya', '-', '1600000', '1600000', '0', '2021-09-08', '2021-09-08'),
(472, 'WR4-15', 74, 'belum diisi', 'belum diisi', 'Printing Media Engagement', 'Printing Media Engagement', 'Pengadaan profil dan informasi penawaran riset & inovasi UTS berbahasa  Inggris yang terkemas dengan rapi', 'belum diisi', '2021-02-12', '2021-03-28', 'UTS', 'Universitas', '7000000', '7000000', '0', '2021-09-09', '2021-09-09'),
(473, 'RKAT-P WR4-35', 74, '-', '-', '-', 'Inbound Mobility Program', 'Belum diisi', '-', '2021-09-01', '2022-01-30', 'UTS', '-', '6000000', '6000000', '6000000', '2021-09-09', '2021-12-14'),
(474, 'RKAT-P WR4-36', 74, '-', '-', '-', 'Social Media Engagement', 'Belum diisi', '-', '2021-09-01', '2022-01-30', 'UTS', '-', '2000000', '2000000', '0', '2021-09-09', '2021-09-09'),
(475, 'RKAT-P WR4-37', 74, '-', '-', '-', 'Prospektus UTS 2022', 'Belum diisi', '-', '2021-09-01', '2021-09-30', 'UTS', '-', '2000000', '2000000', '0', '2021-09-09', '2021-09-09'),
(476, 'RKAT-P WR4-38', 74, '-', '-', '-', 'MoU', 'Belum diisi', '-', '2021-09-01', '2022-01-30', 'UTS', '-', '1000000', '1000000', '0', '2021-09-09', '2021-09-09'),
(477, 'RKAT-P WR4-39', 74, '-', '-', '-', 'UI Green Metric Ranking', 'Belum diisi', '-', '2021-09-01', '2021-12-30', 'UTS', '-', '4000000', '4000000', '0', '2021-09-09', '2021-09-09'),
(478, 'RKAT-P WR4-40', 74, '-', '-', '-', 'Peningkatan Rekognisi Global UTS melalui LinkedIn', 'Belum diisi', '-', '2021-09-01', '2022-01-30', 'UTS', '-', '1000000', '1000000', '0', '2021-09-09', '2021-09-09'),
(479, 'RKAT-P WR4-41', 74, '-', '-', '-', 'Pelatihan Academic Global Networking', 'Belum diisi', '-', '2021-09-01', '2021-12-30', 'UTS', '-', '2000000', '2000000', '0', '2021-09-09', '2021-09-09'),
(480, 'RKAT-P WR4-42', 74, '-', '-', '-', 'Website management ', 'Belum diisi', '-', '2021-09-01', '2022-01-30', 'UTS', '-', '3000000', '3000000', '0', '2021-09-09', '2021-09-09'),
(481, 'RKAT-P LPT-07', 67, '-', '-', '-', 'Seleksi di berbagai Institusi, Instansi, Dinas Pemerintah, Sekolah, Perusahaan dll. [ LPT 01 ]', 'Belum diisi', '-', '2021-09-01', '2021-12-30', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(482, 'RKAT-P LPT-08', 67, '-', '-', '-', 'Sosialisasi Lembaga Psikologi Terapan di Beberapa Sekolah SMA di Kabupaten/Kota di Pulau Sumbawa .\n[ LPT 02 ].\n\nPromosi LPT dalam bentuk Iklan melalui serta media sosial.\n[ LPT 03 ].', 'Belum diisi', '-', '2021-09-01', '2022-01-30', 'Beberapa SMA/SMK di seluruh Kabupaten/Kota di Pulau Sumbawa.\n\nAkun Sosial Media', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(483, 'RKAT-P LPT-09', 67, '-', '-', '-', 'Webinar dengan tema: \"Perkenalkan, kami adalah Psikolog dan ada untuk anda \". [ LPT - 04 ]', 'Belum diisi', '-', '2021-09-01', '2021-10-30', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(484, 'RKAT-P LPT-10', 67, '-', '-', '-', 'Webinar dengan tema : “Persiapan memasuki Dunia Kerja”. [LPT-05].', 'Belum diisi', '-', '2021-09-01', '2021-10-30', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(485, 'RKAT-P PBH-015', 64, '-', '-', '-', 'Integrated Online EEAPT registration and certification system', 'Belum diisi', '-', '2021-08-01', '2021-08-30', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(486, 'RKAT-P PBH-016', 64, '-', '-', '-', 'Pembekalan Bahasa', 'Belum diisi', '-', '2021-08-01', '2021-08-31', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(487, 'RKAT-P PBH-017', 64, '-', '-', '-', 'Melakukan ekspansi layanan UPT dan sebagai media promosi UPT Bahasa dengan menjual T-shirt, thumbler, gantungan kunci', 'Belum diisi', '-', '2021-09-01', '2021-10-01', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(488, 'RKAT-P PBH-018', 64, '-', '-', '-', 'Pelaksanaan tes TOEFL ITP', 'Belum diisi', '-', '2021-09-01', '2021-12-31', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(489, 'RKAT-P PBH-019', 64, '-', '-', '-', 'Pelaksanaan tes IELTS', 'Belum diisi', '-', '2021-09-01', '2021-12-31', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(490, 'RKAT-P PBH-020', 64, '-', '-', '-', 'Mock test IELTS', 'Belum diisi', '-', '2021-09-01', '2021-12-31', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(491, 'RKAT-P PBH-021', 64, '-', '-', '-', 'UTS English competition', 'Belum diisi', '-', '2021-09-01', '2021-12-31', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(492, 'RKAT-P PBH-022', 64, '-', '-', '-', 'ETS, Loka Latihan kerja, Rumah Bahasa (British Council \n', 'Belum diisi', '-', '2021-10-01', '2021-10-31', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(493, 'RKAT-P PBH-023', 64, '-', '-', '-', 'TES TOEFL ITP atau sertifikasi Penerjemahan bagi SDM Pubah', 'Belum diisi', '-', '2021-01-01', '2021-12-31', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(494, 'RKAT-P PBH-024', 64, '-', '-', '-', 'Pembuatan Video kegiatan unggulan, sosialisasi kegiatan dan profil UPT bahasa', 'Belum diisi', '-', '2021-09-01', '2021-10-01', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(495, 'RKAT-P PBH-025', 64, '-', '-', '-', 'Pengadaan 2 unit Speaker', 'Belum diisi', '-', '2021-09-01', '2021-10-01', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(496, 'RKAT-P PBH-026', 64, '-', '-', '-', 'Evaluasi kerja triwulan ', 'Belum diisi', '-', '2021-01-01', '2021-12-31', 'UTS', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(497, 'FRS 41', 85, '-', '-', '-', 'Sosialisasi SOP kepada Civitas Program Studi Teknik Industri', 'Belum diisi', '-', '2021-10-01', '2021-10-01', 'RPK atau Online', '-', '400000', '400000', '400000', '2021-09-09', '2021-12-08'),
(498, 'FRS 42', 85, '-', '-', '-', 'Kuliah bareng di Teknik Industri', 'Belum diisi', '-', '2021-09-01', '2021-09-01', 'UTS', '-', '1000000', '1000000', '1000000', '2021-09-09', '2021-12-10'),
(499, 'FRS 43', 85, '-', '-', '-', 'Kunjungan Industri Bersama Anak SMA/SMK', 'Belum diisi', '-', '2021-09-01', '2021-09-01', 'Pabrik/PT disekitar Nusa Tenggara Barat', '-', '1500000', '1500000', '1500000', '2021-09-09', '2021-12-10'),
(500, 'FRS 44', 85, '-', '-', '-', 'Workshop Software CAD dan LISREL', 'Belum diisi', '-', '2021-05-01', '2021-05-01', 'Lab Komputer', '-', '1000000', '1000000', '440000', '2021-09-09', '2021-12-10'),
(501, 'FRS 45', 85, '-', '-', '-', 'Expo Desain Produk', 'Belum diisi', '-', '2021-09-01', '2021-09-01', 'UTS', '-', '500000', '500000', '510000', '2021-09-09', '2021-12-10'),
(502, 'FRS 20', 97, '-', '-', '-', 'Rapat Program Studi', 'Perencanaan seluruh program dan evaluasi seluruh kegiatan Tridharma program studi', '-', '2021-03-01', '2021-03-01', 'Program Studi teknik Mesin', '-', '1000000', '1000000', '0', '2021-09-09', '2021-09-09'),
(503, 'FRS 21', 97, '-', '-', '-', 'Kerjasama program studi', 'Menghadiri kegiatan BKSTM-Indonesia', '-', '2021-04-01', '2021-04-01', 'Program Studi teknik Mesin', '-', '4000000', '4000000', '4000000', '2021-09-09', '2021-12-10'),
(504, 'FRS 22', 97, '-', '-', '-', 'Sosialisasi kurikulum dan visi-misi', 'Mengunjungi stake holder atau mengundang stake holder untuk membahas visi misi dan kurikulum Teknik Mesin', '-', '2021-03-01', '2021-03-01', 'Program Studi teknik Mesin', '-', '2000000', '2000000', '0', '2021-09-09', '2021-09-09'),
(505, 'FRS 23', 97, '-', '-', '-', 'Pelatihan Ansys', 'Pelatihan penggunaan software teknik mesin untuk menambah skill mahasiswa', '-', '2021-06-01', '2021-06-01', 'Program Studi teknik Mesin', '-', '250000', '250000', '0', '2021-09-09', '2021-09-09'),
(506, 'FRS 24', 97, '-', '-', '-', 'Pelatihan PKM', 'Pelatihan Karya Tulis Ilmiah, PKM', '-', '2021-12-01', '2021-12-01', 'Program Studi teknik Mesin', '-', '250000', '250000', '0', '2021-09-09', '2021-09-09'),
(507, 'FRS 25', 97, '-', '-', '-', 'Lomba', 'Lomba Perancangan Mesin Tingkat SMA/SMKsebagai langkah menarik minat siswa untuk melanjutkan pendidikan di program studi Teknik Mesin', '-', '2021-09-01', '2021-09-01', 'Program Studi teknik Mesin', '-', '2000000', '2000000', '2000000', '2021-09-09', '2021-12-10'),
(508, 'FRS 26', 97, '-', '-', '-', 'Sertifikasi Keahlian', 'Kegiatan ini merupakan kegiatan sertifikasi keahlian sesuai bidang keahlian dosen', '-', '2021-06-01', '2021-06-01', 'Program Studi teknik Mesin', '-', '1500000', '1500000', '0', '2021-09-09', '2021-09-09'),
(509, 'FRS 27', 96, '-', '-', '-', 'Pengadaan Pengembangan dan Pemeliharaan', 'Sarana Penelitian dan Pengajaran yang berkualitas serta memenuhi standar Laboratorium', '-', '2021-04-01', '2021-04-01', 'Laboratorium Teknik Elektro', '-', '8000000', '8000000', '0', '2021-09-09', '2021-09-09'),
(510, 'FRS 28', 96, '-', '-', '-', 'Training Online dan Pelatihan \n', 'Meningkatkan Kompetensi Sumber Daya manusia Program Studi Teknik Elektro', '-', '2021-11-01', '2021-11-01', 'Eksternal', '-', '0', '0', '0', '2021-09-09', '2021-09-09'),
(511, 'FRS 29', 96, '-', '-', '-', 'Pendampingan', 'dimaksudkan sebagai wadah dalam menengahi segala persolaan yang terjadi dalam program studi dan dalam rangka pembinaan kompetensi mahasiswa', '-', '2021-06-01', '2021-06-01', 'Program Studi Teknik Elektro', '-', '1000000', '1000000', '0', '2021-09-09', '2021-09-09'),
(512, 'RKAT-P PAS-05', 78, '-', '-', '-', 'Pedoman Akademik Sekolah Pascasarjana', '1.   Rapat Penyempurnaan Silabus,\n-     Konsumsi\n2.   Rapat Penyusunan RPS,\n-     Konsumsi\n3.   Rapat Penyusunan Aturan Yudisium\n-     Konsumsi\n4.   Rapat Review Renstra SPS-UTS\n-     Konsumsi\n5.   Design dan Layout\n6.   Cetak Pedoman Akademik', '-', '2021-09-01', '2022-01-01', '- Sekretariat Pascasarjan a\n- Sda\n- Sda\n- Sda\n- Percetakan\n- Percetakan', '-', '6685000', '6685000', '0', '2021-09-20', '2021-09-20'),
(513, 'RKAT-P PAS-06', 78, '-', '-', '-', 'Kuliah Umum', '1.   Rapat Penentuan Panitia Kuliah Umum\n-     Konsumsi\n2.   Pelaksnanan Kuliah Umum Tahap I\n-     Honorarium Pemateri\n-     Honorarium Moderator\n-     Honorarium Pengantar Pemateri Kuliah Umum\n-     Honorarium Design Grafis\n-     Honorarium MC\n3.   Pelaksanaan Kuliah Umum Tahap II\n-     Honorarium Pemateri\n-     Honorarium Moderator\n-     Honorarium Pengantar Materi Kuliah Umum\n-     Honorarium Design Grafis dan MC', '-', '2021-09-01', '2021-10-01', 'Zoom Meeting', '-', '13815000', '13815000', '0', '2021-09-20', '2021-09-20'),
(514, 'RKAT-P PAS-07', 78, '-', '-', '-', 'Program Tridharma Perguruan Tinggi', '1.   Pengabdian\n-     Pelatihan kemasan gula aren\n-     Pelatihan         kemasan Madu\n2.   Pelatihan\n-     Kajian   pengembangan produk olahan local\n-     Analisis              Rantai pemasaran madu', '-', '2021-09-01', '2022-01-01', 'UTS', '-', '4000000', '4000000', '0', '2021-09-20', '2021-09-20'),
(516, 'RKATP WR3-011', 70, '-', '-', '-', 'Research tour', 'Melakukan kunjungan dan membuat kontrak resmi yang disepakati antara kedua belah pihak', '-', '2021-09-01', '2021-09-30', 'UTS', '-', '5000000', '5000000', '2500000', '2021-09-28', '2021-12-10'),
(517, 'RKATP WR3-012', 70, '-', '-', 'One lecture one innovation (Nection)', 'One lecture one innovation (Nection)', 'Stumulus untuk para dosen yang menghasilkan invensi berpotensi paten', '-', '2021-09-01', '1970-01-01', 'UTS', '-', '10000000', '10000000', '0', '2021-09-28', '2021-09-28'),
(518, 'RKATP WR3-013', 70, '-', '-', '-', 'Workshop dan Expo Produk Riset', 'Buku Profil riset dan Inovasi', '-', '2021-10-01', '2021-10-31', 'UTS', '-', '2500000', '2500000', '0', '2021-09-28', '2021-09-28'),
(519, '', 70, '-', '-', '-', '', 'Workshop dan expo', '-', '1970-01-01', '1970-01-01', '', '-', '', '', '0', '2021-09-28', '2021-09-28'),
(520, 'RKATP WR3-014', 70, '-', '-', '-', 'Startup competition', 'Meningkatkan hilirisasi porduk', '-', '2021-09-01', '2021-12-31', 'UTS', '-', '7000000', '7000000', '7000000', '2021-09-28', '2021-12-29'),
(521, 'RKATP WR3-015', 70, '-', '-', '-', 'Pendampingan dan inkubasi Teknologi', 'Pendampingan Inovasi dan startup yg berdampak sosial kemasyarakat', '-', '2021-10-01', '2021-01-31', 'UTS', '-', '5000000', '5000000', '5000000', '2021-09-28', '2021-12-29'),
(522, 'RKATP WR3-016', 71, '-', '-', '-', 'Hibah pendanaan pengabdian dosen', 'Pelaksanaan hibah pengabdian untuk dosen yang produktif membina dan mendampingi desa serta mengahsilkan produk inovasi berbasis TTG', '-', '2021-06-01', '2021-10-31', 'UTS', '-', '12000000', '12000000', '2000000', '2021-09-28', '2021-12-15'),
(523, 'RKATP WR3-017', 71, '-', '-', '-', 'Tim ahli pengembangan desa', 'Pembentukan tim ahli desa dan dosen pembimbing magang di desa binaan, follow up kegiatan program merdeka', '-', '2021-11-01', '2021-11-30', 'UTS', '-', '2000000', '2000000', '1000000', '2021-09-28', '2021-12-08'),
(524, 'RKATP WR3-018', 71, '-', '-', '-', 'Akreditasi Jurnal Tambora Universitas dan ISSN jurnal pengabdian, ', 'Akreditasi sinta untuk Tamboradan daftar ISSN JPOM', '-', '1970-01-01', '2021-12-31', 'UTS', '-', '2000000', '2000000', '0', '2021-09-28', '2021-09-28'),
(525, 'RKATP WR3-019', 71, '-', '-', '-', 'Workshop dan pendampingan jurnal', '- Mengadakan DOI seluruh jurnal Fakultas dan Prodi UTS', '-', '2021-03-01', '2021-03-31', 'UTS', '-', '1000000', '1000000', '0', '2021-09-28', '2021-09-28'),
(526, 'RKATP WR3-020', 71, '-', '-', '-', 'Penerbitan Tambora dan OMP 2021', '- SK reviewer, editor, manajer dan keanggotaan yang berperan langsung dalam jurnal (Universita, Fakultas, dan Prodi) ', '-', '2021-08-01', '2021-08-31', 'UTS', '-', '1500000', '1500000', '0', '2021-09-28', '2021-09-28'),
(527, 'RKATP WR3-021', 71, '-', '-', '-', 'Inovasi Desa', '- Membentuk tim penilai tingkat kesiapan teknologi inovasi suatu produk (KATSINOV) ', '-', '1970-01-01', '1970-01-01', '', '-', '', '', '0', '2021-09-28', '2021-09-28'),
(528, 'RKATP WR3-022', 71, '-', '-', '-', 'Pengenalan dan sosialisasi produk unggulan UTS kepada desa-desa dan mitra yang membutuhkan produk tersebut (mengadakan expo hasil PKM)', '- Perbaikan dan peningkatan kualitas produk unggulan/inovasi UTS', '-', '2021-09-01', '2021-09-30', 'UTS', '-', '2000000', '2000000', '0', '2021-09-28', '2021-09-28'),
(529, 'RKATP WR3-023', 71, '-', '-', '-', 'Program peningkatan kapasitas produk inovasi dari Desa Binaan dan Mitra UTS pelaksanaan', '- Mengadakan dan melaksanakan kegiatan sosialisasi produk hasil penelitian UTS kepada masyarakat seperti:', '-', '1970-01-01', '1970-01-01', '', '-', '', '', '0', '2021-09-28', '2021-09-28'),
(530, 'RKATP WR3-024', 71, '-', '-', '-', 'Pendampingan Katsinov', '  a) Tim ahli UTS melakukan instalasi cold storage di Pulau Bungin, Alas Barat', '-', '1970-01-01', '1970-01-01', '', '-', '', '', '0', '2021-09-28', '2021-09-28'),
(531, 'RKATP WR3-025', 57, '-', '-', '-', 'Pembelian dan instalasi perangkat', 'Meningkatkan pelayanan kepada seluruh warga UTS', '-', '2021-09-01', '2021-09-30', 'UTS', '-', '6000000', '6000000', '0', '2021-09-28', '2021-09-28'),
(532, 'RKATP WR3-026', 57, '-', '-', '-', 'Penyediaan perangkat podcast', 'Menyediakan perangkat pendukung untuk live streaming', '-', '2021-03-01', '2021-03-31', 'UTS', '-', '54500000', '54500000', '0', '2021-09-28', '2021-09-28'),
(533, 'RKATP WR3-027', 57, '-', '-', '-', 'Pembelian lisensi', 'Pengembangan aplikasi', '-', '2021-11-01', '2021-11-30', 'UTS', '-', '5000000', '5000000', '0', '2021-09-28', '2021-09-28'),
(534, 'RKATP WR3-028', 57, '-', '-', '-', 'Pengembangan jaringan untuk mahasiswa', 'Pengembangan aplikasi', '-', '2021-06-01', '2021-06-30', 'UTS', '-', '14000000', '14000000', '0', '2021-09-28', '2021-09-28'),
(535, 'RKATP WR3-029', 57, '-', '-', '-', 'Pembuatan master plan', 'Penyusunan buku masterplan IT menuju smart campus yang menjadi rujukan dalam pengembangan perangkat lunak', '-', '2022-01-01', '2022-01-31', 'UTS', '-', '5000000', '5000000', '0', '2021-09-28', '2021-09-28'),
(536, 'RKATP WR3-030', 57, '-', '-', '-', 'Kompetisi dan Sponsorship', 'Mengadakan kompetisi pembuatan aplikasi dan mensponsori aplikasi karya mahasiswa', '-', '2021-12-01', '2021-12-31', 'UTS', '-', '8000000', '8000000', '0', '2021-09-28', '2021-09-28'),
(537, 'RKATP WR3-031', 57, '-', '-', '-', 'Peningkatan pelayanan', 'Pembelian fasilitas pendukung', '-', '2021-10-01', '2021-10-31', 'UTS', '-', '5000000', '5000000', '0', '2021-09-28', '2021-09-28'),
(538, 'RKATP WR3-032', 57, '-', '-', '-', 'Mengikuti kursus dan sertifikasi online', 'Mengikuti kurus dan sertifikasi', '-', '2021-12-01', '2021-12-31', 'UTS', '-', '3000000', '3000000', '0', '2021-09-28', '2021-09-28'),
(539, 'RKATP-FPSI-33', 82, '-', '-', '-', 'Webinar Series', 'Terwujudnya  pembelajaran berbasis kurikulum KKNI yang terukur ', '-', '1970-01-01', '1970-01-01', 'Fakultas ', '-', '2000000', '2000000', '0', '2021-10-26', '2021-10-26'),
(540, 'RKATP-FPSI-34', 82, '-', '-', '-', 'Kuliah Umum', 'Kuliah Umum PIO', '-', '1970-01-01', '1970-01-01', 'STP', '-', '2000000', '2000000', '0', '2021-10-26', '2021-10-26'),
(541, 'RKATP-FPSI-35', 82, '-', '-', '-', 'Jurnal Psimawa ', 'Indeksasi jurnal dengan sistem pembacaan, berupa: google scholer, PKP, Garuda, Indonesia one serch (IOS) dan indeksasi lainnya ', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '2000000', '2000000', '0', '2021-10-26', '2021-10-26'),
(542, 'RKATP-FPSI-36', 82, '-', '-', '-', 'Kemahasiswa', 'PKM', '-', '2021-09-01', '2021-09-01', 'Fakultas', '-', '2000000', '2000000', '0', '2021-10-26', '2021-10-26'),
(543, 'RKATP-FPSI-37', 82, '-', '-', '-', 'kerjasama ', 'SMA RHEE, SMKN 1 ALAS, BNN Mataram', '-', '2021-09-01', '1970-01-01', '', '-', '3000000', '3000000', '0', '2021-10-26', '2021-10-26'),
(544, 'RKATP-FPSI-38', 82, '-', '-', '-', 'Pendampingan kasus bunuh diri bima', 'Program pendampingan psikologis pada anak dalam mencegah bunuh diri ', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '3000000', '3000000', '0', '2021-10-26', '2021-10-26'),
(545, 'RKATP-FPSI-39', 82, '-', '-', '-', 'Edukasi Psikologi pada Kasus Bunuh Diri Bima', 'Psikoedukasi untuk keluarga dan anak dalam penanganan bunuh diri ', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '2000000', '2000000', '0', '2021-10-26', '2021-10-26'),
(546, 'RKATP-FPSI-40', 82, '-', '-', '-', 'Pendampingan sekolah', 'Pembinaan ke ranah pendidikan dan inspirasi tingkat SMP/Mts dan sederajat ', '-', '1970-01-01', '1970-01-01', 'SMA/SMK DI SUMBAWA', '-', '3000000', '3000000', '0', '2021-10-26', '2021-10-26'),
(547, 'RKATP-FPSI-41', 82, '-', '-', '-', 'ACB', 'peningkatan karakter siswa di sekolah ', '-', '2021-09-01', '1970-01-01', 'Fakultas', '-', '2000000', '2000000', '0', '2021-10-26', '2021-10-26'),
(548, 'RKATP-FPSI-42', 82, '-', '-', '-', 'Students\' Upgrading', 'Achiepment Motivation Training (AMT) ', '-', '2021-09-01', '2021-09-01', 'Fakultas', '-', '1000000', '1000000', '0', '2021-10-26', '2021-10-26'),
(549, 'RKATP-FPSI-43', 82, '-', '-', '-', '', 'Forum ilmiah psikologi ', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '1000000', '1000000', '0', '2021-10-26', '2021-10-26'),
(550, 'RKATP-FPSI-44', 82, '-', '-', '-', '', 'Sekolah komunitas', '-', '2021-09-01', '1970-01-01', 'Sumbawa', '-', '1000000', '1000000', '0', '2021-10-26', '2021-10-26'),
(551, 'WR1-26', 61, 'Family Gathering', 'Family Gathering', 'Family Gathering', 'Family Gathering', 'Kegiatan tahunan untuk mengeratkan silaturahim seluruh keluarga besar Universitas Teknologi Sumbawa, kegiatan berkumpul, bermain dengan game-game kelompok yang mengeratkan hubungan satu sama lain serta kegiatan makan bersama', 'kegiatan berkumpul, bermain dengan game-game kelompok yang mengeratkan hubungan satu sama lain serta kegiatan makan bersama', '2021-10-27', '2022-10-31', 'UTS', 'universitas', '14500000', '14500000', '0', '2021-10-27', '2021-10-27'),
(552, 'WR1-27', 61, 'Kebutuhan Kerumah Tanggaan', 'Kebutuhan Kerumah Tanggaan', 'Kebutuhan Kerumah Tanggaan', 'Kebutuhan Kerumah Tanggaan', 'Kebutuhan Kerumah Tanggaan', 'Kebutuhan Kerumah Tanggaan', '2021-10-27', '2022-10-30', 'Menyesuaikan', 'Universitas', '2000000', '2000000', '0', '2021-10-27', '2021-10-27'),
(553, 'WR1-46', 53, 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kerumahtanggaan', '2021-10-27', '2022-02-28', 'Menyesuaikan', 'universitas', '2000000', '2000000', '0', '2021-10-27', '2021-10-27'),
(554, 'WR4-11', 73, 'Proposal Kerja Sama', 'Proposal Kerja Sama', 'Proposal Kerja Sama', 'Proposal Kerja Sama', 'Penyusunan, design, pencetakan dan pengiriman proposal', 'Penyusunan, design, pencetakan dan pengiriman proposal', '2021-10-19', '2022-02-28', 'Menyesuaikan', 'Universitas', '7000000', '7000000', '0', '2021-10-27', '2021-10-27'),
(555, 'WR4-35', 75, 'Renovasi ruangan WR 4', 'Renovasi ruangan WR 4', 'Renovasi ruangan WR 4', 'Renovasi ruangan WR 4', 'Menambah aksesoris ruangan, marka-marka, dan bilik uuntuk mahasiswa internasional', 'Menambah aksesoris ruangan, marka-marka, dan bilik uuntuk mahasiswa internasional', '2021-05-01', '2021-10-31', 'Rektorat .Lt.1 - WR4', 'Universitas', '35000000', '35000000', '0', '2021-10-27', '2021-10-27'),
(556, 'SEK-10', 21, 'Pengadaan Media Penyimpanan Humas UTS', 'Pengadaan Media Penyimpanan Humas UTS', 'Pengadaan Media Penyimpanan Humas UTS', 'Pengadaan Media Penyimpanan Humas UTS', 'Pembelian RAM 16 GB', 'Pembelian RAM 16 GB', '2021-04-01', '2021-10-31', 'UTS', 'Universitas', '2000000', '2000000', '0', '2021-10-27', '2021-10-27'),
(557, 'SEK-11', 21, 'Humas Goes To School: Sharing Session “Branding”', 'Humas Goes To School: Sharing Session “Branding”', 'Humas Goes To School: Sharing Session “Branding”', 'Humas Goes To School: Sharing Session “Branding”', 'Kunjungan Humas UTS ke Sekolah untuk sharing pengetahuan dan pengalaman dalam bidang Kehumasan', 'Kunjungan Humas UTS ke Sekolah untuk sharing pengetahuan dan pengalaman dalam bidang Kehumasan', '2021-07-01', '2021-10-31', 'Menyesuaikan', 'universitas', '1000000', '1000000', '0', '2021-10-27', '2021-10-27'),
(558, 'BEA-03', 69, 'Seleksi mahasiswa sebagai penerima beasiswa', 'Seleksi mahasiswa sebagai penerima beasiswa', 'Seleksi mahasiswa sebagai penerima beasiswa', 'Seleksi mahasiswa sebagai penerima beasiswa', '- Mendata mahasiswa yang mencalonkan diri sebagai penerima beasiswa.\n - Verifikasi berkas mahasiswa calon penerima beasiswa sesuai dengan peluang beasiswa yang ada.\n - Membuat surat rekomendasi penerima beasiswa bagi mahasiswa yang lulus seleksi untuk dibuatkan SK rektor.', '- Mendata mahasiswa yang mencalonkan diri sebagai penerima beasiswa.\n - Verifikasi berkas mahasiswa calon penerima beasiswa sesuai dengan peluang beasiswa yang ada.\n - Membuat surat rekomendasi penerima beasiswa bagi mahasiswa yang lulus seleksi untuk dibuatkan SK rektor.', '2021-10-01', '2022-10-24', 'Kondisional', 'Kampus', '1000000', '1000000', '0', '2021-10-27', '2021-10-27'),
(559, 'BEA-04', 69, 'Sosialisasi Informasi Beasiswa dan aturan beasiswa   (dilakukan setiap semester)', 'Melakukan sosialisasi kepada seluruh mahasiswa Universitas Teknologi Sumbawa terkait peluang beasiswa yang ada', 'Sosialisasi bagi mahasiswa baru', 'Sosialisasi bagi mahasiswa baru', 'Melakukan sosialisasi kepada seluruh mahasiswa penerima beasiswa tentang aturan bagi penerima beasiswa ( diantaranya wajib mengikuti monev,aturan monev serta sanksi monev)', 'Melakukan sosialisasi kepada seluruh mahasiswa penerima beasiswa tentang aturan bagi penerima beasiswa ( diantaranya wajib mengikuti monev,aturan monev serta sanksi monev)', '2021-10-01', '2021-12-31', 'Zoom / RPK', 'universitas', '1500000', '1500000', '0', '2021-10-27', '2021-10-27'),
(560, 'BEA-05', 69, 'Monitoring dan Evaluasi (MONEV) bagi seluruh mahasiswa penerima beasiswa     (dilakukan setiap semester)', 'Monitoring dan Evaluasi (MONEV) bagi seluruh mahasiswa penerima beasiswa     (dilakukan setiap semester)', 'Monitoring dan Evaluasi (MONEV) bagi seluruh mahasiswa penerima beasiswa     (dilakukan setiap semester)', 'Monitoring dan Evaluasi (MONEV) bagi seluruh mahasiswa penerima beasiswa     (dilakukan setiap semester)', '- Monev dilakukan secara online melalui akun SIMILEA.\n - Setelah mahasiswa melakukan monev pada rentang waktu yang ditentukan, tim beasiswa melakukan verifikasi berkas mahasiswa secara online.\n - Mengumumkan hasil monev', '- Monev dilakukan secara online melalui akun SIMILEA.\n - Setelah mahasiswa melakukan monev pada rentang waktu yang ditentukan, tim beasiswa melakukan verifikasi berkas mahasiswa secara online.\n - Mengumumkan hasil monev', '2021-04-01', '2021-10-31', 'Monev dilakukan secara online dan diverifikasi data mahasiswa oleh tim beasiswa', 'Kampus', '3000000', '3000000', '1600000', '2021-10-27', '2021-12-13'),
(561, 'BEA-07', 69, 'Talks Show Beasiswa', 'Talks Show Beasiswa', 'Talks Show Beasiswa', 'Talks Show Beasiswa', '- Mengundang Lembaga Pemberi Beasiswa, seperti AMANT Mineral, PLN, BANK MANDIRI, dll \n - Mengundang Penerima beasiswa “bergengsi” dari alumni. Misalkan Alumni yang lulus LPDP, dan beasiswa lainnya.', '- Mengundang Lembaga Pemberi Beasiswa, seperti AMANT Mineral, PLN, BANK MANDIRI, dll \n - Mengundang Penerima beasiswa “bergengsi” dari alumni. Misalkan Alumni yang lulus LPDP, dan beasiswa lainnya.', '2021-10-01', '2022-10-30', 'Menyesuaikan', 'universitas', '5000000', '5000000', '0', '2021-10-27', '2021-10-27'),
(562, 'BEA-08', 69, 'Pelaporan Beasiswa Ke LLDIKTI', 'Pelaporan Beasiswa Ke LLDIKTI', 'Pelaporan Beasiswa Ke LLDIKTI', 'Pelaporan Beasiswa Ke LLDIKTI', '- Verifikasi mahasiswa penerima beasiswa Bidikmisi/KIP Kuliah kepada masing-masing prodi untuk memperoleh data valid tentang mahasiswa aktif pada semester yang dilaporkan\n - Membuat surat rekomendasi usulan penerima beasiswa pada semsester yang dilaporkan untuk selanjutnya dibuatkan SK rektor\n - Mengirim berkas pelaporan beasiswa ke LLDIKTI', '- Verifikasi mahasiswa penerima beasiswa Bidikmisi/KIP Kuliah kepada masing-masing prodi untuk memperoleh data valid tentang mahasiswa aktif pada semester yang dilaporkan\n - Membuat surat rekomendasi usulan penerima beasiswa pada semsester yang dilaporkan untuk selanjutnya dibuatkan SK rektor\n - Mengirim berkas pelaporan beasiswa ke LLDIKTI', '2021-10-01', '2022-10-31', 'kampus', 'universitas', '1000000', '1000000', '0', '2021-10-27', '2021-10-27'),
(563, 'BEA-09', 69, 'Pembuatan Video Profil UPT Beasiswa', 'Pembuatan Video Profil UPT Beasiswa', 'Pembuatan Video Profil UPT Beasiswa', 'Pembuatan Video Profil UPT Beasiswa', 'Sebagai media Branding Beasiswa bagi calon mahasiswa, dan bagi mahasiswa-mahasiswa on-going', 'Sebagai media Branding Beasiswa bagi calon mahasiswa, dan bagi mahasiswa-mahasiswa on-going', '2021-10-01', '2022-10-31', 'Kampus', 'Universitas', '1800000', '1800000', '0', '2021-10-27', '2021-10-27'),
(564, 'PUS-02', 63, 'Pengembangan SDM Perpustakaan', 'Pengembangan SDM Perpustakaan', 'Pengembangan SDM Perpustakaan', 'Pengembangan SDM Perpustakaan', 'Sertifikasi Pustakawan, bimtek pengelolaan perpustakaan perguruan tinggi', 'Sertifikasi Pustakawan, bimtek pengelolaan perpustakaan perguruan tinggi', '2021-06-01', '2021-07-31', 'Perpustakaan UTS', 'universitas', '5000000', '5000000', '0', '2021-10-27', '2021-10-27'),
(565, 'PUS-03', 63, 'Pemilihan Duta Baca UTS', 'Pemilihan Duta Baca UTS', 'Pemilihan Duta Baca UTS', 'Pemilihan Duta Baca UTS', 'Sebagai salah satu strategi promosi perpustakaan dalam upaya peningkatan minat baca di UTS', 'Sebagai salah satu strategi promosi perpustakaan dalam upaya peningkatan minat baca di UTS', '2021-06-01', '2021-07-31', 'Perpustakaan UTS', 'universitas', '5000000', '5000000', '4972000', '2021-10-27', '2021-12-30'),
(566, 'PUS-05', 63, 'Mengadakan Lomba Membaca Puisi dan Membaca Cerpen', 'Mengadakan Lomba Membaca Puisi dan Membaca Cerpen', 'Mengadakan Lomba Membaca Puisi dan Membaca Cerpen', 'Mengadakan Lomba Membaca Puisi dan Membaca Cerpen', 'Kegiatan ini merupakan strategi untuk mengembangkan budaya membaca,keterampilan,dan pemahaman', 'Kegiatan ini merupakan strategi untuk mengembangkan budaya membaca,keterampilan,dan pemahaman', '2021-05-01', '2021-10-31', 'perpustakaan UTS', 'universitas', '2500000', '2500000', '0', '2021-10-27', '2021-10-27'),
(567, 'LPT-05', 67, 'Studi banding ke Lembaga Psikologi Terapan di salah satu kampusTernama.', 'Studi banding ke Lembaga Psikologi Terapan di salah satu kampusTernama.', 'Studi banding ke Lembaga Psikologi Terapan di salah satu kampusTernama.', 'Studi banding ke Lembaga Psikologi Terapan di salah satu kampusTernama.', 'Melakukan\nkunjungan kerja ke salah satu Lembaga Psikologi Terapan di Universitas yang ada di Pulau Jawa', 'Melakukan\nkunjungan kerja ke salah satu Lembaga Psikologi Terapan di Universitas yang ada di Pulau Jawa', '2021-04-01', '2021-10-31', 'Salah satu PTN di Pulau Jawa', 'universitas', '4000000', '4000000', '0', '2021-10-27', '2021-10-27'),
(568, 'RKATP-FKM 030', 54, '-', '-', '-', 'Menyusun Visi Misi Progrm Studi 2021-2024', 'Kegiatan menyusun Visi dan Misi Progrm studi sebagai arah pengembangan Prodi 4 tahun ke depan.', '-', '1970-01-01', '1970-01-01', 'Prodi', '-', '1000000', '1000000', '0', '2021-11-01', '2021-11-01'),
(569, 'RKATP-FKM 031', 54, '-', '-', '-', 'Menyusun SOP Akademik dan kemahasiswaan FIKOM', 'Menyusun SOP bidang akademik dan kemahasiswaan FIKOM ', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '1500000', '1500000', '0', '2021-11-01', '2021-11-01'),
(570, 'RKATP-FKM 032', 54, '-', '-', '-', 'Menyusun SOP penelitian dan Pengabdian  Kepada Masyarakat FIKOM', 'Penyusunan SOP Penelitian dan Pengabdian Kepada Masyarakat FIKOM', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '1500000', '1500000', '0', '2021-11-01', '2021-11-01'),
(571, 'RKATP-FKM 033', 54, '-', '-', '-', 'Pengadaan Kamera dan memori', 'Pengadaan 1 unit kamera dan kartu memori', '-', '2021-09-01', '2021-09-01', 'Fakultas', '-', '7000000', '7000000', '0', '2021-11-01', '2021-11-01'),
(572, 'RKATP-FKM 034', 54, '-', '-', '-', 'Penyusunan Roadmap penelitian dan pengabdian FIKOM 2021-2024', 'Roadmap penelitian dan pengabdian ini berisi analisis mengenai situasi, stakeholder, dan sistem pembiayaan operasional riset dan pengandian Fikom.', '-', '2021-09-01', '2021-09-01', 'Fakultas', '-', '1000000', '1000000', '0', '2021-11-01', '2021-11-01'),
(573, 'RKATP-FKM 035', 54, '-', '-', '-', 'Pengurusan DOI Jurnal Prodi Ilmu Komunikasi', 'Mendaftarkan Jurnal kaganga komunika untuk mendapatkan DOI ', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '2500000', '2500000', '0', '2021-11-01', '2021-11-01'),
(574, 'RKATP-FKM 036', 54, '-', '-', '-', 'Kegiatan pengabdian kepada masyarkat FIKOM ', 'Fikom melakukan kegiatan pengabdian kepada masyrakat', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '4500000', '4500000', '0', '2021-11-01', '2021-11-01'),
(575, 'RKATP-FKM 037', 54, '-', '-', '-', 'Kerjasama FIKOM', 'Kerjasama Fikom dalam bidang pendidikan, penelitian, dan pengabdian masyarakat dengan lembaga lokal, nasional, dan internasional', '-', '2021-09-01', '2021-09-01', 'Fakultas', '-', '2380000', '2380000', '0', '2021-11-01', '2021-11-01'),
(576, 'RKATP-FKM 038', 54, '-', '-', '-', 'Pameran Internasional Fikom', 'Program ini berupa pameran Foto Internasional Fikom ', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '3000000', '3000000', '3000000', '2021-11-01', '2021-12-10'),
(577, 'RKATP-FKM 039', 54, '-', '-', '-', 'Kegiatan Webinar Fikom', 'Dalam program ini Fikom akan menyelenggarakan Webinar  dengan mengundang pembicara sebagai bentuk kolaborasi keilmuan dalam bidang ilmu komunikasi', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '3000000', '3000000', '0', '2021-11-01', '2021-11-01'),
(578, 'RKATP-FKM 040', 54, '-', '-', '-', 'Pengambangan kurikulum MBKM tahap 1 ', 'penyusunan kurikulum MBKM Fikom tahap 1', '-', '2021-09-01', '2021-09-01', 'Fakultas', '-', '2000000', '2000000', '0', '2021-11-01', '2021-11-01'),
(579, 'RKATP-FKM 041', 54, '-', '-', '-', 'Tracer Study Fakultas', 'Fikom akan melakukan kegiatan tracer study untuk melihat kepuasan pengguna alumni dan kegiatan alumni pasca lulus', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '1000000', '1000000', '0', '2021-11-01', '2021-11-01');
INSERT INTO `rkat` (`id_rkat`, `kode_rkat`, `id_user`, `sasaran_strategi`, `indikator_sasaran_strategi`, `nama_program`, `program_kerja`, `deskripsi`, `tujuan`, `mulai_program`, `selesai_program`, `tempat`, `sumber_anggaran`, `rencana_anggaran`, `total_anggaran`, `anggaran_digunakan`, `created_at`, `updated_at`) VALUES
(580, 'RKATP-FKM 042', 54, '-', '-', '-', 'Career Day Fikom', 'Pada kegiatan ini mahasiswa akan diberi bekal untuk mempersiapkan karir kedepannya', '-', '1970-01-01', '1970-01-01', 'Fakultas', '-', '1500000', '1500000', '0', '2021-11-01', '2021-11-01'),
(581, 'RKATP-SEK 015', 21, '-', '-', '-', 'Buku Laporan Tahunan UTS Tahun 2021', 'Penyusunan dan penyetakan Buku Laporan Tahunan 2021', '-', '1970-01-01', '1970-01-01', 'UTS', '-', '1000000', '1000000', '0', '2021-11-01', '2021-11-01'),
(582, 'RKATP-SEK 016', 21, '-', '-', '-', 'Statuta UTS', 'Penyusunan dan penyetakan Statuta UTS', '-', '2021-11-01', '2021-11-01', 'UTS', '-', '1000000', '1000000', '0', '2021-11-01', '2021-11-01'),
(583, 'RKATP-SEK 017', 21, '-', '-', '-', 'Buku SOP UTS', 'Penyusunan dan Cetak Buku SOP UTS Tahun 2021', '-', '2021-11-01', '1970-01-01', 'UTS', '-', '2000000', '2000000', '0', '2021-11-01', '2021-11-01'),
(584, 'RKATP-SEK 018', 21, '-', '-', '-', 'Sekretariat', 'Penyusunan dan penyetakan Laporan Kinerja Tahun 2020', '-', '2021-11-01', '1970-01-01', 'UTS', '-', '1800000', '1800000', '0', '2021-11-01', '2021-11-01'),
(585, 'RKATP-SEK 019', 21, '-', '-', '-', 'Duta Mahasiswa UTS', 'Duta Mahasiswa adalah program tahunan UTS, yang dilaksanakan dalam bentuk karantina mahasiswa juga seleksi dengan memberikan pembekalan terkait public speaking, wawasan terkait UTS, serta menggali potensi mahasiswa yang unik yang nantinya akan bermanfaat bagi promosi kampus.', '-', '2021-04-28', '2021-04-28', 'UTS', '-', '5750000', '5750000', '0', '2021-11-01', '2021-11-01'),
(586, 'RKATP-SEK 020', 21, '-', '-', '-', 'UTS Award', 'program dalam rangka dies natalis UTS, yang akan diberikan kepada orang-orang, tokoh, pejuang bagi kepentingan orang banya. Seperti pejuang lingkungan, guru honorer dll.', '-', '1970-01-01', '1970-01-01', 'UTS', '-', '2350000', '2350000', '0', '2021-11-01', '2021-11-01'),
(587, 'RKATP-SEK 021', 21, '-', '-', '-', 'Media Gathering', 'Merupakan spesial event Univeristas dengan mengundang wartawan dari berbagai media.', '-', '1970-01-01', '1970-01-01', 'Sumbawa', '-', '5000000', '5000000', '0', '2021-11-01', '2021-11-01'),
(588, 'RKATP-SEK 022', 21, '-', '-', '-', 'Kalender UTS', 'Pembuatan Kalender UTS adalah program membuat Kalender tahunan oleh Humas yang nantinya akan disebar luaskan yang hakikatnya adalah medium promosi kampus.', '-', '2021-11-01', '2021-11-01', 'UTS', '-', '4000000', '4000000', '0', '2021-11-01', '2021-11-01'),
(589, 'RKATP-SEK 023', 21, '-', '-', '-', 'Pengembangan Tim Humas', 'Pengembangan Tim Humas adalah program yang diagendakan utuk diikuti oleh staf Humas, baik dalam bentuk konverensi, pelatihan, lomba, dan sejenisnya.', '-', '2021-09-07', '2021-09-07', 'UTS', '-', '8000000', '8000000', '0', '2021-11-01', '2021-11-01'),
(590, 'RKATP-SEK 024', 21, 'branding', 'terlaksananya kegiatan sharing knowledge tentang kehumasan', 'Humas Goes To School: Sharing Session “Branding”', 'Humas Goes To School: Sharing Session “Branding” ', 'Humas Goes to School adalah kegiatan sharing knowledge tentang kehumasan kepada sekolah untuk pengembangan soft skill kaitannya dengan branding, pun potensi kehumasan yang bermanfaat lainnya.', 'sharingknowledge tentang kehumasan', '2021-11-18', '2021-11-18', 'Sumbawa grand hotel', 'sekniv', '4250000', '4250000', '4250000', '2021-11-01', '2021-12-09'),
(591, 'RKATP-SEK 025', 21, '-', '-', '-', 'Give Away UTS', 'Pemberian hadiah kepada follower terpilih UTS', '-', '1970-01-01', '2021-11-01', 'UTS', '-', '1350000', '1350000', '0', '2021-11-01', '2021-11-01'),
(592, 'RKATP-SEK 026', 21, '-', '-', '-', 'Pemotretan Media ', 'Pemotretan untuk keperluan media UTS', '-', '1970-01-01', '1970-01-01', 'UTS', '-', '1000000', '1000000', '1000000', '2021-11-01', '2021-12-28'),
(593, 'MTL - 50', 112, 'Praktikum Pengelasan', 'Praktikum Pengelasan', 'Praktikum Pengelasan', 'Mahasiswa mengikuti pelatihan pengelasan di LLK untuk dapat kenambah kemampuan mahir mengelas dan uji kecacatan', 'Mahasiswa mengikuti pelatihan pengelasan di LLK untuk dapat kenambah kemampuan mahir mengelas dan uji kecacatan', 'Mahasiswa mengikuti pelatihan pengelasan di LLK untuk dapat kenambah kemampuan mahir mengelas dan uji kecacatan', '2021-10-01', '2021-10-31', 'Lembaga Latihan Kerja (LLK) Sumbawa', 'Kampus', '1500000', '1500000', '0', '2021-11-17', '2021-11-17'),
(594, 'SPL - 24', 115, 'Teknik Sipil Berjaya', 'Teknik Sipil Berjaya', 'Teknik Sipil Berjaya', 'Untuk kegiatan ini menjalain kerjasama dengan desa dan beberapa instansi untuk melakukan pengabdian dan penelitian', 'Untuk kegiatan ini menjalain kerjasama dengan desa dan beberapa instansi untuk melakukan pengabdian dan penelitian', 'Untuk kegiatan ini menjalain kerjasama dengan desa dan beberapa instansi untuk melakukan pengabdian dan penelitian', '2021-04-01', '2021-04-30', 'Teknik Sipil', 'Kampus', '0', '0', '0', '2021-11-17', '2021-11-17'),
(595, 'FTB 03', 81, '-', '-', '-', 'WEEKEND BERSIH', 'program peningkatan kedekatan emosional sivitas dengan silaturahim yang dirangkaikan dengan kerja Bakti Fakultas', '-', '1970-01-01', '1970-01-01', 'UTS', '-', 'Rp                     500,000', 'Rp                     500,000', '0', '2021-12-29', '2021-12-29'),
(596, 'FTB 05', 81, '-', '-', '-', 'Pengembangan Pengabdian', 'program peningkatan perlibatan Dosen dan Mahasiswa dalam menginisiasi program pembangunan yang baru dan telah dilakukan di desa/dusun binaan', '-', '1970-01-01', '1970-01-01', 'UTS', '-', 'Rp                  1,000,000', 'Rp                  1,000,000', '0', '2021-12-29', '2021-12-29'),
(597, 'FTB 07', 81, '-', '-', '-', 'Dana pengembangan kegiatan mahaiswa', 'program sebagai upaya mendukung kegiatan mahasiswa di Fakultas melaui pendanaan Kegiatan Organisasi Mahasiswa', '-', '2021-04-01', '2021-04-30', 'UTS', '-', 'Rp                  3,000,000', 'Rp                  3,000,000', '0', '2021-12-29', '2021-12-29'),
(598, 'FTB 09', 81, '-', '-', '-', 'Pengembangan pendidikan', 'program pengadaan Bahan uji Lab dan praktikum mahasiswa ', '-', '1970-01-01', '1970-01-01', 'UTS', '-', 'Rp                  5,000,000', 'Rp                  5,000,000', '0', '2021-12-29', '2021-12-29'),
(599, 'FTB 10', 81, '-', '-', '-', 'Pengembangan aplikasi teknobiolink dan teknobiocloud', 'program peningkatan kapasitas  dan upgrade aplikasi pelayanan IT administrasi Fakultas ', '-', '2021-04-01', '2021-04-30', 'UTS', '-', 'Rp                  8,000,000', 'Rp                  8,000,000', '0', '2021-12-29', '2021-12-29');

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
(1, 1, 'Sekniv'),
(2, 2, 'Rektor'),
(3, 3, 'Warek 2 Keuangan'),
(4, 5, 'Fakultas'),
(12, 4, 'Warek 1 Akademik'),
(13, 4, 'Warek 3 Riset & Inovasi'),
(14, 4, 'Warek 4 Kerjasama'),
(15, 4, 'BADAN Penjamin Mutu Akademik'),
(16, 4, 'Badan Pengembangan Karakter & Hub. Ortu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur_child1`
--

CREATE TABLE `struktur_child1` (
  `id_struktur_child1` int(11) NOT NULL,
  `id_struktur` int(11) NOT NULL,
  `child1_level` int(11) NOT NULL,
  `nama_struktur_child1` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `struktur_child1`
--

INSERT INTO `struktur_child1` (`id_struktur_child1`, `id_struktur`, `child1_level`, `nama_struktur_child1`) VALUES
(7, 1, 0, '0'),
(8, 2, 0, '0'),
(9, 3, 0, '0'),
(10, 4, 0, '0'),
(11, 12, 0, '0'),
(12, 13, 0, '0'),
(13, 14, 0, '0'),
(14, 15, 0, '0'),
(15, 16, 0, '0'),
(17, 12, 0, 'Direktur Akademik'),
(18, 12, 0, 'Direktur Kemahasiswaan Dan Alu'),
(19, 12, 0, 'Direktur Sumber Daya Manusia'),
(20, 12, 0, 'Kantor Penerimaan Mahasiswa Ba'),
(21, 1, 0, 'UPT. Perpustakaan'),
(22, 1, 0, 'UPT. Pusat Bahasa'),
(23, 1, 0, 'UPT. Public Speaking'),
(24, 1, 0, 'UPT. CDC'),
(25, 1, 0, 'UPT. Lembaga Psikologi Terapan'),
(26, 3, 1, 'Direktur Keuangan'),
(27, 3, 0, 'Direktur Pengelolaan Dan Pemel'),
(28, 1, 0, 'UPT. Beasiswa'),
(29, 1, 0, 'UPT. Asrama'),
(30, 13, 0, 'Direktur Riset Dan Inovasi'),
(31, 13, 0, 'Direktur Pengabdian Kepada Mas'),
(32, 13, 0, 'Direktur Sistem Dan Teknologi '),
(33, 14, 0, 'Direktur Kerjasama Dalam Neger'),
(34, 14, 0, 'Direktur Perencanaan Dan Penge'),
(35, 14, 0, 'Direktur Kerjasama Luar Negeri'),
(36, 15, 0, 'Deputi Sistem Penjamin Mutu Ak'),
(37, 15, 0, 'Deputi Audit Mutu Akademik'),
(38, 16, 0, 'Deputi Pembinaan Karyawan'),
(39, 16, 0, 'Deputi Pembinaan Mahasiswa'),
(40, 4, 0, 'Fakultas Teknik Lingkungan dan Mineral'),
(41, 4, 0, 'Fakultas Teknobiologi'),
(42, 4, 0, 'Fakultas Teknologi Pertanian'),
(43, 4, 0, 'Fakultas Ekonomi & Bisnis'),
(44, 4, 0, 'Fakultas Ilmu Komunikasi'),
(45, 4, 0, 'Fakultas Psikologi'),
(46, 4, 0, 'Sekolah Pascasarjana'),
(47, 4, 0, 'Fakultas Rekayasa Sistem'),
(48, 1, 0, 'HUMAS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur_child2`
--

CREATE TABLE `struktur_child2` (
  `id_struktur_child2` int(11) NOT NULL,
  `id_struktur_child1` int(11) NOT NULL,
  `nama_struktur_child2` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `struktur_child2`
--

INSERT INTO `struktur_child2` (`id_struktur_child2`, `id_struktur_child1`, `nama_struktur_child2`) VALUES
(28, 7, '0'),
(29, 8, '0'),
(30, 9, '0'),
(31, 5, '0'),
(32, 10, '0'),
(34, 11, '0'),
(35, 12, '0'),
(36, 13, '0'),
(37, 14, '0'),
(38, 15, '0'),
(39, 17, '0'),
(40, 18, '0'),
(41, 19, '0'),
(42, 20, '0'),
(43, 21, '0'),
(44, 22, '0'),
(45, 23, '0'),
(46, 24, '0'),
(47, 25, '0'),
(48, 26, '0'),
(49, 27, '0'),
(50, 28, '0'),
(51, 29, '0'),
(52, 30, '0'),
(53, 31, '0'),
(54, 32, '0'),
(55, 33, '0'),
(56, 34, '0'),
(57, 35, '0'),
(58, 36, '0'),
(59, 37, '0'),
(60, 38, '0'),
(61, 39, '0'),
(62, 6, '0'),
(63, 40, '0'),
(64, 47, 'Teknik Informatika'),
(65, 40, 'Teknik Metalurgi'),
(66, 47, 'Teknik Industri'),
(67, 47, 'Teknik Elektro'),
(68, 47, 'Teknik Mesin'),
(69, 40, 'Teknik Sipil'),
(70, 40, 'Teknik Lingkungan'),
(71, 41, '0'),
(72, 41, 'Bioteknologi'),
(73, 41, 'Peternakan'),
(74, 42, '0'),
(75, 42, 'Teknologi Hasil Pertanian'),
(76, 42, 'Teknologi Industri Pertanian'),
(77, 43, '0'),
(78, 43, 'Akuntansi'),
(79, 43, 'Ekonomi Pembangunan'),
(80, 43, 'Manajemen'),
(81, 44, '0'),
(82, 44, 'Ilmu Komunikasi'),
(83, 45, '0'),
(84, 45, 'Psikologi'),
(85, 46, '0'),
(86, 46, 'Manajemen Inovasi'),
(87, 47, '0'),
(88, 48, '0');

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
  `kop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ttd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `fullname`, `password`, `id_struktur`, `id_struktur_child1`, `id_struktur_child2`, `email`, `nomor_wa`, `kop`, `ttd`, `created_at`, `updated_at`) VALUES
(21, 'Sekniv', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 1, 7, 28, 'sekniv@uts.ac.id', '082340127131', '4061a83284f107a.png', NULL, '2021-03-28 17:49:34', '2021-12-02 02:42:13'),
(22, 'Rektor', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 2, 8, 29, 'rektor@uts.ac.id', '980', NULL, NULL, '2021-03-28 17:49:34', '2021-12-07 06:53:46'),
(23, 'Warek II Keuangan', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 3, 9, 30, 'warek2@uts.ac.id', '980', NULL, NULL, '2021-03-28 17:49:34', '2021-08-30 03:15:42'),
(24, 'Direktur Keuangan', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 3, 26, 48, 'direktorat.keuangan@uts.ac.id', '082139193132', NULL, NULL, '2021-03-28 17:49:34', '2021-08-06 07:46:20'),
(53, 'Direktorat Akademik', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 12, 17, 39, 'direktorat.akademik@uts.ac.id', '7867687', NULL, NULL, '2021-07-25 16:05:05', '2021-08-18 07:46:10'),
(54, 'Fakultas Ilmu Komunikasi', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 44, 81, 'fikom@uts.ac.id', '67876877', NULL, NULL, '2021-07-25 16:06:00', '2021-08-18 07:33:40'),
(55, 'Prodi Ilmu Komunikasi', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 44, 82, 'ilmu.komunikasi@uts.ac.id', '687676', NULL, NULL, '2021-07-25 16:06:40', '2021-08-18 07:34:08'),
(56, 'Warek 3 Riset & Inovasi', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 13, 12, 35, 'warek3@uts.ac.id', '3332222222222', NULL, NULL, '2021-07-26 00:56:34', '2021-07-26 00:56:48'),
(57, 'Direktorat Sistem &Teknologi Informasi', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 13, 32, 54, 'dsti@uts.ac.id', '08190000000', NULL, NULL, '2021-07-26 00:57:33', '2021-07-26 01:18:34'),
(58, 'Warek 1 Akademik', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 12, 11, 34, 'warek1@uts.ac.id', '089789098', NULL, NULL, '2021-07-27 01:01:54', '2021-08-24 09:07:05'),
(60, 'Direktorat Kemahasiswaan & Alumni', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 12, 18, 40, 'kemahasiswaan@uts.ac.id', '08122020621', NULL, NULL, '2021-07-27 01:04:44', '2021-08-16 06:13:23'),
(61, 'Direktorat Sumber Daya Manusia', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 12, 19, 41, 'psdm@uts.ac.id', '231141414141241', NULL, NULL, '2021-07-27 01:07:12', '2021-07-27 01:07:13'),
(62, 'Kantor Penerimaan Mahasiswa Baru', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 12, 20, 42, 'pmb@uts.ac.id', '23232323232323', NULL, NULL, '2021-07-27 01:08:20', '2021-07-27 01:08:20'),
(63, 'Perpustakaan', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 1, 21, 43, 'perpustakaan@uts.ac.id', '082341472512', NULL, NULL, '2021-07-27 01:09:08', '2021-08-10 07:27:06'),
(64, 'Pusat bahasa', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 1, 22, 44, 'pusat.bahasa@uts.ac.id', '211312311231', NULL, NULL, '2021-07-27 01:09:58', '2021-08-10 06:49:50'),
(65, 'UTS School of Public Speaking', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 1, 23, 45, 'publicspeaking@uts.ac.id', '081239846932', NULL, NULL, '2021-07-27 01:10:51', '2021-10-11 08:04:38'),
(67, 'Lembaga Psikologi Terapan', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 1, 25, 47, 'psikologi.terapan@uts.ac.id', '081805275011', NULL, NULL, '2021-07-27 01:13:09', '2021-08-23 07:06:39'),
(68, 'Dikrektorat Pengelolaan & Pemeliharaan Fasilitas', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 3, 27, 49, 'dppf@uts.ac.id', '2342342424', NULL, NULL, '2021-07-27 01:14:20', '2021-07-27 01:14:21'),
(69, 'Beasiswa', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 1, 28, 50, 'beasiswa@uts.ac.id', '0819160000000', NULL, NULL, '2021-07-27 01:14:56', '2021-08-10 07:22:30'),
(70, 'Direktorat Riset & Inovasi', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 13, 30, 52, 'riset.inovasi@uts.ac.id', '2314234234234', NULL, NULL, '2021-07-27 01:16:49', '2021-07-27 01:16:49'),
(71, 'Direktorat Pengabdian Kepada Masyarakat', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 13, 31, 53, 'lppm@uts.ac.id', '32424242', NULL, NULL, '2021-07-27 01:18:23', '2021-07-27 01:18:24'),
(73, 'Direktorat Kerjasama Dalam Negeri', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 14, 33, 55, 'kerjasama@uts.ac.id', '234242342342342', NULL, NULL, '2021-07-27 01:20:08', '2021-08-25 06:24:48'),
(74, 'Direktorat Kerjasama Luar Negeri', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 14, 35, 57, 'international.office@uts.ac.id', '2134134131', NULL, NULL, '2021-07-27 01:22:02', '2021-08-23 07:27:42'),
(75, 'Direktorat Perencanaan & Pengembangan Universitas', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 14, 34, 56, 'dppu@uts.ac.id', '082359239980', NULL, NULL, '2021-07-27 01:23:18', '2021-10-28 06:29:21'),
(76, 'Badan Penjamin Mutu Akademik', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 15, 14, 37, 'bpma@uts.ac.id', '081239953945', NULL, NULL, '2021-07-27 01:24:26', '2021-09-14 02:48:47'),
(77, 'Badan Pengembangan Karakter & Hubungan Ortu', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 16, 15, 38, 'bpko@uts.ac.id', '23131313', NULL, NULL, '2021-07-27 01:26:19', '2021-07-27 01:26:20'),
(78, 'Sekolah Pascasarjana', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 46, 85, 'pascasarjana@uts.ac.id', '12341231231231', NULL, NULL, '2021-07-28 05:09:42', '2021-10-07 05:44:17'),
(79, 'Fakultas Ekonomi & Bisnis', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 43, 77, 'feb@uts.ac.id', '342342342342', NULL, NULL, '2021-07-28 05:17:14', '2021-07-28 05:17:14'),
(80, 'Fakultas Teknologi Pertanian', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 42, 74, 'fateta@uts.ac.id', '456546456456', NULL, NULL, '2021-07-28 05:54:27', '2021-08-16 05:38:51'),
(81, 'Fakultas Teknobiologi', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 41, 71, 'ftb@uts.ac.id', '32242342', NULL, NULL, '2021-07-28 06:17:21', '2021-07-28 06:17:21'),
(82, 'Fakultas Psikologi', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 45, 83, 'fpsi@uts.ac.id', '43534534534534', NULL, NULL, '2021-07-29 00:53:56', '2021-07-29 00:53:56'),
(84, 'Informatika', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 47, 64, 'informatika@uts.ac.id', '081892898123', NULL, NULL, '2021-08-06 06:01:44', '2021-09-07 15:50:17'),
(85, 'Industri', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 47, 66, 'teknik.industri@uts.ac.id', '4523452565', NULL, NULL, '2021-08-06 06:07:40', '2021-08-06 06:07:40'),
(89, 'Fakultas Teknik Lingkugan dan Mineral', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 40, 63, 'ftlm@uts.ac.id', '0877686786868', NULL, NULL, '2021-08-06 06:13:55', '2021-08-06 06:13:55'),
(96, 'Teknik Elektro', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 47, 67, 'teknik.elektro@uts.ac.id', '54754745745645', NULL, NULL, '2021-08-06 06:18:01', '2021-08-06 06:18:01'),
(97, 'Teknik Mesin', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 47, 68, 'teknik.mesin@uts.ac.id', '087827391783', NULL, NULL, '2021-08-06 06:18:53', '2021-08-06 06:18:54'),
(111, 'Fakultas Rekayasa Sistem', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 47, 87, 'frs@uts.ac.id', '081928346456', NULL, NULL, '2021-08-06 06:42:06', '2021-09-21 02:15:14'),
(112, 'Metalurgi', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 40, 65, 'metalurgi@uts.ac.id', '0877346346', NULL, NULL, '2021-08-06 06:55:37', '2021-08-06 06:55:37'),
(113, 'Asrama', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 1, 29, 51, 'asrama@uts.ac.id', '081237455553', NULL, NULL, '2021-08-10 07:21:32', '2021-08-10 07:21:36'),
(114, 'UPT  Career Development Center', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 1, 24, 46, 'upt.cdc@uts.ac.id', '08122020621', NULL, NULL, '2021-08-16 08:19:41', '2021-10-19 00:14:50'),
(115, 'Teknik Sipil', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 40, 69, 'teknik.sipil@uts.ac.id', '089780290000', NULL, NULL, '2021-08-26 01:57:15', '2021-08-26 01:57:15'),
(116, 'Teknik Lingkungan', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 40, 70, 'teknik.lingkungan@uts.ac.id', '0876767676767', NULL, NULL, '2021-08-26 04:25:30', '2021-08-26 07:24:22'),
(117, 'Warek IV Kerjasama', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 14, 13, 36, 'warek4@uts.ac.id', '08078078070', NULL, NULL, '2021-08-27 05:42:09', '2021-08-31 09:19:42'),
(118, 'Teknik Mesin', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 4, 47, 68, 'teknik.mesin@uts.ac.id', '087865684309', NULL, NULL, '2021-09-28 07:55:31', '2021-09-28 07:55:31'),
(119, 'HUMAS', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 1, 48, 88, 'humas@uts.ac.id', '9999999999', NULL, NULL, '2021-10-04 01:07:42', '2021-10-04 01:07:42'),
(120, 'Direktur Keuangan (Pencairan)', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 3, 26, 48, 'direktorat.keuangan.pencairan@uts.ac.id', '082139193132', NULL, NULL, '2021-03-28 17:49:34', '2021-08-06 07:46:20'),
(121, 'Direktur Keuangan (LPJ)', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 3, 26, 48, 'direktorat.keuangan.lpj@uts.ac.id', '082139193132', NULL, NULL, '2021-03-28 17:49:34', '2021-08-06 07:46:20'),
(3333, '', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', NULL, NULL, NULL, '', '', NULL, NULL, '2021-11-17 03:27:50', '2021-11-17 03:27:50');

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
-- Indeks untuk tabel `nonrkat`
--
ALTER TABLE `nonrkat`
  ADD PRIMARY KEY (`id_nonrkat`),
  ADD KEY `id_iku_parent` (`id_iku_parent`),
  ADD KEY `id_iku_child1` (`id_iku_child1`),
  ADD KEY `id_iku_child2` (`id_iku_child2`);

--
-- Indeks untuk tabel `nonrkat_pencairan`
--
ALTER TABLE `nonrkat_pencairan`
  ADD PRIMARY KEY (`id_pencairan_image`);

--
-- Indeks untuk tabel `nonrkat_validasi`
--
ALTER TABLE `nonrkat_validasi`
  ADD PRIMARY KEY (`id_validasi`),
  ADD KEY `id_pengajuan_history` (`nonrkat_id`),
  ADD KEY `id_struktur` (`id_struktur`);

--
-- Indeks untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `id_rkat` (`kode_rkat`),
  ADD KEY `id_iku_parent` (`id_iku_parent`),
  ADD KEY `id_iku_child1` (`id_iku_child1`),
  ADD KEY `id_iku_child2` (`id_iku_child2`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `next` (`next`);

--
-- Indeks untuk tabel `pengajuan_pencairan`
--
ALTER TABLE `pengajuan_pencairan`
  ADD PRIMARY KEY (`id_pencairan_image`);

--
-- Indeks untuk tabel `pengajuan_validasi`
--
ALTER TABLE `pengajuan_validasi`
  ADD PRIMARY KEY (`id_validasi`),
  ADD KEY `id_pengajuan_history` (`id_pengajuan`),
  ADD KEY `id_struktur` (`id_struktur`);

--
-- Indeks untuk tabel `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`id_period`);

--
-- Indeks untuk tabel `print`
--
ALTER TABLE `print`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rab`
--
ALTER TABLE `rab`
  ADD PRIMARY KEY (`id_rab`);

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
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `iku_child1`
--
ALTER TABLE `iku_child1`
  MODIFY `id_iku_child1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `iku_child2`
--
ALTER TABLE `iku_child2`
  MODIFY `id_iku_child2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `iku_parent`
--
ALTER TABLE `iku_parent`
  MODIFY `id_iku_parent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `nonrkat`
--
ALTER TABLE `nonrkat`
  MODIFY `id_nonrkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `nonrkat_pencairan`
--
ALTER TABLE `nonrkat_pencairan`
  MODIFY `id_pencairan_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `nonrkat_validasi`
--
ALTER TABLE `nonrkat_validasi`
  MODIFY `id_validasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_pencairan`
--
ALTER TABLE `pengajuan_pencairan`
  MODIFY `id_pencairan_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_validasi`
--
ALTER TABLE `pengajuan_validasi`
  MODIFY `id_validasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1135;

--
-- AUTO_INCREMENT untuk tabel `period`
--
ALTER TABLE `period`
  MODIFY `id_period` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `print`
--
ALTER TABLE `print`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT untuk tabel `rab`
--
ALTER TABLE `rab`
  MODIFY `id_rab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `rkat`
--
ALTER TABLE `rkat`
  MODIFY `id_rkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600;

--
-- AUTO_INCREMENT untuk tabel `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id_struktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `struktur_child1`
--
ALTER TABLE `struktur_child1`
  MODIFY `id_struktur_child1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `struktur_child2`
--
ALTER TABLE `struktur_child2`
  MODIFY `id_struktur_child2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3334;

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
-- Ketidakleluasaan untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `next` FOREIGN KEY (`next`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
