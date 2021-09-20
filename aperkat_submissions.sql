-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 08, 2021 at 01:26 PM
-- Server version: 10.2.39-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aperkat_submissions`
--

-- --------------------------------------------------------

--
-- Table structure for table `iku_child1`
--

CREATE TABLE `iku_child1` (
  `id_iku_child1` int(11) NOT NULL,
  `id_iku_parent` int(11) NOT NULL,
  `iku_child1` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iku_child1`
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
-- Table structure for table `iku_child2`
--

CREATE TABLE `iku_child2` (
  `id_iku_child2` int(11) NOT NULL,
  `id_iku_child1` int(11) NOT NULL,
  `iku_child2` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iku_child2`
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
-- Table structure for table `iku_parent`
--

CREATE TABLE `iku_parent` (
  `id_iku_parent` int(11) NOT NULL,
  `iku_parent` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iku_parent`
--

INSERT INTO `iku_parent` (`id_iku_parent`, `iku_parent`) VALUES
(1, 'Mewujudkan tata kelola universitas yang efisien, efektif, transparan\r\ndan akuntabel\r\n'),
(2, 'Menciptakan suasana akademik yang kondusif, nyaman, dan menyenangkan'),
(3, 'Melahirkan lulusan yang unggul, kompeten, dan berakhlak mulia.'),
(4, 'Melaksanakan kegiatan penelitian dan pengabdian kepada masyarakat, untuk\r\nmenjawab persoalan di tingkat lokal, nasional, dan internasional.\r\n'),
(5, 'Mendesiminasikan hasil penelitan dan pengabdian kepada masyarakat pada\r\ntingkat nasional dan internasional.');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id_message` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_message` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id_message`, `id_pengajuan`, `id_user`, `status_message`, `created_at`, `updated_at`) VALUES
(1, 146, 21, 1, '2021-07-25 15:56:40', '2021-07-26 01:07:40'),
(2, 146, 24, 1, '2021-07-25 15:56:40', '2021-07-25 16:01:05'),
(3, 146, 23, 0, '2021-07-25 15:56:40', '2021-07-25 15:56:40'),
(4, 146, 22, 0, '2021-07-25 15:56:40', '2021-07-25 15:56:40'),
(5, 147, 57, 1, '2021-08-05 07:27:06', '2021-08-06 07:36:53'),
(6, 147, 56, 1, '2021-08-05 07:27:06', '2021-08-05 07:50:26'),
(7, 147, 24, 1, '2021-08-05 07:27:06', '2021-08-05 07:59:18'),
(8, 147, 23, 1, '2021-08-05 07:27:06', '2021-08-05 08:02:58'),
(9, 147, 22, 1, '2021-08-05 07:27:06', '2021-08-05 08:12:43'),
(10, 147, 21, 1, '2021-08-05 07:27:06', '2021-08-05 07:38:40'),
(11, 148, 57, 1, '2021-08-06 07:41:28', '2021-08-06 07:54:32'),
(12, 148, 56, 1, '2021-08-06 07:41:28', '2021-08-06 07:43:09'),
(13, 148, 24, 1, '2021-08-06 07:41:28', '2021-08-06 07:46:59'),
(14, 148, 23, 1, '2021-08-06 07:41:28', '2021-08-06 07:47:59'),
(15, 148, 22, 1, '2021-08-06 07:41:28', '2021-08-06 07:49:42'),
(16, 148, 21, 1, '2021-08-06 07:41:28', '2021-08-06 07:53:30'),
(17, 149, 57, 1, '2021-08-10 05:54:00', '2021-08-10 06:13:31'),
(18, 149, 56, 1, '2021-08-10 05:54:00', '2021-08-10 05:55:02'),
(19, 149, 24, 1, '2021-08-10 05:54:00', '2021-08-10 05:57:38'),
(20, 149, 23, 1, '2021-08-10 05:54:00', '2021-08-10 05:56:34'),
(21, 149, 22, 1, '2021-08-10 05:54:00', '2021-08-10 06:01:17'),
(22, 149, 21, 1, '2021-08-10 05:54:00', '2021-08-10 06:05:38'),
(23, 150, 56, 0, '2021-08-10 07:01:15', '2021-08-10 07:01:15'),
(24, 150, 23, 0, '2021-08-10 07:01:15', '2021-08-10 07:01:15'),
(25, 150, 22, 0, '2021-08-10 07:01:15', '2021-08-10 07:01:15'),
(26, 150, 64, 0, '2021-08-10 07:01:15', '2021-08-10 07:01:15'),
(27, 150, 21, 0, '2021-08-10 07:01:15', '2021-08-10 07:01:15'),
(28, 151, 56, 1, '2021-08-10 07:01:17', '2021-08-10 07:01:53'),
(29, 151, 23, 1, '2021-08-10 07:01:17', '2021-08-16 01:42:55'),
(30, 151, 22, 0, '2021-08-10 07:01:17', '2021-08-10 07:01:17'),
(31, 151, 64, 0, '2021-08-10 07:01:17', '2021-08-10 07:01:17'),
(32, 151, 21, 1, '2021-08-10 07:01:17', '2021-08-10 07:18:41'),
(33, 152, 57, 1, '2021-08-10 07:04:04', '2021-08-10 07:09:00'),
(34, 152, 56, 1, '2021-08-10 07:04:04', '2021-08-10 07:04:34'),
(35, 152, 23, 1, '2021-08-10 07:04:04', '2021-08-16 01:40:52'),
(36, 152, 22, 1, '2021-08-10 07:04:04', '2021-08-13 03:14:15'),
(37, 152, 64, 1, '2021-08-10 07:04:04', '2021-08-12 04:03:13'),
(38, 152, 21, 1, '2021-08-10 07:04:04', '2021-08-12 03:53:34'),
(39, 153, 60, 1, '2021-08-13 03:16:33', '2021-08-13 03:16:51'),
(40, 153, 58, 0, '2021-08-13 03:16:33', '2021-08-13 03:16:33'),
(41, 153, 65, 0, '2021-08-13 03:16:33', '2021-08-13 03:16:33'),
(42, 153, 64, 0, '2021-08-13 03:16:33', '2021-08-13 03:16:33'),
(43, 153, 63, 0, '2021-08-13 03:16:33', '2021-08-13 03:16:33'),
(44, 153, 21, 0, '2021-08-13 03:16:33', '2021-08-13 03:16:33'),
(45, 154, 60, 1, '2021-08-13 05:24:28', '2021-08-13 05:24:40'),
(46, 154, 58, 0, '2021-08-13 05:24:28', '2021-08-13 05:24:28'),
(47, 154, 65, 0, '2021-08-13 05:24:28', '2021-08-13 05:24:28'),
(48, 154, 64, 0, '2021-08-13 05:24:28', '2021-08-13 05:24:28'),
(49, 154, 63, 0, '2021-08-13 05:24:28', '2021-08-13 05:24:28'),
(50, 154, 21, 0, '2021-08-13 05:24:28', '2021-08-13 05:24:28'),
(51, 155, 57, 1, '2021-08-16 03:24:11', '2021-08-16 03:24:20'),
(52, 155, 56, 0, '2021-08-16 03:24:11', '2021-08-16 03:24:11'),
(53, 155, 65, 0, '2021-08-16 03:24:11', '2021-08-16 03:24:11'),
(54, 155, 64, 0, '2021-08-16 03:24:11', '2021-08-16 03:24:11'),
(55, 155, 63, 0, '2021-08-16 03:24:11', '2021-08-16 03:24:11'),
(56, 155, 21, 1, '2021-08-16 03:24:11', '2021-08-18 02:26:54'),
(57, 156, 60, 1, '2021-08-16 04:19:45', '2021-08-16 04:19:57'),
(58, 156, 58, 0, '2021-08-16 04:19:45', '2021-08-16 04:19:45'),
(59, 156, 65, 0, '2021-08-16 04:19:45', '2021-08-16 04:19:45'),
(60, 156, 64, 0, '2021-08-16 04:19:45', '2021-08-16 04:19:45'),
(61, 156, 63, 0, '2021-08-16 04:19:45', '2021-08-16 04:19:45'),
(62, 156, 21, 0, '2021-08-16 04:19:45', '2021-08-16 04:19:45'),
(63, 157, 60, 1, '2021-08-16 04:19:55', '2021-08-16 04:20:42'),
(64, 157, 58, 0, '2021-08-16 04:19:55', '2021-08-16 04:19:55'),
(65, 157, 65, 0, '2021-08-16 04:19:55', '2021-08-16 04:19:55'),
(66, 157, 64, 0, '2021-08-16 04:19:55', '2021-08-16 04:19:55'),
(67, 157, 63, 0, '2021-08-16 04:19:55', '2021-08-16 04:19:55'),
(68, 157, 21, 1, '2021-08-16 04:19:55', '2021-08-16 05:38:07'),
(69, 158, 67, 1, '2021-08-16 08:08:56', '2021-08-16 08:09:07'),
(70, 158, 21, 0, '2021-08-16 08:08:56', '2021-08-16 08:08:56'),
(71, 158, 24, 0, '2021-08-16 08:08:56', '2021-08-16 08:08:56'),
(72, 158, 23, 0, '2021-08-16 08:08:56', '2021-08-16 08:08:56'),
(73, 158, 22, 0, '2021-08-16 08:08:56', '2021-08-16 08:08:56'),
(74, 159, 60, 0, '2021-08-17 02:46:55', '2021-08-25 00:58:22'),
(75, 159, 58, 1, '2021-08-17 02:46:55', '2021-08-18 10:34:09'),
(76, 159, 24, 1, '2021-08-17 02:46:55', '2021-08-18 02:46:52'),
(77, 159, 23, 0, '2021-08-17 02:46:55', '2021-08-17 02:46:55'),
(78, 159, 22, 1, '2021-08-17 02:46:55', '2021-08-17 13:38:19'),
(79, 159, 21, 1, '2021-08-17 02:46:55', '2021-08-24 07:48:11'),
(80, 160, 114, 1, '2021-08-18 03:29:07', '2021-08-18 03:29:23'),
(81, 160, 22, 0, '2021-08-18 03:29:07', '2021-08-18 03:29:07'),
(82, 160, 24, 1, '2021-08-18 03:29:07', '2021-08-18 05:54:15'),
(83, 160, 23, 0, '2021-08-18 03:29:07', '2021-08-18 03:29:07'),
(84, 160, 21, 0, '2021-08-18 03:29:07', '2021-08-18 03:29:07'),
(85, 161, 61, 1, '2021-08-19 06:20:57', '2021-08-19 06:21:37'),
(86, 161, 58, 0, '2021-08-19 06:20:57', '2021-08-19 06:20:57'),
(87, 161, 24, 0, '2021-08-19 06:20:57', '2021-08-19 06:20:57'),
(88, 161, 23, 0, '2021-08-19 06:20:57', '2021-08-19 06:20:57'),
(89, 161, 22, 0, '2021-08-19 06:20:57', '2021-08-19 06:20:57'),
(90, 161, 21, 0, '2021-08-19 06:20:57', '2021-08-19 06:20:57'),
(91, 162, 61, 1, '2021-08-19 06:27:15', '2021-08-19 06:27:30'),
(92, 162, 58, 0, '2021-08-19 06:27:15', '2021-08-19 06:27:15'),
(93, 162, 24, 0, '2021-08-19 06:27:15', '2021-08-19 06:27:15'),
(94, 162, 23, 0, '2021-08-19 06:27:15', '2021-08-19 06:27:15'),
(95, 162, 22, 0, '2021-08-19 06:27:15', '2021-08-19 06:27:15'),
(96, 162, 21, 0, '2021-08-19 06:27:15', '2021-08-19 06:27:15'),
(97, 163, 61, 1, '2021-08-19 06:31:22', '2021-09-01 06:40:19'),
(98, 163, 58, 1, '2021-08-19 06:31:22', '2021-08-19 07:34:34'),
(99, 163, 24, 1, '2021-08-19 06:31:22', '2021-08-23 03:09:36'),
(100, 163, 23, 1, '2021-08-19 06:31:22', '2021-08-31 07:40:24'),
(101, 163, 22, 0, '2021-08-19 06:31:22', '2021-08-19 06:31:22'),
(102, 163, 21, 1, '2021-08-19 06:31:22', '2021-09-03 03:33:41'),
(103, 164, 61, 1, '2021-08-19 06:38:25', '2021-09-01 06:39:49'),
(104, 164, 58, 1, '2021-08-19 06:38:25', '2021-08-19 07:12:17'),
(105, 164, 24, 1, '2021-08-19 06:38:25', '2021-08-23 03:21:04'),
(106, 164, 23, 1, '2021-08-19 06:38:25', '2021-08-31 07:38:09'),
(107, 164, 22, 1, '2021-08-19 06:38:25', '2021-09-01 06:28:36'),
(108, 164, 21, 0, '2021-08-19 06:38:25', '2021-08-19 06:38:25'),
(109, 165, 57, 1, '2021-08-20 01:38:36', '2021-08-23 06:39:02'),
(110, 165, 56, 1, '2021-08-20 01:38:36', '2021-08-23 06:42:31'),
(111, 165, 24, 1, '2021-08-20 01:38:36', '2021-08-23 03:39:51'),
(112, 165, 23, 0, '2021-08-20 01:38:36', '2021-08-20 01:38:36'),
(113, 165, 22, 0, '2021-08-20 01:38:36', '2021-08-20 01:38:36'),
(114, 165, 21, 0, '2021-08-20 01:38:36', '2021-08-20 01:38:36'),
(115, 166, 60, 1, '2021-08-23 05:37:35', '2021-08-25 00:58:46'),
(116, 166, 58, 1, '2021-08-23 05:37:35', '2021-08-24 09:16:42'),
(117, 166, 24, 1, '2021-08-23 05:37:35', '2021-08-26 07:44:52'),
(118, 166, 23, 1, '2021-08-23 05:37:35', '2021-08-31 07:37:41'),
(119, 166, 22, 1, '2021-08-23 05:37:35', '2021-09-01 06:24:29'),
(120, 166, 21, 0, '2021-08-23 05:37:35', '2021-08-23 05:37:35'),
(121, 167, 60, 1, '2021-08-25 05:50:22', '2021-08-25 06:11:43'),
(122, 167, 58, 1, '2021-08-25 05:50:22', '2021-08-25 09:43:15'),
(123, 167, 24, 0, '2021-08-25 05:50:22', '2021-08-25 05:50:22'),
(124, 167, 23, 0, '2021-08-25 05:50:22', '2021-08-25 05:50:22'),
(125, 167, 22, 0, '2021-08-25 05:50:22', '2021-08-25 05:50:22'),
(126, 167, 21, 0, '2021-08-25 05:50:22', '2021-08-25 05:50:22'),
(127, 168, 60, 0, '2021-08-26 01:35:36', '2021-09-01 06:28:01'),
(128, 168, 58, 1, '2021-08-26 01:35:36', '2021-08-26 01:39:28'),
(129, 168, 24, 1, '2021-08-26 01:35:36', '2021-08-26 07:43:37'),
(130, 168, 23, 1, '2021-08-26 01:35:36', '2021-08-27 02:48:35'),
(131, 168, 22, 1, '2021-08-26 01:35:36', '2021-09-01 06:26:31'),
(132, 168, 21, 0, '2021-08-26 01:35:36', '2021-08-26 01:35:36'),
(133, 169, 60, 1, '2021-08-26 01:53:59', '2021-08-26 01:57:19'),
(134, 169, 58, 0, '2021-08-26 01:53:59', '2021-08-26 01:53:59'),
(135, 169, 24, 0, '2021-08-26 01:53:59', '2021-08-26 01:53:59'),
(136, 169, 23, 0, '2021-08-26 01:53:59', '2021-08-26 01:53:59'),
(137, 169, 22, 0, '2021-08-26 01:53:59', '2021-08-26 01:53:59'),
(138, 169, 21, 0, '2021-08-26 01:53:59', '2021-08-26 01:53:59'),
(139, 170, 60, 1, '2021-08-26 01:59:38', '2021-09-06 03:25:47'),
(140, 170, 58, 1, '2021-08-26 01:59:38', '2021-08-26 02:21:35'),
(141, 170, 24, 1, '2021-08-26 01:59:38', '2021-08-26 07:44:33'),
(142, 170, 23, 1, '2021-08-26 01:59:38', '2021-08-31 07:31:04'),
(143, 170, 22, 0, '2021-08-26 01:59:38', '2021-08-26 01:59:38'),
(144, 170, 21, 0, '2021-08-26 01:59:38', '2021-08-26 01:59:38'),
(145, 171, 60, 0, '2021-08-26 03:07:05', '2021-09-01 06:26:06'),
(146, 171, 58, 1, '2021-08-26 03:07:05', '2021-08-27 08:02:59'),
(147, 171, 24, 1, '2021-08-26 03:07:05', '2021-08-26 07:44:28'),
(148, 171, 23, 1, '2021-08-26 03:07:05', '2021-08-31 07:28:28'),
(149, 171, 22, 1, '2021-08-26 03:07:05', '2021-09-01 06:25:52'),
(150, 171, 21, 0, '2021-08-26 03:07:05', '2021-08-26 03:07:05'),
(151, 172, 57, 0, '2021-08-27 03:45:14', '2021-08-27 03:45:14'),
(152, 172, 56, 1, '2021-08-27 03:45:14', '2021-08-30 07:30:25'),
(153, 172, 24, 1, '2021-08-27 03:45:14', '2021-08-30 03:57:47'),
(154, 172, 23, 1, '2021-08-27 03:45:14', '2021-08-31 07:28:10'),
(155, 172, 22, 0, '2021-08-27 03:45:14', '2021-08-27 03:45:14'),
(156, 172, 21, 0, '2021-08-27 03:45:14', '2021-08-27 03:45:14'),
(157, 173, 74, 0, '2021-08-27 05:53:26', '2021-08-27 05:53:26'),
(158, 173, 117, 0, '2021-08-27 05:53:26', '2021-08-27 05:53:26'),
(159, 173, 24, 0, '2021-08-27 05:53:26', '2021-08-27 05:53:26'),
(160, 173, 23, 0, '2021-08-27 05:53:26', '2021-08-27 05:53:26'),
(161, 173, 22, 0, '2021-08-27 05:53:26', '2021-08-27 05:53:26'),
(162, 173, 21, 0, '2021-08-27 05:53:26', '2021-08-27 05:53:26'),
(163, 174, 73, 0, '2021-08-27 05:55:40', '2021-08-27 05:55:40'),
(164, 174, 117, 0, '2021-08-27 05:55:40', '2021-08-27 05:55:40'),
(165, 174, 24, 0, '2021-08-27 05:55:40', '2021-08-27 05:55:40'),
(166, 174, 23, 0, '2021-08-27 05:55:40', '2021-08-27 05:55:40'),
(167, 174, 22, 0, '2021-08-27 05:55:40', '2021-08-27 05:55:40'),
(168, 174, 21, 0, '2021-08-27 05:55:40', '2021-08-27 05:55:40'),
(169, 175, 73, 1, '2021-08-27 06:00:53', '2021-09-03 02:16:20'),
(170, 175, 117, 1, '2021-08-27 06:00:53', '2021-08-31 02:46:11'),
(171, 175, 24, 1, '2021-08-27 06:00:53', '2021-08-30 04:00:51'),
(172, 175, 23, 1, '2021-08-27 06:00:53', '2021-08-31 07:21:04'),
(173, 175, 22, 1, '2021-08-27 06:00:53', '2021-09-01 06:22:12'),
(174, 175, 21, 0, '2021-08-27 06:00:53', '2021-08-27 06:00:53'),
(175, 176, 80, 1, '2021-08-31 09:47:13', '2021-09-01 05:34:20'),
(176, 176, 24, 1, '2021-08-31 09:47:13', '2021-09-01 02:50:41'),
(177, 176, 23, 1, '2021-08-31 09:47:13', '2021-09-01 04:28:15'),
(178, 176, 22, 1, '2021-08-31 09:47:13', '2021-09-01 06:24:05'),
(179, 176, 21, 0, '2021-08-31 09:47:13', '2021-08-31 09:47:13'),
(180, 177, 71, 1, '2021-09-01 03:05:51', '2021-09-01 03:07:30'),
(181, 177, 56, 0, '2021-09-01 03:05:51', '2021-09-01 03:05:51'),
(182, 177, 24, 1, '2021-09-01 03:05:51', '2021-09-01 03:06:32'),
(183, 177, 23, 0, '2021-09-01 03:05:51', '2021-09-01 03:05:51'),
(184, 177, 22, 0, '2021-09-01 03:05:51', '2021-09-01 03:05:51'),
(185, 177, 21, 0, '2021-09-01 03:05:51', '2021-09-01 03:05:51'),
(186, 178, 71, 0, '2021-09-01 03:11:38', '2021-09-01 06:46:25'),
(187, 178, 56, 1, '2021-09-01 03:11:38', '2021-09-01 06:45:43'),
(188, 178, 24, 0, '2021-09-01 03:11:38', '2021-09-01 03:11:38'),
(189, 178, 23, 1, '2021-09-01 03:11:38', '2021-09-08 02:40:49'),
(190, 178, 22, 1, '2021-09-01 03:11:38', '2021-09-01 07:59:05'),
(191, 178, 21, 0, '2021-09-01 03:11:38', '2021-09-01 03:11:38'),
(192, 179, 64, 1, '2021-09-01 05:46:02', '2021-09-06 03:53:36'),
(193, 179, 21, 1, '2021-09-01 05:46:02', '2021-09-02 02:24:29'),
(194, 179, 24, 1, '2021-09-01 05:46:02', '2021-09-06 06:48:34'),
(195, 179, 23, 1, '2021-09-01 05:46:02', '2021-09-08 02:18:41'),
(196, 179, 22, 1, '2021-09-01 05:46:02', '2021-09-03 07:19:38'),
(197, 180, 89, 0, '2021-09-01 05:57:07', '2021-09-08 03:04:24'),
(198, 180, 24, 1, '2021-09-01 05:57:07', '2021-09-06 06:44:45'),
(199, 180, 23, 1, '2021-09-01 05:57:07', '2021-09-08 02:18:38'),
(200, 180, 22, 0, '2021-09-01 05:57:07', '2021-09-01 05:57:07'),
(201, 180, 21, 0, '2021-09-01 05:57:07', '2021-09-01 05:57:07'),
(202, 181, 89, 0, '2021-09-01 06:03:50', '2021-09-08 03:02:49'),
(203, 181, 24, 1, '2021-09-01 06:03:50', '2021-09-06 06:39:24'),
(204, 181, 23, 1, '2021-09-01 06:03:50', '2021-09-08 02:18:36'),
(205, 181, 22, 0, '2021-09-01 06:03:50', '2021-09-01 06:03:50'),
(206, 181, 21, 0, '2021-09-01 06:03:50', '2021-09-01 06:03:50'),
(207, 182, 89, 0, '2021-09-01 06:08:47', '2021-09-08 03:00:17'),
(208, 182, 24, 1, '2021-09-01 06:08:47', '2021-09-06 06:37:28'),
(209, 182, 23, 1, '2021-09-01 06:08:47', '2021-09-08 02:18:34'),
(210, 182, 22, 0, '2021-09-01 06:08:47', '2021-09-01 06:08:47'),
(211, 182, 21, 0, '2021-09-01 06:08:47', '2021-09-01 06:08:47'),
(212, 183, 89, 0, '2021-09-01 06:14:20', '2021-09-08 02:57:37'),
(213, 183, 24, 1, '2021-09-01 06:14:20', '2021-09-06 06:36:01'),
(214, 183, 23, 1, '2021-09-01 06:14:20', '2021-09-08 02:18:35'),
(215, 183, 22, 0, '2021-09-01 06:14:20', '2021-09-01 06:14:20'),
(216, 183, 21, 0, '2021-09-01 06:14:20', '2021-09-01 06:14:20'),
(217, 184, 89, 0, '2021-09-01 06:19:00', '2021-09-08 02:40:03'),
(218, 184, 24, 1, '2021-09-01 06:19:00', '2021-09-06 06:34:24'),
(219, 184, 23, 1, '2021-09-01 06:19:00', '2021-09-08 02:18:30'),
(220, 184, 22, 1, '2021-09-01 06:19:00', '2021-09-01 06:20:46'),
(221, 184, 21, 0, '2021-09-01 06:19:00', '2021-09-01 06:19:00'),
(222, 185, 89, 0, '2021-09-01 06:26:55', '2021-09-08 02:33:23'),
(223, 185, 24, 1, '2021-09-01 06:26:55', '2021-09-06 06:32:13'),
(224, 185, 23, 1, '2021-09-01 06:26:55', '2021-09-08 02:17:50'),
(225, 185, 22, 0, '2021-09-01 06:26:55', '2021-09-01 06:26:55'),
(226, 185, 21, 0, '2021-09-01 06:26:55', '2021-09-01 06:26:55'),
(227, 186, 89, 0, '2021-09-01 07:05:36', '2021-09-06 06:31:59'),
(228, 186, 24, 1, '2021-09-01 07:05:36', '2021-09-06 06:29:11'),
(229, 186, 23, 1, '2021-09-01 07:05:36', '2021-09-08 02:09:41'),
(230, 186, 22, 0, '2021-09-01 07:05:36', '2021-09-01 07:05:36'),
(231, 186, 21, 0, '2021-09-01 07:05:36', '2021-09-01 07:05:36'),
(232, 187, 89, 0, '2021-09-01 07:09:42', '2021-09-08 02:08:20'),
(233, 187, 24, 1, '2021-09-01 07:09:42', '2021-09-03 08:05:09'),
(234, 187, 23, 1, '2021-09-01 07:09:42', '2021-09-08 01:59:45'),
(235, 187, 22, 0, '2021-09-01 07:09:42', '2021-09-01 07:09:42'),
(236, 187, 21, 0, '2021-09-01 07:09:42', '2021-09-01 07:09:42'),
(237, 188, 80, 0, '2021-09-01 08:42:43', '2021-09-08 01:56:34'),
(238, 188, 24, 1, '2021-09-01 08:42:43', '2021-09-06 05:45:08'),
(239, 188, 23, 1, '2021-09-01 08:42:43', '2021-09-03 00:32:26'),
(240, 188, 22, 0, '2021-09-01 08:42:43', '2021-09-01 08:42:43'),
(241, 188, 21, 1, '2021-09-01 08:42:43', '2021-09-02 02:24:14'),
(242, 189, 53, 0, '2021-09-02 03:15:19', '2021-09-02 03:15:19'),
(243, 189, 58, 0, '2021-09-02 03:15:19', '2021-09-02 03:15:19'),
(244, 189, 24, 1, '2021-09-02 03:15:19', '2021-09-06 05:45:00'),
(245, 189, 23, 1, '2021-09-02 03:15:19', '2021-09-03 00:36:57'),
(246, 189, 22, 1, '2021-09-02 03:15:19', '2021-09-03 07:18:59'),
(247, 189, 21, 0, '2021-09-02 03:15:19', '2021-09-02 03:15:19'),
(248, 190, 116, 1, '2021-09-05 20:24:16', '2021-09-05 20:24:47'),
(249, 190, 89, 1, '2021-09-05 20:24:16', '2021-09-06 09:17:27'),
(250, 190, 24, 1, '2021-09-05 20:24:16', '2021-09-06 05:44:54'),
(251, 190, 23, 0, '2021-09-05 20:24:16', '2021-09-05 20:24:16'),
(252, 190, 22, 0, '2021-09-05 20:24:16', '2021-09-05 20:24:16'),
(253, 190, 21, 0, '2021-09-05 20:24:16', '2021-09-05 20:24:16'),
(254, 191, 60, 0, '2021-09-06 05:09:53', '2021-09-06 05:09:53'),
(255, 191, 58, 0, '2021-09-06 05:09:53', '2021-09-06 05:09:53'),
(256, 191, 24, 1, '2021-09-06 05:09:53', '2021-09-06 05:44:38'),
(257, 191, 23, 0, '2021-09-06 05:09:53', '2021-09-06 05:09:53'),
(258, 191, 22, 0, '2021-09-06 05:09:53', '2021-09-06 05:09:53'),
(259, 191, 21, 0, '2021-09-06 05:09:53', '2021-09-06 05:09:53'),
(260, 192, 116, 0, '2021-09-06 13:49:21', '2021-09-06 13:49:21'),
(261, 192, 89, 0, '2021-09-06 13:49:21', '2021-09-06 13:49:21'),
(262, 192, 24, 0, '2021-09-06 13:49:21', '2021-09-06 13:49:21'),
(263, 192, 23, 0, '2021-09-06 13:49:21', '2021-09-06 13:49:21'),
(264, 192, 22, 0, '2021-09-06 13:49:21', '2021-09-06 13:49:21'),
(265, 192, 21, 0, '2021-09-06 13:49:21', '2021-09-06 13:49:21'),
(266, 193, 116, 0, '2021-09-06 14:05:59', '2021-09-06 14:05:59'),
(267, 193, 89, 0, '2021-09-06 14:05:59', '2021-09-06 14:05:59'),
(268, 193, 24, 0, '2021-09-06 14:05:59', '2021-09-06 14:05:59'),
(269, 193, 23, 0, '2021-09-06 14:05:59', '2021-09-06 14:05:59'),
(270, 193, 22, 0, '2021-09-06 14:05:59', '2021-09-06 14:05:59'),
(271, 193, 21, 0, '2021-09-06 14:05:59', '2021-09-06 14:05:59'),
(272, 194, 116, 0, '2021-09-06 14:18:29', '2021-09-06 14:18:29'),
(273, 194, 89, 0, '2021-09-06 14:18:29', '2021-09-06 14:18:29'),
(274, 194, 24, 0, '2021-09-06 14:18:29', '2021-09-06 14:18:29'),
(275, 194, 23, 0, '2021-09-06 14:18:29', '2021-09-06 14:18:29'),
(276, 194, 22, 0, '2021-09-06 14:18:29', '2021-09-06 14:18:29'),
(277, 194, 21, 0, '2021-09-06 14:18:29', '2021-09-06 14:18:29'),
(278, 195, 116, 0, '2021-09-06 14:22:57', '2021-09-06 14:22:57'),
(279, 195, 89, 0, '2021-09-06 14:22:57', '2021-09-06 14:22:57'),
(280, 195, 24, 0, '2021-09-06 14:22:57', '2021-09-06 14:22:57'),
(281, 195, 23, 0, '2021-09-06 14:22:57', '2021-09-06 14:22:57'),
(282, 195, 22, 0, '2021-09-06 14:22:57', '2021-09-06 14:22:57'),
(283, 195, 21, 0, '2021-09-06 14:22:57', '2021-09-06 14:22:57'),
(284, 196, 116, 0, '2021-09-06 14:27:00', '2021-09-06 14:27:00'),
(285, 196, 89, 0, '2021-09-06 14:27:00', '2021-09-06 14:27:00'),
(286, 196, 24, 0, '2021-09-06 14:27:00', '2021-09-06 14:27:00'),
(287, 196, 23, 0, '2021-09-06 14:27:00', '2021-09-06 14:27:00'),
(288, 196, 22, 0, '2021-09-06 14:27:00', '2021-09-06 14:27:00'),
(289, 196, 21, 0, '2021-09-06 14:27:00', '2021-09-06 14:27:00'),
(290, 197, 116, 0, '2021-09-06 14:33:34', '2021-09-06 14:33:34'),
(291, 197, 89, 0, '2021-09-06 14:33:34', '2021-09-06 14:33:34'),
(292, 197, 24, 0, '2021-09-06 14:33:34', '2021-09-06 14:33:34'),
(293, 197, 23, 0, '2021-09-06 14:33:34', '2021-09-06 14:33:34'),
(294, 197, 22, 0, '2021-09-06 14:33:34', '2021-09-06 14:33:34'),
(295, 197, 21, 0, '2021-09-06 14:33:34', '2021-09-06 14:33:34'),
(296, 198, 116, 0, '2021-09-06 14:38:19', '2021-09-06 14:38:19'),
(297, 198, 89, 0, '2021-09-06 14:38:19', '2021-09-06 14:38:19'),
(298, 198, 24, 0, '2021-09-06 14:38:19', '2021-09-06 14:38:19'),
(299, 198, 23, 0, '2021-09-06 14:38:19', '2021-09-06 14:38:19'),
(300, 198, 22, 0, '2021-09-06 14:38:19', '2021-09-06 14:38:19'),
(301, 198, 21, 0, '2021-09-06 14:38:19', '2021-09-06 14:38:19'),
(302, 199, 111, 1, '2021-09-07 08:22:08', '2021-09-07 08:22:29'),
(303, 199, 24, 0, '2021-09-07 08:22:08', '2021-09-07 08:22:08'),
(304, 199, 23, 0, '2021-09-07 08:22:08', '2021-09-07 08:22:08'),
(305, 199, 22, 0, '2021-09-07 08:22:08', '2021-09-07 08:22:08'),
(306, 199, 21, 0, '2021-09-07 08:22:08', '2021-09-07 08:22:08'),
(307, 200, 84, 1, '2021-09-07 15:41:30', '2021-09-07 15:41:47'),
(308, 200, 111, 1, '2021-09-07 15:41:30', '2021-09-07 15:41:50'),
(309, 200, 24, 0, '2021-09-07 15:41:30', '2021-09-07 15:41:30'),
(310, 200, 23, 0, '2021-09-07 15:41:30', '2021-09-07 15:41:30'),
(311, 200, 22, 0, '2021-09-07 15:41:30', '2021-09-07 15:41:30'),
(312, 200, 21, 0, '2021-09-07 15:41:30', '2021-09-07 15:41:30'),
(313, 201, 111, 1, '2021-09-08 02:22:17', '2021-09-08 02:24:05'),
(314, 201, 24, 0, '2021-09-08 02:22:17', '2021-09-08 02:22:17'),
(315, 201, 23, 0, '2021-09-08 02:22:17', '2021-09-08 02:22:17'),
(316, 201, 22, 0, '2021-09-08 02:22:17', '2021-09-08 02:22:17'),
(317, 201, 21, 0, '2021-09-08 02:22:17', '2021-09-08 02:22:17');

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
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `kode_rkat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
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
  `rab` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id_pengajuan`, `kode_rkat`, `id_user`, `latar_belakang`, `sasaran`, `target_capaian`, `bentuk_pelaksanaan_program`, `tempat_program`, `tanggal`, `bidang_terkait`, `id_iku_parent`, `id_iku_child1`, `id_iku_child2`, `biaya_program`, `bank`, `atn`, `no_rek`, `rab`, `status_pengajuan`, `pencairan`, `lpj_kegiatan`, `lpj_keuangan`, `validasi_status`, `nama_status`, `created_at`, `updated_at`) VALUES
(160, '239', 114, 'Mahasiswa agar memiliki SKA (Skill, Knowledge dan Attitude)', 'Mencetak sertifikat peserta sertifikasi kompetensi', '600 Mahasiswa di kalikan 2 lembar', 'Print dilakukan secara Hard Copy', 'UTS', '2021-08-18', 'Rektor', 1, 3, 15, '350000', 'Mandiri', 'Arie Kasmita', '1610006286871', '40611c7e83180a6.xlsx', 'progress', NULL, NULL, NULL, 1, 'UPT  Career Development Center', '2021-08-18 03:29:07', '2021-08-18 03:29:07'),
(163, '250', 61, 'Ketidaksamaan Persepsi Asessor', 'Asessor BKD dari setiap Program Studi dan Universitas', 'Meminimalisir perbedaan persepsi Asessor', 'Rapat', 'Zoom Metting', '2021-08-13', 'WAREK I, Direktorat Akademik', 1, 3, 10, '5000000', 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40611dfaba04c98.pdf', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-08-19 06:31:22', '2021-08-31 07:45:59'),
(164, '251', 61, 'BKD & LKD sebagai bentuk tanggungjawab Tri Dharma PT', 'Seluruh Dosen UTS', 'Dosen mengerti secara teknis dalam penyusunan BKD & LKD', 'Sosialisasi', 'Zoom Metting', '2021-08-24', 'WAREK I, Direktorat Akademik', 1, 3, 10, '500000', 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40611dfc60ba0ce.pdf', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-08-19 06:38:24', '2021-08-31 07:40:07'),
(165, '316', 57, 'setset', 'setset', 'set', 'set', 'set', '2021-08-21', 'DPPF', 1, 2, 7, '1000000', 'BNI', 'Arie Kasmita', '245425252525252', '40611f079b138ba.docx', 'progress', NULL, NULL, NULL, 1, 'Direktorat Sistem &Teknologi Informasi', '2021-08-20 01:38:35', '2021-08-20 01:38:37'),
(166, '298', 60, 'kurangnya manajemen organisasi', 'Mahasiswa UTS', 'Melatih mahasiswa dalam mengelola organisasi', 'Seminar Online', 'UTS', '2021-08-30', 'Direktur Kemahasiswaan dan Alumni UTS', 3, 10, 49, '1000000', 'Bank NTB Syariah', 'BEM UTS', '0090200700276', '406123341f31540.pdf', 'progress', NULL, NULL, NULL, 0, 'Warek 1 Akademik', '2021-08-23 05:37:35', '2021-08-24 09:21:10'),
(168, '298', 60, 'Kurangnya keterampilan organisasi dalam memanajemen Organisasi', 'Mahasiswa Aktif UTS Khususnya Pengurus Organisasi kemahasiswaan', 'a.	Melatih mahasiswa dalam mengelola serta mengembangkan organisasinya', 'Webinar secara Online', 'Universitas Teknologi Sumbawa', '2021-08-30', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 10, 49, '1000000', 'Bank NTB Syariah', 'BEM Universitas Teknologi Sumbawa', '0090200700276', '406126efe87fa7f.pdf', 'progress', NULL, NULL, NULL, 2, 'Rektor', '2021-08-26 01:35:36', '2021-09-01 06:28:01'),
(170, '273', 60, 'mahasiswa belum mengetahui/mendapatkan bekal ketika akan magang', 'Mahasiswa yang akan melaksanakan kegiatan Magang', 'Mahasiswa mengetahui Do\'s and don\'ts saat melaksanakan magang', 'webinar secara daring', 'Universitas Teknologi Sumbawa', '2021-08-18', 'CDC - Direktur Kemahasiswaan dan Alumni UTS', 3, 11, 53, '1100000', 'Mandiri', 'Arie Kasmita', '1610006286871', '406126f58a529b9.pdf', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-08-26 01:59:38', '2021-08-31 07:34:57'),
(171, '296', 60, 'PKM lolos pendanaan akan melakukan monev eksternal Kemdikbud 2021', '12 tim PKM lolos pendanaan', 'tim PKM lolos pendanaan akan lebih siap dalam monev PKM', 'masing masing Tim akan memaparkan progres kerja PKM pada tim monev internal UTS', 'Universitas Teknologi Sumbawa', '2021-09-01', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 12, 63, '2250000', 'Mandiri', 'Teguh Iman Hadinullah', '1610006273952', '4061270558c9b96.pdf', 'progress', NULL, NULL, NULL, 2, 'Rektor', '2021-08-26 03:07:05', '2021-09-01 06:26:06'),
(172, '317', 57, 'n Pemrograman', 'n Pemrograman', 'n Pemrograman', 'n Pemrograman', 'n Pemrograman', '2021-08-27', 'Warek 3', 2, 6, 28, '2415000', 'BNI', 'ahmad juliansyah', '2454252525', '4061285fc9d84fe.jpg', 'progress', NULL, NULL, NULL, 1, 'Direktorat Sistem &Teknologi Informasi', '2021-08-27 03:45:14', '2021-08-27 03:45:14'),
(175, '101', 73, 'Menjajaki kerja sama dan audiensi dengan para mitra dan calon mitra di setiap instansi', 'penambahan jumlah kerja sama', 'Munculnya lebih dari 5 kerja sama baru', 'Pertemuan terbatas dan daring', 'instansipemerintahan kabupaten, provinsi dan pusat serta dengan pihak swasta', '2021-08-31', 'FTB', 1, 2, 9, '3000000', 'BRI', 'Anita Gusmiarti', '810101008139530', '4061287f951736c.pdf', 'progress', NULL, NULL, NULL, 2, 'Rektor', '2021-08-27 06:00:53', '2021-09-01 06:23:48'),
(178, '92', 71, 'Pengabdian merupakan salah satu tridarma perguruan tinggi yang wajib untuk dilaksanakan oleh para dosen. Oleh karena itu, untuk mendukung terlaksananya kegiatan dan meningkatnya jumlah pengabdian para dosen di lingkungan Universitas Teknologi Sumbawa maka kampus memberikan dukungan berupa hibah Pengabdian internal kepada para dosen. Sebagai salah satu rangkain dari kegiatan hibah pengabdian internal tersebut, setiap dosen diharapakan dapat melaksanakan kegiatan Pengabdian.', 'Para Dosen tetap Universitas Teknologi Sumbawa', '5.	Target atas Ketercapaian Pelaksanaan:  Kegiatan ini diharapkan dapat memenuhi indikator sasaran strategis sbb : 1.	Minimal dua kegiatan pengabdian per dosen selama tahun 2020-2021 2.	Dua judul pengabdian masyarakat mendapatkam dana hibah penelitian dari pihak ketiga. 3.	30 proposal pengabdian yang diajukan oleh dosen tetap prodi  4.	Minimal satu publikasi pengabdian dosen pada jurnal nasional selama tahun 2020-2021.', 'Hibah Pengabdian internal dosen UTS.', 'Universitas Teknologi Sumbawa', '2021-09-01', 'Direktorat Pengabdian kepada Masyarakat dan Publikasi', 4, 18, 80, '12000000', 'Mandiri', 'Erliyani Kurnia', '1610006298330', '40612eef6a4beab.pdf', 'progress', NULL, NULL, NULL, 2, 'Warek 3 Riset & Inovasi', '2021-09-01 03:11:38', '2021-09-01 06:46:25'),
(179, '369', 64, 'Program ini dilaksanakan sebagai upaya meningkatkan dan   mengembangkan potensi UPT Bahasa dalam kegiatan kewirausahaan.  Adapun kegiatan ini bertujuan untuk media dan sarana promosi UPT Bahasa.', 'Mengembangkan potensi UPT Bahasa dalam kegiatan kewairausahaan', 'Pengembangan potensi UPT Bahasa yang  rampung pada bulan September 2021', '-', '-', '2021-09-01', 'WR 2', 1, 1, 1, '2000000', 'Mandiri', 'UTS UPT BAHASA', '1610006267970', '40612f139965ac3.pdf', 'approved', NULL, NULL, NULL, 2, 'Sekniv', '2021-09-01 05:46:01', '2021-09-06 03:49:53'),
(180, '325', 89, 'Arah pengembangan Fakultas Teknologi Lingkungan dan Mineral (FTLM) harus sejalan dengan perkembangan zaman. Renstra dan Renop FTLM sebagai arah dalam pengambilan keputusan dalam penyelenggaraan dan pengelolaan Fakultas dalam lima tahun ke depan dengan memertimbangkan berbagai aspek strategis lainnya. Rencana strategis dan Renop Fakultas  sebagai langkah pertama dalam penyusunan Rencana Kerja Fakultas Teknologi Lingkungan dan Mineral. Dalam proses penyusunannya, Renstra dan Renop FTLM mempertimbangkan berbagai kebijakan dasar dan strategis ke depan yang diputuskan melalui Senat Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen renstra dan Renop periode 2021-2025', '1) Terbentuknya tim penyusun dokumen renstra dan Renop Fakultas.  2) Rampungnya dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Dekan membentuk tim penyusun dokumen renstra yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen renstra dan Renop.', 'Universitas Teknologi Sumbawa', '2021-09-06', 'Seluruh program studi di Fakultas Teknologi Lingkungan dan Mineral', 1, 1, 1, '1750000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f163343185.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-01 05:57:07', '2021-09-08 03:04:24'),
(181, '326', 89, 'Visi, misi, tujuan, dan sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM) Universitas Teknologi Sumbawa selanjutnya disingkat FTLM-UTS. Visi, misi, tujuan, dan sasaran FTLM-UTS disusun dengan memperhatikan perkembangan ilmu pengetahuan, teknologi, dan dinamika kehidupan masyarakat yang berubah dengan sangat cepat. Rumusan Visi, misi, tujuan, dan sasaran FTLM  ini dibuat dengan tujuan untuk meningkatkan mutu FTLM-UTS, baik mutu Dosen  maupun mahasiswa Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral.', '1) Terbentuknya tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran Fakultas.  2) Rampungnya dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM)', 'Dekan membentuk tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen Visi, Misi, Tujuan dan Sasaran .', 'Universitas Teknologi Sumbawa', '2021-09-06', 'Seluruh program studi di Fakultas Teknologi Lingkungan dan Mineral', 1, 1, 1, '3000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f17c61017a.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-01 06:03:50', '2021-09-08 03:02:49'),
(182, '327', 89, 'Tujuan arah kebijakan Fakultas Teknologi Lingkungan dan Mineral (FTLM) untuk membangun profil Fakultas yang produktivitas,  sesuai perkembangan ilmu pengetahuan, teknologi, dan dinamika kehidupan masyarakat serta memiliki kemampuan yang sesuai dengan bidang keilmuan. memberikan pelayanan yang prima melalui perubahan pola pikir (mind set) dan budaya kerja (culture set) dalam sistem menejerial Fakultas. Salah satu upaya penataan tata kelola fakultas diwujudkan dalam bentuk penyusunan dan implementasi standar Standar Operasional Prosedur Fakultas Teknologi Lingkungan dan Mineral (FTLM) (selanjutnya disebut dengan (SOP) dalam pelaksanaan tugas dan fungsi dosen dan staff dilingkungan Fakultas. Kegiatan penyusunan dan implementasi SOP memerlukan partisipasi penuh dari seluruh unsur yang ada di dalam Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Standar Operasional Prosedur (SOP)', '1) Terbentuknya tim penyusun dokumen Standar Operasional Prosedur (SOP)Fakultas.  2) Rampungnya dokumen Standar Operasional Prosedur (SOP)Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Dekan membentuk tim penyusun dokumen Standar Operasional Prosedur (SOP) yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen SOP Fakultas', 'Universitas Teknologi Sumbawa', '2021-09-08', 'Seluruh Program studi di FTLM', 1, 1, 2, '1500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f18eed9ea2.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-01 06:08:47', '2021-09-08 03:00:17'),
(183, '328', 89, 'Banyaknya penelitian dan pengabdian yang dikompetisikan di tingkat nasional seperti Dikti, Ristek dan lain-lain menuntut kesiapan para dosen/peneliti yang ingin berkompetisi dalam merebutkan hibah penelitian tersebut. Aspek yang paling penting adalah kapasitas yang cukup dalam penguasaan teknik penyusunan proposal penelitian. Dengan latar belakang tersebut Pihak Fakultas Teknologi Lingkungan dan Mineral (FTLM) perlu memberikan solusi kepada para dosen dengan cara mengadakan \"Coaching Clinic\" membuat proposal Hibah. Workshop/Coaching Clinic Penyusunan Proposal Penelitian  penting untuk dilakukan sebagai salah satu upaya mendorong para dosen dan peneliti untuk semangat meneliti sesuai dengan bidang ilmunya dan mempublikasikan hasil-hasil karya mereka di jurnal nasional dan jurnal internasional serta terimplementasi di tingkat masyarakat luas.', 'Peningkatan kualitas SDM di Lingkungan Fakultas Teknologi Lingkungan dan Mineral (FTLM)', '1) Dosen mengikuti coaching clinic membuat proposal Hibah dan Pelatihan Pembuatan Vidio Pembelajaran yang menarik  2) Dosen menerapkan apa yang diperoleh saat pelatihan  3) Dosen yang telah mengikuti pelatihan mampu mengaplikasikan ilmunya dalam bentuk produk proposal hibah dan vidio pembelajaran.', '1).Membekali dosen dengan coaching clinic membuat proposal Hibah. 2) Membekali dosen dengan pelatihan membuat vidio pembelajaran yang menarik.', 'Universitas Teknologi Sumbawa', '2021-09-20', 'Program studi di FTLM', 4, 17, 78, '1500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1a3b7133c.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-01 06:14:19', '2021-09-08 02:57:37'),
(184, '329', 89, 'Orientasi studi dan pengenalan kampus (OSPEK) Fakultas adalah kegiatan yang diselenggarakan oleh Senat Mahasiswa Fakultas (SMF) bekerja sama dengan Himpunan Mahasiswa (HMP) dari setiap program studi dibawah naungan fakultas, serta pemilihan ketua Senat Mahasiswa Fakultas (SMF) Sains dan Teknologi 2019. Perguruan tinggi mengembangkan fungsi Tri Dharma yaitu  pegajaran, penelitian, dan pengabdian masyarakat. Salah satu fungsi dari perguruan tinggi adalah fungsi pengajaran. Fakultas Teknologi Lingkungan dan Mineral (FTLM) Melaksanakan fungsi tersebut melalui kegiatan Orientasi Studi dan Pengenalan Kampus (OSPEK) Fakultas Teknologi Lingkungan dan Mineral (FTLM). Latar belakang dari dilaksanakannya kegiatan ini adalah Kebutuhan mahasiswa akan motivasi tentang perkenalan Fakultas terkhusus Fakultas Teknologi Lingkungan dan Mineral (FTLM). Oleh karena itu,  diperlukan sebuah pembekalan intensif mengenai motivasi dan kiat-kiat untuk menjadi mahasiswa Fakultas Teknologi Lingkung dan Mineral (FTLM) yang disampaikan oleh Dekan Fakultas Teknologi Lingkungan dan Mineral beserta jajarannya.', 'Peningkatan wawasan mahasiswa baru terkait Fakultas Teknologi Lingkungan dan Mineral', '1. Mahasiswa Baru akan lebih mengenalkan Fakultas Teknologi Lingkungan dan Mineral 2.J iwa solidaritas, disiplin, berintegritas, dan berintelektual, serta moralitas akan terbentuk pada mahasiswa baru FTLM 3. Mahasiswa Baru mampu memahami nilai-nilai  kekeluargaan,  profesionalitas, serta menghargai perbedaan budaya', '1. Mengenalkan Fakultas Teknologi Lingkungan dan Mineral kepada mahasiswa baru angkatan 2021 2. Membentuk mahasiswa baru FTLM  yang memiliki jiwa solidaritas, disiplin, berintegritas, dan berintelektual, serta memiliki moralitas yang tinggi 3. Menanamkan nilai-nilai kekeluargaan,  profesionalitas, serta menghargai perbedaan budaya', 'Universitas Teknologi Sumbawa (media zoom)', '2021-10-02', 'Program studi di FTLM', 3, 10, 49, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1b53cde74.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-01 06:19:00', '2021-09-08 02:40:03'),
(185, '330', 89, 'Mengingat pengabdian masyarakat merupakan bagian integral Tri Dharma Perguruan Tinggi yang dalam pelaksanaannya tidak terlepas dari dua dharma yang lainnya, serta melibatkan segenap sivitas akademik: dosen, mahasiswa, tenaga kependidikan serta alumni. Melalui pengadian masyarakat sivitas akademik dapat hadir di tengah-tengah masyarakat. Melestarikan lingkungan hidup merupakan kebutuhan yang tidak bisa ditunda maupun diabaikan, karena melestarikan lingkungan hidup bukan hanya menjadi tanggung jawab pemerintah (Negara) saja, melainkan tanggung jawab setiap insan di bumi. Setiap orang wajib melakukan usaha untuk menyelamatkan lingkungan hidup disekitarnya. Dengan kapasitas masing-masing, sekecil apapun usaha yang dilakukan akan sangat bermanfaat bagi terwujudnya kehidupan bagi terwujudnya bumi yang layak di huni.', 'Meningkatkan kesadaran dosen dan mahasiswa terhadap lingkungan', 'Partisipasi dosen dan mahasiswa', 'Pengabdian Masyarakat Aksi Peduli Lingkungan', 'Desa Binaan', '2021-11-10', 'Program studi di FTLM', 4, 18, 80, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1d2f1d09d.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-01 06:26:55', '2021-09-08 02:33:23'),
(186, '331', 89, 'Salah satu tujuan dalam pelaksanaan penelitian adalah mempublikasikan hasil penelitian dalam bentuk jurnal pada suatu penerbit/publisher. Segala jenis dukungan untuk menghasilkan publikasi ilmiah terus dilakukan, termasuk membantu pembiayaan penerbitan jurnal, baik jurnal tingkat nasional maupun internasional. Dengan bantuan pembiayaan penerbitan jurnal diharapkan memacu para peneliti untuk terus menulis karya ilmiah terutama pada jurnal internasional bereputasi.', 'Meningkatnya mutu publikasi hasil penelitian dosen-dosen di Fakultas Teknologi Lingkungan dan Mineral', 'Angka dan Mutu Publikasi Meningkat', 'Program Talangan Publikasi Jurnal Internasional Bereputasi atau minimal Sinta 2.', 'Universitas Teknologi Sumbawa', '2021-12-06', 'Semua Program studi di lingkungan FTLM', 5, 20, 84, '2250000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f263fed37f.xlsx', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-01 07:05:36', '2021-09-06 06:31:59'),
(187, '332', 89, 'DOI atau Digital Object Identifier atau Pengenal Objek Digital (dalam bahasa Indonesia ) adalah tools pengenal permanen yang digunakan pada suatu dokumen elektronik terutama terkait dengan artikel jurnal. Dalam proses akreditas jurnal oleh Kemristekdikti, salah satu poin penilaian adalah Alamat/Identitas Unik Artikel (DOI). Jurnal Hexagon telah terdaftar Sehingga Fakultas Teknologi Mineral dan Lingkungan perlu secara konsisten adanya keberadaan DOI Jurnal Fakultas.', 'Mempersiapkan Jurnal Fakultas menjadi Jurnal Terakreditasi', 'Pembiayaan DOI Jurnal Fakultas (Hexagon)', 'Pembiayaan DOI Jurnal', 'Universitas Teknologi Sumbawa', '2021-08-16', 'Semua Program studi di lingkungan FTLM', 4, 17, 78, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f273661057.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-01 07:09:42', '2021-09-08 02:08:20'),
(188, '179', 80, 'Peningkatan kualitas dosen perlu dilakulan', 'Dosen', 'Peningkatan kemampuan dosen', 'Pelatihan mendeley dan jurnal', 'Raberas Resto', '2021-09-06', 'Warek 1', 2, 7, 39, '4000000', 'Mandiri', 'Ihlana Nairfana', '1610004215286', '40612f3d0308cc0.pdf', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-01 08:42:43', '2021-09-08 01:56:34'),
(189, '262', 53, 'Meminimalisir terjadinya kesalahan dalam pencetakan ijazah dan transkrip', 'Mahasiswa calon wisudawan', 'kesalahan pencatakan dapat diminimalisir, sehingga menghemat penggunaan blangko ijazah dan transkrip nilai', 'offline', 'loket akademik', '2021-08-11', 'Bagian akademik, kaprodi dan dekan masing-masing fakultas', 1, 1, 1, '600000', 'BSI', 'Eva Juliani', '7730066710', '40613041c57056f.xlsx', 'progress', NULL, NULL, NULL, 1, 'Direktorat Akademik', '2021-09-02 03:15:17', '2021-09-02 03:15:19'),
(191, '296', 60, 'PKM merupakan salah satu wujud implementasi Tridharma Perguruan Tinggi yang diluncurkan  oleh Direktorat Jenderal Pendidikan Tinggi pada  tahun 2021 di bawah pengelolaan Direktorat  Pembelajaran dan Kemahasiswaan (Belmawa)  merupakan salah satu upaya untuk menumbuhkan, mewadahi, dan mewujudkan ide kreatif serta inovatif mahasiswa', '12 Tim PKM Lolos Pendanaan Universitas Teknologi Sumbawa', 'agar tim pkm dapat melakukan kegiatan dengan baik dan sesuai panduan', 'Seminar Online melalui link zoon Kemdikbud', 'Kemdikbud RI dan Universitas Teknologi Sumbawa', '2021-09-06', 'Direktur Kemahasiswaan dan Alumni UTS', 3, 12, 63, '1625000', 'Bank Mandiri', 'Putri Indah Kencana', '1610004658287', '406135a2a13f9e6.pdf', 'progress', NULL, NULL, NULL, 1, 'Direktorat Kemahasiswaan & Alumni', '2021-09-06 05:09:53', '2021-09-06 05:09:53'),
(192, '394', 116, 'Perbedaan jadwal dan kesibukan tiap dosen pada tugas strukturalnya membuat dosen jarang dapat berkumpul membicarakan agenda prodi secara terarah, sehingga perlu diluangkan waktu khusus, setidaknya 1 kali sebulan.', 'Mengawal berlangsungnya proses PPEPP pada setiap kegiatan yang dilakukan oleh Prodi Teknik Lingkungan secara bersama-sama', '1) Kehadiran dosen dalam setiap rapat mencapai 80%  2) Setiap agenda rapat dibahas hingga tuntas  3) Adanya Rencana Tindak Lanjut dalam setiap rapat.', 'Rapat', 'UTS', '2021-09-24', 'Wakil Rektor I - IV dan BPMA', 1, 1, 3, '500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '4061361c617ffc0.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 13:49:21', '2021-09-06 13:49:21'),
(193, '395', 116, 'Pengelolaan terhadap data menjadi suatu keharusan bagi sebuah unit kerja yang baru seperti Prodi Teknik Lingkungan. Ini perlu dilakukan sejak awal agar data dapat tersusun rapi dan mampu memberikan insight bagi pengambil kebijakan, agar mampu merumuskan kebijakan yang tepat berdasarkan data.', 'Data yang ada di program Studi Teknik Lingkungan dapat tersusun dengan rapi dan mampu divisualisasikan ke dalam infografis / Google Data Studio', '1) Data yang ada terkelola dengan baik (2) Data yang telah dikelola mampu divisualisasikan ke dalam infografis/ Google Data Studio', 'Pelatihan/ Workshop', 'Room Zoom', '2021-11-18', 'Wakil Rektor I - IV', 1, 1, 3, '500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '4061362046ad483.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:05:59', '2021-09-06 14:05:59'),
(194, '396', 116, 'Dalam mewujudkan Teknik Lingkungan yang unggul perlu kesepakatan Bersama dalam menentukan kegiatan/program kerja yang mendukung kemajuan Program Studi sesuai dengan rencana strategis yang dicanangkan. Selain itu, perlu adanya evaluasi pada setiap kegiatan yang telah dilakukan untuk mengukur keberhasilan yang telah dilakukan selama satu tahun terakhir.', 'Tersusunnya RKAT 2022 dan Laporan Tahunan 2021', '(1) Tersusunnya RKAT untuk Tahun 2022  (2) Tersusunnya Laporan Tahunan Program Studi untuk Tahun 2021', 'Rapat', 'UTS', '2021-12-21', 'Wakil Rektor II', 1, 1, 1, '500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '406136233589447.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:18:29', '2021-09-06 14:18:29'),
(195, '397', 116, 'Kurikulum merupakan ruh dalam pelaksanaan pendidikan atau kegiatan akademik di suatu pendidikan tinggi. Penerapan Kampus Merdeka telah memaksa institusi pendidikan tinggi untuk mampu beradaptasi secara cepat dalam melaksanakannya. Tidak terkecuali dalam penyesuaian kurikulumnya. Prodi Teknik Lingkungan sebagai unit kerja yang baru berkesempatan melaksanakan ini sejak awal, sehingga perlu dilakukan secara cermat. Mengingat pentingnya kurikulum ini dalam keberlangsungan pendidikan di Prodi Teknik Lingkungan maka akan dibentuk Tim Penyusun Kurikulum yang selanjutnya akan bertugas menyusun Dokumen Kurikulum Merdeka Belajar Kampus Merdeka (MBKM).', 'Program Studi Teknik Lingkungan Memiliki Dokumen Kurikulum Merdeka Belajar Kampus Merdeka (MBKM)', '(1) Terbentuknya tim penyusun dokumen Kurikulum MBKM 	(2) Rampungnya Dokumen Kurikulum MBKM', 'Rapat, FGD', 'UTS', '2021-09-01', 'Wakil Rektor I dan BPMA', 3, 11, 55, '2500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40613624410fafd.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:22:57', '2021-09-06 14:22:57'),
(196, '398', 116, 'Kondisi pandemi Covid-19 yang belum jelas kapan akan berakhir menuntut institusi pendidikan tinggi untuk mampu beradaptasi dalam kegiatan pembelajaran-nya. Salah satu upaya yang dilakukan adalah dengan penerapan sistem blended learning. Dalam penerapannya, sistem ini membutuhkan dukungan prasarana yang memadai, salah satunya dalah “Akun Zoom Premium”. Dengan ini, kegiatan pembelajaran secara daring akan lebih nyaman pelaksanaannya.', 'Program Studi Teknik Lingkungan melanggan akun zoom premium dengan durasi 1 (satu) tahun.', '(1) Memiliki akun zoom premium berlangganan selama 1 (satu) tahun.  (2) Akun zoom dapat dimanfaatkan oleh seluruh civitas akademika di lingkungan Prodi Teknik Lingkungan untuk kepentingan pendidikan.', 'Pengadaan', '-', '2021-09-27', 'Wakil Rektor II', 2, 8, 43, '1200000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '406136253409a94.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:27:00', '2021-09-06 14:27:00'),
(197, '399', 116, 'Sebagian besar dosen di ProdiTeknik Lingkungan merupakan dosen muda yang dituntut untuk terus tumbuh dan mampu beradaptasi secara cepat terhadap tugas pokok dan fungsinya sebagai dosen. Pelatihan pekerti merupakan salah satu pelatihan yang sangat berguna dalam mendukung kelancaran proses pembe-lajaran.  Melalui kegiatan ini SDM akan dibekali pengetahuan mengenai konsep pengembangan kurikulum, desain pemelajaran, penyusunan RPS, keteram-pilan dasar mengajar dan beberapa pengetahuan lain yang akan sangat berguna untuk kemajuan Program Studi dan Dosen.', 'Peningkatan kualitas SDM di Prodi Teknik Lingkungan.', '(1) Dosen mengikuti pelatihan pekerti. (2) Dosen menerapkan apa yang diperoleh saat pelatihan. (3) Dosen yang telah mengikuti pelatihan mampu mendistribusikan penge-tahuannya kepada rekan-rekan yang lain.', 'Pelatihan/ Workshop', 'Room Zoom', '2021-10-21', 'Wakil Rektor I dan BPMA', 1, 3, 15, '2300000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40613626bd44b92.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:33:34', '2021-09-06 14:33:34'),
(198, '400', 116, 'Salah satu faktor yang cukup penting dalam pengembangan Prodi adalah peningkatan kapasitas SDM. Melalui program ini, Program Studi memberikan subsidi kepada dosen yang akan mengikuti diklat mengenai topik-topik Lingkungan Hidup yang sesuai dengan kompetensi prodi sebagai bentuk penguatan kapasitas terhadap SDM yang ada di Prodi Teknik Lingkungan.', 'Mendukung Pengembangan kapasitas SDM dengan mengikuti kegiatan-kegiatan pelatihan terkait Lingkungan Hidup.', '(1) Ada dosen yang mengikuti pelatihan terkait Lingkungan Hidup.  (2) Dosen yang telah mengikuti pelatihan mampu menularkan pemahamannya kepada rekan-rekan dosen lainnya di Prodi Teknik Lingkungan.', 'Pelatihan/Workshop', 'Room Zoom', '2021-12-15', 'Wakil Rektor I', 1, 3, 15, '2500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40613627da4e5ef.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:38:19', '2021-09-06 14:38:19'),
(199, '334', 111, 'Pembentukan tim perumus dan Penyusunan Visi, Misi, Renstra dan Renop serta Alur Pelayanan Administrasi Akademik FRS', 'Pimpinanan Fakultas, Program Studi dan Dosen yang di tunjuk yang menjadi Tim penyusun', 'Menghasikan dokumen Renstra & Renop, dokumen VMTS dan dokumen layanan administrasi akademik', 'Rapat pimpinan Fakultas & Program Studi', 'Ruang Ex FEB', '2021-09-14', 'Semua Program studi di lingkungan FRS', 1, 4, 19, '1187000', 'Mandiri', '085333821808', '1610006291731', '406137212fae6a3.pdf', 'progress', NULL, NULL, NULL, 1, 'Fakultas Rekayasa Sistem', '2021-09-07 08:22:08', '2021-09-07 08:22:08'),
(201, '336', 111, 'Memenuhi keperluan pelayanan administrasi, penyampaian informasi melalui media sosial dan untuk mengenalkan struktur organisasi yang ada di lingkungan Fakultas Rekayasa Sistem', 'Seluruh civitas akademik di lingkungan Fakultas Rekayasa Sistem', 'Tersampainya informasi secara keseluruhan kepada civitas akademik Fakultas Rekayasa Sistem baik secara online maupun ofline', 'Publikasi dan Dokumentasi', 'Di lingkungan Fakultas Rekayasa Sistem', '2021-09-08', 'Semua Program studi di lingkungan FRS', 2, 8, 40, '2500000', 'Mandiri', '085333821808', '1610006291731', '4061381e590ca79.xlsx', 'progress', NULL, NULL, NULL, 1, 'Fakultas Rekayasa Sistem', '2021-09-08 02:22:17', '2021-09-08 02:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_history`
--

CREATE TABLE `pengajuan_history` (
  `id_pengajuan` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `kode_rkat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
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
  `rab` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pengajuan` enum('progress','approved') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pencairan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpj_kegiatan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpj_keuangan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validasi_status` int(1) NOT NULL,
  `nama_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan_history`
--

INSERT INTO `pengajuan_history` (`id_pengajuan`, `id`, `kode_rkat`, `id_user`, `latar_belakang`, `sasaran`, `target_capaian`, `bentuk_pelaksanaan_program`, `tempat_program`, `tanggal`, `bidang_terkait`, `id_iku_parent`, `id_iku_child1`, `id_iku_child2`, `biaya_program`, `bank`, `atn`, `no_rek`, `rab`, `status_pengajuan`, `pencairan`, `lpj_kegiatan`, `lpj_keuangan`, `validasi_status`, `nama_status`, `created_at`, `updated_at`) VALUES
(198, 144, '62', 21, 'q', 'q', 'q', 'q', 'q', '2021-07-25', 'q', 1, 3, 10, '11111', 'q', 'q', '12121', '', 'progress', NULL, NULL, NULL, 1, 'Sekniv', '2021-07-25 08:16:44', '2021-07-25 08:16:44'),
(205, 144, '62', 21, 'q', 'q', 'q', 'q', 'q', '2021-07-25', 'q', 1, 3, 10, '11111', 'q', 'q', '12121', '', 'approved', '4060fd26c4dcfc5.pdf', NULL, NULL, 3, 'Direktur Keuangan', '2021-07-25 08:54:30', '2021-07-25 08:54:30'),
(206, 144, '62', 21, 'q', 'q', 'q', 'q', 'q', '2021-07-25', 'q', 1, 3, 10, '11111', 'q', 'q', '12121', '', 'approved', '4060fd26d1277fb.pdf', NULL, NULL, 3, 'Direktur Keuangan', '2021-07-25 08:54:42', '2021-07-25 08:54:42'),
(207, 144, '62', 21, 'q', 'q', 'q', 'q', 'q', '2021-07-25', 'q', 1, 3, 10, '11111', 'q', 'q', '12121', '', 'approved', '4060fd270858de5.pdf', NULL, NULL, 3, 'Direktur Keuangan', '2021-07-25 08:55:37', '2021-07-25 08:55:37'),
(208, 144, '62', 21, 'q', 'q', 'q', 'q', 'q', '2021-07-25', 'q', 1, 3, 10, '11111', 'q', 'q', '12121', '', 'approved', '4060fd27d3948f3.pdf', NULL, NULL, 3, 'Direktur Keuangan', '2021-07-25 08:59:01', '2021-07-25 08:59:01'),
(264, 160, '239', 114, 'Mahasiswa agar memiliki SKA (Skill, Knowledge dan Attitude)', 'Mencetak sertifikat peserta sertifikasi kompetensi', '600 Mahasiswa di kalikan 2 lembar', 'Print dilakukan secara Hard Copy', 'UTS', '2021-08-18', 'Rektor', 1, 3, 15, '350000', 'Mandiri', 'Arie Kasmita', '1610006286871', '40611c7e83180a6.xlsx', 'progress', NULL, NULL, NULL, 1, 'UPT  Career Development Center', '2021-08-18 03:29:07', '2021-08-18 03:29:07'),
(268, 163, '250', 61, 'Ketidaksamaan Persepsi Asessor', 'Asessor BKD dari setiap Program Studi dan Universitas', 'Meminimalisir perbedaan persepsi Asessor', 'Rapat', 'Zoom Metting', '2021-08-13', 'WAREK I, Direktorat Akademik', 1, 3, 10, '5000000', 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40611dfaba04c98.pdf', 'progress', NULL, NULL, NULL, 1, 'Direktorat Sumber Daya Manusia', '2021-08-19 06:31:22', '2021-08-19 06:31:22'),
(269, 164, '251', 61, 'BKD & LKD sebagai bentuk tanggungjawab Tri Dharma PT', 'Seluruh Dosen UTS', 'Dosen mengerti secara teknis dalam penyusunan BKD & LKD', 'Sosialisasi', 'Zoom Metting', '2021-08-24', 'WAREK I, Direktorat Akademik', 1, 3, 10, '500000', 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40611dfc60ba0ce.pdf', 'progress', NULL, NULL, NULL, 1, 'Direktorat Sumber Daya Manusia', '2021-08-19 06:38:25', '2021-08-19 06:38:25'),
(270, 164, '251', 61, 'BKD & LKD sebagai bentuk tanggungjawab Tri Dharma PT', 'Seluruh Dosen UTS', 'Dosen mengerti secara teknis dalam penyusunan BKD & LKD', 'Sosialisasi', 'Zoom Metting', '2021-08-24', 'WAREK I, Direktorat Akademik', 1, 3, 10, '500000', 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40611dfc60ba0ce.pdf', 'progress', NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-08-19 07:34:11', '2021-08-19 07:34:11'),
(271, 163, '250', 61, 'Ketidaksamaan Persepsi Asessor', 'Asessor BKD dari setiap Program Studi dan Universitas', 'Meminimalisir perbedaan persepsi Asessor', 'Rapat', 'Zoom Metting', '2021-08-13', 'WAREK I, Direktorat Akademik', 1, 3, 10, '5000000', 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40611dfaba04c98.pdf', 'progress', NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-08-19 07:35:31', '2021-08-19 07:35:31'),
(272, 165, '316', 57, 'setset', 'setset', 'set', 'set', 'set', '2021-08-21', 'DPPF', 1, 2, 7, '1000000', 'BNI', 'Arie Kasmita', '245425252525252', '40611f079b138ba.docx', 'progress', NULL, NULL, NULL, 1, 'Direktorat Sistem &Teknologi Informasi', '2021-08-20 01:38:37', '2021-08-20 01:38:37'),
(274, 164, '251', 61, 'BKD & LKD sebagai bentuk tanggungjawab Tri Dharma PT', 'Seluruh Dosen UTS', 'Dosen mengerti secara teknis dalam penyusunan BKD & LKD', 'Sosialisasi', 'Zoom Metting', '2021-08-24', 'WAREK I, Direktorat Akademik', 1, 3, 10, '500000', 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40611dfc60ba0ce.pdf', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-08-23 03:37:31', '2021-08-23 03:37:31'),
(275, 163, '250', 61, 'Ketidaksamaan Persepsi Asessor', 'Asessor BKD dari setiap Program Studi dan Universitas', 'Meminimalisir perbedaan persepsi Asessor', 'Rapat', 'Zoom Metting', '2021-08-13', 'WAREK I, Direktorat Akademik', 1, 3, 10, '5000000', 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40611dfaba04c98.pdf', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-08-23 03:40:31', '2021-08-23 03:40:31'),
(276, 166, '298', 60, 'kurangnya manajemen organisasi', 'Mahasiswa UTS', 'Melatih mahasiswa dalam mengelola organisasi', 'Seminar Online', 'UTS', '2021-08-30', 'Direktur Kemahasiswaan dan Alumni UTS', 3, 10, 49, '1000000', 'Bank NTB Syariah', 'BEM UTS', '0090200700276', '406123341f31540.pdf', 'progress', NULL, NULL, NULL, 1, 'Direktorat Kemahasiswaan & Alumni', '2021-08-23 05:37:35', '2021-08-23 05:37:35'),
(277, 166, '298', 60, 'kurangnya manajemen organisasi', 'Mahasiswa UTS', 'Melatih mahasiswa dalam mengelola organisasi', 'Seminar Online', 'UTS', '2021-08-30', 'Direktur Kemahasiswaan dan Alumni UTS', 3, 10, 49, '1000000', 'Bank NTB Syariah', 'BEM UTS', '0090200700276', '406123341f31540.pdf', 'progress', NULL, NULL, NULL, 0, 'Warek 1 Akademik', '2021-08-24 09:21:11', '2021-08-24 09:21:11'),
(282, 168, '298', 60, 'Kurangnya keterampilan organisasi dalam memanajemen Organisasi', 'Mahasiswa Aktif UTS Khususnya Pengurus Organisasi kemahasiswaan', 'a.	Melatih mahasiswa dalam mengelola serta mengembangkan organisasinya', 'Webinar secara Online', 'Universitas Teknologi Sumbawa', '2021-08-30', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 10, 49, '1000000', 'Bank NTB Syariah', 'BEM Universitas Teknologi Sumbawa', '0090200700276', '406126efe87fa7f.pdf', 'progress', NULL, NULL, NULL, 1, 'Direktorat Kemahasiswaan & Alumni', '2021-08-26 01:35:36', '2021-08-26 01:35:36'),
(283, 168, '298', 60, 'Kurangnya keterampilan organisasi dalam memanajemen Organisasi', 'Mahasiswa Aktif UTS Khususnya Pengurus Organisasi kemahasiswaan', 'a.	Melatih mahasiswa dalam mengelola serta mengembangkan organisasinya', 'Webinar secara Online', 'Universitas Teknologi Sumbawa', '2021-08-30', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 10, 49, '1000000', 'Bank NTB Syariah', 'BEM Universitas Teknologi Sumbawa', '0090200700276', '406126efe87fa7f.pdf', 'progress', NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-08-26 01:40:25', '2021-08-26 01:40:25'),
(285, 170, '273', 60, 'mahasiswa belum mengetahui/mendapatkan bekal ketika akan magang', 'Mahasiswa yang akan melaksanakan kegiatan Magang', 'Mahasiswa mengetahui Do\'s and don\'ts saat melaksanakan magang', 'webinar secara daring', 'Universitas Teknologi Sumbawa', '2021-08-18', 'CDC - Direktur Kemahasiswaan dan Alumni UTS', 3, 11, 53, '1100000', 'Mandiri', 'Arie Kasmita', '1610006286871', '406126f58a529b9.pdf', 'progress', NULL, NULL, NULL, 1, 'Direktorat Kemahasiswaan & Alumni', '2021-08-26 01:59:38', '2021-08-26 01:59:38'),
(286, 171, '296', 60, 'PKM lolos pendanaan akan melakukan monev eksternal Kemdikbud 2021', '12 tim PKM lolos pendanaan', 'tim PKM lolos pendanaan akan lebih siap dalam monev PKM', 'masing masing Tim akan memaparkan progres kerja PKM pada tim monev internal UTS', 'Universitas Teknologi Sumbawa', '2021-09-01', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 12, 63, '2250000', 'Mandiri', 'Teguh Iman Hadinullah', '1610006273952', '4061270558c9b96.pdf', 'progress', NULL, NULL, NULL, 1, 'Direktorat Kemahasiswaan & Alumni', '2021-08-26 03:07:05', '2021-08-26 03:07:05'),
(287, 168, '298', 60, 'Kurangnya keterampilan organisasi dalam memanajemen Organisasi', 'Mahasiswa Aktif UTS Khususnya Pengurus Organisasi kemahasiswaan', 'a.	Melatih mahasiswa dalam mengelola serta mengembangkan organisasinya', 'Webinar secara Online', 'Universitas Teknologi Sumbawa', '2021-08-30', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 10, 49, '1000000', 'Bank NTB Syariah', 'BEM Universitas Teknologi Sumbawa', '0090200700276', '406126efe87fa7f.pdf', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-08-26 07:43:51', '2021-08-26 07:43:51'),
(288, 172, '317', 57, 'n Pemrograman', 'n Pemrograman', 'n Pemrograman', 'n Pemrograman', 'n Pemrograman', '2021-08-27', 'Warek 3', 2, 6, 28, '2415000', 'BNI', 'ahmad juliansyah', '2454252525', '4061285fc9d84fe.jpg', 'progress', NULL, NULL, NULL, 1, 'Direktorat Sistem &Teknologi Informasi', '2021-08-27 03:45:14', '2021-08-27 03:45:14'),
(291, 175, '101', 73, 'Menjajaki kerja sama dan audiensi dengan para mitra dan calon mitra di setiap instansi', 'penambahan jumlah kerja sama', 'Munculnya lebih dari 5 kerja sama baru', 'Pertemuan terbatas dan daring', 'instansipemerintahan kabupaten, provinsi dan pusat serta dengan pihak swasta', '2021-08-31', 'FTB', 1, 2, 9, '3000000', 'BRI', 'Anita Gusmiarti', '810101008139530', '4061287f951736c.pdf', 'progress', NULL, NULL, NULL, 1, 'Direktorat Kerjasama Dalam Negeri', '2021-08-27 06:00:53', '2021-08-27 06:00:53'),
(292, 171, '296', 60, 'PKM lolos pendanaan akan melakukan monev eksternal Kemdikbud 2021', '12 tim PKM lolos pendanaan', 'tim PKM lolos pendanaan akan lebih siap dalam monev PKM', 'masing masing Tim akan memaparkan progres kerja PKM pada tim monev internal UTS', 'Universitas Teknologi Sumbawa', '2021-09-01', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 12, 63, '2250000', 'Mandiri', 'Teguh Iman Hadinullah', '1610006273952', '4061270558c9b96.pdf', 'progress', NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-08-27 08:04:08', '2021-08-27 08:04:08'),
(293, 170, '273', 60, 'mahasiswa belum mengetahui/mendapatkan bekal ketika akan magang', 'Mahasiswa yang akan melaksanakan kegiatan Magang', 'Mahasiswa mengetahui Do\'s and don\'ts saat melaksanakan magang', 'webinar secara daring', 'Universitas Teknologi Sumbawa', '2021-08-18', 'CDC - Direktur Kemahasiswaan dan Alumni UTS', 3, 11, 53, '1100000', 'Mandiri', 'Arie Kasmita', '1610006286871', '406126f58a529b9.pdf', 'progress', NULL, NULL, NULL, 2, 'Warek 1 Akademik', '2021-08-27 08:06:08', '2021-08-27 08:06:08'),
(294, 171, '296', 60, 'PKM lolos pendanaan akan melakukan monev eksternal Kemdikbud 2021', '12 tim PKM lolos pendanaan', 'tim PKM lolos pendanaan akan lebih siap dalam monev PKM', 'masing masing Tim akan memaparkan progres kerja PKM pada tim monev internal UTS', 'Universitas Teknologi Sumbawa', '2021-09-01', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 12, 63, '2250000', 'Mandiri', 'Teguh Iman Hadinullah', '1610006273952', '4061270558c9b96.pdf', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-08-30 03:59:30', '2021-08-30 03:59:30'),
(295, 170, '273', 60, 'mahasiswa belum mengetahui/mendapatkan bekal ketika akan magang', 'Mahasiswa yang akan melaksanakan kegiatan Magang', 'Mahasiswa mengetahui Do\'s and don\'ts saat melaksanakan magang', 'webinar secara daring', 'Universitas Teknologi Sumbawa', '2021-08-18', 'CDC - Direktur Kemahasiswaan dan Alumni UTS', 3, 11, 53, '1100000', 'Mandiri', 'Arie Kasmita', '1610006286871', '406126f58a529b9.pdf', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-08-30 04:18:13', '2021-08-30 04:18:13'),
(296, 175, '101', 73, 'Menjajaki kerja sama dan audiensi dengan para mitra dan calon mitra di setiap instansi', 'penambahan jumlah kerja sama', 'Munculnya lebih dari 5 kerja sama baru', 'Pertemuan terbatas dan daring', 'instansipemerintahan kabupaten, provinsi dan pusat serta dengan pihak swasta', '2021-08-31', 'FTB', 1, 2, 9, '3000000', 'BRI', 'Anita Gusmiarti', '810101008139530', '4061287f951736c.pdf', 'progress', NULL, NULL, NULL, 2, 'Warek VI Kerjasama', '2021-08-31 02:47:11', '2021-08-31 02:47:11'),
(297, 175, '101', 73, 'Menjajaki kerja sama dan audiensi dengan para mitra dan calon mitra di setiap instansi', 'penambahan jumlah kerja sama', 'Munculnya lebih dari 5 kerja sama baru', 'Pertemuan terbatas dan daring', 'instansipemerintahan kabupaten, provinsi dan pusat serta dengan pihak swasta', '2021-08-31', 'FTB', 1, 2, 9, '3000000', 'BRI', 'Anita Gusmiarti', '810101008139530', '4061287f951736c.pdf', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-08-31 03:33:19', '2021-08-31 03:33:19'),
(298, 175, '101', 73, 'Menjajaki kerja sama dan audiensi dengan para mitra dan calon mitra di setiap instansi', 'penambahan jumlah kerja sama', 'Munculnya lebih dari 5 kerja sama baru', 'Pertemuan terbatas dan daring', 'instansipemerintahan kabupaten, provinsi dan pusat serta dengan pihak swasta', '2021-08-31', 'FTB', 1, 2, 9, '3000000', 'BRI', 'Anita Gusmiarti', '810101008139530', '4061287f951736c.pdf', 'progress', NULL, NULL, NULL, 2, 'Warek II Keuangan', '2021-08-31 07:21:52', '2021-08-31 07:21:52'),
(299, 171, '296', 60, 'PKM lolos pendanaan akan melakukan monev eksternal Kemdikbud 2021', '12 tim PKM lolos pendanaan', 'tim PKM lolos pendanaan akan lebih siap dalam monev PKM', 'masing masing Tim akan memaparkan progres kerja PKM pada tim monev internal UTS', 'Universitas Teknologi Sumbawa', '2021-09-01', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 12, 63, '2250000', 'Mandiri', 'Teguh Iman Hadinullah', '1610006273952', '4061270558c9b96.pdf', 'progress', NULL, NULL, NULL, 2, 'Warek II Keuangan', '2021-08-31 07:30:31', '2021-08-31 07:30:31'),
(300, 170, '273', 60, 'mahasiswa belum mengetahui/mendapatkan bekal ketika akan magang', 'Mahasiswa yang akan melaksanakan kegiatan Magang', 'Mahasiswa mengetahui Do\'s and don\'ts saat melaksanakan magang', 'webinar secara daring', 'Universitas Teknologi Sumbawa', '2021-08-18', 'CDC - Direktur Kemahasiswaan dan Alumni UTS', 3, 11, 53, '1100000', 'Mandiri', 'Arie Kasmita', '1610006286871', '406126f58a529b9.pdf', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-08-31 07:34:57', '2021-08-31 07:34:57'),
(301, 168, '298', 60, 'Kurangnya keterampilan organisasi dalam memanajemen Organisasi', 'Mahasiswa Aktif UTS Khususnya Pengurus Organisasi kemahasiswaan', 'a.	Melatih mahasiswa dalam mengelola serta mengembangkan organisasinya', 'Webinar secara Online', 'Universitas Teknologi Sumbawa', '2021-08-30', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 10, 49, '1000000', 'Bank NTB Syariah', 'BEM Universitas Teknologi Sumbawa', '0090200700276', '406126efe87fa7f.pdf', 'progress', NULL, NULL, NULL, 2, 'Warek II Keuangan', '2021-08-31 07:37:14', '2021-08-31 07:37:14'),
(302, 164, '251', 61, 'BKD & LKD sebagai bentuk tanggungjawab Tri Dharma PT', 'Seluruh Dosen UTS', 'Dosen mengerti secara teknis dalam penyusunan BKD & LKD', 'Sosialisasi', 'Zoom Metting', '2021-08-24', 'WAREK I, Direktorat Akademik', 1, 3, 10, '500000', 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40611dfc60ba0ce.pdf', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-08-31 07:40:07', '2021-08-31 07:40:07'),
(303, 163, '250', 61, 'Ketidaksamaan Persepsi Asessor', 'Asessor BKD dari setiap Program Studi dan Universitas', 'Meminimalisir perbedaan persepsi Asessor', 'Rapat', 'Zoom Metting', '2021-08-13', 'WAREK I, Direktorat Akademik', 1, 3, 10, '5000000', 'Bank Syariah Islam', 'Lalu Ahmad Taubih', '8348060680', '40611dfaba04c98.pdf', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-08-31 07:45:59', '2021-08-31 07:45:59'),
(307, 178, '92', 71, 'Pengabdian merupakan salah satu tridarma perguruan tinggi yang wajib untuk dilaksanakan oleh para dosen. Oleh karena itu, untuk mendukung terlaksananya kegiatan dan meningkatnya jumlah pengabdian para dosen di lingkungan Universitas Teknologi Sumbawa maka kampus memberikan dukungan berupa hibah Pengabdian internal kepada para dosen. Sebagai salah satu rangkain dari kegiatan hibah pengabdian internal tersebut, setiap dosen diharapakan dapat melaksanakan kegiatan Pengabdian.', 'Para Dosen tetap Universitas Teknologi Sumbawa', '5.	Target atas Ketercapaian Pelaksanaan:  Kegiatan ini diharapkan dapat memenuhi indikator sasaran strategis sbb : 1.	Minimal dua kegiatan pengabdian per dosen selama tahun 2020-2021 2.	Dua judul pengabdian masyarakat mendapatkam dana hibah penelitian dari pihak ketiga. 3.	30 proposal pengabdian yang diajukan oleh dosen tetap prodi  4.	Minimal satu publikasi pengabdian dosen pada jurnal nasional selama tahun 2020-2021.', 'Hibah Pengabdian internal dosen UTS.', 'Universitas Teknologi Sumbawa', '2021-09-01', 'Direktorat Pengabdian kepada Masyarakat dan Publikasi', 4, 18, 80, '12000000', 'Mandiri', 'Erliyani Kurnia', '1610006298330', '40612eef6a4beab.pdf', 'progress', NULL, NULL, NULL, 1, 'Direktorat Pengabdian Kepada Masyarakat', '2021-09-01 03:11:38', '2021-09-01 03:11:38'),
(308, 179, '369', 64, 'Program ini dilaksanakan sebagai upaya meningkatkan dan   mengembangkan potensi UPT Bahasa dalam kegiatan kewirausahaan.  Adapun kegiatan ini bertujuan untuk media dan sarana promosi UPT Bahasa.', 'Mengembangkan potensi UPT Bahasa dalam kegiatan kewairausahaan', 'Pengembangan potensi UPT Bahasa yang  rampung pada bulan September 2021', '-', '-', '2021-09-01', 'WR 2', 1, 1, 1, '2000000', 'Mandiri', 'Fitri Lentari', '1610007388981', '40612f139965ac3.pdf', 'progress', NULL, NULL, NULL, 1, 'Pusat bahasa', '2021-09-01 05:46:03', '2021-09-01 05:46:03'),
(309, 180, '325', 89, 'Arah pengembangan Fakultas Teknologi Lingkungan dan Mineral (FTLM) harus sejalan dengan perkembangan zaman. Renstra dan Renop FTLM sebagai arah dalam pengambilan keputusan dalam penyelenggaraan dan pengelolaan Fakultas dalam lima tahun ke depan dengan memertimbangkan berbagai aspek strategis lainnya. Rencana strategis dan Renop Fakultas  sebagai langkah pertama dalam penyusunan Rencana Kerja Fakultas Teknologi Lingkungan dan Mineral. Dalam proses penyusunannya, Renstra dan Renop FTLM mempertimbangkan berbagai kebijakan dasar dan strategis ke depan yang diputuskan melalui Senat Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen renstra dan Renop periode 2021-2025', '1) Terbentuknya tim penyusun dokumen renstra dan Renop Fakultas.  2) Rampungnya dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Dekan membentuk tim penyusun dokumen renstra yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen renstra dan Renop.', 'Universitas Teknologi Sumbawa', '2021-09-06', 'Seluruh program studi di Fakultas Teknologi Lingkungan dan Mineral', 1, 1, 1, '1750000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f163343185.xlsx', 'progress', NULL, NULL, NULL, 1, 'Fakultas Teknik Lingkugan dan Mineral', '2021-09-01 05:57:07', '2021-09-01 05:57:07'),
(310, 181, '326', 89, 'Visi, misi, tujuan, dan sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM) Universitas Teknologi Sumbawa selanjutnya disingkat FTLM-UTS. Visi, misi, tujuan, dan sasaran FTLM-UTS disusun dengan memperhatikan perkembangan ilmu pengetahuan, teknologi, dan dinamika kehidupan masyarakat yang berubah dengan sangat cepat. Rumusan Visi, misi, tujuan, dan sasaran FTLM  ini dibuat dengan tujuan untuk meningkatkan mutu FTLM-UTS, baik mutu Dosen  maupun mahasiswa Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral.', '1) Terbentuknya tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran Fakultas.  2) Rampungnya dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM)', 'Dekan membentuk tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen Visi, Misi, Tujuan dan Sasaran .', 'Universitas Teknologi Sumbawa', '2021-09-06', 'Seluruh program studi di Fakultas Teknologi Lingkungan dan Mineral', 1, 1, 1, '3000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f17c61017a.xlsx', 'progress', NULL, NULL, NULL, 1, 'Fakultas Teknik Lingkugan dan Mineral', '2021-09-01 06:03:50', '2021-09-01 06:03:50'),
(311, 182, '327', 89, 'Tujuan arah kebijakan Fakultas Teknologi Lingkungan dan Mineral (FTLM) untuk membangun profil Fakultas yang produktivitas,  sesuai perkembangan ilmu pengetahuan, teknologi, dan dinamika kehidupan masyarakat serta memiliki kemampuan yang sesuai dengan bidang keilmuan. memberikan pelayanan yang prima melalui perubahan pola pikir (mind set) dan budaya kerja (culture set) dalam sistem menejerial Fakultas. Salah satu upaya penataan tata kelola fakultas diwujudkan dalam bentuk penyusunan dan implementasi standar Standar Operasional Prosedur Fakultas Teknologi Lingkungan dan Mineral (FTLM) (selanjutnya disebut dengan (SOP) dalam pelaksanaan tugas dan fungsi dosen dan staff dilingkungan Fakultas. Kegiatan penyusunan dan implementasi SOP memerlukan partisipasi penuh dari seluruh unsur yang ada di dalam Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Standar Operasional Prosedur (SOP)', '1) Terbentuknya tim penyusun dokumen Standar Operasional Prosedur (SOP)Fakultas.  2) Rampungnya dokumen Standar Operasional Prosedur (SOP)Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Dekan membentuk tim penyusun dokumen Standar Operasional Prosedur (SOP) yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen SOP Fakultas', 'Universitas Teknologi Sumbawa', '2021-09-08', 'Seluruh Program studi di FTLM', 1, 1, 2, '1500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f18eed9ea2.xlsx', 'progress', NULL, NULL, NULL, 1, 'Fakultas Teknik Lingkugan dan Mineral', '2021-09-01 06:08:47', '2021-09-01 06:08:47'),
(312, 183, '328', 89, 'Banyaknya penelitian dan pengabdian yang dikompetisikan di tingkat nasional seperti Dikti, Ristek dan lain-lain menuntut kesiapan para dosen/peneliti yang ingin berkompetisi dalam merebutkan hibah penelitian tersebut. Aspek yang paling penting adalah kapasitas yang cukup dalam penguasaan teknik penyusunan proposal penelitian. Dengan latar belakang tersebut Pihak Fakultas Teknologi Lingkungan dan Mineral (FTLM) perlu memberikan solusi kepada para dosen dengan cara mengadakan \"Coaching Clinic\" membuat proposal Hibah. Workshop/Coaching Clinic Penyusunan Proposal Penelitian  penting untuk dilakukan sebagai salah satu upaya mendorong para dosen dan peneliti untuk semangat meneliti sesuai dengan bidang ilmunya dan mempublikasikan hasil-hasil karya mereka di jurnal nasional dan jurnal internasional serta terimplementasi di tingkat masyarakat luas.', 'Peningkatan kualitas SDM di Lingkungan Fakultas Teknologi Lingkungan dan Mineral (FTLM)', '1) Dosen mengikuti coaching clinic membuat proposal Hibah dan Pelatihan Pembuatan Vidio Pembelajaran yang menarik  2) Dosen menerapkan apa yang diperoleh saat pelatihan  3) Dosen yang telah mengikuti pelatihan mampu mengaplikasikan ilmunya dalam bentuk produk proposal hibah dan vidio pembelajaran.', '1).Membekali dosen dengan coaching clinic membuat proposal Hibah. 2) Membekali dosen dengan pelatihan membuat vidio pembelajaran yang menarik.', 'Universitas Teknologi Sumbawa', '2021-09-20', 'Program studi di FTLM', 4, 17, 78, '1500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1a3b7133c.xlsx', 'progress', NULL, NULL, NULL, 1, 'Fakultas Teknik Lingkugan dan Mineral', '2021-09-01 06:14:20', '2021-09-01 06:14:20'),
(313, 184, '329', 89, 'Orientasi studi dan pengenalan kampus (OSPEK) Fakultas adalah kegiatan yang diselenggarakan oleh Senat Mahasiswa Fakultas (SMF) bekerja sama dengan Himpunan Mahasiswa (HMP) dari setiap program studi dibawah naungan fakultas, serta pemilihan ketua Senat Mahasiswa Fakultas (SMF) Sains dan Teknologi 2019. Perguruan tinggi mengembangkan fungsi Tri Dharma yaitu  pegajaran, penelitian, dan pengabdian masyarakat. Salah satu fungsi dari perguruan tinggi adalah fungsi pengajaran. Fakultas Teknologi Lingkungan dan Mineral (FTLM) Melaksanakan fungsi tersebut melalui kegiatan Orientasi Studi dan Pengenalan Kampus (OSPEK) Fakultas Teknologi Lingkungan dan Mineral (FTLM). Latar belakang dari dilaksanakannya kegiatan ini adalah Kebutuhan mahasiswa akan motivasi tentang perkenalan Fakultas terkhusus Fakultas Teknologi Lingkungan dan Mineral (FTLM). Oleh karena itu,  diperlukan sebuah pembekalan intensif mengenai motivasi dan kiat-kiat untuk menjadi mahasiswa Fakultas Teknologi Lingkung dan Mineral (FTLM) yang disampaikan oleh Dekan Fakultas Teknologi Lingkungan dan Mineral beserta jajarannya.', 'Peningkatan wawasan mahasiswa baru terkait Fakultas Teknologi Lingkungan dan Mineral', '1. Mahasiswa Baru akan lebih mengenalkan Fakultas Teknologi Lingkungan dan Mineral 2.J iwa solidaritas, disiplin, berintegritas, dan berintelektual, serta moralitas akan terbentuk pada mahasiswa baru FTLM 3. Mahasiswa Baru mampu memahami nilai-nilai  kekeluargaan,  profesionalitas, serta menghargai perbedaan budaya', '1. Mengenalkan Fakultas Teknologi Lingkungan dan Mineral kepada mahasiswa baru angkatan 2021 2. Membentuk mahasiswa baru FTLM  yang memiliki jiwa solidaritas, disiplin, berintegritas, dan berintelektual, serta memiliki moralitas yang tinggi 3. Menanamkan nilai-nilai kekeluargaan,  profesionalitas, serta menghargai perbedaan budaya', 'Universitas Teknologi Sumbawa (media zoom)', '2021-10-02', 'Program studi di FTLM', 3, 10, 49, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1b53cde74.xlsx', 'progress', NULL, NULL, NULL, 1, 'Fakultas Teknik Lingkugan dan Mineral', '2021-09-01 06:19:00', '2021-09-01 06:19:00'),
(314, 175, '101', 73, 'Menjajaki kerja sama dan audiensi dengan para mitra dan calon mitra di setiap instansi', 'penambahan jumlah kerja sama', 'Munculnya lebih dari 5 kerja sama baru', 'Pertemuan terbatas dan daring', 'instansipemerintahan kabupaten, provinsi dan pusat serta dengan pihak swasta', '2021-08-31', 'FTB', 1, 2, 9, '3000000', 'BRI', 'Anita Gusmiarti', '810101008139530', '4061287f951736c.pdf', 'progress', NULL, NULL, NULL, 2, 'Rektor', '2021-09-01 06:23:48', '2021-09-01 06:23:48'),
(315, 171, '296', 60, 'PKM lolos pendanaan akan melakukan monev eksternal Kemdikbud 2021', '12 tim PKM lolos pendanaan', 'tim PKM lolos pendanaan akan lebih siap dalam monev PKM', 'masing masing Tim akan memaparkan progres kerja PKM pada tim monev internal UTS', 'Universitas Teknologi Sumbawa', '2021-09-01', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 12, 63, '2250000', 'Mandiri', 'Teguh Iman Hadinullah', '1610006273952', '4061270558c9b96.pdf', 'progress', NULL, NULL, NULL, 2, 'Rektor', '2021-09-01 06:26:06', '2021-09-01 06:26:06'),
(316, 185, '330', 89, 'Mengingat pengabdian masyarakat merupakan bagian integral Tri Dharma Perguruan Tinggi yang dalam pelaksanaannya tidak terlepas dari dua dharma yang lainnya, serta melibatkan segenap sivitas akademik: dosen, mahasiswa, tenaga kependidikan serta alumni. Melalui pengadian masyarakat sivitas akademik dapat hadir di tengah-tengah masyarakat. Melestarikan lingkungan hidup merupakan kebutuhan yang tidak bisa ditunda maupun diabaikan, karena melestarikan lingkungan hidup bukan hanya menjadi tanggung jawab pemerintah (Negara) saja, melainkan tanggung jawab setiap insan di bumi. Setiap orang wajib melakukan usaha untuk menyelamatkan lingkungan hidup disekitarnya. Dengan kapasitas masing-masing, sekecil apapun usaha yang dilakukan akan sangat bermanfaat bagi terwujudnya kehidupan bagi terwujudnya bumi yang layak di huni.', 'Meningkatkan kesadaran dosen dan mahasiswa terhadap lingkungan', 'Partisipasi dosen dan mahasiswa', 'Pengabdian Masyarakat Aksi Peduli Lingkungan', 'Desa Binaan', '2021-11-10', 'Program studi di FTLM', 4, 18, 80, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1d2f1d09d.xlsx', 'progress', NULL, NULL, NULL, 1, 'Fakultas Teknik Lingkugan dan Mineral', '2021-09-01 06:26:55', '2021-09-01 06:26:55'),
(317, 168, '298', 60, 'Kurangnya keterampilan organisasi dalam memanajemen Organisasi', 'Mahasiswa Aktif UTS Khususnya Pengurus Organisasi kemahasiswaan', 'a.	Melatih mahasiswa dalam mengelola serta mengembangkan organisasinya', 'Webinar secara Online', 'Universitas Teknologi Sumbawa', '2021-08-30', 'Sub Direktorat Penalaran Minat dan Bakat', 3, 10, 49, '1000000', 'Bank NTB Syariah', 'BEM Universitas Teknologi Sumbawa', '0090200700276', '406126efe87fa7f.pdf', 'progress', NULL, NULL, NULL, 2, 'Rektor', '2021-09-01 06:28:01', '2021-09-01 06:28:01'),
(318, 178, '92', 71, 'Pengabdian merupakan salah satu tridarma perguruan tinggi yang wajib untuk dilaksanakan oleh para dosen. Oleh karena itu, untuk mendukung terlaksananya kegiatan dan meningkatnya jumlah pengabdian para dosen di lingkungan Universitas Teknologi Sumbawa maka kampus memberikan dukungan berupa hibah Pengabdian internal kepada para dosen. Sebagai salah satu rangkain dari kegiatan hibah pengabdian internal tersebut, setiap dosen diharapakan dapat melaksanakan kegiatan Pengabdian.', 'Para Dosen tetap Universitas Teknologi Sumbawa', '5.	Target atas Ketercapaian Pelaksanaan:  Kegiatan ini diharapkan dapat memenuhi indikator sasaran strategis sbb : 1.	Minimal dua kegiatan pengabdian per dosen selama tahun 2020-2021 2.	Dua judul pengabdian masyarakat mendapatkam dana hibah penelitian dari pihak ketiga. 3.	30 proposal pengabdian yang diajukan oleh dosen tetap prodi  4.	Minimal satu publikasi pengabdian dosen pada jurnal nasional selama tahun 2020-2021.', 'Hibah Pengabdian internal dosen UTS.', 'Universitas Teknologi Sumbawa', '2021-09-01', 'Direktorat Pengabdian kepada Masyarakat dan Publikasi', 4, 18, 80, '12000000', 'Mandiri', 'Erliyani Kurnia', '1610006298330', '40612eef6a4beab.pdf', 'progress', NULL, NULL, NULL, 2, 'Warek 3 Riset & Inovasi', '2021-09-01 06:46:25', '2021-09-01 06:46:25'),
(319, 186, '331', 89, 'Salah satu tujuan dalam pelaksanaan penelitian adalah mempublikasikan hasil penelitian dalam bentuk jurnal pada suatu penerbit/publisher. Segala jenis dukungan untuk menghasilkan publikasi ilmiah terus dilakukan, termasuk membantu pembiayaan penerbitan jurnal, baik jurnal tingkat nasional maupun internasional. Dengan bantuan pembiayaan penerbitan jurnal diharapkan memacu para peneliti untuk terus menulis karya ilmiah terutama pada jurnal internasional bereputasi.', 'Meningkatnya mutu publikasi hasil penelitian dosen-dosen di Fakultas Teknologi Lingkungan dan Mineral', 'Angka dan Mutu Publikasi Meningkat', 'Program Talangan Publikasi Jurnal Internasional Bereputasi atau minimal Sinta 2.', 'Universitas Teknologi Sumbawa', '2021-12-06', 'Semua Program studi di lingkungan FTLM', 5, 20, 84, '2250000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f263fed37f.xlsx', 'progress', NULL, NULL, NULL, 1, 'Fakultas Teknik Lingkugan dan Mineral', '2021-09-01 07:05:36', '2021-09-01 07:05:36'),
(320, 187, '332', 89, 'DOI atau Digital Object Identifier atau Pengenal Objek Digital (dalam bahasa Indonesia ) adalah tools pengenal permanen yang digunakan pada suatu dokumen elektronik terutama terkait dengan artikel jurnal. Dalam proses akreditas jurnal oleh Kemristekdikti, salah satu poin penilaian adalah Alamat/Identitas Unik Artikel (DOI). Jurnal Hexagon telah terdaftar Sehingga Fakultas Teknologi Mineral dan Lingkungan perlu secara konsisten adanya keberadaan DOI Jurnal Fakultas.', 'Mempersiapkan Jurnal Fakultas menjadi Jurnal Terakreditasi', 'Pembiayaan DOI Jurnal Fakultas (Hexagon)', 'Pembiayaan DOI Jurnal', 'Universitas Teknologi Sumbawa', '2021-08-16', 'Semua Program studi di lingkungan FTLM', 4, 17, 78, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f273661057.xlsx', 'progress', NULL, NULL, NULL, 1, 'Fakultas Teknik Lingkugan dan Mineral', '2021-09-01 07:09:42', '2021-09-01 07:09:42'),
(321, 188, '179', 80, 'Peningkatan kualitas dosen perlu dilakulan', 'Dosen', 'Peningkatan kemampuan dosen', 'Pelatihan mendeley dan jurnal', 'Raberas Resto', '2021-09-06', 'Warek 1', 2, 7, 39, '4000000', 'Mandiri', 'Ihlana Nairfana', '1610004215286', '40612f3d0308cc0.pdf', 'progress', NULL, NULL, NULL, 1, 'Fakultas Teknologi Pertanian', '2021-09-01 08:42:43', '2021-09-01 08:42:43'),
(322, 179, '369', 64, 'Program ini dilaksanakan sebagai upaya meningkatkan dan   mengembangkan potensi UPT Bahasa dalam kegiatan kewirausahaan.  Adapun kegiatan ini bertujuan untuk media dan sarana promosi UPT Bahasa.', 'Mengembangkan potensi UPT Bahasa dalam kegiatan kewairausahaan', 'Pengembangan potensi UPT Bahasa yang  rampung pada bulan September 2021', '-', '-', '2021-09-01', 'WR 2', 1, 1, 1, '2000000', 'Mandiri', 'Fitri Lentari', '1610007388981', '40612f139965ac3.pdf', 'progress', NULL, NULL, NULL, 0, 'Sekniv', '2021-09-02 02:37:13', '2021-09-02 02:37:13'),
(323, 179, '369', 64, 'Program ini dilaksanakan sebagai upaya meningkatkan dan   mengembangkan potensi UPT Bahasa dalam kegiatan kewirausahaan.  Adapun kegiatan ini bertujuan untuk media dan sarana promosi UPT Bahasa.', 'Mengembangkan potensi UPT Bahasa dalam kegiatan kewairausahaan', 'Pengembangan potensi UPT Bahasa yang  rampung pada bulan September 2021', '-', '-', '2021-09-01', 'WR 2', 1, 1, 1, '2000000', 'Mandiri', 'UTS UPT BAHASA', '1610006267970', '40612f139965ac3.pdf', 'progress', NULL, NULL, NULL, 1, 'Pusat bahasa', '2021-09-02 02:45:43', '2021-09-02 02:45:43'),
(324, 189, '262', 53, 'Meminimalisir terjadinya kesalahan dalam pencetakan ijazah dan transkrip', 'Mahasiswa calon wisudawan', 'kesalahan pencatakan dapat diminimalisir, sehingga menghemat penggunaan blangko ijazah dan transkrip nilai', 'offline', 'loket akademik', '2021-08-11', 'Bagian akademik, kaprodi dan dekan masing-masing fakultas', 1, 1, 1, '600000', 'BSI', 'Eva Juliani', '7730066710', '40613041c57056f.xlsx', 'progress', NULL, NULL, NULL, 1, 'Direktorat Akademik', '2021-09-02 03:15:19', '2021-09-02 03:15:19'),
(326, 179, '369', 64, 'Program ini dilaksanakan sebagai upaya meningkatkan dan   mengembangkan potensi UPT Bahasa dalam kegiatan kewirausahaan.  Adapun kegiatan ini bertujuan untuk media dan sarana promosi UPT Bahasa.', 'Mengembangkan potensi UPT Bahasa dalam kegiatan kewairausahaan', 'Pengembangan potensi UPT Bahasa yang  rampung pada bulan September 2021', '-', '-', '2021-09-01', 'WR 2', 1, 1, 1, '2000000', 'Mandiri', 'UTS UPT BAHASA', '1610006267970', '40612f139965ac3.pdf', 'approved', NULL, NULL, NULL, 2, 'Sekniv', '2021-09-06 03:49:53', '2021-09-06 03:49:53'),
(327, 191, '296', 60, 'PKM merupakan salah satu wujud implementasi Tridharma Perguruan Tinggi yang diluncurkan  oleh Direktorat Jenderal Pendidikan Tinggi pada  tahun 2021 di bawah pengelolaan Direktorat  Pembelajaran dan Kemahasiswaan (Belmawa)  merupakan salah satu upaya untuk menumbuhkan, mewadahi, dan mewujudkan ide kreatif serta inovatif mahasiswa', '12 Tim PKM Lolos Pendanaan Universitas Teknologi Sumbawa', 'agar tim pkm dapat melakukan kegiatan dengan baik dan sesuai panduan', 'Seminar Online melalui link zoon Kemdikbud', 'Kemdikbud RI dan Universitas Teknologi Sumbawa', '2021-09-06', 'Direktur Kemahasiswaan dan Alumni UTS', 3, 12, 63, '1625000', 'Bank Mandiri', 'Putri Indah Kencana', '1610004658287', '406135a2a13f9e6.pdf', 'progress', NULL, NULL, NULL, 1, 'Direktorat Kemahasiswaan & Alumni', '2021-09-06 05:09:53', '2021-09-06 05:09:53'),
(328, 188, '179', 80, 'Peningkatan kualitas dosen perlu dilakulan', 'Dosen', 'Peningkatan kemampuan dosen', 'Pelatihan mendeley dan jurnal', 'Raberas Resto', '2021-09-06', 'Warek 1', 2, 7, 39, '4000000', 'Mandiri', 'Ihlana Nairfana', '1610004215286', '40612f3d0308cc0.pdf', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-06 05:45:32', '2021-09-06 05:45:32'),
(329, 187, '332', 89, 'DOI atau Digital Object Identifier atau Pengenal Objek Digital (dalam bahasa Indonesia ) adalah tools pengenal permanen yang digunakan pada suatu dokumen elektronik terutama terkait dengan artikel jurnal. Dalam proses akreditas jurnal oleh Kemristekdikti, salah satu poin penilaian adalah Alamat/Identitas Unik Artikel (DOI). Jurnal Hexagon telah terdaftar Sehingga Fakultas Teknologi Mineral dan Lingkungan perlu secara konsisten adanya keberadaan DOI Jurnal Fakultas.', 'Mempersiapkan Jurnal Fakultas menjadi Jurnal Terakreditasi', 'Pembiayaan DOI Jurnal Fakultas (Hexagon)', 'Pembiayaan DOI Jurnal', 'Universitas Teknologi Sumbawa', '2021-08-16', 'Semua Program studi di lingkungan FTLM', 4, 17, 78, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f273661057.xlsx', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-06 06:27:43', '2021-09-06 06:27:43'),
(330, 186, '331', 89, 'Salah satu tujuan dalam pelaksanaan penelitian adalah mempublikasikan hasil penelitian dalam bentuk jurnal pada suatu penerbit/publisher. Segala jenis dukungan untuk menghasilkan publikasi ilmiah terus dilakukan, termasuk membantu pembiayaan penerbitan jurnal, baik jurnal tingkat nasional maupun internasional. Dengan bantuan pembiayaan penerbitan jurnal diharapkan memacu para peneliti untuk terus menulis karya ilmiah terutama pada jurnal internasional bereputasi.', 'Meningkatnya mutu publikasi hasil penelitian dosen-dosen di Fakultas Teknologi Lingkungan dan Mineral', 'Angka dan Mutu Publikasi Meningkat', 'Program Talangan Publikasi Jurnal Internasional Bereputasi atau minimal Sinta 2.', 'Universitas Teknologi Sumbawa', '2021-12-06', 'Semua Program studi di lingkungan FTLM', 5, 20, 84, '2250000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f263fed37f.xlsx', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-06 06:31:59', '2021-09-06 06:31:59'),
(331, 185, '330', 89, 'Mengingat pengabdian masyarakat merupakan bagian integral Tri Dharma Perguruan Tinggi yang dalam pelaksanaannya tidak terlepas dari dua dharma yang lainnya, serta melibatkan segenap sivitas akademik: dosen, mahasiswa, tenaga kependidikan serta alumni. Melalui pengadian masyarakat sivitas akademik dapat hadir di tengah-tengah masyarakat. Melestarikan lingkungan hidup merupakan kebutuhan yang tidak bisa ditunda maupun diabaikan, karena melestarikan lingkungan hidup bukan hanya menjadi tanggung jawab pemerintah (Negara) saja, melainkan tanggung jawab setiap insan di bumi. Setiap orang wajib melakukan usaha untuk menyelamatkan lingkungan hidup disekitarnya. Dengan kapasitas masing-masing, sekecil apapun usaha yang dilakukan akan sangat bermanfaat bagi terwujudnya kehidupan bagi terwujudnya bumi yang layak di huni.', 'Meningkatkan kesadaran dosen dan mahasiswa terhadap lingkungan', 'Partisipasi dosen dan mahasiswa', 'Pengabdian Masyarakat Aksi Peduli Lingkungan', 'Desa Binaan', '2021-11-10', 'Program studi di FTLM', 4, 18, 80, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1d2f1d09d.xlsx', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-06 06:34:03', '2021-09-06 06:34:03'),
(332, 184, '329', 89, 'Orientasi studi dan pengenalan kampus (OSPEK) Fakultas adalah kegiatan yang diselenggarakan oleh Senat Mahasiswa Fakultas (SMF) bekerja sama dengan Himpunan Mahasiswa (HMP) dari setiap program studi dibawah naungan fakultas, serta pemilihan ketua Senat Mahasiswa Fakultas (SMF) Sains dan Teknologi 2019. Perguruan tinggi mengembangkan fungsi Tri Dharma yaitu  pegajaran, penelitian, dan pengabdian masyarakat. Salah satu fungsi dari perguruan tinggi adalah fungsi pengajaran. Fakultas Teknologi Lingkungan dan Mineral (FTLM) Melaksanakan fungsi tersebut melalui kegiatan Orientasi Studi dan Pengenalan Kampus (OSPEK) Fakultas Teknologi Lingkungan dan Mineral (FTLM). Latar belakang dari dilaksanakannya kegiatan ini adalah Kebutuhan mahasiswa akan motivasi tentang perkenalan Fakultas terkhusus Fakultas Teknologi Lingkungan dan Mineral (FTLM). Oleh karena itu,  diperlukan sebuah pembekalan intensif mengenai motivasi dan kiat-kiat untuk menjadi mahasiswa Fakultas Teknologi Lingkung dan Mineral (FTLM) yang disampaikan oleh Dekan Fakultas Teknologi Lingkungan dan Mineral beserta jajarannya.', 'Peningkatan wawasan mahasiswa baru terkait Fakultas Teknologi Lingkungan dan Mineral', '1. Mahasiswa Baru akan lebih mengenalkan Fakultas Teknologi Lingkungan dan Mineral 2.J iwa solidaritas, disiplin, berintegritas, dan berintelektual, serta moralitas akan terbentuk pada mahasiswa baru FTLM 3. Mahasiswa Baru mampu memahami nilai-nilai  kekeluargaan,  profesionalitas, serta menghargai perbedaan budaya', '1. Mengenalkan Fakultas Teknologi Lingkungan dan Mineral kepada mahasiswa baru angkatan 2021 2. Membentuk mahasiswa baru FTLM  yang memiliki jiwa solidaritas, disiplin, berintegritas, dan berintelektual, serta memiliki moralitas yang tinggi 3. Menanamkan nilai-nilai kekeluargaan,  profesionalitas, serta menghargai perbedaan budaya', 'Universitas Teknologi Sumbawa (media zoom)', '2021-10-02', 'Program studi di FTLM', 3, 10, 49, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1b53cde74.xlsx', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-06 06:35:48', '2021-09-06 06:35:48'),
(333, 183, '328', 89, 'Banyaknya penelitian dan pengabdian yang dikompetisikan di tingkat nasional seperti Dikti, Ristek dan lain-lain menuntut kesiapan para dosen/peneliti yang ingin berkompetisi dalam merebutkan hibah penelitian tersebut. Aspek yang paling penting adalah kapasitas yang cukup dalam penguasaan teknik penyusunan proposal penelitian. Dengan latar belakang tersebut Pihak Fakultas Teknologi Lingkungan dan Mineral (FTLM) perlu memberikan solusi kepada para dosen dengan cara mengadakan \"Coaching Clinic\" membuat proposal Hibah. Workshop/Coaching Clinic Penyusunan Proposal Penelitian  penting untuk dilakukan sebagai salah satu upaya mendorong para dosen dan peneliti untuk semangat meneliti sesuai dengan bidang ilmunya dan mempublikasikan hasil-hasil karya mereka di jurnal nasional dan jurnal internasional serta terimplementasi di tingkat masyarakat luas.', 'Peningkatan kualitas SDM di Lingkungan Fakultas Teknologi Lingkungan dan Mineral (FTLM)', '1) Dosen mengikuti coaching clinic membuat proposal Hibah dan Pelatihan Pembuatan Vidio Pembelajaran yang menarik  2) Dosen menerapkan apa yang diperoleh saat pelatihan  3) Dosen yang telah mengikuti pelatihan mampu mengaplikasikan ilmunya dalam bentuk produk proposal hibah dan vidio pembelajaran.', '1).Membekali dosen dengan coaching clinic membuat proposal Hibah. 2) Membekali dosen dengan pelatihan membuat vidio pembelajaran yang menarik.', 'Universitas Teknologi Sumbawa', '2021-09-20', 'Program studi di FTLM', 4, 17, 78, '1500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1a3b7133c.xlsx', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-06 06:36:54', '2021-09-06 06:36:54'),
(334, 182, '327', 89, 'Tujuan arah kebijakan Fakultas Teknologi Lingkungan dan Mineral (FTLM) untuk membangun profil Fakultas yang produktivitas,  sesuai perkembangan ilmu pengetahuan, teknologi, dan dinamika kehidupan masyarakat serta memiliki kemampuan yang sesuai dengan bidang keilmuan. memberikan pelayanan yang prima melalui perubahan pola pikir (mind set) dan budaya kerja (culture set) dalam sistem menejerial Fakultas. Salah satu upaya penataan tata kelola fakultas diwujudkan dalam bentuk penyusunan dan implementasi standar Standar Operasional Prosedur Fakultas Teknologi Lingkungan dan Mineral (FTLM) (selanjutnya disebut dengan (SOP) dalam pelaksanaan tugas dan fungsi dosen dan staff dilingkungan Fakultas. Kegiatan penyusunan dan implementasi SOP memerlukan partisipasi penuh dari seluruh unsur yang ada di dalam Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Standar Operasional Prosedur (SOP)', '1) Terbentuknya tim penyusun dokumen Standar Operasional Prosedur (SOP)Fakultas.  2) Rampungnya dokumen Standar Operasional Prosedur (SOP)Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Dekan membentuk tim penyusun dokumen Standar Operasional Prosedur (SOP) yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen SOP Fakultas', 'Universitas Teknologi Sumbawa', '2021-09-08', 'Seluruh Program studi di FTLM', 1, 1, 2, '1500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f18eed9ea2.xlsx', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-06 06:38:49', '2021-09-06 06:38:49'),
(335, 180, '325', 89, 'Arah pengembangan Fakultas Teknologi Lingkungan dan Mineral (FTLM) harus sejalan dengan perkembangan zaman. Renstra dan Renop FTLM sebagai arah dalam pengambilan keputusan dalam penyelenggaraan dan pengelolaan Fakultas dalam lima tahun ke depan dengan memertimbangkan berbagai aspek strategis lainnya. Rencana strategis dan Renop Fakultas  sebagai langkah pertama dalam penyusunan Rencana Kerja Fakultas Teknologi Lingkungan dan Mineral. Dalam proses penyusunannya, Renstra dan Renop FTLM mempertimbangkan berbagai kebijakan dasar dan strategis ke depan yang diputuskan melalui Senat Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen renstra dan Renop periode 2021-2025', '1) Terbentuknya tim penyusun dokumen renstra dan Renop Fakultas.  2) Rampungnya dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Dekan membentuk tim penyusun dokumen renstra yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen renstra dan Renop.', 'Universitas Teknologi Sumbawa', '2021-09-06', 'Seluruh program studi di Fakultas Teknologi Lingkungan dan Mineral', 1, 1, 1, '1750000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f163343185.xlsx', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-06 06:46:46', '2021-09-06 06:46:46'),
(336, 181, '326', 89, 'Visi, misi, tujuan, dan sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM) Universitas Teknologi Sumbawa selanjutnya disingkat FTLM-UTS. Visi, misi, tujuan, dan sasaran FTLM-UTS disusun dengan memperhatikan perkembangan ilmu pengetahuan, teknologi, dan dinamika kehidupan masyarakat yang berubah dengan sangat cepat. Rumusan Visi, misi, tujuan, dan sasaran FTLM  ini dibuat dengan tujuan untuk meningkatkan mutu FTLM-UTS, baik mutu Dosen  maupun mahasiswa Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral.', '1) Terbentuknya tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran Fakultas.  2) Rampungnya dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM)', 'Dekan membentuk tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen Visi, Misi, Tujuan dan Sasaran .', 'Universitas Teknologi Sumbawa', '2021-09-06', 'Seluruh program studi di Fakultas Teknologi Lingkungan dan Mineral', 1, 1, 1, '3000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f17c61017a.xlsx', 'progress', NULL, NULL, NULL, 2, 'Direktur Keuangan', '2021-09-06 06:47:33', '2021-09-06 06:47:33'),
(337, 192, '394', 116, 'Perbedaan jadwal dan kesibukan tiap dosen pada tugas strukturalnya membuat dosen jarang dapat berkumpul membicarakan agenda prodi secara terarah, sehingga perlu diluangkan waktu khusus, setidaknya 1 kali sebulan.', 'Mengawal berlangsungnya proses PPEPP pada setiap kegiatan yang dilakukan oleh Prodi Teknik Lingkungan secara bersama-sama', '1) Kehadiran dosen dalam setiap rapat mencapai 80%  2) Setiap agenda rapat dibahas hingga tuntas  3) Adanya Rencana Tindak Lanjut dalam setiap rapat.', 'Rapat', 'UTS', '2021-09-24', 'Wakil Rektor I - IV dan BPMA', 1, 1, 3, '500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '4061361c617ffc0.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 13:49:21', '2021-09-06 13:49:21'),
(338, 193, '395', 116, 'Pengelolaan terhadap data menjadi suatu keharusan bagi sebuah unit kerja yang baru seperti Prodi Teknik Lingkungan. Ini perlu dilakukan sejak awal agar data dapat tersusun rapi dan mampu memberikan insight bagi pengambil kebijakan, agar mampu merumuskan kebijakan yang tepat berdasarkan data.', 'Data yang ada di program Studi Teknik Lingkungan dapat tersusun dengan rapi dan mampu divisualisasikan ke dalam infografis / Google Data Studio', '1) Data yang ada terkelola dengan baik (2) Data yang telah dikelola mampu divisualisasikan ke dalam infografis/ Google Data Studio', 'Pelatihan/ Workshop', 'Room Zoom', '2021-11-18', 'Wakil Rektor I - IV', 1, 1, 3, '500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '4061362046ad483.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:05:59', '2021-09-06 14:05:59'),
(339, 194, '396', 116, 'Dalam mewujudkan Teknik Lingkungan yang unggul perlu kesepakatan Bersama dalam menentukan kegiatan/program kerja yang mendukung kemajuan Program Studi sesuai dengan rencana strategis yang dicanangkan. Selain itu, perlu adanya evaluasi pada setiap kegiatan yang telah dilakukan untuk mengukur keberhasilan yang telah dilakukan selama satu tahun terakhir.', 'Tersusunnya RKAT 2022 dan Laporan Tahunan 2021', '(1) Tersusunnya RKAT untuk Tahun 2022  (2) Tersusunnya Laporan Tahunan Program Studi untuk Tahun 2021', 'Rapat', 'UTS', '2021-12-21', 'Wakil Rektor II', 1, 1, 1, '500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '406136233589447.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:18:29', '2021-09-06 14:18:29');
INSERT INTO `pengajuan_history` (`id_pengajuan`, `id`, `kode_rkat`, `id_user`, `latar_belakang`, `sasaran`, `target_capaian`, `bentuk_pelaksanaan_program`, `tempat_program`, `tanggal`, `bidang_terkait`, `id_iku_parent`, `id_iku_child1`, `id_iku_child2`, `biaya_program`, `bank`, `atn`, `no_rek`, `rab`, `status_pengajuan`, `pencairan`, `lpj_kegiatan`, `lpj_keuangan`, `validasi_status`, `nama_status`, `created_at`, `updated_at`) VALUES
(340, 195, '397', 116, 'Kurikulum merupakan ruh dalam pelaksanaan pendidikan atau kegiatan akademik di suatu pendidikan tinggi. Penerapan Kampus Merdeka telah memaksa institusi pendidikan tinggi untuk mampu beradaptasi secara cepat dalam melaksanakannya. Tidak terkecuali dalam penyesuaian kurikulumnya. Prodi Teknik Lingkungan sebagai unit kerja yang baru berkesempatan melaksanakan ini sejak awal, sehingga perlu dilakukan secara cermat. Mengingat pentingnya kurikulum ini dalam keberlangsungan pendidikan di Prodi Teknik Lingkungan maka akan dibentuk Tim Penyusun Kurikulum yang selanjutnya akan bertugas menyusun Dokumen Kurikulum Merdeka Belajar Kampus Merdeka (MBKM).', 'Program Studi Teknik Lingkungan Memiliki Dokumen Kurikulum Merdeka Belajar Kampus Merdeka (MBKM)', '(1) Terbentuknya tim penyusun dokumen Kurikulum MBKM 	(2) Rampungnya Dokumen Kurikulum MBKM', 'Rapat, FGD', 'UTS', '2021-09-01', 'Wakil Rektor I dan BPMA', 3, 11, 55, '2500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40613624410fafd.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:22:57', '2021-09-06 14:22:57'),
(341, 196, '398', 116, 'Kondisi pandemi Covid-19 yang belum jelas kapan akan berakhir menuntut institusi pendidikan tinggi untuk mampu beradaptasi dalam kegiatan pembelajaran-nya. Salah satu upaya yang dilakukan adalah dengan penerapan sistem blended learning. Dalam penerapannya, sistem ini membutuhkan dukungan prasarana yang memadai, salah satunya dalah “Akun Zoom Premium”. Dengan ini, kegiatan pembelajaran secara daring akan lebih nyaman pelaksanaannya.', 'Program Studi Teknik Lingkungan melanggan akun zoom premium dengan durasi 1 (satu) tahun.', '(1) Memiliki akun zoom premium berlangganan selama 1 (satu) tahun.  (2) Akun zoom dapat dimanfaatkan oleh seluruh civitas akademika di lingkungan Prodi Teknik Lingkungan untuk kepentingan pendidikan.', 'Pengadaan', '-', '2021-09-27', 'Wakil Rektor II', 2, 8, 43, '1200000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '406136253409a94.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:27:00', '2021-09-06 14:27:00'),
(342, 197, '399', 116, 'Sebagian besar dosen di ProdiTeknik Lingkungan merupakan dosen muda yang dituntut untuk terus tumbuh dan mampu beradaptasi secara cepat terhadap tugas pokok dan fungsinya sebagai dosen. Pelatihan pekerti merupakan salah satu pelatihan yang sangat berguna dalam mendukung kelancaran proses pembe-lajaran.  Melalui kegiatan ini SDM akan dibekali pengetahuan mengenai konsep pengembangan kurikulum, desain pemelajaran, penyusunan RPS, keteram-pilan dasar mengajar dan beberapa pengetahuan lain yang akan sangat berguna untuk kemajuan Program Studi dan Dosen.', 'Peningkatan kualitas SDM di Prodi Teknik Lingkungan.', '(1) Dosen mengikuti pelatihan pekerti. (2) Dosen menerapkan apa yang diperoleh saat pelatihan. (3) Dosen yang telah mengikuti pelatihan mampu mendistribusikan penge-tahuannya kepada rekan-rekan yang lain.', 'Pelatihan/ Workshop', 'Room Zoom', '2021-10-21', 'Wakil Rektor I dan BPMA', 1, 3, 15, '2300000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40613626bd44b92.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:33:34', '2021-09-06 14:33:34'),
(343, 198, '400', 116, 'Salah satu faktor yang cukup penting dalam pengembangan Prodi adalah peningkatan kapasitas SDM. Melalui program ini, Program Studi memberikan subsidi kepada dosen yang akan mengikuti diklat mengenai topik-topik Lingkungan Hidup yang sesuai dengan kompetensi prodi sebagai bentuk penguatan kapasitas terhadap SDM yang ada di Prodi Teknik Lingkungan.', 'Mendukung Pengembangan kapasitas SDM dengan mengikuti kegiatan-kegiatan pelatihan terkait Lingkungan Hidup.', '(1) Ada dosen yang mengikuti pelatihan terkait Lingkungan Hidup.  (2) Dosen yang telah mengikuti pelatihan mampu menularkan pemahamannya kepada rekan-rekan dosen lainnya di Prodi Teknik Lingkungan.', 'Pelatihan/Workshop', 'Room Zoom', '2021-12-15', 'Wakil Rektor I', 1, 3, 15, '2500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40613627da4e5ef.pdf', 'progress', NULL, NULL, NULL, 1, 'Teknik Lingkungan', '2021-09-06 14:38:19', '2021-09-06 14:38:19'),
(344, 199, '334', 111, 'Pembentukan tim perumus dan Penyusunan Visi, Misi, Renstra dan Renop serta Alur Pelayanan Administrasi Akademik FRS', 'Pimpinanan Fakultas, Program Studi dan Dosen yang di tunjuk yang menjadi Tim penyusun', 'Menghasikan dokumen Renstra & Renop, dokumen VMTS dan dokumen layanan administrasi akademik', 'Rapat pimpinan Fakultas & Program Studi', 'Ruang Ex FEB', '2021-09-14', 'Semua Program studi di lingkungan FRS', 1, 4, 19, '1187000', 'Mandiri', '085333821808', '1610006291731', '406137212fae6a3.pdf', 'progress', NULL, NULL, NULL, 1, 'Fakultas Rekayasa Sistem', '2021-09-07 08:22:08', '2021-09-07 08:22:08'),
(346, 188, '179', 80, 'Peningkatan kualitas dosen perlu dilakulan', 'Dosen', 'Peningkatan kemampuan dosen', 'Pelatihan mendeley dan jurnal', 'Raberas Resto', '2021-09-06', 'Warek 1', 2, 7, 39, '4000000', 'Mandiri', 'Ihlana Nairfana', '1610004215286', '40612f3d0308cc0.pdf', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-08 01:56:34', '2021-09-08 01:56:34'),
(347, 187, '332', 89, 'DOI atau Digital Object Identifier atau Pengenal Objek Digital (dalam bahasa Indonesia ) adalah tools pengenal permanen yang digunakan pada suatu dokumen elektronik terutama terkait dengan artikel jurnal. Dalam proses akreditas jurnal oleh Kemristekdikti, salah satu poin penilaian adalah Alamat/Identitas Unik Artikel (DOI). Jurnal Hexagon telah terdaftar Sehingga Fakultas Teknologi Mineral dan Lingkungan perlu secara konsisten adanya keberadaan DOI Jurnal Fakultas.', 'Mempersiapkan Jurnal Fakultas menjadi Jurnal Terakreditasi', 'Pembiayaan DOI Jurnal Fakultas (Hexagon)', 'Pembiayaan DOI Jurnal', 'Universitas Teknologi Sumbawa', '2021-08-16', 'Semua Program studi di lingkungan FTLM', 4, 17, 78, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f273661057.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-08 02:08:20', '2021-09-08 02:08:20'),
(348, 201, '336', 111, 'Memenuhi keperluan pelayanan administrasi, penyampaian informasi melalui media sosial dan untuk mengenalkan struktur organisasi yang ada di lingkungan Fakultas Rekayasa Sistem', 'Seluruh civitas akademik di lingkungan Fakultas Rekayasa Sistem', 'Tersampainya informasi secara keseluruhan kepada civitas akademik Fakultas Rekayasa Sistem baik secara online maupun ofline', 'Publikasi dan Dokumentasi', 'Di lingkungan Fakultas Rekayasa Sistem', '2021-09-08', 'Semua Program studi di lingkungan FRS', 2, 8, 40, '2500000', 'Mandiri', '085333821808', '1610006291731', '4061381e590ca79.xlsx', 'progress', NULL, NULL, NULL, 1, 'Fakultas Rekayasa Sistem', '2021-09-08 02:22:17', '2021-09-08 02:22:17'),
(349, 185, '330', 89, 'Mengingat pengabdian masyarakat merupakan bagian integral Tri Dharma Perguruan Tinggi yang dalam pelaksanaannya tidak terlepas dari dua dharma yang lainnya, serta melibatkan segenap sivitas akademik: dosen, mahasiswa, tenaga kependidikan serta alumni. Melalui pengadian masyarakat sivitas akademik dapat hadir di tengah-tengah masyarakat. Melestarikan lingkungan hidup merupakan kebutuhan yang tidak bisa ditunda maupun diabaikan, karena melestarikan lingkungan hidup bukan hanya menjadi tanggung jawab pemerintah (Negara) saja, melainkan tanggung jawab setiap insan di bumi. Setiap orang wajib melakukan usaha untuk menyelamatkan lingkungan hidup disekitarnya. Dengan kapasitas masing-masing, sekecil apapun usaha yang dilakukan akan sangat bermanfaat bagi terwujudnya kehidupan bagi terwujudnya bumi yang layak di huni.', 'Meningkatkan kesadaran dosen dan mahasiswa terhadap lingkungan', 'Partisipasi dosen dan mahasiswa', 'Pengabdian Masyarakat Aksi Peduli Lingkungan', 'Desa Binaan', '2021-11-10', 'Program studi di FTLM', 4, 18, 80, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1d2f1d09d.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-08 02:33:23', '2021-09-08 02:33:23'),
(350, 184, '329', 89, 'Orientasi studi dan pengenalan kampus (OSPEK) Fakultas adalah kegiatan yang diselenggarakan oleh Senat Mahasiswa Fakultas (SMF) bekerja sama dengan Himpunan Mahasiswa (HMP) dari setiap program studi dibawah naungan fakultas, serta pemilihan ketua Senat Mahasiswa Fakultas (SMF) Sains dan Teknologi 2019. Perguruan tinggi mengembangkan fungsi Tri Dharma yaitu  pegajaran, penelitian, dan pengabdian masyarakat. Salah satu fungsi dari perguruan tinggi adalah fungsi pengajaran. Fakultas Teknologi Lingkungan dan Mineral (FTLM) Melaksanakan fungsi tersebut melalui kegiatan Orientasi Studi dan Pengenalan Kampus (OSPEK) Fakultas Teknologi Lingkungan dan Mineral (FTLM). Latar belakang dari dilaksanakannya kegiatan ini adalah Kebutuhan mahasiswa akan motivasi tentang perkenalan Fakultas terkhusus Fakultas Teknologi Lingkungan dan Mineral (FTLM). Oleh karena itu,  diperlukan sebuah pembekalan intensif mengenai motivasi dan kiat-kiat untuk menjadi mahasiswa Fakultas Teknologi Lingkung dan Mineral (FTLM) yang disampaikan oleh Dekan Fakultas Teknologi Lingkungan dan Mineral beserta jajarannya.', 'Peningkatan wawasan mahasiswa baru terkait Fakultas Teknologi Lingkungan dan Mineral', '1. Mahasiswa Baru akan lebih mengenalkan Fakultas Teknologi Lingkungan dan Mineral 2.J iwa solidaritas, disiplin, berintegritas, dan berintelektual, serta moralitas akan terbentuk pada mahasiswa baru FTLM 3. Mahasiswa Baru mampu memahami nilai-nilai  kekeluargaan,  profesionalitas, serta menghargai perbedaan budaya', '1. Mengenalkan Fakultas Teknologi Lingkungan dan Mineral kepada mahasiswa baru angkatan 2021 2. Membentuk mahasiswa baru FTLM  yang memiliki jiwa solidaritas, disiplin, berintegritas, dan berintelektual, serta memiliki moralitas yang tinggi 3. Menanamkan nilai-nilai kekeluargaan,  profesionalitas, serta menghargai perbedaan budaya', 'Universitas Teknologi Sumbawa (media zoom)', '2021-10-02', 'Program studi di FTLM', 3, 10, 49, '1000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1b53cde74.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-08 02:40:03', '2021-09-08 02:40:03'),
(351, 183, '328', 89, 'Banyaknya penelitian dan pengabdian yang dikompetisikan di tingkat nasional seperti Dikti, Ristek dan lain-lain menuntut kesiapan para dosen/peneliti yang ingin berkompetisi dalam merebutkan hibah penelitian tersebut. Aspek yang paling penting adalah kapasitas yang cukup dalam penguasaan teknik penyusunan proposal penelitian. Dengan latar belakang tersebut Pihak Fakultas Teknologi Lingkungan dan Mineral (FTLM) perlu memberikan solusi kepada para dosen dengan cara mengadakan \"Coaching Clinic\" membuat proposal Hibah. Workshop/Coaching Clinic Penyusunan Proposal Penelitian  penting untuk dilakukan sebagai salah satu upaya mendorong para dosen dan peneliti untuk semangat meneliti sesuai dengan bidang ilmunya dan mempublikasikan hasil-hasil karya mereka di jurnal nasional dan jurnal internasional serta terimplementasi di tingkat masyarakat luas.', 'Peningkatan kualitas SDM di Lingkungan Fakultas Teknologi Lingkungan dan Mineral (FTLM)', '1) Dosen mengikuti coaching clinic membuat proposal Hibah dan Pelatihan Pembuatan Vidio Pembelajaran yang menarik  2) Dosen menerapkan apa yang diperoleh saat pelatihan  3) Dosen yang telah mengikuti pelatihan mampu mengaplikasikan ilmunya dalam bentuk produk proposal hibah dan vidio pembelajaran.', '1).Membekali dosen dengan coaching clinic membuat proposal Hibah. 2) Membekali dosen dengan pelatihan membuat vidio pembelajaran yang menarik.', 'Universitas Teknologi Sumbawa', '2021-09-20', 'Program studi di FTLM', 4, 17, 78, '1500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f1a3b7133c.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-08 02:57:37', '2021-09-08 02:57:37'),
(352, 182, '327', 89, 'Tujuan arah kebijakan Fakultas Teknologi Lingkungan dan Mineral (FTLM) untuk membangun profil Fakultas yang produktivitas,  sesuai perkembangan ilmu pengetahuan, teknologi, dan dinamika kehidupan masyarakat serta memiliki kemampuan yang sesuai dengan bidang keilmuan. memberikan pelayanan yang prima melalui perubahan pola pikir (mind set) dan budaya kerja (culture set) dalam sistem menejerial Fakultas. Salah satu upaya penataan tata kelola fakultas diwujudkan dalam bentuk penyusunan dan implementasi standar Standar Operasional Prosedur Fakultas Teknologi Lingkungan dan Mineral (FTLM) (selanjutnya disebut dengan (SOP) dalam pelaksanaan tugas dan fungsi dosen dan staff dilingkungan Fakultas. Kegiatan penyusunan dan implementasi SOP memerlukan partisipasi penuh dari seluruh unsur yang ada di dalam Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Standar Operasional Prosedur (SOP)', '1) Terbentuknya tim penyusun dokumen Standar Operasional Prosedur (SOP)Fakultas.  2) Rampungnya dokumen Standar Operasional Prosedur (SOP)Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Dekan membentuk tim penyusun dokumen Standar Operasional Prosedur (SOP) yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen SOP Fakultas', 'Universitas Teknologi Sumbawa', '2021-09-08', 'Seluruh Program studi di FTLM', 1, 1, 2, '1500000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f18eed9ea2.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-08 03:00:17', '2021-09-08 03:00:17'),
(353, 181, '326', 89, 'Visi, misi, tujuan, dan sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM) Universitas Teknologi Sumbawa selanjutnya disingkat FTLM-UTS. Visi, misi, tujuan, dan sasaran FTLM-UTS disusun dengan memperhatikan perkembangan ilmu pengetahuan, teknologi, dan dinamika kehidupan masyarakat yang berubah dengan sangat cepat. Rumusan Visi, misi, tujuan, dan sasaran FTLM  ini dibuat dengan tujuan untuk meningkatkan mutu FTLM-UTS, baik mutu Dosen  maupun mahasiswa Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral.', '1) Terbentuknya tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran Fakultas.  2) Rampungnya dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM)', 'Dekan membentuk tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen Visi, Misi, Tujuan dan Sasaran .', 'Universitas Teknologi Sumbawa', '2021-09-06', 'Seluruh program studi di Fakultas Teknologi Lingkungan dan Mineral', 1, 1, 1, '3000000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f17c61017a.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-08 03:02:49', '2021-09-08 03:02:49'),
(354, 180, '325', 89, 'Arah pengembangan Fakultas Teknologi Lingkungan dan Mineral (FTLM) harus sejalan dengan perkembangan zaman. Renstra dan Renop FTLM sebagai arah dalam pengambilan keputusan dalam penyelenggaraan dan pengelolaan Fakultas dalam lima tahun ke depan dengan memertimbangkan berbagai aspek strategis lainnya. Rencana strategis dan Renop Fakultas  sebagai langkah pertama dalam penyusunan Rencana Kerja Fakultas Teknologi Lingkungan dan Mineral. Dalam proses penyusunannya, Renstra dan Renop FTLM mempertimbangkan berbagai kebijakan dasar dan strategis ke depan yang diputuskan melalui Senat Fakultas.', 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen renstra dan Renop periode 2021-2025', '1) Terbentuknya tim penyusun dokumen renstra dan Renop Fakultas.  2) Rampungnya dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Dekan membentuk tim penyusun dokumen renstra yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen renstra dan Renop.', 'Universitas Teknologi Sumbawa', '2021-09-06', 'Seluruh program studi di Fakultas Teknologi Lingkungan dan Mineral', 1, 1, 1, '1750000', 'Mandiri', 'Fakultas Teknik UTS', '1610004786245', '40612f163343185.xlsx', 'progress', NULL, NULL, NULL, 0, 'Warek II Keuangan', '2021-09-08 03:04:24', '2021-09-08 03:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `rkat`
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
  `rencara_anggaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_anggaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggaran_digunakan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rkat`
--

INSERT INTO `rkat` (`id_rkat`, `kode_rkat`, `id_user`, `sasaran_strategi`, `indikator_sasaran_strategi`, `nama_program`, `program_kerja`, `deskripsi`, `tujuan`, `mulai_program`, `selesai_program`, `tempat`, `sumber_anggaran`, `rencara_anggaran`, `total_anggaran`, `anggaran_digunakan`, `created_at`, `updated_at`) VALUES
(69, 'WR1-01', 61, 'Pegawai', 'Sumberdaya Manusia', 'Penyusunan dan Pengesahan SOP terkait Kepegawaian', 'Penyusunan dan Pengesahan SOP terkait Kepegawaian', 'Kegiatan penyusunan Standart Operasional Prosedur terkait Kepegawaian seperti SOP Rekrutmen,SOP Rotasi, dll', 'Pegawai', '2021-04-01', '2021-04-24', 'UTS', 'kampus', '1000000', '1000000', '0', '2021-07-27', '2021-07-27'),
(70, 'WR1-04', 61, 'Seluruh Pegawai', 'Pegawai', 'Launching DSDM Training Center', 'Launching DSDM Training Center', 'Membuat\npusat pelatihan dan pengembangan SDM', 'Membuat pusat pelatihan dan pengembangan SDM', '2021-06-01', '2021-06-30', 'Kampus', 'UTS', '1000000', '1000000', '0', '2021-07-27', '2021-07-27'),
(71, 'WR1-05', 61, 'Rekrutmen', 'Tenaga Pendidik Baru', 'Rekrutmen Dosen dan Tenaga kependidikan 2021', 'Rekrutmen Dosen dan Tenaga kependidikan 2021', 'Kegiatan pasca Pemetaan Kebutuhan dan Analisis Kebutuhan Beban Kerja, melengkapi kekurangan SDM dengan melakukan Open Recruitment baik Dosen dan Tendik', 'rekrutmen', '2021-06-01', '2021-07-01', 'kampus', 'Kampus', '1000000', '1000000', '0', '2021-07-27', '2021-07-27'),
(72, 'WR1-11', 61, 'Kaprodi & Sekpro', 'Seluruh Kaprodi', 'Managing People Effectively (Kaprodi & Sekpro)', 'Managing People Effectively (Kaprodi & Sekpro)', 'Membantu para Pengelola Program Studi dalam meningkatkan kapasitas dirinya agar mampu melaksanakan tugas dan tanggung jawabnya sebagai pimpinan dalam lingkup jabatannya masing -masing sehingga tatakelola akademik Universitas dapat berjalan optimal', 'Managing People Effectively (Kaprodi & Sekpro)', '2021-09-01', '2021-09-30', 'Univeristas', 'Kampus', '5000000', '5000000', '0', '2021-07-27', '2021-07-30'),
(73, 'WR1-12', 61, 'Dekan & Wadek', 'Seluruh Dekan Se-Universitas', 'Project Management (Dekan & Wadek)', 'Project Management (Dekan & Wadek)', 'Membantu para Pengelola Fakultas dalam meningkatkan kapasitas dirinya agar mampu menyusun projek penataan dan pengembangan fakultas', 'Project Management (Dekan & Wadek)', '2021-11-01', '2021-11-30', 'UTS', 'kampus', '5000000', '5000000', '0', '2021-07-27', '2021-07-30'),
(74, 'WR1-18', 61, 'Rekrutmen', 'Sumber daya manusia baru', 'Rekrutmen Dosen S3', 'Rekrutmen Dosen S3', 'Melakukan rekrutmen Dosen dengan gelar Doktor', 'Melakukan rekrutmen Dosen dengan gelar Doktor', '2021-12-01', '2021-12-30', 'UTS', 'Universitas', '2000000', '3000000', '0', '2021-07-27', '2021-07-27'),
(75, 'WR1-28', 61, 'Mahasiswa', 'Panduan', 'Buku Panduan Akademik', 'Buku Panduan Akademik', 'Pembuatan (cetak) Buku Peraturan Akademik', 'Pembuatan (cetak) Buku Peraturan Akademik', '2021-08-01', '2021-08-31', 'Kampus', 'universitas', '4500000', '5000000', '0', '2021-07-27', '2021-07-30'),
(78, 'WR2-01', 23, 'Pembangunan UTS', 'Periode 2020 - 2024', 'Pembuatan Master Plan Pembangunan UTS selama 2020-2024', 'Pembuatan Master Plan Pembangunan UTS selama 2020-2024', 'Pembuatan Master Plan Pembangunan UTS selama 2020-2024 agar terbentuknya city of inovatio', 'Pembuatan Master Plan Pembangunan UTS selama 2020-2024 agar terbentuknya city of inovatio', '2021-08-01', '2021-08-31', 'Kawasan Univerisitas', 'Kampus', '10000000', '10000000', '0', '2021-07-27', '2021-07-28'),
(79, 'WR2-09', 23, 'Penyediaan', 'fasilitas', 'Penyediaan Fasilitas Pendukung dan suporting kegiatan Tri Darma Perguruan Tinggi', 'Penyediaan Fasilitas Pendukung dan suporting kegiatan Tri Darma Perguruan Tinggi', 'Penyediaan Fasilitas Pendukung dan suporting kegiatan Tri Darma Perguruan Tinggi', 'Penyediaan Fasilitas Pendukung dan suporting kegiatan Tri Darma Perguruan Tinggi', '2021-08-04', '2021-08-31', 'Kampus', 'universitas', '120000000', '120000000', '0', '2021-07-27', '2021-07-28'),
(80, 'WR2-15', 68, 'Seluruh civitas akademika', 'Universitas', 'Pengadaan Sistem Informasi Sarana dan Prasarana (SISAPA)', 'Pengadaan Sistem Informasi Sarana dan Prasarana (SISAPA)', 'Pengadaan Sistem Informasi Sarana dan Prasarana (SISAPA) yang berguna untuk Sistem Pemeliharaan Peralatan, Peminjaman, Managemen Ruangan hingga Perhitungan nilai aset hingga penyusutan maupun proses Pengadaan, Penyusunan RAB di DPPP', 'Pengadaan Sistem Informasi Sarana dan Prasarana (SISAPA)', '2021-11-01', '2021-11-23', 'Univeristas Teknologi Sumbawa', 'universitas', '7500000', '7500000', '0', '2021-07-28', '2021-07-28'),
(81, 'WR2-10', 68, 'unit', 'kampus', 'Menjaga keberlangsungan', 'Menjaga keberlangsungan dan kegunaan fasilitas', 'Pemeliharaan Peralatan Kampus dari elektronik, sublimesiber, instalasi Air, instalasi listrik,Bus, Kendaraan Operaional dll', 'Menjaga keberlangsungan dan kegunaan fasilitas penunjang peraltan kampus agar menimalisir ke', '2021-08-01', '2021-12-31', 'Kawasan Univerisitas', 'Kampus', '30000000', '30000000', '0', '2021-07-28', '2021-07-28'),
(82, 'WR2-16', 24, 'Pengadaan sistem informasi penggajian pegawai', 'Gaji Pegawai', 'Pengadaan sistem informasi penggajian pegawai', 'Pengadaan sistem informasi penggajian pegawai', 'pembuatan aplikasi informasi data gaji pegawai', 'pembuatan aplikasi informasi data gaji pegawai', '2021-09-01', '2021-09-30', 'Univerisitas', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(83, 'WR2-17', 24, 'Sistem Keuangan', 'pengadaan sistem pelaporan', 'pengadaan sistem pelaporan keuangan', 'pengadaan sistem pelaporan keuangan', 'pengadaan aplikasi sistem pelaporan keuangan yang terintegrasi', 'pengadaan aplikasi sistem pelaporan keuangan yang terintegrasi', '2021-10-01', '2021-10-31', 'Universitas', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(84, 'WR2-18', 24, 'Administrasi Keuangan', 'Pengadaan sistem administrasi', 'Pengadaan sistem administrasi keuangan', 'pembuatan sistem tata kelola administrasi yang lebih rapi', 'pembuatan sistem tata kelola administrasi yang lebih rapi', 'pembuatan sistem tata kelola administrasi yang lebih rapi', '2021-09-01', '2021-09-30', 'Universitas', 'universitas', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(85, 'WR2-19', 23, 'Seluruh Unit', 'Sosialisasi', 'Kegiatan sosialiasi penyusunan laporan keuangan semua unit', 'Kegiatan sosialiasi penyusunan laporan keuangan semua unit', 'sosialsi penuyunan pelaporan keuangan yang bak dan benar dilaksanakan selama 1 hari dengan semua unit', 'sosialsi penuyunan pelaporan keuangan yang bak dan benar', '2021-10-01', '2021-10-31', 'Kawasan Universitas', 'universitas', '7000000', '7000000', '0', '2021-07-28', '2021-07-28'),
(86, 'WR2-20', 23, 'Setiap Unit', 'Audit Keuangan', 'Kegiatan audit internal keuangan dari setiap unit', 'Kegiatan audit internal keuangan dari setiap unit', 'menguji dan mengevaluasi sistem pelaporan keuangan dari setiap unit universitas', 'menguji dan mengevaluasi sistem pelaporan keuangan dari setiap unit', '2021-11-01', '2021-11-30', 'Universitas', 'Kampus', '7000000', '7000000', '0', '2021-07-28', '2021-07-28'),
(87, 'WR2-21', 23, 'Mahasiswa', 'Verifikasi', 'Kegiatan Verifikasi data administrasi keuangan mahasiswa', 'Kegiatan Verifikasi data administrasi keuangan mahasiswa', 'pengecekan/ pemeriksaan kembali data pembayaran/administrasi keuangan mahasiswa yang dilakukan kepada semua angkatan dan prodi. Dilaksanakan dalam jangka waktu 14 hari', 'Kegiatan Verifikasi data administrasi keuangan mahasiswa', '2021-10-01', '2021-10-31', 'Universitas', 'universitas', '7000000', '7000000', '0', '2021-07-28', '2021-07-28'),
(88, 'WR2-22', 68, 'fasilitas', 'kampus', 'Penyediaan Fasitas penunjang', 'Penyediaan Fasitas penunjang', 'Pengadaan fasilitas pendukung seperti AC, PC ATK dll', 'Penyediaan Fasitas penunjang', '2021-08-01', '2021-08-31', 'Kawasan Univerisitas', 'universitas', '15000000', '15000000', '0', '2021-07-28', '2021-07-28'),
(89, 'WR3-01', 70, 'Dosen', 'Proposal', 'Workshop series/Coaching Clinic', 'Workshop series/Coaching Clinic', 'Program pendampingan kepenulisan proposal penelitian dilakukan dengan metode work shop dan coaching clinic', 'Workshop series/Coaching Clinic', '2021-05-01', '2021-11-30', 'Universitas', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(90, 'WR3-05', 70, 'Research', 'Penelitian Dosen', 'Research tour', 'Research tour', 'Melakukan kunjungan dan membuat kontrak resmi yang disepakati antara kedua belah pihak', 'Research tour', '2021-08-01', '2021-08-31', 'Universitas', 'kampus', '10000000', '10000000', '0', '2021-07-28', '2021-07-28'),
(91, 'WR3-10', 70, 'Pendampingan dan inkubasi teknologi', 'Startup competition', 'Pendampingan dan inkubasi teknologi', 'Pendampingan dan inkubasi teknologi', '-Workshop pengembangan prototype\n-Pendampingan intensif', 'Pendampingan intensif', '2021-05-01', '2021-10-31', 'Universitas', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-08-05'),
(92, 'WR3-11', 71, 'Dosen Se-Universitas', 'Pengabdian Masyarakat', 'Hibah pendanaan pengabdian dosen', 'Hibah pendanaan pengabdian dosen', 'Pelaksanaan hibah pengabdian untuk dosen yang produktif membina dan mendampingi desa serta menghasilkan produk inovasi berbasis TTG', 'Hibah pendanaan pengabdian dosen', '2021-06-01', '2021-10-31', 'Kawasan Univerisitas', 'universitas', '12000000', '12000000', '0', '2021-07-28', '2021-09-01'),
(93, 'WR3-13', 71, 'Pengembagan Desa', 'Tim Ahli Pengembangan Desa', 'Follow up kegiatan program merdeka', 'Follow up kegiatan program merdeka', 'Pembentukan tim ahli desa dan dosen pembimbing magang di desa binaan', 'Tim Ahli Pengembangan Desa', '2021-11-01', '2021-11-30', 'Desa desa sekabupaten Sumbawa', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(94, 'WR3-17', 71, 'Penerbitan Tambora', 'OMP 2021', 'Penerbitan Tambora dan OMP 2021', 'Penerbitan Tambora dan OMP 2021', '- SK reviewer, editor, manajer dan keanggotaan yang berperan langsung dalam jurnal (Universita, Fakultas, dan Prodi)\n- Perbaikan kualitas artikel dan administrasi jurnal Universitas, Fakultas, dan Prodi\n- Meningkatkan kualitas buku yang diterbitkan oleh OMP sesuai dengan kriteria-kriteria yang telah ditentukan oleh Universitas\n- Bekerjasama dengan perusahaan setempat atau perusahaan nasional untuk memasarkan buku hasil dari karya dosen UTS', 'Penerbitan Tambora dan OMP 2021', '2021-08-01', '2021-08-01', 'Universitas', 'UTS', '1500000', '1500000', '0', '2021-07-28', '2021-07-28'),
(95, 'WR3-18', 71, 'Desa Desa', 'Inovasi desa', 'Inovasi desa', 'Inovasi desa', 'Membentuk tim penilai tingkat kesiapan teknologi inovasi suatu produk (KATSINOV)', 'Inovasi desa', '2021-09-01', '2021-09-30', 'Kawasan Univerisitas', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(96, 'WR3-19', 71, 'Produk Unggulan desa', 'Pengenalan sosialisasi', '(mengadakan expo hasil PKM)', 'mengadakan expo hasil PKM)', 'Perbaikan dan peningkatan kualitas produk unggulan/inovasi UTS', 'Perbaikan dan peningkatan kualitas produk unggulan/inovasi UTS', '2021-09-01', '2021-09-30', 'Kawasan Univerisitas', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(97, 'WR3-20', 71, 'Peningkatan Produl', 'Desa Binaan', 'Program peningkatan kapasitas produk inovasi dari Desa Binaan dan Mitra UTS pelaksanaa', 'Program peningkatan kapasitas produk inovasi dari Desa Binaan dan Mitra UTS pelaksanaa', 'Mengadakan dan melaksanakan kegiatan sosialisasi produk hasil penelitian UTS kepada masyarakat seperti:', 'Program peningkatan kapasitas produk inovasi dari Desa', '2021-09-01', '2021-09-30', 'Kawasan Univerisitas', 'UTS', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(98, 'WR3-21', 71, 'Pendampingan', 'Katsinov', 'Pendampingan Katsinow', 'Pendampingan Katsinow', 'a) Tim ahli UTS melakukan instalasi cold storage di Pulau Bungin, Alas Barat\nb) Melaksanakan kegiatan expo produk-produk PKM hasil penelitian dan pengabdian UTS\nc) Mengenalkan produk sepeda motor listrik UTS dengan merek Ngebuts, dll', 'Pendampingan Katsinow', '2021-09-01', '2021-09-30', 'kampus', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(99, 'WR4-01', 73, 'Kerjasama', 'Provinsi NTB', 'Workshop Kerja sama', 'Workshop Kerja sama', 'Pelatihan untuk tim kerja sama yang tersertifikasi', 'Pelatihan untuk tim kerja sama yang tersertifikasi', '2021-05-31', '2021-12-31', 'Luar Provinsi NTB', 'Kampus', '7000000', '7000000', '0', '2021-07-28', '2021-07-28'),
(100, 'WR4-02', 73, 'Virtual Gathering', 'Virtual Gathering', 'Virtual Gathering', 'Virtual Gathering', 'Penjajakan kerja sama dan silaturahmi dengan Mitra Kerja sama dan Media Partner ataupun calon mitra kerja sama.', 'Virtual Gathering', '2021-12-01', '2021-12-31', 'kampus', 'Kampus', '15000000', '15000000', '0', '2021-07-28', '2021-07-28'),
(101, 'WR4-03', 73, 'Penjajakan Kerja Sama', 'Penjajakan Kerja Sama', 'Penjajakan Kerja Sama', 'Penjajakan Kerja Sama', 'Menjajaki kerja sama dan audiensi dengan para mitra dan calon mitra di setiap instansi pemerintahan kabupaten, provinsi dan pusat serta dengan pihak swasta', 'Penjajakan Kerja Sama', '2021-01-01', '2021-12-31', 'kampus', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-08-27'),
(102, 'WR4-04', 73, 'UTS Coffee Break', 'UTS Coffee Break', 'UTS Coffee Break', 'UTS Coffee Break', 'Forum sharing peluang kerja sama antar pihak dengan mengundang pihak mitra dan atau sosialisasi peluang kerja sama hasil audiensi dengan \npihak luar kepada \npara dosen', 'UTS Coffee Break', '2021-08-01', '2021-12-31', 'Kawasan Univerisitas', 'UTS', '10000000', '10000000', '0', '2021-07-28', '2021-07-28'),
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
(135, 'PBH-08', 64, 'Kompetisi', 'English', 'UTS English competition', 'UTS English competition', 'Lomba bahasa inggris edukatif, poetry, story telling, short essay, Public speaking', 'UTS English competition', '2021-08-01', '2021-09-30', 'R. Pusat Bahasa', 'kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(136, 'PBH-13', 64, 'Pemutahiran naskah EAPT', 'Pemutahiran naskah EAPT', 'Pemutahiran naskah EAPT', 'Pemutahiran naskah EAPT', 'Menjaga adanya naskah tes TOEFL yang valid dan up to date', 'Menjaga adanya naskah tes TOEFL yang valid dan up to date', '2021-12-01', '2021-12-31', 'Universitas', 'Kampus', '1400000', '1400000', '0', '2021-07-28', '2021-07-28'),
(137, 'PBH-14', 64, 'Evaluasi kerja', 'Internal', 'Evaluasi kerja triwulan', 'Evaluasi kerja triwulan', 'Evaluasi internal keberhasilan program kerja UPT Bahasa', 'Evaluasi kerja triwulan', '2021-08-01', '2021-12-31', 'R. Pusat Bahasa', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(143, 'SPS-01', 65, 'Sertifikasi Mahasiswa', 'Trainer', 'Sertifikasi Trainerq', 'Sertifikasi Trainer', 'Mengikutsertakan trainer ke pelatihan sertifikasi profesi Badan Nasional Sertifikasi Profesi (BNSP) untuk mendapatkan gelar Certified Public Speaking (CPS).', 'Sertifikasi Trainer', '2021-05-01', '2021-06-30', 'R.SPS', 'universitas', '6000000', '6000000', '0', '2021-07-28', '2021-07-28'),
(144, 'SPS-02', 65, 'Childred', 'Lomba', 'Lomba Public Speaking for Children', 'Lomba Public Speaking for Children', 'Menyelenggarakan lomba Public Speaking untuk anak-anak, sebagai bentuk go public-nya UPT UTS School of Public Speaking, diharapkan lomba ini akan berkelanjutan serta konsisten memberikan Public Speakng Awards kepada pelajar, yang dalam hal ini adalah siswa/i SD dan SMP.', 'Lomba Public Speaking for Children', '2021-07-01', '2021-08-31', 'UTS', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(145, 'SPS-03', 65, 'Pwmbuatan Modul', 'Public Speaking Module', 'Pembuatan Modul Public Speaking', 'Pembuatan Modul Public Speaking', 'Penulisan dan pencetakan modul berbentuk buku dengan ISBN, yang berisi tentang materi Public Speaking yang disusun dan menjadi produk dari UPT SPS', 'Pembuatan Modul Public Speaking', '2021-04-01', '2021-07-31', 'Universitas', 'Kampus', '2500000', '2500000', '0', '2021-07-28', '2021-07-28'),
(146, 'LPT-02', 67, 'Sosialisasi', 'Khalayak Umum', 'Sosialisasi Lembaga Psikologi Terapan kepada Khalayak Umum.', 'Sosialisasi Lembaga Psikologi Terapan kepada Khalayak Umum.', 'Kunjungan Silaturahim ke berbagai Instansi Pemerintah/Sekolah/Lembaga yang sesuai dengan  ruang Lingkup jasa Layanan Psikologi dalam bidang Pendidikan, Industri dan Organisasi serta Konseling dan Sosial Komunitas', 'Sosialisasi Lembaga Psikologi Terapan kepada Khalayak Umum.', '2021-04-01', '2021-07-31', 'Seluruh SMP Se-Kabupaten Sumbawa', 'UTS', '9000000', '9000000', '0', '2021-07-28', '2021-08-23'),
(147, 'LPT-03', 67, 'Promosi', 'media sosial', 'Promosi LPT dalam bentuk Iklan melalui siaran udara (Radio)serta media sosia', 'Promosi LPT dalam bentuk Iklan melalui siaran udara (Radio)serta media sosia', 'Promosi dalam bentuk iklan di media saluran udara (Radio) serta akun media sosial influencer di Kota Sumbawa Besar seperti Semaras Sia, Rungan Samawa dll.', 'Promosi LPT dalam bentuk Iklan melalui siaran udara (Radio)serta media sosia', '2021-04-01', '2021-07-31', 'Media Stasiun Radio, Influencer Kota Sumbawa', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(148, 'LPT-04', 67, 'Webiner', 'lapisan Masyrakat', 'Webinar : \"Perkenalkan, kami adalah Psikolog dan ada untuk anda', 'Webinar : \"Perkenalkan, kami adalah Psikolog dan ada untuk anda', 'Webinar yang dilakukan dengan Zoom Meeting serta  peserta seluruh lapisan masyarakat di Kota Sumbawa. Pemateri nantinya adalah Psikolog dari LPT.', 'Webinar : \"Perkenalkan, kami adalah Psikolog dan ada untuk anda', '2021-04-01', '2021-07-31', 'Kota Sumbawa', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-08-23'),
(150, 'PAS-01', 78, 'Penyempurnaan Kurikulum', 'RPS', 'Penyempurnaan Kurikulum Manajemen Inovasi', 'Penyempurnaan Kurikulum Manajemen Inovasi', 'Penyempurnaan Silabus, RPS, dan Sosialisasi Tim Kurikulum', 'Penyempurnaan Kurikulum Manajemen Inovasi', '2021-08-01', '2021-08-31', 'STP', 'Kampus', '15000000', '15000000', '0', '2021-07-28', '2021-07-28'),
(151, 'PAS-02', 78, 'Restra', 'Review', 'Review Renstra SPS - UTS', 'Review Renstra SPS - UTS', 'Review Renstra Sekolah Pascasarjana sesuai arahan Assesor tim akreditasi', 'Review Renstra SPS - UTS', '2021-07-01', '2021-08-31', 'STP', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(152, 'PAS-03', 78, 'Mahasiswa Baru', 'Pekan Orientasi', 'Pekan orientasi mahasiswa baru prodi manajemen inovasi', 'Pekan orientasi mahasiswa baru prodi manajemen inovasi', 'Melakukan pengenalan dan mengumpulkan mahasiswa baru prodi manajemen inovasi untuk dilakukan orientasi dan pengenalan sekolah pasca sarjana UTS', 'Pekan orientasi mahasiswa baru prodi manajemen inovasi', '2021-09-01', '2021-09-30', 'Ruang Publik Kreative UTS', 'kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(153, 'PAS-04', 78, 'Kuliah Umum', 'Kuliah Umum', 'Kuliah Umum', 'Kuliah Umum', 'Untuk menambah wawasan dan sebagai wadah silaturahmi mahasiswa Sekolah Pascasarjana', 'Kuliah Umum', '2021-04-01', '2021-10-31', 'RPK UTS', 'Kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
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
(178, 'FTA-01', 80, 'Pengembangan kurikulum', 'Pemutakhiran kurikulum', 'Pengembangan kurikulum  - Pemutakhiran dan penyesuain kurikulum', 'Pengembangan kurikulum - Pemutakhiran dan penyesuain kurikulum berdasarkan KKNI', 'Evaluasi dan peninjauan kurikulum , CP dan profil lulusan internal. Memastikan kurikulum sesuai dengan KKNI, dan pembuatan RPS. Rapat pembahasan akademik', 'berbasis Kualifikasi Kompetensi Nasional Indonesia (KKNI)', '2021-08-01', '2021-12-31', 'UTS / Online', 'Kampus', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(179, 'FTA-02', 80, 'karir Dosen', 'Peningkatan & pengembangan', 'Peningkatan dan pengembangan kualifikasi, kompetensi, serta karir dosen', 'Peningkatan dan pengembangan kualifikasi, kompetensi, serta karir dosen', 'Training pengembangan dosen, SCL, RPS, dan bahan ajar. Bertujuan untuk :\n- meningkatnya kapasitas dosen dalam mengajar\n- bahan ajar dapat terdeteksi dan terarsip dengan baik\n- memastikan RPS sesuai standar', 'Peningkatan dan pengembangan kualifikasi, kompetensi, serta karir dosen', '2021-10-01', '2021-12-31', 'UTS/ Online', 'universitas', '4000000', '4000000', '0', '2021-07-28', '2021-09-01'),
(180, 'FTA-03', 80, 'penglolaan', 'Jurnal FAGI', 'Pengelolaan Jurnal Ilmiah Fakultas (Food and Agroindustry Journal-FAGI', 'Pengelolaan Jurnal Ilmiah Fakultas (Food and Agroindustry Journal-FAGI', 'Meningkatkan kualitas dan kuantitas publikasi ilmiah fakultas', 'Pengelolaan Jurnal Ilmiah Fakultas (Food and Agroindustry Journal-FAGI', '2021-08-01', '2021-12-31', 'UTS/ Online', 'universitas', '500000', '500000', '0', '2021-07-28', '2021-07-28'),
(181, 'FTA-04', 80, 'Pembeliaan Alat & Bahan', 'kelengkapan LAB', 'Pembelian Alat, Bahan Pengelolaan Laboratorium', 'Pembelian Alat, Bahan Pengelolaan Laboratorium', 'Pembelian alat, bahan dan pengelolaan laboratorium untuk kebutuhan penelitian', 'Pembelian Alat, Bahan Pengelolaan Laboratorium', '2021-09-01', '2021-12-31', 'UTS/ Online', 'universitas', '17000000', '17000000', '0', '2021-07-28', '2021-07-28'),
(182, 'FTA-05', 80, 'Mahasiswa', 'Pendidikan Karakter', 'Melaksanakan pendidikan kepribadian, karakter, dan akhlak mahasiswa', 'Melaksanakan pendidikan kepribadian, karakter, dan akhlak mahasiswa', 'Pembinaan dan Pendampingan Lomba-Lomba, Pengabdian Masyarakat, dan Pelatihan Soft Skill', 'Melaksanakan pendidikan kepribadian, karakter, dan akhlak mahasiswa', '2021-09-01', '2021-12-31', 'UTS/ Online', 'UTS', '1600000', '1600000', '0', '2021-07-28', '2021-07-28'),
(183, 'FTA-06', 80, 'pendampingan', 'PKM', 'Pendampingan dan Dukungan kegiatan PKM (Pelatihan dan Penghargaan dari fakultas)', 'Pendampingan dan Dukungan kegiatan PKM (Pelatihan dan Penghargaan dari fakultas)', 'Pembinaan, Pendampingan, dan Penghargaan untuk mahasiswa yang lolos PKM', 'Pendampingan dan Dukungan kegiatan PKM (Pelatihan dan Penghargaan dari fakultas)', '2021-08-01', '2021-12-31', 'UTS/ Online', 'kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(184, 'FTA-07', 80, 'Pendampingan dan dukungan', 'organisasi mahasiswa', 'Pendampingan dan Dukungan kegiatan Organisasi Mahasiswa', 'Pendampingan dan Dukungan kegiatan Organisasi Mahasiswa', 'Pendampingan dan dukungan kegatan positif mahasiswa seperti pelatihan sofskill, PKM, pemira, orientasi mahasiswa baru, kegiatan kerohanian, dan lainnya', 'Pendampingan dan Dukungan kegiatan Organisasi Mahasiswa', '2021-09-01', '2021-12-31', 'UTS/ Online', 'universitas', '11300000', '11300000', '0', '2021-07-28', '2021-07-28'),
(185, 'FTA-08', 80, 'Menjaring kemitraan, lokal, nasional dan internasional', 'Menjaring kemitraan, lokal, nasional dan internasional', 'Menjaring kemitraan, lokal, nasional dan internasional', 'Menjaring kemitraan, lokal, nasional dan internasional', 'Terjalinnya sinergi dengan beberapa instansi dalam mendukung tridharma perguruan tinggi dan lokasi PKL, KKN dan Penelitian Mahasisw', 'Menjaring kemitraan, lokal, nasional dan internasional', '2021-09-01', '2021-12-31', 'UTS/ Online', 'universitas', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(186, 'FTB 01', 81, 'Pengembangan Alumni', 'Pengembangan Alumni', 'Pengembangan Alumni', 'Pengembangan Alumni', 'Program peningkatan peran alumni terhadap pengembangan Fakultas . Program ini berupa kegiatan berkala temu alumni dan pembagian souvenir alumni', 'Pengembangan Alumni', '2021-11-01', '2021-11-30', 'Sumbawa', 'universitas', '2000000', '2000000', '0', '2021-07-28', '2021-07-28'),
(187, 'FTB 02', 81, 'Promosi Fakultas', 'BOC', 'PROMOSI FAKULTAS ( BOC dan  EXPEDISI CAMP)', 'PROMOSI FAKULTAS ( BOC dan  EXPEDISI CAMP)', 'program dalam peningkatan kualitas dan kuantitas jumlah calon mahaiswa Biotek dengan kegiatan lomba dan partisipasi ilmiah', 'PROMOSI FAKULTAS ( BOC dan  EXPEDISI CAMP)', '2021-12-01', '2021-12-31', 'UTS dan Tambora', 'Kampus', '3000000', '3000000', '0', '2021-07-28', '2021-07-28'),
(188, 'FTB 04', 81, 'NGAJI BIOTEK', 'NGAJI BIOTEK', 'NGAJI BIOTEK', 'NGAJI BIOTEK', 'program pengkayaan materi keilmuan Bioteknologi yang bertujuan untuk menjaga silaturahim anatara dosen yang sedang studi lanjut, mitra Fakultas.', 'NGAJI BIOTEK', '2021-07-01', '2021-07-31', 'FTB UTS', 'universitas', '3500000', '3500000', '0', '2021-07-28', '2021-07-28'),
(189, 'FTB 06', 81, 'Pelatihan Dosen', 'Kepenulisan', 'Pelatihan Kepenulisan dan Riset Dosen', 'Pelatihan Kepenulisan dan Riset Dosen', 'program peningkatan skill kepenulisan Dosen melaui short training dan diskusi keilmuan', 'Pelatihan Kepenulisan dan Riset Dosen', '2021-07-01', '2021-07-31', 'Sumbawa', 'kampus', '4000000', '4000000', '0', '2021-07-28', '2021-07-28'),
(190, 'FTB 08', 81, 'Penelitian Dosen', 'Pengembangan', 'Pengembangan penelitian', 'Pengembangan penelitian', 'program pengadaan bahan penelitian dalam mendukung kualitas  Riset Fakultas', 'Pengembangan penelitian', '2021-06-01', '2021-06-30', 'FTB UTS', 'Kampus', '10000000', '10000000', '0', '2021-07-28', '2021-07-28');
INSERT INTO `rkat` (`id_rkat`, `kode_rkat`, `id_user`, `sasaran_strategi`, `indikator_sasaran_strategi`, `nama_program`, `program_kerja`, `deskripsi`, `tujuan`, `mulai_program`, `selesai_program`, `tempat`, `sumber_anggaran`, `rencara_anggaran`, `total_anggaran`, `anggaran_digunakan`, `created_at`, `updated_at`) VALUES
(191, 'FTB 11', 81, 'Pelayanan Mahasiswa', 'akademik', 'Pelayanan akademik dan Pendidikan Mahasiswa oleh Prodi dan Fakultas dalam peningkatan mutu akademik', 'Pelayanan akademik dan Pendidikan Mahasiswa oleh Prodi dan Fakultas', 'sosialisasi akademik dan pembuatan pedoman, manual dan panduan akademik', 'Pelayanan akademik dan Pendidikan Mahasiswa oleh Prodi dan Fakultas', '2021-06-01', '2021-06-30', 'FTB UTS', 'kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(192, 'FTB 12', 81, 'Evaluasi Kurikulum', 'Riset', 'Evaluasi Kurikulum Prodi dalam peningkatan mutu riset', 'Evaluasi Kurikulum Prodi dalam peningkatan mutu riset', 'program monetoring dan evaluasi berkala terhadap mutu riset dosen Fakultas', 'Evaluasi Kurikulum Prodi dalam peningkatan mutu riset', '2021-06-01', '2021-06-30', 'FTB UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(193, 'FTB 13', 81, 'Pembekalan Dosen', 'Penyusunan RPS', 'Pembekalan Pembelajara dosen pengampu matakuliah dalam penyususan RPS', 'Pembekalan Pembelajara dosen pengampu matakuliah dalam penyususan RPS', 'sosialiasi dan pembekalan Dosen Fakutas terhadap standar, baku dan manual mutu akademik dan penyamaan persepsi terkait CPL masing-masing program studi', 'Pembekalan Pembelajara dosen pengampu matakuliah dalam penyususan RPS', '2021-08-01', '2021-08-31', 'FTB UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(194, 'FTB 14', 81, 'Training Pembelajaran', 'Training Pembelajaran Mahasiswa', 'Training Pembelajaran , Pengenalan dunia pasca kampus dll', 'Training Pembelajaran , Pengenalan dunia pasca kampus dll', 'sosialisasi dan trainang dasar kepada mahasiswa terkait etika dalam perkuliahan', 'Training Pembelajaran , Pengenalan dunia pasca kampus dll', '2021-09-01', '2021-09-30', 'FTB UTS', 'Kampus', '500000', '500000', '0', '2021-07-28', '2021-07-28'),
(195, 'FTB 15', 81, 'Jurnal', 'Fakultas', 'Jurnal fakultas Biomaras', 'Jurnal fakultas Biomaras', 'pendaftaran, pengembangan jumlah dan kualitas publikasi jurnal Fakultas', 'Jurnal fakultas Biomaras', '2021-10-01', '2021-10-31', 'FTB UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-28', '2021-07-28'),
(196, 'FTB 16', 81, 'Pembekalan Lomba', 'Mahasiswa', 'Pembekalan lomba-lomba dan lomba essay mahasiswa', 'Pembekalan lomba-lomba dan lomba essay mahasiswa', 'program lomba internal mahasiswa terkait presentasi ide dan proposal riset', 'Pembekalan lomba-lomba dan lomba essay mahasiswa', '2021-06-01', '2021-06-30', 'Sumbawa', 'kampus', '5000000', '5000000', '0', '2021-07-28', '2021-07-28'),
(197, 'FKM-01', 54, 'Menyusun Renstra FIKOM 2021-2024', 'Menyusun Renstra FIKOM 2021-2024', 'Menyusun Renstra FIKOM 2021-2024', 'Menyusun Renstra FIKOM 2021-2024', 'Kegiatan menyusun Rencana Strategis Fakultas sebagai arah pengembangan Fakultas 4 tahun ke depan yang berisi Visi, Misi, Tujuan dan Sasaran Fakultas', 'Menyusun Renstra FIKOM 2021-2024', '2021-03-07', '2021-03-13', 'FIKOM', 'universitas', '700000', '700000', '0', '2021-07-28', '2021-07-28'),
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
(217, 'FKM-29', 54, 'Hearing Session antara struktural dan mahasiswa', 'Hearing Session antara struktural dan mahasiswa', 'Hearing Session antara struktural dan mahasiswa', 'Hearing Session antara struktural dan mahasiswa', 'Dalam program ini akan diadakan evaluasi, hearing antara civitas akademik dan mahasiswa', 'Hearing Session antara struktural dan mahasiswa', '2021-03-01', '2021-10-31', 'FIKOM', 'Kampus', '680000', '680000', '0', '2021-07-28', '2021-07-28'),
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
(239, 'CDC-06', 114, 'Penyiapan Alat bahan Bahan Pelatihan & Asesmen', 'Penyiapan Alat bahan Bahan Pelatihan & Asesmen', 'Penyiapan Alat bahan Bahan Pelatihan & Asesmen', 'Penyiapan Alat bahan Bahan Pelatihan & Asesmen', 'Memberikan pelatihan sertifikasi kompetensi agar mahasiswa memeiliki kemampuan SKA ( Skill, Khowledge dan Attitude)', 'Penyiapan Alat bahan Bahan Pelatihan & Asesmen', '2021-06-01', '2021-11-30', 'CDC/WR2', 'Kampus', '3000000', '3000000', '0', '2021-07-29', '2021-08-16'),
(240, 'CDC-07', 114, 'Verifikasi Berkas Pendaftaran', 'Verifikasi Berkas Pendaftaran', 'Verifikasi Berkas Pendaftaran', 'Verifikasi Berkas Pendaftaran', 'Memberikan pelatihan sertifikasi kompetensi agar mahasiswa memeiliki kemampuan SKA ( Skill, Khowledge dan Attitude)', 'Verifikasi Berkas Pendaftaran', '2021-06-01', '2021-12-31', 'CDC/Asesi', 'Kampus', '500000', '500000', '0', '2021-07-29', '2021-08-16'),
(242, 'CDC-08', 114, 'Penyiapan Konsumsi Asesor dan Panitian', 'Penyiapan Konsumsi Asesor dan Panitian', 'Penyiapan Konsumsi Asesor dan Panitian', 'Penyiapan Konsumsi Asesor dan Panitian', 'Memberikan pelatihan sertifikasi kompetensi agar mahasiswa memeiliki kemampuan SKA ( Skill, Khowledge dan Attitude)', 'Penyiapan Konsumsi Asesor dan Panitian', '2021-06-01', '2021-12-31', 'CDC/Asesor', 'Kampus', '7000000', '7000000', '0', '2021-07-29', '2021-08-16'),
(243, 'CDC-09', 114, 'Pelatihan dan uji kompetens', 'Pelatihan dan uji kompetens', 'Pelatihan dan uji kompetens', 'Pelatihan dan uji kompetens', 'Honor Asesor', 'Pelatihan dan uji kompetens', '2021-09-01', '2021-12-31', 'CDC/Wr 2', 'kampus', '3000000', '3000000', '0', '2021-07-29', '2021-08-16'),
(244, 'WR1-04', 61, 'Launching DSDM', 'Training Center', 'Launching DSDM Training Center', 'Launching DSDM Training Center', 'Membuat\npusat pelatihan dan pengembangan SDM', 'Launching DSDM Training Center', '2021-06-01', '2021-06-30', 'UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(245, 'WR1-05', 61, 'Rekrutmen Dosen', 'Tenaga kependidikan 2021', 'Rekrutmen Dosen dan Tenaga kependidikan 2021', 'Rekrutmen Dosen dan Tenaga kependidikan 2021', 'Kegiatan pasca Pemetaan Kebutuhan dan Analisis Kebutuhan Beban Kerja, melengkapi kekurangan SDM dengan melakukan Open Recruitment baik Dosen dan Tendik', 'Rekrutmen Dosen dan Tenaga kependidikan 2021', '2021-01-01', '2021-02-28', 'UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(246, 'WR1-06', 61, 'Psikotes', 'pegawai baru', 'Psikotes pegawai baru', 'Psikotes pegawai baru', 'Setiap pegawai baru diwajibkan mengikuti Psikotes untuk mengetahui minat, bakat,  kelebihan dan kekurangan dirinya sebagai dasar penempatannya', 'Psikotes pegawai baru', '2021-03-01', '2021-03-31', 'UTS', 'Kampus', '2500000', '2500000', '0', '2021-07-30', '2021-07-30'),
(247, 'WR1-09', 61, 'Pelatihan', 'Manajerial Level 1', 'Pelatihan Manajerial Level 1', 'Pelatihan Manajerial Level 1', 'Materikulasi pada Pelatihan Manajerial Level 1 ini meliputi: Organisasi & Manajemen, Pranata Pengarsipan, Pelaporan Keuangan, Pelatihan Budaya Kerja dan Pelayanan Prima (Service Excelent)', 'Pelatihan Manajerial Level 1', '2021-04-01', '2021-04-30', 'UTS', 'Kampus', '3500000', '3500000', '0', '2021-07-30', '2021-07-30'),
(248, 'WR1-10', 61, 'Pelatihan', 'Manajerial level II', 'Pelatihan Manajerial level II', 'Pelatihan Manajerial level II', 'Materikulasi pada Pelatiha Manajerial Level 2 ini meliputi: Team Work, Public Speaking, Konseling Class, Professional Manner, dan Manajemen Sumber Daya Manusia', 'Pelatihan Manajerial level II', '2021-06-01', '2021-06-30', 'UTS', 'Kampus', '3500000', '3500000', '0', '2021-07-30', '2021-07-30'),
(249, 'WR1-13', 61, 'Sosialisasi alur pengajuan NIDN', 'Pengelolaan Siakad dan Sister Dosen', 'Sosialisasi alur pengajuan NIDN, Pengelolaan Siakad dan Sister Dosen', 'Sosialisasi alur pengajuan NIDN, Pengelolaan Siakad dan Sister Dosen', 'Membantu dan menyiapkan para dosen pemula dalam penyiapan NIDN, bagaimana mengelola Siakad, dan Sister Dosen', 'Sosialisasi alur pengajuan NIDN, Pengelolaan Siakad dan Sister Dosen', '2021-03-01', '2021-03-31', 'UTS', 'kampus', '500000', '500000', '0', '2021-07-30', '2021-07-30'),
(250, 'WR1-14', 61, 'Penyamaan Persepsi Asesor BKD', 'Penyamaan Persepsi Asesor BKD dan honorarium Asesor', 'Penyamaan Persepsi Asesor BKD dan honorarium Asesor', 'Penyamaan Persepsi Asesor BKD dan honorarium Asesor', 'Melakukan Rapat Kerja Asesor untuk menyamakan persepsi terkait Peraturan Rektor tentang Beban Kerja Dosen', 'Penyamaan Persepsi Asesor BKD dan honorarium Asesor', '2021-03-01', '2021-03-31', 'UTS', 'Kampus', '5000000', '5000000', '0', '2021-07-30', '2021-08-19'),
(251, 'WR1-15', 61, 'Sosialisasi', 'BKD & LKD', 'Sosialisasi BKD & LKD', 'Sosialisasi BKD & LKD', 'Melakukan sosialisasi penyusunan dan pengumpulan BKD LKD', 'Sosialisasi BKD & LKD', '2021-03-01', '2021-03-31', 'UTS', 'Kampus', '500000', '500000', '0', '2021-07-30', '2021-07-30'),
(252, 'WR1-16', 61, 'Sosialisasi dan Pembekalan Jafung', 'Asisten Ahli, Lektor, dan Lektor Kepala', 'Sosialisasi dan Pembekalan Jafung (Asisten Ahli, Lektor, dan Lektor Kepala)', 'Sosialisasi dan Pembekalan Jafung (Asisten Ahli, Lektor, dan Lektor Kepala)', 'Membantu dan menyiapkan para dosen dalam seluruh proses perjalanan karirnya sebagai dosen, sejak masuk sampai menjadi Guru Besar.', 'Sosialisasi dan Pembekalan Jafung (Asisten Ahli, Lektor, dan Lektor Kepala)', '2021-05-01', '2021-05-31', 'kampus', 'Kampus', '6000000', '6000000', '0', '2021-07-30', '2021-07-30'),
(253, 'WR1-17', 61, 'Seminar', 'TIPS Lolos Serdos', 'Seminar \"TIPS Lolos Serdos\"', 'Seminar \"TIPS Lolos Serdos\"', 'Membantu dan menyiapkan para dosen untuk lulus sertifikat dosen', 'Seminar \"TIPS Lolos Serdos\"', '2021-05-01', '2021-05-31', 'UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(254, 'WR1-24', 61, 'Ngopi', 'Ngumpul Pegawai & ngobrol santai', 'Ngopi (Ngumpul Pegawai & ngobrol santai)', 'Ngopi (Ngumpul Pegawai & ngobrol santai)q', 'Kegaitan silaturrahim seluruh Dosen dan atau seluruh Tendik, sambil ngumpul santai dan berbagi keluhan dan masalah untuk mendapat solusi', 'Ngopi (Ngumpul Pegawai & ngobrol santai)', '2021-04-01', '2021-10-31', 'UTS', 'kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(256, 'WR1-29', 53, 'Pencetakan dan legalisasi transkrip nilai sementara', 'Pencetakan dan legalisasi transkrip nilai sementara', 'Pencetakan dan legalisasi transkrip nilai sementara', 'Pencetakan dan legalisasi transkrip nilai sementara cetak transkrip nilai sementara', 'Pencetakan dan legalisasi transkrip nilai sementara\ncetak transkrip nilai sementara', 'Pencetakan dan legalisasi transkrip nilai sementara', '2021-07-30', '2022-07-31', 'Warek 1', 'Kampus', '1320000', '1320000', '0', '2021-07-30', '2021-07-30'),
(257, 'WR1-30', 53, 'Sosialisasi SOP', 'SOP Akademik', 'Sosialisasi SOP Bagian Akademik', 'Sosialisasi SOP Bagian Akademik', 'cetak buku SOP akademik', 'Sosialisasi SOP Bagian Akademik', '2021-09-01', '2021-09-30', 'UTS', 'Kampus', '2400000', '2400000', '0', '2021-07-30', '2021-07-30'),
(258, 'WR1-31', 53, 'Sosialisasi SIAKAD', 'Sosialisasi SIAKAD', 'Sosialisasi SIAKAD', 'Sosialisasi SIAKAD', 'Sosialisasi SIAKAD dengan MABA & Dosen Baru', 'Sosialisasi SIAKAD', '2021-09-01', '2021-09-30', 'UTS', 'Kampus', '500000', '500000', '0', '2021-07-30', '2021-07-30'),
(259, 'WR1-32', 53, 'Bedah Siakad', 'Bedah Siakad', 'Bedah Siakad', 'Bedah Siakad', '- Bedah SIAKAD Kaprodi + Wadek\n- Bedah SIAKAD Admin Prodi\n- Bedah SIAKAD Dosen+ DPA', 'Bedah Siakad', '2021-07-01', '2021-10-31', 'UTS', 'kampus', '7980000', '7980000', '0', '2021-07-30', '2021-07-30'),
(260, 'WR1-33', 53, 'Pengadaan Inventaris', 'Pengadaan Inventaris', 'Pengadaan Inventaris', 'Pengadaan Inventaris', '- PC\n- printer Scanner\n- HDD Eksternal', 'Pengadaan Inventaris', '2021-07-01', '2021-10-31', 'Warek 1', 'Kampus', '11500000', '11500000', '0', '2021-07-30', '2021-07-30'),
(261, 'WR1-34', 53, 'Update Database', 'Matching Data', 'Melakukan Update Database dan Matching Data', 'Melakukan Update Database dan Matching Data', 'Update data status akademik mahasiswa', 'Melakukan Update Database dan Matching Data', '2021-08-01', '2021-09-30', 'Warek 1', 'kampus', '400000', '400000', '0', '2021-07-30', '2021-07-30'),
(262, 'WR1-35', 53, 'Validasi Data', 'Calon Wisudawan', 'Validasi Data Calon Wisudawan (2x Wisuda dalam 1 tahun)', 'Validasi Data Calon Wisudawan (2x Wisuda dalam 1 tahun)', 'Validasi ijazah dan transkrip nilai', 'Validasi Data Calon Wisudawan (2x Wisuda dalam 1 tahun)', '2021-09-01', '2022-03-31', 'Warek 1', 'Kampus', '600000', '600000', '0', '2021-07-30', '2021-07-30'),
(263, 'WR1-36', 53, 'Rapat RKAT', 'LPJ Internal DAA', 'Rapat RKAT Dan LPJ Internal DAA', 'Rapat RKAT Dan LPJ Internal DAA', 'Rapat', 'Rapat RKAT Dan LPJ Internal DAA', '2021-07-01', '2021-08-31', 'warek 1', 'universitas', '300000', '300000', '0', '2021-07-30', '2021-07-30'),
(264, 'WR1-37', 53, 'Studi banding', 'Studi bandingq', 'Studi banding', 'Studi banding', 'Studi banding Online dengan PIKA UGM', 'Studi banding', '2021-04-01', '2021-04-30', 'STP', 'Kampus', '1500000', '1500000', '0', '2021-07-30', '2021-07-30'),
(265, 'WR1-38', 53, 'Evaluasi tahunan Kurikulum Kampus Merdeka', 'Evaluasi tahunan Kurikulum Kampus Merdeka', 'Evaluasi tahunan Kurikulum Kampus Merdeka', 'Evaluasi tahunan Kurikulum Kampus Merdeka', 'Evaluasi tahunan Kurikulum KKNI berbasis Kampus Merdeka', 'Evaluasi tahunan Kurikulum Kampus Merdeka', '2021-07-01', '2021-07-30', 'STP', 'Kampus', '2500000', '2500000', '0', '2021-07-30', '2021-07-30'),
(266, 'WR1-39', 53, 'Pelatihan RPS', 'Pelatihan RPS`', 'Pelatihan RPS', 'Pelatihan RPS', 'Pelatihan RPS Online', 'Pelatihan RPS', '2021-08-01', '2021-08-31', 'STP', 'Kampus', '2500000', '2500000', '0', '2021-07-30', '2021-07-30'),
(267, 'WR1-40', 53, 'Sosialisai Panduan', 'Sosialisai Panduan', 'Sosialisai Panduan', 'Sosialisai Panduan', 'Sosialisasi buku panduan kurikulum , OBE, MBKM, Media Pembelajaran', 'Sosialisai Panduan', '2021-05-01', '2021-05-31', 'STP', 'Kampus', '1500000', '1500000', '0', '2021-07-30', '2021-07-30'),
(268, 'WR1-41', 53, 'Pelatihan tentang Assesment', 'Pelatihan tentang Assesment', 'Pelatihan tentang Assesment', 'Pelatihan tentang Assesment', 'Pelatihan Rubrik Pembelajaran dan Assesment Pembelajaran', 'Pelatihan tentang Assesment', '2021-09-01', '2021-09-30', 'STP', 'kampus', '2500000', '2500000', '0', '2021-07-30', '2021-07-30'),
(269, 'WR1-42', 53, 'Pengembangan inovasi pembelajaran', 'Pengembangan inovasi pembelajaran', 'Pengembangan inovasi pembelajaran', 'Pengembangan inovasi pembelajaran', 'pengembangan metode pembelajaran UTS', 'Pengembangan inovasi pembelajaran', '2021-12-01', '2021-12-31', 'STP', 'Kampus', '2500000', '2500000', '0', '2021-07-30', '2021-07-30'),
(270, 'WR1-43', 53, 'Pelatihan PBL', 'Pelatihan PBL', 'Pelatihan PBL', 'Pelatihan PBL', 'Pelatihan Metode Pembelajaran PBL', 'Pelatihan PBL', '2021-10-01', '2021-10-31', 'STP', 'Kampus', '2500000', '2500000', '0', '2021-07-30', '2021-07-30'),
(271, 'WR1-44', 53, 'Optimalisasi', 'E-Learnning UTS dan SIAKAD', 'Optimalisasi E-Learnning UTS dan SIAKAD', 'Optimalisasi E-Learnning UTS dan SIAKAD', 'Pelatihan E-Learning UTS dan SIAKAD', 'Optimalisasi E-Learnning UTS dan SIAKAD', '2021-11-01', '2021-11-30', 'STP', 'Kampus', '1500000', '1500000', '0', '2021-07-30', '2021-07-30'),
(272, 'WR1-45', 53, 'Evaluasi Pembelajaran', 'Evaluasi Pembelajaran', 'Evaluasi Pembelajaran', 'Evaluasi Pembelajaran', 'Evaluasi pembelajaran semester genap dan ganjil', 'Evaluasi Pembelajaran', '2021-09-01', '2021-01-31', 'STP', 'Kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(273, 'WR1-48', 60, 'Pembekalan Magang PMMB', 'Pembekalan Magang PMMB (1 Pemateri)', 'Pembekalan Magang PMMB (1 Pemateri)', 'Pembekalan Magang PMMB (1 Pemateri)', 'Membekali mahsiswa sebelum berangkat magang dengan table manner, enginner nal grooping, goal setting, dan communition skills', 'Pembekalan Magang PMMB (1 Pemateri)', '2021-01-01', '2021-07-31', 'Universitas', 'Kampus', '3240000', '3240000', '0', '2021-07-30', '2021-08-26'),
(274, 'WR1-49', 60, 'Self Management', 'Stress Management, Know Your Potency, Be Confident', 'Self Management (Stress Management, Know Your Potency, Be Confident) (1 Pemateri) – umum', 'Self Management (Stress Management, Know Your Potency, Be Confident) (1 Pemateri) – umum', 'Self Management (Stress Management, Know Your Potency, Be Confident) (1 Pemateri) – umum\nmembekali mahasiswa dengan kemampuan Self management', 'membekali mahasiswa dengan kemampuan Self management', '2021-03-01', '2021-03-31', 'UTS', 'kampus', '1710000', '1710000', '0', '2021-07-30', '2021-07-30'),
(275, 'WR1-50', 60, 'penataan karir pasca kelulusan)', 'What Should I Do After Graduation', 'What Should I Do After Graduation (penataan karir pasca kelulusan) (1 Pemateri) – umum', 'What Should I Do After Graduation (penataan karir pasca kelulusan) (1 Pemateri) – umum', 'Membekali mahasiswa dan alumni agar dapat mengetahui apa yang harus dilakukan pasca kelulusan', 'What Should I Do After Graduation (penataan karir pasca kelulusan) (1 Pemateri) – umum', '2021-09-01', '2021-09-30', 'UTS', 'Kampus', '1710000', '1710000', '0', '2021-07-30', '2021-07-30'),
(276, 'WR1-51', 60, 'How to make a eginner nal CV, email, and Cover Letter (1 Pemateri) – karir', 'How to make a eginner nal CV, email, and Cover Letter (1 Pemateri) – karir', 'How to make a eginner nal CV, email, and Cover Letter (1 Pemateri) – karir', 'How to make a eginner nal CV, email, and Cover Letter (1 Pemateri) – karir', 'membekali mahasiswa dengan kemampuan membuat CV yang menarik', 'How to make a eginner nal CV, email, and Cover Letter (1 Pemateri) – karir', '2021-04-01', '2021-04-30', 'Universitas', 'Kampus', '1710000', '1710000', '0', '2021-07-30', '2021-07-30'),
(277, 'WR1-52', 60, 'How to Get First Job (berkirim email, mempersiapkan CV, menghadapi Interview) (1 Pemateri) – karir', 'How to Get First Job (berkirim email, mempersiapkan CV, menghadapi Interview) (1 Pemateri) – karir', 'How to Get First Job (berkirim email, mempersiapkan CV, menghadapi Interview) (1 Pemateri) – karir', 'How to Get First Job (berkirim email, mempersiapkan CV, menghadapi Interview) (1 Pemateri) – karir', 'Membekali mahasiswa atau alumni agar dapat melamar pekerjaan secara profesional', 'How to Get First Job (berkirim email, mempersiapkan CV, menghadapi Interview) (1 Pemateri) – karir', '2021-10-01', '2021-10-31', 'UTS', 'Kampus', '1710000', '1710000', '0', '2021-07-30', '2021-07-30'),
(278, 'WR1-53', 60, 'Excellent Training (Manner, Profesional Grooming ) (1 Pemateri) – karir/umum', 'Excellent Training (Manner, Profesional Grooming ) (1 Pemateri) – karir/umum', 'Excellent Training (Manner, Profesional Grooming ) (1 Pemateri) – karir/umum', 'Excellent Training (Manner, Profesional Grooming ) (1 Pemateri) – karir/umum', 'Membekali mahasiswa dengan kemampuan Service Excelen', 'Excellent Training (Manner, Profesional Grooming ) (1 Pemateri) – karir/umum', '2021-11-01', '2021-11-30', 'UTS', 'Kampus', '1710000', '1710000', '0', '2021-07-30', '2021-07-30'),
(279, 'WR1-54', 60, 'How to Get Your Scholarship', 'How to Get Your Scholarship studi lanjut', 'Knowledge about Scholarship, how to make a good Motivation Letter', 'How to Get Your Scholarship', 'Membekali mahasiswa dan alumni dengan tips tips bagaimana cara mendapatkan beasiswa', 'Membekali mahasiswa dan alumni dengan tips tips bagaimana cara mendapatkan beasiswa', '2021-12-01', '2021-12-31', 'UTS', 'Kampus', '1710000', '1710000', '0', '2021-07-30', '2021-07-30'),
(280, 'WR1-55', 60, 'How to Branding in Social Media', 'How to Branding in Social Media (Collab dengan Humas) (1 Pemateri)', 'How to Branding in Social Media (Collab dengan Humas) (1 Pemateri)', 'How to Branding in Social Media (Collab dengan Humas) (1 Pemateri)', 'How to Branding in Social Media (Collab dengan Humas) (1 Pemateri)', 'How to Branding in Social Media (Collab dengan Humas) (1 Pemateri)', '2021-03-01', '2021-03-31', 'UTS', 'Kampus', '2580000', '2580000', '0', '2021-07-30', '2021-07-30'),
(281, 'WR1-56', 60, 'Communication Skills Training', 'Communication Skills Training', 'Communication Skills Training', 'Communication Skills Training', 'Communication Skills Training (MC, Moderator Training ) (1 Pemateri)', 'Communication Skills Training', '2021-04-01', '2021-04-30', 'UTS', 'kampus', '1710000', '1710000', '0', '2021-07-30', '2021-07-30'),
(282, 'WR1-57', 60, 'Pelatihan Bussiness for eginner', 'manajemen bisnis, administrasi, keuangan, pemasaran, proposal usaha', 'wirausaha', 'wirausaha', 'Pelatihan Bussiness for eginner; manajemen bisnis, administrasi, keuangan, pemasaran, proposal usaha, dll (Series) (1 Pemateri) – wirausaha', 'manajemen bisnis, administrasi, keuangan, pemasaran, proposal usaha', '2021-11-02', '2021-11-30', 'kampus', 'Kampus', '2580000', '2580000', '0', '2021-07-30', '2021-07-30'),
(283, 'WR1-58', 60, 'Tracer Study', 'Tracer Study', 'Tracer Study', 'Tracer Study', 'Melakukan pelacakan alumni untuk memenuhi kebutuhan LLDIKTI', 'Tracer Study', '2021-09-01', '2021-07-01', 'Universitas', 'Kampus', '5400000', '5400000', '0', '2021-07-30', '2021-07-30'),
(284, 'WR1-59', 60, 'Pembuatan Merchandise CDC', 'Pembuatan Merchandise CDC', 'Pembuatan Merchandise CDC', 'Pembuatan Merchandise CDC', 'Membuat merchandise berupa Buku, Tumbler, Totte Bag sebagai bingkisan bagi peserta yang aktif, quiz CDC, dan Tamu Perusahaan / rekanan', 'Pembuatan Merchandise CDC', '2021-01-01', '2022-01-31', 'Universita', 'Kampus', '6000000', '6000000', '0', '2021-07-30', '2021-07-30'),
(285, 'WR1-60', 60, 'Pembuatan Buku Profil / Flyer CDC', 'Pembuatan Buku Profil / Flyer CDC', 'Pembuatan Buku Profil / Flyer CDC', 'Pembuatan Buku Profil / Flyer CDC', 'Pembuat buku profil dan flyer untuk diberikan kepada perusahaan rekanan CDC', 'Pembuatan Buku Profil / Flyer CDC', '2021-01-01', '2022-01-31', 'Universita', 'Kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(286, 'WR1-61', 60, 'Pembuatan Roll Up Banner ( 2 buah)', 'Pembuatan Roll Up Banner ( 2 buah)', 'Pembuatan Roll Up Banner ( 2 buah)', 'Pembuatan Roll Up Banner ( 2 buah)', 'Pembuatan Roll Up Banner ( 2 buah)', 'Pembuatan Roll Up Banner ( 2 buah)', '2021-01-01', '2021-01-31', 'UTS', 'Kampus', '610000', '610000', '0', '2021-07-30', '2021-07-30'),
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
(298, 'WR1-75', 60, 'Dana Kegiatan BEM Univ', 'Dana Kegiatan BEM Univ', 'Dana Kegiatan BEM Univ', 'Dana Kegiatan BEM Univ', 'Dalam menunjang pelaksanaan program kerja selama 1 tahun', 'Dana Kegiatan BEM Univ', '2021-02-01', '2021-12-31', 'UTS', 'Kampus', '4000000', '4000000', '0', '2021-07-30', '2021-08-26'),
(299, 'WR1-76', 60, 'Dana Kegiatan DPM Univ', 'Dana Kegiatan DPM Univ', 'Dana Kegiatan DPM Univ', 'Dana Kegiatan DPM Univ', 'Dalam menunjang pelaksanaan program kerja selama 1 tahun', 'Dana Kegiatan DPM Univ', '2021-02-01', '2021-12-31', 'UTS', 'Kampus', '1500000', '1500000', '0', '2021-07-30', '2021-07-30'),
(300, 'WR1-77', 60, 'Dana Kegiatan UKM Univ', 'Dana Kegiatan UKM Univ', 'Dana Kegiatan UKM Univ', 'Dana Kegiatan UKM Univ', 'Dalam menunjang pelaksanaan program kerja selama 1 tahun', 'Dana Kegiatan UKM Univ', '2021-02-01', '2021-12-31', 'kampus', 'Kampus', '17500000', '17500000', '0', '2021-07-30', '2021-07-30'),
(301, 'WR1-80', 60, 'Pelaksanaan Pemilu Raya (PEMIRA) dan Kongres Mahasiswa', 'Pelaksanaan Pemilu Raya (PEMIRA) dan Kongres Mahasiswa', 'Pelaksanaan Pemilu Raya (PEMIRA) dan Kongres Mahasiswa', 'Pelaksanaan Pemilu Raya (PEMIRA) dan Kongres Mahasiswa', 'Memberikan pengalaman kepada mahasiswa terkait pelaksanaan berdemokrasi di kampus dan memilih pemimpin organisasi (BEM/ DPM)', 'Pelaksanaan Pemilu Raya (PEMIRA) dan Kongres Mahasiswa', '2021-09-01', '2021-12-31', 'UTS', 'Kampus', '4000000', '4000000', '0', '2021-07-30', '2021-07-30'),
(302, 'WR1-81', 60, 'Program Holistik Pembinaan dan Pemberdayaan Desa (PHP2D)', 'Program Holistik Pembinaan dan Pemberdayaan Desa (PHP2D)', 'Program Holistik Pembinaan dan Pemberdayaan Desa (PHP2D)', 'Program Holistik Pembinaan dan Pemberdayaan Desa (PHP2D)', 'Kegiatan pemberdayaan masyarakat yang dilakukan oleh mahasiswa yang tergabung di dalam organisasi kemahasiswaan, Unit Kegiatan Mahasiswa (UKM) maupun Lembaga Eksekutif Mahasiswa, untuk menumbuhkan rasa peduli mahasiswa dan berkontribusi kepada masyarakat \ndesa agar terbangun desa binaan yang\naktif, mandiri, berwirausaha, dan \nsejahtera.', 'Program Holistik Pembinaan dan Pemberdayaan Desa (PHP2D)', '2021-02-01', '2021-04-30', 'UTS', 'Kampus', '1500000', '1500000', '0', '2021-07-30', '2021-07-30'),
(303, 'WR1-82', 60, 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kerumahtanggaan', 'Kelengkapi kebutuhan rumah tangga seperti konsumsi rapat internal dan kegiatan lainnya', 'Kerumahtanggaan', '2021-07-01', '2021-12-31', 'UTS', 'Kampus', '1000000', '1000000', '0', '2021-07-30', '2021-07-30'),
(304, 'WR1-86', 62, 'Tingkat persebaran mahasiswa secara geografis', 'Tingkat persebaran mahasiswa secara geografis', 'Tingkat persebaran mahasiswa secara geografis', 'Sistem seleksi mahasiswa baru yang tranparan dan akuntabel', 'Persiapan Sosialisasi\n1. Menyiapkan dan mencetak brosur, kalender, Dan Spanduk\n2. Membuat Surat Permohonan sosialisasi untuk SMA/SMK/MA dan Instansi\n3. Pembentukan Panitia PMB Divisi Sosialisasi\n4. Membuat slide presentasi tentang profil universitas dan jurusan\n5. Membuat Rencana Anggaran Belanja kebutuhan\npelaksanaan Sosialisasi', 'Sistem seleksi mahasiswa baru yang tranparan dan akuntabel', '2021-01-01', '2021-01-28', 'Direktorat Pengelolaan dan Pemeliharaan Fasilitas', 'Kampus', '23950000', '23950000', '0', '2021-07-30', '2021-07-30'),
(305, 'WR1-87', 62, 'Pelaksanaan Sosialisas', 'Pelaksanaan Sosialisas', 'Pelaksanaan Sosialisas', 'Pelaksanaan Sosialisas', '1. Mendata sekolah yang akan di kunjungi untuk dilakukan sosialisasi\n2. Menghubungi Sekolah dan menentukan waktu sosialisasi\n3. Melakukan sosialisasi dalam bentuk ceramah, kuliah umum dan diskusi', 'Pelaksanaan Sosialisas', '2021-02-09', '2021-03-31', 'UPT. Dikmen SMA/SMK/MA dan Instansi di Kabupaten Sumbawa, Sumbawa Barat, Bima, dan Dompu', 'Kampus', '5733000', '5733000', '0', '2021-07-30', '2021-07-30'),
(306, 'WR1-88', 62, 'Publikasi PMB 2021', 'Publikasi PMB 2021', 'Publikasi PMB 2021', 'Publikasi PMB 2021', '1. Membuat berita PMB di media sosial dan media cetak Sarjana dan Pascasarjana\n2. Mencetak Spanduk PMB Sarjana dan Pascasarjana', 'Publikasi PMB 2021', '2021-02-02', '2021-06-30', 'Media online & Media Social kampus', 'Kampus', '9670000', '9670000', '0', '2021-07-30', '2021-07-30');
INSERT INTO `rkat` (`id_rkat`, `kode_rkat`, `id_user`, `sasaran_strategi`, `indikator_sasaran_strategi`, `nama_program`, `program_kerja`, `deskripsi`, `tujuan`, `mulai_program`, `selesai_program`, `tempat`, `sumber_anggaran`, `rencara_anggaran`, `total_anggaran`, `anggaran_digunakan`, `created_at`, `updated_at`) VALUES
(307, 'WR1-89', 62, 'Pelaksanaan Pendaftaran dan Seleksi', 'Pelaksanaan Pendaftaran dan Seleksi', 'Pelaksanaan Pendaftaran dan Seleksi', 'Pelaksanaan Pendaftaran dan Seleksi', '2. Pelaksanaan Pendaftaran dan Seleksi (Berkas, CBT dan Wawancara) Jalur Beasiswa Prestasi, Beasiswa Tau Samawa, Beasiswa Nusantara, Beasiswa OVTE dan BIP\ndan BIP\n1.1. Pendaftaran Mahasiswa Baru Jalur Beasiswa Prestasi\nPendaftaran Ofline :\n1. Melayani Pendaftar dan pengecekan kelengkapan\nberkas\n2. Pembuatan Kwitansi Pendaftaran\n3. Penginputan data di microsoft excel\n4. Pelaporan keuangan jumlah pendaftar kepada', 'Pelaksanaan Pendaftaran dan Seleksi', '2021-02-01', '2021-07-31', 'Kantor PMB', 'Kampus', '4530000', '4530000', '0', '2021-07-30', '2021-07-30'),
(308, 'WR1-90', 62, 'Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi,', 'Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi,', 'Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi,', 'Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi,', '3. Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi, Mahasiswa Internasional, Ekstensi dan Paralel 2020 - 2021\n1. Pendaftaran dan Seleksi Mahasiswa Baru\nPascasarjana, Ekstensi dan Paralel.\n1.1 Pelaksanaan Tes Potensi Akademik\n1.2 Pengumuman Kelulusan\n1.3 Pelaksanaan Pendaftaran Ulang', 'Persiapan dan Pelaksanaan Pendaftaran Jalur Reguler Pascasarjana manajemen inovasi,', '2021-02-09', '2021-07-31', 'kantor PMB & Online', 'Kampus', '2000000', '2000000', '0', '2021-07-30', '2021-07-30'),
(309, 'WR1-91', 62, 'Mendukung dan Bersinergi dengan Dosen,', 'Mendukung dan Bersinergi dengan Dosen,', 'Mendukung dan Bersinergi dengan Dosen,', 'Mendukung dan Bersinergi dengan Dosen,', 'Mendukung dan Bersinergi dengan Dosen, BEM, UKM dan HMJ dalam penyelenggaraan kegiatan yang melibatkan siswa SMA, SMK dan MA.', 'Mendukung dan Bersinergi dengan Dosen,', '2021-02-09', '2021-07-31', 'UTS', 'Kampus', '3500000', '3500000', '0', '2021-07-30', '2021-07-30'),
(310, 'WR3-03', 70, 'Workshop penulisan', 'jurnal internasional', 'Workshop penulisan jurnal internasional', 'Workshop penulisan jurnal internasional', 'Offline dan online dg pemateri internasional', 'Workshop penulisan jurnal internasional', '2021-05-01', '2021-05-31', 'UTS', 'Kampus', '2000000', '2000000', '0', '2021-08-05', '2021-08-05'),
(311, 'WR3-04', 70, 'Program I', 'dosen satu inovasi', 'Program I dosen satu inovasi', 'Program I dosen satu inovasi', 'Stimulus untuk para dosen yang menghasilkan invensi berpotensi paten', 'Program I dosen satu inovasi', '2021-06-01', '2021-06-30', 'UTS', 'kampus', '5000000', '5000000', '0', '2021-08-05', '2021-08-05'),
(312, 'WR3-06', 70, 'Program pendampingan penyusunan', 'HKI, paten, desain produksi', 'Program pendampingan penyusunan, HKI, paten, desain produksi', 'Program pendampingan penyusunan, HKI, paten, desain produksi', 'Program pendampingan HKI dilakukan dengan metode workshop', 'Program pendampingan penyusunan, HKI, paten, desain produksi', '2021-04-01', '2021-04-30', 'UTS', 'kampus', '2000000', '2000000', '0', '2021-08-05', '2021-08-05'),
(313, 'WR3-07', 70, 'Diseminasi', 'Riset', 'Diseminasi Riset', 'Diseminasi Riset', 'Melakukan monev terhadap penellitian dari dosen yang memperoleh hibah', 'Diseminasi Riset', '2021-05-01', '2021-05-31', 'UTS', 'kampus', '2500000', '2500000', '0', '2021-08-05', '2021-08-05'),
(314, 'WR3-08', 70, 'Buku profil', 'riset dan inovasi', 'Buku profil riset dan inovasi', 'Buku profil riset dan inovasi', '-Penyusunan buku profil Kompetensi Dosen di Bidang Penelitian dan Pengabdian, dan profile Riset dan pengabdian Dosen UTS\n-Expo hasil riset dan inovasi/TTG dosen', 'Buku profil riset dan inovasi', '2021-05-01', '2021-05-31', 'UTS', 'kampus', '2500000', '2500000', '0', '2021-08-05', '2021-08-05'),
(315, 'WR3-09', 70, 'Pengembangan aplikasi', 'Database riset', 'Pengembangan aplikasi database riset', 'Pengembangan aplikasi database riset', 'Perekapan data riset inovasi dosen', 'Pengembangan aplikasi database riset', '2021-03-01', '2021-03-31', 'UTS', 'kampus', '7000000', '7000000', '0', '2021-08-05', '2021-08-05'),
(316, 'WR3-600', 57, 'swet', 'ser', 'set', 'set', 'set', 'set', '2021-08-06', '2021-08-31', 'set', 'set', '1000000', '1000000', '0', '2021-08-05', '2021-08-18'),
(317, 'WR3-0400', 57, 'Lomba', 'Mahasiwa', 'Hackhatoon Pemrograman', 'Mencari mahasiswa potensional', 'Lomba pemrograman, untuk mahasiswa berpotensi', 'Project Management', '2021-08-05', '2021-08-31', 'UTS', 'kampus', '5000000', '5000000', '1000000', '2021-08-06', '2021-08-06'),
(318, 'INF-54', 84, 'Optimalisasi Perangkat Praktikum Artificial Inteligent, Internet Of Things dan Robotika', 'Tersedianya Perangkat Peraktikum untuk Konsentrasi Komputasi Cerdas dan IoT', 'Optimalisasi Kegiatan praktikum untuk meningkatkan Kompetensi Lulusan', 'Optimalisasi Kegiatan praktikum untuk meningkatkan Kompetensi Lulusan', 'Program ini di adakan untuk meningkatkan skil / kompetensi lulusan program studi Teknik Informatika bidang peminatan Komputasi Cerdas / Artificial Inteligent guna meningkatkan Daya Saing Lulusan.', 'Meningkatkan Mutu Praktikum serta meningkatkan Kompetensi lulusan', '2021-04-01', '2021-04-30', 'Informatika', 'kampus', '10000000', '10000000', '0', '2021-08-06', '2021-09-07'),
(319, 'FRS-53', 85, 'Praktikum', 'Teknik Industri', 'Praktikum Teknik Industri', 'Praktikum Teknik Industri', 'Kegiatan ini merupakan kegiatan pembelajaran dalam bentuk praktik', 'Praktikum Teknik Industri', '2021-04-21', '2021-04-21', 'Lab. Industri', 'kampus', '1000000', '1000000', '0', '2021-08-06', '2021-08-27'),
(320, 'INF-55', 84, 'Optimalisasi Perangkat Praktikum Jaringan', 'Tersedianya Perangkat Peraktikum untuk Konsentrasi Network & Security', 'Optimalisasi Kegiatan praktikum untuk meningkatkan Kompetensi Lulusan', 'Optimalisasi Kegiatan praktikum untuk meningkatkan Kompetensi Lulusan', 'Program ini di adakan untuk meningkatkan skil / kompetensi lulusan program studi Teknik Informatika bidang peminatan NETWORK & SECURITY guna meningkatkan Daya Saing Lulusan.', 'Meningkatkan Mutu Praktikum Bidang Jaringan serta meningkatkan Kompetensi lulusan', '2021-04-01', '2021-04-30', 'Lab. Informatika', 'kampus', '8500000', '8500000', '0', '2021-08-06', '2021-09-07'),
(321, 'FRS-57', 97, 'Sosialisasi', 'kurikulum dan visi-misi', 'Sosialisasi kurikulum dan visi-misi', 'Sosialisasi kurikulum dan visi-misi', 'Mengunjungi stake holder atau mengundang stake holder untuk membahas visi misi dan kurikulum Teknik Mesin', 'Sosialisasi kurikulum dan visi-misi', '2021-03-01', '2021-12-31', 'Menyesuaikan', 'universitas', '2000000', '2000000', '0', '2021-08-06', '2021-08-27'),
(322, 'SEK-02', 21, 'Buku SOP UTS', 'Buku SOP UTS', 'Buku SOP UTS', 'Buku SOP UTS', 'Penyusunan dan penyetakan Statuta UTS', 'Buku SOP UTS', '2021-07-01', '2021-07-31', 'UTS', 'kampus', '3000000', '3000000', '0', '2021-08-09', '2021-08-09'),
(323, 'SEK-04', 21, 'Kopi Dara', 'Medsos UTS Raya (Kodamin)', 'Kopi Darat bareng Mimin Medsos UTS Raya (Kodamin)', 'Kopi Darat bareng Mimin Medsos UTS Raya (Kodamin)', 'Kopdar ini adalah program Humas dengan mengundang para Admin akun media social yang ada di UTS, seperti Admin akun Media social Program Study, Fakultas, UPT, UKM, BEM Jurusan, BEM, Fakultas, BEM Senat, serta akun-akun komunitas UTS dan Influencer yang ada di UTS.', 'Kopi Darat bareng Mimin Medsos UTS Raya (Kodamin)', '2021-04-16', '2021-04-17', 'sumbawa', 'kampus', '3000000', '3000000', '0', '2021-08-09', '2021-08-09'),
(324, 'SEK-05', 21, 'Duta Mahasiswa UTS', 'Duta Mahasiswa UTS', 'Duta Mahasiswa UTS', 'Duta Mahasiswa UTS', 'Duta Mahasiswa adalah program tahunan UTS, yang dilaksanakan dalam bentuk karantina mahasiswa juga seleksi dengan memberikan pembekalan terkait public speaking, wawasan terkait UTS, serta menggali potensi mahasiswa yang unik yang nantinya akan bermanfaat bagi promosi kampus.', 'Duta Mahasiswa UTS', '2021-04-28', '2021-04-29', 'UTS', 'kampus', '5750000', '5750000', '0', '2021-08-09', '2021-08-09'),
(325, 'FTLM-01', 89, 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen renstra dan Renop periode 2021-2025', 'Terbentuknya tim penyusun dokumen renstra dan Renop Fakultas. & Rampungnya', 'Penyusunan dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral', 'Penyusunan dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral', 'Dekan membentuk tim penyusun dokumen renstra yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen renstra dan Renop.\n1) Terbentuknya tim penyusun dokumen renstra dan Renop Fakultas. \n2) Rampungnya dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Menyusun dokumen Renstra dan Renop Fakultas Teknologi Lingkungan dan Mineral (FTLM)', '2021-08-01', '2021-09-30', 'UTS', 'kampus', '1750000', '1750000', '0', '2021-08-09', '2021-08-09'),
(326, 'FTLM-02', 89, 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Visi, Misi, Tujuan dan Sasaran Fakultas', 'Terbentuknya tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran Fakultas.', 'Penyusunan dokumen Visi, Misi, Tujuan dan Sasaran Fakultas', 'Penyusunan dokumen Visi, Misi, Tujuan dan Sasaran Fakultas', 'Dekan membentuk tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen Visi, Misi, Tujuan dan Sasaran .\n1) Terbentuknya tim penyusun dokumen Visi, Misi, Tujuan dan Sasaran Fakultas.\n2) Rampungnya dokumen Visi, Misi, Tujuan dan Sasaran Fakultas Teknologi Lingkungan dan Mineral (FTLM)', 'Menyusun dokumen Visi, Misi, Tujuan dan Sasaran Fakultas', '2021-08-01', '2021-10-31', 'UTS', 'kampus', '3000000', '3000000', '0', '2021-08-09', '2021-08-09'),
(327, 'FTLM-03', 89, 'Fakultas Teknologi Lingkungan dan Mineral memiliki dokumen Standar Operasional Prosedur (SOP)', 'Terbentuknya tim penyusun dokumen Standar Operasional Prosedur (SOP) Fakultas', 'Penyusunan dokumen Standar Operasional Prosedur (SOP) Fakultas', 'Penyusunan dokumen Standar Operasional Prosedur (SOP) Fakultas', 'Dekan membentuk tim penyusun dokumen Standar Operasional Prosedur (SOP) yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi) dalam penyusunan dokumen SOP Fakultas\n1) Terbentuknya tim penyusun dokumen Standar Operasional Prosedur (SOP)Fakultas.\n2) Rampungnya dokumen Standar Operasional Prosedur (SOP)Fakultas Teknologi Lingkungan dan Mineral (FTLM) 2021-2025', 'Menyusun dokumen Standar Operasional Prosedur (SOP) Fakultas', '2021-08-01', '2021-09-30', 'UTS', 'Kampus', '1500000', '1500000', '0', '2021-08-09', '2021-08-09'),
(328, 'FTLM-04', 89, 'Peningkatan kualitas SDM di Lingkungan Fakultas Teknologi Lingkungan dan Mineral (FTLM)', 'Dosen mengikuti coaching clinic. Menerapkan & Mengaplikasikan', 'Membekali dosen dengan coaching clinic membuat proposal Hibah.', 'Membekali dosen dengan coaching clinic membuat proposal Hibah.', 'Coachig Klinik dan Pembuatan Vidio pembelajaran merupakan salah satu pelatihan yang sangat berguna dalam mendukung kelancaran proses pembelajaran dan kualitas penelitian dari dosen di ligkungan FTLM untuk kemajuan Fakultas dan Dosen. \n1) Dosen mengikuti coaching clinic membuat proposal Hibah dan Pelatihan Pembuatan Vidio Pembelajaran yang menarik\n2) Dosen menerapkan apa yang diperoleh saat pelatihan\n3) Dosen yang telah mengikuti pelatihan mampu mengaplikasikan ilmunya dalam bentuk produk proposal hibah dan vidio pembelajaran.', 'Kegiatan ini dimaksudkan agar adanya peningkatan kualitas SDM terutama pembuatan proposal', '2021-10-01', '2021-10-31', 'During & laring', 'Kampus', '1500000', '1500000', '0', '2021-08-09', '2021-08-09'),
(329, 'FTLM-05', 89, 'Peningkatan wawasan mahasiswa baru terkait Fakultas Teknologi Lingkungan dan Mineral', 'Mahasiswa Baru akan lebih mengenalkan Fakultas Teknologi Lingkungan dan Mineral', 'Mengenalkan Fakultas Teknologi Lingkungan dan Mineral kepada mahasiswa baru angkatan 2021', 'Mahasiswa Baru akan lebih mengenalkan Fakultas Teknologi Lingkungan dan Mineral', 'Pengenalan Orientasi Fakultas dan Pengenalan Kampus FTLM merupakan agenda penting dengan tujuan mengenalkan, membentuk, dan menanamkan nilai-nilai yang sudah ada terlebih dahulu kepada mahasiswa baru Fakultas Teknologi Lingkungan dan Mineral  dengan harapan terciptanya mahasiswa teknik yang solid, aktif dan loyalitas serta memiliki nilai toleransi berbudaya yang tinggi antar sesama.', 'Kegiatan ini dimaksudkan agar adanya Kegiatan Oriesntasi Fakultas,', '2021-09-01', '2021-09-30', 'Kondisional', 'kampus', '1000000', '1000000', '0', '2021-08-09', '2021-08-09'),
(330, 'FTLM-06', 89, 'Meningkatkan kesadaran dosen dan mahasiswa terhadap lingkungan', 'Partisipasi dosen dan mahasiswa', 'Pengabdian Masyarakat Aksi Peduli Lingkungan', 'Pengabdian Masyarakat Aksi Peduli Lingkungan', 'Sebagai Wadah Pengabdian Dosen dan Mahasiswa Fakultas Teknnologi Lingkungan dan Mineral terhadap Lingkungan di Masyarakat Sekitar', 'Untuk menjadi wadah pengabdian Dosen dan Mahasiswa di Masyarakat Sekitar', '2021-11-01', '2021-11-30', 'Desa Binaan', 'Kampus', '1000000', '1000000', '0', '2021-08-09', '2021-08-09'),
(331, 'FTLM-07', 89, 'Meningkatnya mutu publikasi hasil penelitian dosen-dosen di Fakultas Teknologi Lingkungan dan Mineral', 'Angka dan Mutu Publikasi Meningkat', 'Program Talangan Publikasi Jurnal Internasional Bereputasi atau minimal Sinta 2.', 'Program Talangan Publikasi Jurnal Internasional Bereputasi atau minimal Sinta 2.', 'Program membantu proses Publikasi dengan talangan dari Fakultas', 'Meningkatkan Jumlah Publikasi Internasional Bereputasi atau minimal Sinta 2.', '2021-12-01', '2021-12-31', 'Gd. Rektorat, Lt.2 FTLM', 'kampus', '2250000', '2250000', '0', '2021-08-09', '2021-08-09'),
(332, 'FTLM-08', 89, 'Mempersiapkan Jurnal Fakultas menjadi Jurnal Terakreditasi', 'Pembiayaan DOI Jurnal Fakultas (Hexagon)', 'Pengembangan Jurnal Fakultas', 'Pengembangan Jurnal Fakultas', 'Pembiayaan DOI Jurnal', 'Meningkatkan indexing jurnal dan meningkatkan kualitas Jurnal', '2021-08-01', '2021-08-31', 'FTLM - Rektorat, Lt.2', 'Kampus', '1000000', '1000000', '0', '2021-08-09', '2021-08-09'),
(333, 'FRS-01', 111, 'ATK Fakultas', 'ATK Fakultas', 'ATK Fakultas', 'ATK Fakultas', 'Memenuhi keperluan pelayanan administrasi surat menyurat di lingkungan Fakultas Rekayasa Sistem', 'ATK Fakultas', '2021-08-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '2000000', '2000000', '0', '2021-08-09', '2021-08-27'),
(334, 'FRS-02', 111, 'Penyusunan Visi, Misi, Renstra dan Renop Serta Alur Pelayanan Administrasi Akademik FRS 2021-2024', 'Penyusunan Visi, Misi, Renstra dan Renop Serta Alur Pelayanan Administrasi Akademik FRS 2021-2024', 'Penyusunan Visi, Misi, Renstra dan Renop Serta Alur Pelayanan Administrasi Akademik FRS 2021-2024', 'Penyusunan Visi, Misi, Renstra dan Renop Serta Alur Pelayanan Administrasi Akademik FRS 2021-2024', 'Pembentukan tim perumus dan Penyusunan Visi, Misi, Renstra dan Renop serta Alur Pelayanan Administrasi Akademik FRS', 'Penyusunan Visi, Misi, Renstra dan Renop Serta Alur Pelayanan Administrasi Akademik FRS 2021-2024', '2021-07-01', '2021-09-30', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '2000000', '2000000', '0', '2021-08-09', '2021-08-27'),
(335, 'FRS-03', 111, 'Rapat Rutin Fakultas', 'Rapat Rutin Fakultas', 'Rapat Rutin Fakultas', 'Rapat Rutin Fakultas', 'Rapat rutin Bulanan pimpinan fakultas yang terdiri dari Dekan, Wadek, Maneger, Kaprodi, dan Sekprodi yang dilakukan sekali 1 bulan', 'Rapat Rutin Fakultas', '2021-08-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '1200000', '1200000', '0', '2021-08-09', '2021-08-27'),
(336, 'FRS-04', 111, 'Media Dokumentasi dan Publikasi Fakultas ( Handphone, Banner struktur dll)', 'Media Dokumentasi dan Publikasi Fakultas ( Handphone, Banner struktur dll)', 'Media Dokumentasi dan Publikasi Fakultas ( Handphone, Banner struktur dll)', 'Media Dokumentasi dan Publikasi Fakultas ( Handphone, Banner struktur dll)', 'Memenuhi keperluan pelayanan administrasi, penyampaian informasi melalui media sosial dan untuk mengenalkan struktur organisasi yang ada di lingkungan Fakultas Rekayasa Sistem', 'Media Dokumentasi dan Publikasi Fakultas ( Handphone, Banner struktur dll)', '2021-08-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '2500000', '2500000', '0', '2021-08-09', '2021-08-27'),
(337, 'FRS-06', 111, 'Pelatihan Penulisan Proposal Penelitian dan Pengabdian  Dosen', 'Pelatihan Penulisan Proposal Penelitian dan Pengabdian  Dosen', 'Pelatihan Penulisan Proposal Penelitian dan Pengabdian  Dosen', 'Pelatihan Penulisan Proposal Penelitian dan Pengabdian  Dosen', 'Kegiatan ini dimaksudkan untuk menghimpun para peneliti di Fakultas dalam klaster lintas disiplin ilmu selama 3 hari dengan output proposal penelitian dan pengabdian siap submit', 'Pelatihan Penulisan Proposal Penelitian dan Pengabdian  Dosen', '2021-11-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1500000', '1500000', '0', '2021-08-09', '2021-08-27'),
(338, 'FRS-07', 111, 'Pelatihan Penulisan Jurnal Terindek Sinta dan Scopus', 'Pelatihan Penulisan Jurnal Terindek Sinta dan Scopus', 'Pelatihan Penulisan Jurnal Terindek Sinta dan Scopus', 'Pelatihan Penulisan Jurnal Terindek Sinta dan Scopus', 'Kegiatan Ini dimasukkan untuk meningkatkan Publikasi Dosen', 'Pelatihan Penulisan Jurnal Terindek Sinta dan Scopus', '2021-09-01', '2021-10-31', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1200000', '1200000', '0', '2021-08-09', '2021-08-27'),
(339, 'FRS-08', 111, 'Webinar Fakultas', 'Webinar Fakultas', 'Webinar Fakultas', 'Webinar Fakultas', 'Pelaksanaan Webinar Fakultas Sebagai Wadah Pengabdian Kepada Masyarakat di Masa Pandemi', 'Webinar Fakultas', '2021-10-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1000000', '1000000', '0', '2021-08-09', '2021-08-27'),
(340, 'FRS-09', 111, 'Tim Penyusunan Rodmap Penelitian dan Pengabdian Masyarakat Fakultas Rekayasa Sistem Tahun 2021-2024', 'Tim Penyusunan Rodmap Penelitian dan Pengabdian Masyarakat Fakultas Rekayasa Sistem Tahun 2021-2024', 'Tim Penyusunan Rodmap Penelitian dan Pengabdian Masyarakat Fakultas Rekayasa Sistem Tahun 2021-2024', 'Tim Penyusunan Rodmap Penelitian dan Pengabdian Masyarakat Fakultas Rekayasa Sistem Tahun 2021-2024', 'Dalam pelaksanaan kegiatan penelitian dan pengbadian masyarakat sesuai dengan rodmap Fakultas', 'Tim Penyusunan Rodmap Penelitian dan Pengabdian Masyarakat Fakultas Rekayasa Sistem Tahun 2021-2024', '2021-09-01', '2021-10-31', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1000000', '1000000', '0', '2021-08-09', '2021-08-27'),
(341, 'FRS-10', 111, 'Silaturrahim dan koordinasi dengan Ormawa tingkat Fakultas', 'Silaturrahim dan koordinasi dengan Ormawa tingkat Fakultas', 'Silaturrahim dan koordinasi dengan Ormawa tingkat Fakultas', 'Silaturrahim dan koordinasi dengan Ormawa tingkat Fakultas', 'Kegiatan ini dilakukan untuk menjalin komunikasi dan koordinasi dengan semua Orwama tingkat fakultas', 'Silaturrahim dan koordinasi dengan Ormawa tingkat Fakultas', '2021-08-01', '2021-09-30', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '350000', '350000', '0', '2021-08-09', '2021-08-27'),
(342, 'FRS-11', 111, 'Silaturrahim dan menjalin kerjassama dengan alumni tingkat Fakultas', 'Silaturrahim dan menjalin kerjassama dengan alumni tingkat Fakultas', 'Silaturrahim dan menjalin kerjassama dengan alumni tingkat Fakultas', 'Silaturrahim dan menjalin kerjassama dengan alumni tingkat Fakultas', 'Kegiatan ini dimaksudkan untuk mejalin silaturrahim dan membuat kerjasama dengan antar alumni tingkat fakultas', 'Silaturrahim dan menjalin kerjassama dengan alumni tingkat Fakultas', '2021-09-01', '2021-10-31', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '500000', '500000', '0', '2021-08-09', '2021-08-27'),
(343, 'FRS-12', 111, 'Pemantauan terhadap  minat dan menganalisis potensi untuk menjaring mahasiswa berprestasi', 'Pemantauan terhadap  minat dan menganalisis potensi untuk menjaring mahasiswa berprestasi', 'Pemantauan terhadap  minat dan menganalisis potensi untuk menjaring mahasiswa berprestasi', 'Pemantauan terhadap  minat dan menganalisis potensi untuk menjaring mahasiswa berprestasi', 'Melakukan pemantauan terhadap minat dan menganalisis potensi mahasiswa baik akademik maupun non akademik sehingga bisa menjaring mahasiswa berprestasi', 'Pemantauan terhadap  minat dan menganalisis potensi untuk menjaring mahasiswa berprestasi', '2021-09-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '250000', '250000', '0', '2021-08-09', '2021-08-27'),
(344, 'FRS-13', 111, 'Sosialisasi, pelatihan dan  pendampingan kegiatan kompetisi mahasiswa', 'Sosialisasi, pelatihan dan  pendampingan kegiatan kompetisi mahasiswa', 'Sosialisasi, pelatihan dan  pendampingan kegiatan kompetisi mahasiswa', 'Sosialisasi, pelatihan dan  pendampingan kegiatan kompetisi mahasiswa', 'Melakukan sosialisasi, pelatihan dan pendampingan terhadap kegiatan mahasiswa (kompetensi akademik maupun non akademik)', 'Sosialisasi, pelatihan dan  pendampingan kegiatan kompetisi mahasiswa', '2021-08-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '3000000', '3000000', '0', '2021-08-09', '2021-08-27'),
(345, 'FRS-14', 111, 'FGD dan evaluasi kegiatan kemahasiswaan', 'FGD dan evaluasi kegiatan kemahasiswaan', 'FGD dan evaluasi kegiatan kemahasiswaan', 'FGD dan evaluasi kegiatan kemahasiswaan', 'Melakukan evaluasi kegiatan kemahasiswaan selama satu semester berjalan', 'FGD dan evaluasi kegiatan kemahasiswaan', '2021-12-01', '2021-12-31', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '500000', '500000', '0', '2021-08-09', '2021-08-27'),
(346, 'FRS-15', 111, 'Dana Kegiatan BEM dan DPM Fakultas', 'Dana Kegiatan BEM dan DPM Fakultas', 'Dana Kegiatan BEM dan DPM Fakultas', 'Dana Kegiatan BEM dan DPM Fakultas', 'Anggaran kegiatan dalam menjalankan program yang direncanakan', 'Dana Kegiatan BEM dan DPM Fakultas', '2021-08-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'kampus', '1500000', '1500000', '0', '2021-08-09', '2021-08-27'),
(347, 'FRS-16', 111, 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dalam hal pendidikan dalam bentuk transfer knowledge melalui pendidikan dan pelatihan pertukaran mahasiswa, magang, KKN tematik di daerah dan riset', 'Kerjasama dengan perguruan tinggi dan steakholder', '2021-09-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1200000', '1200000', '0', '2021-08-09', '2021-08-27'),
(348, 'FRS-17', 111, 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Pengembangan penjaminan mutu Produk, SDM Dan Standar ISO', 'Kerjasama dengan perguruan tinggi dan steakholder', '2021-09-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '500000', '500000', '0', '2021-08-09', '2021-08-27'),
(349, 'FRS-18', 111, 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Kerjasama dengan perguruan tinggi dan steakholder', 'Dosen tamu  (guest lecturer) sebagai pemateri dalam webinar fakultas', 'Kerjasama dengan perguruan tinggi dan steakholder', '2021-10-01', '2021-11-30', 'Gd.Rektorat Lt.2 - FRS', 'Kampus', '1000000', '1000000', '0', '2021-08-09', '2021-08-27'),
(350, 'FRS-19', 111, 'kerjasama Jasa dan royalti hak kekayaan intelektual (Non akademik)', 'kerjasama Jasa dan royalti hak kekayaan intelektual (Non akademik)', 'kerjasama Jasa dan royalti hak kekayaan intelektual (Non akademik)', 'kerjasama Jasa dan royalti hak kekayaan intelektual (Non akademik)', 'Memperoleh perlindungan secara hukum atas kekayaan intelektual pada Suatu karya atau produk sesuai dengan peraturan perundang-undangan di bidang HKI', 'kerjasama Jasa dan royalti hak kekayaan intelektual (Non akademik)', '2021-09-01', '2022-02-28', 'Gd.Rektorat Lt.2 - FRS', 'Universitas', '500000', '500000', '0', '2021-08-09', '2021-08-27'),
(351, 'WR3-10000', 57, 'server', 'pengajuan SERVER', 'Implementasi', 'pengajuan SERVER Implementasi', 'pengajuan SERVER Implementasi', 'pengajuan SERVER Implementasi', '2021-08-11', '2021-08-31', 'Kampus', 'kampus', '2000000', '2000000', '1000000', '2021-08-10', '2021-08-10'),
(352, 'WR3-100000', 56, 'Inovasi', 'Inovasi Inovasi', 'Inovasi saja', 'Inovasi sajaInovasi sajaInovasi saja', 'Inovasi sajaInovasi sajaInovasi saja', 'Inovasi sajaInovasi sajaInovasi saja', '2021-08-10', '2021-08-31', 'STP', 'UTS', '5000000', '5000000', '0', '2021-08-10', '2021-08-10'),
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
(367, 'WR1-28', 53, 'Buku Panduan', 'Akademik', 'Buku Panduan Akademik', 'Buku Panduan Akademik', 'Pembuatan (cetak) Buku Peraturan Akademik', 'Buku Panduan Akademik', '2021-08-01', '2021-08-31', 'warek 1', 'Kampus', '4500000', '4500000', '0', '2021-08-18', '2021-08-18'),
(368, 'PBH-01', 64, 'Registration and certification system', 'Integrated Online EEAPT', 'Integrated Online EEAPT registration and certification system', 'Integrated Online EEAPT registration and certification system', 'Dengan adanya sistem pendaftaran online dan sertifikasi online maka akan memperpendek waktu tunggu penerbitan sertifikat dan dengan adanya sistem barcode akan menjamin keaslian dan keabsahan sertifikat tersebut.', 'Integrated Online EEAPT registration and certification system', '2021-06-01', '2021-12-31', 'Ruang - Pusat Bahasa', 'universitas', '2000000', '2000000', '0', '2021-08-23', '2021-08-23'),
(369, 'PBH-03', 64, 'Merchandise UPT Bahasa', 'Merchandise UPT Bahasa', 'Merchandise UPT Bahasa', 'Merchandise UPT Bahasa', 'Melakukan ekspansi layanan UPT dan\nsebagai media promosi UPT Bahasa\ndengan menjual Tshirt, thumbler, gantungan kunci', 'Merchandise UPT Bahasa', '2021-06-01', '2021-07-06', 'R.Pusat Bahasa', 'Kampus', '2000000', '2000000', '0', '2021-08-23', '2021-08-23'),
(370, 'PBH-10', 64, 'ES TOEFL ITP Bagi SDM Pubah', 'ES TOEFL ITP Bagi SDM Pubah', 'ES TOEFL ITP Bagi SDM Pubah', 'ES TOEFL ITP Bagi SDM Pubah', 'Untuk meningkatkan kapasitas SDM Pusat Bahasa maka perlu adanya sertifikat English Proficiency bagi SDM Pubah', 'ES TOEFL ITP Bagi SDM Pubah', '2021-08-24', '2021-11-30', 'Univeristas', 'Kampus', '1600000', '1600000', '0', '2021-08-23', '2021-08-23'),
(371, 'PBH-11', 64, 'Pembuatan Video', 'kegiatan unggulan dan profil UPT bahasa', 'Pembuatan Video kegiatan unggulan dan profil UPT bahasa', 'Pembuatan Video kegiatan unggulan dan profil UPT bahasa', 'ercapainya informasi yang jelas dan dapat dimengert', 'Pembuatan Video kegiatan unggulan dan profil UPT bahasa', '2021-04-01', '2021-04-30', 'Ruang bahasa', 'Kampus', '1500000', '1500000', '0', '2021-08-23', '2021-08-23'),
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
(384, 'MTL - 49', 112, 'Semua modul praktikum yang ada dibuat interaktif dan adaptif untuk digunakan di masa pandemi', 'Tersusunnya seluruh modul praktikum', 'Pengembangan Modul Praktikum yang adaptif di masa pandemi', 'Pengembangan Modul Praktikum yang adaptif di masa pandemi', 'Akan dibentuk Tim Pengembangan Modul Praktikum sesuai dengan rumpun keilmuan dosen. Nantinya tim akan mengevaluasi modul praktikum yang sudah ada dan mengembangkan emodul praktikum yang baru yang interaktif dan adaptif digunakan di masa pandemi sekalipun.', 'Mengevaluasi modul praktikum yang telah ada', '2021-08-01', '2021-08-31', 'UTS', 'kampus', '500000', '500000', '0', '2021-08-26', '2021-08-26'),
(385, 'MTL - 51', 112, 'Mahasiswa mampu memahami sekaligus melakukan praktek bagaimana cara ekstraksi logam', 'Mahasiswa mampu melakukan praktek mandiri.', 'Praktikum Metalurgi Ekstraksi', 'Praktikum Metalurgi Ekstraksi', 'Praktikum metalurgi ekstraksi akan dilakukan di lab.kimia. Peserta yang hadir dari 2 kelas angkatan 2018. praktikum akan dibagi menjadi 4 kelompok yang terdiri dari kelompok ekstraksi besi, mangan, Silika, dan tembaga.', 'Kegiatan Praktikum ini bertujuan untuk menambah skill bagi mahasiswa dalam proses pengolahan logam.', '2021-04-01', '2021-04-30', 'Lab. Kimia', 'kampus', '2000000', '2000000', '0', '2021-08-26', '2021-08-26'),
(386, 'MTL - 52', 112, 'mahasiswa memahami setiap langkah percobaan/praktikum yang dilakukan', 'Mahasiswa mampu memahami proses dan reaksi kimia yang terjadi pada setiap acara yang dipraktekkan', 'Praktikum Kimia', 'Praktikum Kimia', 'Mahasiswa dibagi dalam beberapa kelompok dan akan mempraktekkan semua acara yang ada pada modul praktikum di laboratorium Kimia', 'Untuk memenuhi kompetensi pada MK Kimia', '2021-05-01', '2021-05-31', 'Lab. Kimia', 'kampus', '2000000', '2000000', '0', '2021-08-26', '2021-08-26'),
(387, 'MTL - 59', 112, 'Kurikulum baru program studi teknik metalurgi tersosialisasikan kepada mahasiswa, dosen dan stakeholder.', 'Acara Sosialisasi dihadiri oleh perwakilan mahasiswa tiap angkatan, dosen dan stakeholder.', 'Sosialisasi Kurikulum Baru Prodi Teknik Metalurgi \"Merdeka Belajar Kampus Merdeka\"', 'Sosialisasi Kurikulum Baru Prodi Teknik Metalurgi \"Merdeka Belajar Kampus Merdeka\"', 'Kegiatan akan dihadiri oleh seluruh civitas akademika yang ada di lingkungan prodi teknik metalurgi dan juga stakeholder. Pada kesempatan ini kaprodi dan jajaran memaparkan kurikulum baru yang akan diberlakukan sehingga para peserta yang hadir dapat lebih mengenal kurikulumnya dan dapat merencanakan perkuliahan dengan baik. Pada kegiatan ini juga diharapkan prodi dapat memperoleh umpan balik dari peserta yang hadir untuk menyempurnakan kuruikulum kedepannya.', 'Merdeka belajar merdeka kampus', '2021-02-01', '2021-08-31', 'Raberas Resto', 'Kampus', '1500000', '1500000', '0', '2021-08-26', '2021-08-26'),
(388, 'MTL - 60', 112, 'Dokumen Rencana Strategis Program Studi Teknik Metalurgi tersosialisasikan kepada civitas akademika di lingkungan prodi Teknik Metalurgi dan stakeholder.', 'Dokumen Rencana SStrategis Program Studi Teknik Metalurgi tersosialisasikan kepada civitas akademika di lingkungan prodi Teknik Metalurgi dan stakeholder.', 'Sosialisasi Dokumen Rencana Strategis Prodi Teknik Metalurgi Periode 2021-2025', 'Sosialisasi Dokumen Rencana Strategis Prodi Teknik Metalurgi Periode 2021-2025', 'Kegiatan akan dihadiri oleh seluruh civitas akademika yang ada di lingkungan prodi teknik metalurgi dan juga stakeholder. Pada kesempatan ini kaprodi dan jajaran akan memaparkan dokumen Rencana Strategis Prodi Teknik Metalurgi periode 2021-2025 sehingga para peserta yang hadir dapat lebih memahami rencana strategis dari Prodi teknik Metalurgi. Pada kegiatan ini juga diharapkan prodi dapat memperoleh umpan balik dari peserta yang hadir untuk menyempurnakan dokumen yang disosialisasikan.', 'mensosialisasikan Renstra Prodi Teknik Metalurgi Periode 2021-2025 kepada seluruh civitas akademika', '2021-05-01', '2021-05-31', 'RM . Goa', 'kampus', '1500000', '1500000', '0', '2021-08-26', '2021-08-26'),
(389, 'MTL - 61', 112, 'Semua Dosen dan Tendik di lingkungan Teknik Metalurgi mampu memahami dan  menjalanankan SPMI dengan baik', 'Dosen dan Tendik Memahami SPMI.', 'Sosialisasi Sistem Penjaminan Mutu Di Tingkat Prodi', 'Sosialisasi Sistem Penjaminan Mutu Di Tingkat Prodi', 'Kegiatan akan dihadiri oleh seluruh dosen di teknik metalurgi, kegiatan sosialisasi ini akan dilakukan oleh sekpro sebagai penjamin SPMI di tingkat prodi dan nanti akan diundang pihak BPMA sebagai pendamping.', 'Kegiatan Ini bertujuan untuk terciptanya sistem yang baik di lingkungan Teknik Metalurgi.', '2021-07-01', '2021-07-31', 'UTS', 'Kampus', '500000', '500000', '0', '2021-08-26', '2021-08-26'),
(390, 'MTL - 77', 112, 'Adanya peningkatan kemampuan mahasiswa dalam penggunaan Sotfware yang berkaitan dengan proses metalurgi.', 'Mahasiswa menguasai penggunaan berbagai software dengan melalukan kegiatan post tes diakhir kegiatan pelatihan', 'Pelatihan Software (Ansys, Origin, Mendeley/Zotero, Reitica (XRD), ImageJ (SEM, MO, TEM)', 'Pelatihan Software (Ansys, Origin, Mendeley/Zotero, Reitica (XRD), ImageJ (SEM, MO, TEM)', 'Merupakan rangkaian acara yang terdiri pelatihan software bagi seluruh mahasiswa Metalurgi', 'bertujuan untuk meningkatkan kemampuan Mahasiswa dalam menguasai software', '2021-08-01', '2021-08-31', 'UTS', 'kampus', '2000000', '2000000', '0', '2021-08-26', '2021-08-26'),
(391, 'MTL - 83', 112, 'Meningkatkan Skill \" Metallurgy Process\"', 'Peserta yang mengikuti perlombaan minimal semester IV.', 'Student Competation Matallurgy Process (SCMP) 2021 (Paper Compitation)', 'Student Competation Matallurgy Process (SCMP) 2021 (Paper Compitation)', 'Merupakan rangkaian acara yang terdiri dari kompetisi paper antar mahasiswa dan seminar seputar proses pada metalurgi di tingkat Program studi sebelum mengikuti kompetensi IPM yang diselenggarakan oleh Himpunan Metallurgi Se-Indonesia Setiap Bulan November 2021', 'untuk meningkatkan kamampuan mahasiswa dalam membuat paper dan processing.', '2021-09-01', '2021-09-30', 'UTS', 'Kampus', '2000000', '2000000', '0', '2021-08-26', '2021-08-26'),
(392, 'MTL - 95', 112, 'Menjalin kembali silaturrahmi antar mahasiswa, seluruh civitas dan Alumni', 'Peserta yang hadir berasal dari mahasiswa aktif berbagai angkatan, dosen, tendik, stakeholder dan alumni.', 'HMMt Charity Days and Dies Natalis', 'HMMt Charity Days and Dies Natalis', 'Program kerja ini merupakan pre-event untuk Dies Natalis HMMt dan dalam acara ini dilakukan donor darah serta bakti sosial. Dies Natalies Himpunan Mahasiswa Teknik Metalurgi UTS', 'rtujuan menjalin tali persaudaraan dan kekeluargaan, penyaluran berbagai potensi minat dan bakat', '2021-12-01', '2021-12-31', 'UTS', 'Kampus', '2000000', '2000000', '0', '2021-08-26', '2021-08-26'),
(393, 'MTL - 101', 112, 'Peningkatan kualitas SDM', 'Dosen mengikuti pelatihan pekerti', 'Membekali dosen dengan pelatihan pekerti', 'Membekali dosen dengan pelatihan pekerti', 'Pelatihan pekerti merupakan salah satu pelatihan yang sangat berguna dalam mendukung kelancaran proses pembelajaran.  Melalui kegiatan ini SDM akan dibekali pengetahuan mengenai konsep pengembangan kurikulum, desain pemelajaran, penyusunan RPS, Keterampilan dasar mengajar dan beberapa pengetahuan lain yang akan sangat berguna untuk kemajuan Program Studi dan Dosen.', 'peningkatan kualitas SDM dalam melakukan pengembangan kurikulum hingga desain pembelajaran', '2021-03-01', '2021-03-31', 'Daring Zoom Meeting', 'kampus', '2500000', '2500000', '0', '2021-08-26', '2021-08-26'),
(394, 'TL - 01', 116, 'proses PPEPP pada setiap kegiatan yang dilakukan oleh Prodi Teknik Lingkungan secara bersama-sama', 'Kehadiran dosen dalam setiap rapat mencapai 80%', 'Rapat (rutin) Prodi', 'Rapat (rutin) Prodi', 'Rapat Program Studi merupakan kegiatan rutin yang dilaksanakan setiap Jum\'at ke-3 di setiap bulannya. Pada rapat ini dibahas mulai dari perencanaan proker, progres proker hingga evaluasi terhadap kegiatan yang sudah berjalan.', 'Mempererat silaturrahim dan menjaga ritme organisas', '2021-08-01', '2022-08-31', 'UTS', 'Kampus', '500000', '500000', '0', '2021-08-26', '2021-09-06'),
(395, 'TL - 02', 116, 'Data yang ada di program Studi Teknik Lingkungan dapat tersusun dengan rapi', 'Terbentuknya tim penyusun dokumen Kurikulum MBKM', 'Pelatihan Visualisasi Data Menggunakan Infografis/ Google Data Studio', 'Pelatihan Visualisasi Data Menggunakan Infografis/ Google Data Studio', 'Kegiatan ini merupakan kegiatan pelatihan atau workshop yang diisi oleh mentor yang akan mengajarkan bagaimana mengolah dan memvisualisasikan data ke dalam bentuk infografis menggunakan Google data Studio. Sasaran kegiatan adalah para dosen di Prodi Teknik Lingkungan dan Perwakilan Himpunan Mahasiswa Teknik Lingkungan UTS', 'Merapikan dan mengolah data Prodi Teknik Lingkungan sehingga dapat divisualisasikan', '2021-11-21', '2021-11-22', 'UTS', 'kampus', '500000', '500000', '0', '2021-08-26', '2021-08-26'),
(396, 'TL - 03', 116, 'Tersusunnya RKAT 2022 dan Laporan Tahunan 2021', 'Tersusunnya RKAT untuk Tahun 2022', 'Rapat Kerja dan Evaluasi Pencapaian Tahunan', 'Rapat Kerja dan Evaluasi Pencapaian Tahunan', 'Kegiatan ini merupakan rapat tahunan yang dapat digunakan oleh seluruh dosen diProdi Teknik Lingkungan untuk menyusun rencana kerja selama satu tahun ke depan dan mengevaluasi capaian selama satu tahun ke belakang.', 'Menyusun Rencana Kerja Tahunan serta melakukan evaluasi terhadap pencapaian tahunan', '2021-12-21', '2021-12-23', 'UTS', 'kampus', '500000', '500000', '0', '2021-08-26', '2021-08-26'),
(397, 'TL - 04', 116, 'Program Studi Teknik Lingkungan Memiliki Dokumen Kurikulum Merdeka Belajar Kampus Merdeka (MBKM)', 'Terbentuknya tim penyusun dokumen Kurikulum MBKM', 'Penyusunan Dokumen Kurikulum MBKM', 'Penyusunan Dokumen Kurikulum MBKM', 'Kaprodi membentuk tim penyusun Dokumen Kurikulum yang dikukuhkan melalui SK Dekan. Setelah itu tim penyusun akan mulai melakukan tahapan (Rapat, FGD, Konsultasi dan sosialisasi) dalam penyusunan Dokumen Kurikulum MBKM', 'Menyusun Dokumen Kurikulum MBKM', '2021-09-01', '2021-11-30', 'UTS', 'Kampus', '2500000', '2500000', '0', '2021-08-26', '2021-08-26'),
(398, 'TL - 05', 116, 'Program Studi Teknik Lingkungan melanggan akun zoom premium dengan durasi 1 (satu) tahun.', 'Memiliki akun zoom premium berlangganan selama 1 (satu) tahun.', 'Pengadaan akun zoom premium berlangganan  selama 1 (satu) tahun.', 'Pengadaan akun zoom premium berlangganan  selama 1 (satu) tahun.', 'Program Studi Teknik Lingkungan melanggan akun zoom premium selama 1 (satu) tahun untuk kepentingan pendidikan di lingkungan Prodi Teknik Lingkungan.', 'Memfasilitasi prasarana yang digunakan untuk memperlancar proses pengajaran di masa pandemic', '2021-09-21', '2021-09-22', 'Kondisional', 'kampus', '1200000', '1200000', '0', '2021-08-26', '2021-08-26');
INSERT INTO `rkat` (`id_rkat`, `kode_rkat`, `id_user`, `sasaran_strategi`, `indikator_sasaran_strategi`, `nama_program`, `program_kerja`, `deskripsi`, `tujuan`, `mulai_program`, `selesai_program`, `tempat`, `sumber_anggaran`, `rencara_anggaran`, `total_anggaran`, `anggaran_digunakan`, `created_at`, `updated_at`) VALUES
(399, 'TL - 06', 116, 'Peningkatan kualitas SDM di Prodi Teknik Lingkungan', 'Dosen mengikuti pelatihan pekerti', 'Membekali dosen dengan pelatihan pekerti', 'Membekali dosen dengan pelatihan pekerti', 'Pelatihan pekerti merupakan salah satu pelatihan yang sangat berguna dalam mendukung kelancaran proses pembelajaran.  Melalui kegiatan ini SDM akan dibekali pengetahuan mengenai konsep pengembangan kurikulum, desain pemelajaran, penyusunan RPS, Keterampilan dasar mengajar dan beberapa pengetahuan lain yang akan sangat berguna untuk kemajuan Program Studi dan Dosen.', 'Kegiatan ini bertujuan agar adanya peningkatan kualitas SDM', '2021-10-21', '2021-10-22', 'Online Zoom', 'kampus', '2300000', '2300000', '0', '2021-08-26', '2021-08-26'),
(400, 'TL - 07', 116, 'Mendukung Pengembangan kapasitas SDM dengan mengikuti kegiatan-kegiatan pelatihan terkait Lingkungan Hidup', 'da dosen yang mengikuti pelatihan terkait Lingkungan Hidup', 'Pemberian Subsidi kepada dosen yang akan mengikuti Pelatihan', 'Pemberian Subsidi kepada dosen yang akan mengikuti Pelatihan', 'Program Studi memberikan subsidi kepada para dosen yang akan mengikuti diklat mengenai topik-topik Lingkungan Hidup yang sesuai dengan kompetensi prodi sebagai bentuk penguatan kapasitas terhadap SDM yang ada di Prodi Teknik Lingkungan.', 'Untuk Mengembangkan kapasitas Dosen yang ada di Prodi Teknik Lingkungan', '2021-09-21', '2021-09-22', 'UTS', 'kampus', '2500000', '2500000', '0', '2021-08-26', '2021-08-26'),
(401, 'FRS-05', 111, 'Insentif Maneger Fakultas', 'Insentif Maneger Fakultas', 'Insentif Maneger Fakultas', 'Insentif Maneger Fakultas', 'Tunjangan Bagi maneger di tingkat fakultas yang telah melaksanakan tugas dan fungsi dengan baik', 'Insentif Maneger Fakultas', '2021-08-01', '2022-02-28', 'Ruang. FRS', 'Kampus', '3600000', '3600000', '0', '2021-08-27', '2021-08-27'),
(402, 'INF-29', 84, 'Persiapan Akreditasi Jurnal Prodi (JINTEKS)', 'Terjwujudnya Jurnal Prodi sebagai jurnal Terakreditasi dan Bereputasi', 'Melakukan Akreditasi Jurnal untuk meningkatkan Branding Jurnal Prodi dan Program Studi', 'Melakukan Akreditasi Jurnal untuk meningkatkan Branding Jurnal Prodi dan Program Studi', 'kegiatan ini diperuntukan untuk mempersiapkan Jurnal Informatika, teknologi & Sains sebagai jurnal terakreditasi dan bereputasi minimal skala nasional', 'Meningkatkan Branding Jurnal Prodi Melaui akreditasi jurnal', '2021-09-01', '2021-09-30', 'Arjuna RISTEKDIKTI', 'Kampus', '4000000', '4000000', '0', '2021-09-07', '2021-09-07'),
(403, 'INF-30', 84, 'Dosen dalam dan luar perguruan tinggi', 'seminar nasional terselenggara dengan sukses', 'Melakukan Akreditasi Jurnal untuk meningkatkan Branding Jurnal Prodi dan Program Studi', 'Melakukan Akreditasi Jurnal untuk meningkatkan Branding Jurnal Prodi dan Program Studi', 'kegiatan ini diselenggarakan untuk meningkatkan branding jurnal program studi sehingga dapat meningkatkan partisipasi external untuk publikasi di jurnal prodi untuk kepentingan akreditasi jurnal', 'branding jurnal program studi (JINTEKS)', '2021-10-01', '2021-10-31', 'desa di kecamatan moyo hulu', 'Kampus', '5000000', '5000000', '0', '2021-09-07', '2021-09-07'),
(404, 'INF-36', 84, 'Dosen tetap Aktif Progrm Studi', 'Adanya Dosen Program studi yang memiliki sertifikat Profesioan sebagai asesor sesuai bidang konsentrasi', 'Sertifikasi Keahlian Dosen', 'Sertifikasi Keahlian Dosen', 'kegiatan ini untuk meningkatkan jumlah dosen yang memiliki sertifikat keahlian sesuai dengan bidang kompetensi', 'Mempersiapkan Asesor Sertifikasi keahlian Internal prodi', '2021-04-01', '2021-12-31', 'Opsional', 'Kampus', '9500000', '9500000', '0', '2021-09-07', '2021-09-07'),
(405, 'INF-56', 84, 'Optimalisasi Tempat Penyimpanan Perangkat Praktikum Non Komputer', 'Tersedianya Media Penyimpanan Perangkat Praktikum Non Komputer', 'Optimalisasi Tempat Penyimpanan Perangkat Praktikum untuk meningkatkan Keamanan Perangkat', 'Optimalisasi Tempat Penyimpanan Perangkat Praktikum untuk meningkatkan Keamanan Perangkat', 'program ini dilakukan untuk meningkatkan keamanan dan kerapian penyimpanan perangkat praktikum sehingga dapat digunakan dalam jangka waktu yang lama', 'meningkatkan keamanan penyimpanan perangkat praktikum', '2021-04-01', '2021-04-30', 'Lab. Komputer Dasar', 'kampus', '3500000', '3500000', '0', '2021-09-07', '2021-09-07'),
(406, 'INF-70', 84, 'Siswa siswi SMA / SMK se Pulau Sumbawa', '1. siswa SMA / SMK tertarik melanjutkan studi pada prodi informatika. 2.Siswa SMA - SMK tertarik belajar ilmu informatika. 3.Animo calon mahasiswa untuk masuk prodi Teknik Informatika meningkat', 'IT Bootcamp dan Kompetisi Programming dan Jaringan Tingkat SMA / SMK se Pulau Sumbawa', 'IT Bootcamp dan Kompetisi Programming dan Jaringan Tingkat SMA / SMK se Pulau Sumbawa', 'Program ini diadakan untuk meningkatkat branding prodi di masyarakat khususnya pada siswa siswi SMA/SMK sehingga dapat meningkatkan animo Calon mahasiswa untuk masuk program Studi Teknik Informatika', 'Branding Program Studi dan Meningkatkan Animo Calon Mahasiswa terhadao program studi', '2021-05-01', '2021-05-31', 'UTS', 'kampus', '7000000', '7000000', '0', '2021-09-07', '2021-09-07'),
(407, 'INF-71', 84, 'Desa desa  di kecamatan Moyo Hulu', 'Informatika Goes To Desa', 'Penyuluhan Pemanfaatan Teknologi Informasi pada Pemerintahan Desa', 'Penyuluhan Pemanfaatan Teknologi Informasi pada Pemerintahan Desa', 'Kegiatan ini diselenggarakan untuk meningkatkan partisipasi dosen program studi teknik Informatika dalam Pengembangan dan Penerapan Teknologi Informasi pada Tingkat Desa', 'meningkatkan Branding Image Prodi di Masyarakat', '2021-07-01', '2021-07-31', 'Opsional', 'kampus', '1500000', '1500000', '0', '2021-09-07', '2021-09-07'),
(408, 'INF-72', 84, 'Prodi & Himpunan Mahasiswa Teknik Informatika (HMTI)', 'Kegiatan FGD prodi HMTI dan Seluruh Koordinator Kelas dapat terselenggara', 'FGD program studi dengan HMTI untuk membuka ruang diskusi antara program studi dengan mahasiswa', 'FGD program studi dengan HMTI untuk membuka ruang diskusi antara program studi dengan mahasiswa', 'kegiatan ini diselenggarakan untuk meminimalisir mis persepsi antara program studi dengan mahasiswa terkait arah pengembangan program studi', 'penyamaan persepsi prodi dengan organisasi mahasiswa program studi', '2021-04-01', '2021-04-30', 'Opsional', 'kampus', '3000000', '3000000', '0', '2021-09-07', '2021-09-07'),
(409, 'INF-80', 84, 'Mahasiswa Aktif program Studi Informatika', 'Banyaknya Inovasi mahasiswa untuk mengembangkan perangkat Teknologi Informasi', 'Pameran Produk IT Gemilang', 'Pameran Produk IT Gemilang', 'kegiatan ini diadakan untuk meningkatkan motivasi mahasiswa dalam mengembangkan produk Teknologi informasi sehingga dapat meningkatkan lulusan prodi Teknik informatika yang mampu bersaing', 'memotivasi dan meningkatkan kemampuan serta inovasi mahasiswa dalam mengembangkan produk IT', '2021-08-01', '2021-08-31', 'opsional', 'kampus', '2500000', '2500000', '0', '2021-09-07', '2021-09-07'),
(410, 'INF-85', 84, 'Mahasiswa Aktif program Studi Informatika', 'Ada mahasiswa prodi Teknik informatika yang ikut kompetisi nasional sesuai bidang keilmuan', 'Kompetisi Mahasiswa Nasional Bidang Informatika', 'Kompetisi Mahasiswa Nasional Bidang Informatika', 'Program ini diadakan untuk mempersiapkan mahasiswa program studi Teknik Infornatika untuk mengikuti Kompetisi Nasional dalam bidang keilmuan Informatika untuk meningkatkan Branding Program Studi', 'Mempersiapkan Mahasiswa / Tim Mahasiswa untuk ikut Kompetisi Nasional dalam bidang ilmu Informatika', '2021-03-01', '2021-12-31', 'Optional', 'Kampus', '3500000', '3500000', '0', '2021-09-07', '2021-09-07'),
(411, 'INF-93', 84, 'perwakilan Mahasiswa setiap angkatan dan semua mahasiswa yang mengambil matakuliah Basis Data', 'Mahasiswa memahami Potensi, standar & konsep peluang Teknologi Data', 'Kuliah Tamu Tentang Teknologi Data dan Penerapannya pada Dunia Industri Univ. AMIKOM Yogyakarta', 'Kuliah Tamu Tentang Teknologi Data dan Penerapannya pada Dunia Industri Univ. AMIKOM Yogyakarta', 'Kuliah tamu ini diadakan untuk memberikan motivasi dan pemahaman kepada mahasiswa akan pentingnya teknologi data serta trend perkembangan teknologi Informasi, Teknogi data , data science dan BiG Data dimasa yang akan Datang', 'Membuka Wawasan serta meningkatkan pemahaman mahasiswa terhadap perkembangan Teknologi', '2021-03-01', '2021-03-31', 'STP R.multimedia', 'kampus', '3000000', '3000000', '0', '2021-09-07', '2021-09-07'),
(412, 'INF-94', 84, 'Mahasiswa Angkatan 2017dan 2018 yang akan program Skripsi', 'Standar naskah Publikasi Ilmiah mahasiswa Meningkat', 'Pelatihan Penulisan Jurnal untuk mahasiswa', 'Pelatihan Penulisan Jurnal untuk mahasiswa', 'kegiatan ini diadakan untuk meningkat kualitas naskah publikasi mahasiswa sehingga siap dipublikasi pada jurnal jurnal ilmiah nasional', 'Meningkatkan kualitas naskah publikasi ilmiah mahasiswa yang akan mengambil program skripsi', '2021-03-01', '2021-07-31', 'Gd. Newmont', 'kampus', '1000000', '1000000', '0', '2021-09-07', '2021-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `struktur`
--

CREATE TABLE `struktur` (
  `id_struktur` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `nama_struktur` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `struktur`
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
-- Table structure for table `struktur_child1`
--

CREATE TABLE `struktur_child1` (
  `id_struktur_child1` int(11) NOT NULL,
  `id_struktur` int(11) NOT NULL,
  `child1_level` int(11) NOT NULL,
  `nama_struktur_child1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `struktur_child1`
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
(24, 12, 0, 'UPT. CDC'),
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
(47, 4, 0, 'Fakultas Rekayasa Sistem');

-- --------------------------------------------------------

--
-- Table structure for table `struktur_child2`
--

CREATE TABLE `struktur_child2` (
  `id_struktur_child2` int(11) NOT NULL,
  `id_struktur_child1` int(11) NOT NULL,
  `nama_struktur_child2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `struktur_child2`
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
(87, 47, '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `fullname`, `password`, `id_struktur`, `id_struktur_child1`, `id_struktur_child2`, `email`, `nomor_wa`, `created_at`, `updated_at`) VALUES
(21, 'Sekniv', '$2y$10$rYcZbxwQ0/ZnQ7kX/KTs7OuT68HdFIEq8aOc3sLL8fVN62RvjOV.6', 1, 7, 28, 'sekniv@uts.ac.id', '082340127131', '2021-03-28 17:49:34', '2021-08-24 07:45:06'),
(22, 'Rektor', '$2y$10$QbP6Qxm5iVbwLieqe0BrXeluJTdQzC9lyfppBiBnAxfI4gIEirdh.', 2, 8, 29, 'rektor@uts.ac.id', '980', '2021-03-28 17:49:34', '2021-08-05 08:05:56'),
(23, 'Warek II Keuangan', '$2y$10$496tlwFutLRd4AXYryhphO/sCmlRPQ24DXzy2JqU0PpOxoKgKY2Jq', 3, 9, 30, 'warek2@uts.ac.id', '980', '2021-03-28 17:49:34', '2021-08-30 03:15:42'),
(24, 'Direktur Keuangan', '$2y$10$/JlEjjQQKK8/zpBwT6iHOO1qq3uf9q/ROW4WEVr4tDThv.d5ToHeS', 3, 26, 48, 'direktorat.keuangan@uts.ac.id', '082139193132', '2021-03-28 17:49:34', '2021-08-06 07:46:20'),
(53, 'Direktorat Akademik', '$2y$10$ASAKtC5eSsxemtFUNfyFR.UHcBZ5wZENwV9qYvH7cPDGYFBnvThuy', 12, 17, 39, 'direktorat.akademik@uts.ac.id', '7867687', '2021-07-25 16:05:05', '2021-08-18 07:46:10'),
(54, 'Fakultas Ilmu Komunikasi', '$2y$10$hWX7i7QclW/mfGDbV5w7y.xcQSDdsRDDs2mY2VqbehBsCXyPfaSq.', 4, 44, 81, 'fikom@uts.ac.id', '67876877', '2021-07-25 16:06:00', '2021-08-18 07:33:40'),
(55, 'Prodi Ilmu Komunikasi', '$2y$10$DOjnC8fzVE8CcVIMaEd.ZegbYjqy0bLs4uOOvC8l0oGxK7r/MD6lW', 4, 44, 82, 'ilmu.komunikasi@uts.ac.id', '687676', '2021-07-25 16:06:40', '2021-08-18 07:34:08'),
(56, 'Warek 3 Riset & Inovasi', '$2y$10$yzsNNUrDPLNFQRG1BnNGquVb9cpEZbd3Xtc5ZUmUY5EhdU6wLJOs6', 13, 12, 35, 'warek3@uts.ac.id', '3332222222222', '2021-07-26 00:56:34', '2021-07-26 00:56:48'),
(57, 'Direktorat Sistem &Teknologi Informasi', '$2y$10$4tI8bE/TsfO3ounuH61KEO1EqYj4llRN5WggAUyZZ8XcfhfzTMu/i', 13, 32, 54, 'dsti@uts.ac.id', '08190000000', '2021-07-26 00:57:33', '2021-07-26 01:18:34'),
(58, 'Warek 1 Akademik', '$2y$10$pUnXKhk.YcwrW0b4mVii9OuBZEsSZS0I4U8aMd5uxmM8zx1QEYEzm', 12, 11, 34, 'warek1@uts.ac.id', '089789098', '2021-07-27 01:01:54', '2021-08-24 09:07:05'),
(60, 'Direktorat Kemahasiswaan & Alumni', '$2y$10$4yyJBOFL3nSNdVjswRjZOOqSTgskiHwwYtrbx7IH0FpfGxe1uvjs.', 12, 18, 40, 'kemahasiswaan@uts.ac.id', '08122020621', '2021-07-27 01:04:44', '2021-08-16 06:13:23'),
(61, 'Direktorat Sumber Daya Manusia', '$2y$10$ebT6XCsjrRzBTtkiUj0hiu4aHms4p7enNkterWlReQpLH.0z42pDK', 12, 19, 41, 'psdm@uts.ac.id', '231141414141241', '2021-07-27 01:07:12', '2021-07-27 01:07:13'),
(62, 'Kantor Penerimaan Mahasiswa Baru', '$2y$10$3IDGiO4nV.eiBsYUkD1Pv.h7uSCS8mmmcM5wZwDy2KZAeT9Iwo/PO', 12, 20, 42, 'pmb@uts.ac.id', '23232323232323', '2021-07-27 01:08:20', '2021-07-27 01:08:20'),
(63, 'Perpustakaan', '$2y$10$DR0N2UktB9L7a2iIGdE8bu4zZVpd4QKCdteGOuCFwc8H/I9arwAqS', 1, 21, 43, 'perpustakaan@uts.ac.id', '082341472512', '2021-07-27 01:09:08', '2021-08-10 07:27:06'),
(64, 'Pusat bahasa', '$2y$10$giHNpwXH8T.ZawWbJtweSugSRLVXdZdODw1jEPxc73IohztT34PUG', 1, 22, 44, 'pusat.bahasa@uts.ac.id', '211312311231', '2021-07-27 01:09:58', '2021-08-10 06:49:50'),
(65, 'Public Speaking', '$2y$10$nrVI0DAp/MBxlHIjsSVKZO4CMn0Jnuz5N124pgY6dNJkivd0XXYm.', 1, 23, 45, 'publicspeaking@uts.ac.id', '088453453435', '2021-07-27 01:10:51', '2021-08-10 07:23:14'),
(67, 'Lembaga Psikologi Terapan', '$2y$10$TlDTe2jOFPn/fjaxwhMOYOTM6tELlf0HjcBmMAIbLdMJxFmSsrTWm', 1, 25, 47, 'psikologi.terapan@uts.ac.id', '081805275011', '2021-07-27 01:13:09', '2021-08-23 07:06:39'),
(68, 'Dikrektorat Pengelolaan & Pemeliharaan Fasilitas', '$2y$10$WWMD9LkT29oHd4BysEbq.OMOz9L1ukM8.msmqB7jGScMF9uF23tSS', 3, 27, 49, 'dppf@uts.ac.id', '2342342424', '2021-07-27 01:14:20', '2021-07-27 01:14:21'),
(69, 'Beasiswa', '$2y$10$nCOhQh5/2oxl/WomOUdKpOVRwi6nxc59.s2zochzcCg3cmFH2MsAS', 1, 28, 50, 'beasiswa@uts.ac.id', '0819160000000', '2021-07-27 01:14:56', '2021-08-10 07:22:30'),
(70, 'Direktorat Riset & Inovasi', '$2y$10$Oxj9e5v/jijzubiPdGF6Ie4yoyPcsF4ur0Q82PS1e3Hytu4XhxrC.', 13, 30, 52, 'riset.inovasi@uts.ac.id', '2314234234234', '2021-07-27 01:16:49', '2021-07-27 01:16:49'),
(71, 'Direktorat Pengabdian Kepada Masyarakat', '$2y$10$au5sZE5Y4frUR7dx7lRsKeunqbP6kktb0DASS31H.36H6T/dUr1ha', 13, 31, 53, 'lppm@uts.ac.id', '32424242', '2021-07-27 01:18:23', '2021-07-27 01:18:24'),
(73, 'Direktorat Kerjasama Dalam Negeri', '$2y$10$tpvyk0R13f/Fw7m5uoprYef5aNGen/G18NitWy3Qm6B63AeX3A9cu', 14, 33, 55, 'kerjasama@uts.ac.id', '234242342342342', '2021-07-27 01:20:08', '2021-08-25 06:24:48'),
(74, 'Direktorat Kerjasama Luar Negeri', '$2y$10$VRZ2yBzA0ITB3KTDJWU.iuH55ESGerMMxvOJU.B5LA64xSVDqwcna', 14, 35, 57, 'international.office@uts.ac.id', '2134134131', '2021-07-27 01:22:02', '2021-08-23 07:27:42'),
(75, 'Direktorat Perencanaan & Pengembangan Universitas', '$2y$10$kVkMKiEAewobxUhKhlig8upfINsey1ppd35sSnRDlcpETjXw5sZ/C', 14, 34, 56, 'ddpu@uts.ac.id', '34234234234', '2021-07-27 01:23:18', '2021-07-27 01:23:18'),
(76, 'Badan Penjamin Mutu Akademik', '$2y$10$l36FKjdjAEJGO0gneqkXkuTLSLOeahb5TLiNtjr1qJy4QKOlcDaLm', 15, 14, 37, 'bpma@uts.ac.id', '32234234234', '2021-07-27 01:24:26', '2021-07-27 01:24:26'),
(77, 'Badan Pengembangan Karakter & Hubungan Ortu', '$2y$10$.Pzds/1zv8nmhjrh3ZGBGOZfxWkfHdmGV50RyBqlgJgy8MIwx2QC2', 16, 15, 38, 'bpko@uts.ac.id', '23131313', '2021-07-27 01:26:19', '2021-07-27 01:26:20'),
(78, 'Sekolah Pascasarjana', '$2y$10$xjkRpedJAHbcPx9iwkvnKOKtO9GeoeZ2fl5EM2FrXLHED27R5bUDu', 4, 46, 86, 'pascasarjana@uts.ac.id', '12341231231231', '2021-07-28 05:09:42', '2021-07-28 05:09:42'),
(79, 'Fakultas Ekonomi & Bisnis', '$2y$10$74FcrQSotgOy3I5dJzyku.5px7rYv4eQlVUY4/H6BnX75x8hQ/jqS', 4, 43, 77, 'feb@uts.ac.id', '342342342342', '2021-07-28 05:17:14', '2021-07-28 05:17:14'),
(80, 'Fakultas Teknologi Pertanian', '$2y$10$tIYlEtWDTtwXR2M3kGeIi.FWfowaEPav26Cis5U7HpXvHciOZSBgy', 4, 42, 74, 'fateta@uts.ac.id', '456546456456', '2021-07-28 05:54:27', '2021-08-16 05:38:51'),
(81, 'Fakultas Teknobiologi', '$2y$10$vnal3v2kQP4ewL0Ick8sUeWTZ0rwB9vGJmp23gfL404DN9iyCL2VS', 4, 41, 71, 'ftb@uts.ac.id', '32242342', '2021-07-28 06:17:21', '2021-07-28 06:17:21'),
(82, 'Fakultas Psikologi', '$2y$10$h.VTx9PI0OL0hDs6Qx/ie.amohotxHFbxxj4vccefqzwxc9J.PatC', 4, 45, 83, 'fpsi@uts.ac.id', '43534534534534', '2021-07-29 00:53:56', '2021-07-29 00:53:56'),
(84, 'Informatika', '$2y$10$0ol1jWLgb2zYO10t5TJaZOw6lUIEf6GgJnzMigxEC.2kydcwcWf7O', 4, 47, 64, 'informatika@uts.ac.id', '081892898123', '2021-08-06 06:01:44', '2021-09-07 15:50:17'),
(85, 'Industri', '$2y$10$OPGJYoTXIy0UglPlcUjJLOwqWveOi9T7WPvVPD1or/2lp7KDN11zq', 4, 47, 66, 'teknik.industri@uts.ac.id', '4523452565', '2021-08-06 06:07:40', '2021-08-06 06:07:40'),
(89, 'Fakultas Teknik Lingkugan dan Mineral', '$2y$10$7J5vvAaR2hWJX70KD9dwjuuTN/JEa9f2Z183XiWT3DMuJa3rXGi6.', 4, 40, 63, 'ftlm@uts.ac.id', '0877686786868', '2021-08-06 06:13:55', '2021-08-06 06:13:55'),
(96, 'Teknik Elektro', '$2y$10$prIeDsEu3.cFxXUsVyU8o.IuXZF/O89/rgH8ft8KQTtWrZ1g0UVqW', 4, 47, 67, 'teknik.elektro@uts.ac.id', '54754745745645', '2021-08-06 06:18:01', '2021-08-06 06:18:01'),
(97, 'Teknik Mesin', '$2y$10$dg8.4qEuAV4s.7gnbF3MX.xfX5KHClW/.wPJbp2fj.KnbnGc/Bpbi', 4, 47, 68, 'teknik.mesin@uts.ac.id', '087827391783', '2021-08-06 06:18:53', '2021-08-06 06:18:54'),
(111, 'Fakultas Rekayasa Sistem', '$2y$10$bcJR.6ZW7pSwPKVuvGAm6ufo.UDwlztU8tJ1Hax.vKCAw3yS.JqT.', 4, 47, 87, 'frs@uts.ac.id', '081928346456', '2021-08-06 06:42:06', '2021-08-27 02:58:19'),
(112, 'Metalurgi', '$2y$10$eq5Z51OQ6WtMzsHssi3QAeguA6H39dMKNRtYtrKZWVKBGeYaGxRoy', 4, 40, 65, 'metalurgi@uts.ac.id', '0877346346', '2021-08-06 06:55:37', '2021-08-06 06:55:37'),
(113, 'Asrama', '$2y$10$VX4IgYlpFyhF8scv4sfhU.zwwIE5ip9OiRVS9TV12/sjDu39Vn2zu', 1, 29, 51, 'asrama@uts.ac.id', '081237455553', '2021-08-10 07:21:32', '2021-08-10 07:21:36'),
(114, 'UPT  Career Development Center', '$2y$10$d1koKTboubq4f/G9IleZ9eNxceqWliD4cfnvWBycuK3yXy.Pi4ulG', 2, 24, 46, 'upt.cdc@uts.ac.id', '08122020621', '2021-08-16 08:19:41', '2021-08-18 03:25:34'),
(115, 'Teknik Sipil', '$2y$10$npc/KE33lJzGZXjzanNrnuiQ.K8E6xHUD3d.aFwCXnO1kdD7dEdY.', 4, 40, 69, 'teknik.sipil@uts.ac.id', '089780290000', '2021-08-26 01:57:15', '2021-08-26 01:57:15'),
(116, 'Teknik Lingkungan', '$2y$10$rgQxoRMEVtUSIGcPNTVnFeUCG3eesMNT/T6IpOpDPGHJhT7fft022', 4, 40, 70, 'teknik.lingkungan@uts.ac.id', '0876767676767', '2021-08-26 04:25:30', '2021-08-26 07:24:22'),
(117, 'Warek IV Kerjasama', '$2y$10$AXZ0dszfUIlBG8htIEcF/O0FQ9Fac8wNUIXMFZv2El//ZJlH3dHMa', 14, 13, 36, 'warek4@uts.ac.id', '08078078070', '2021-08-27 05:42:09', '2021-08-31 09:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `validasi`
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
-- Dumping data for table `validasi`
--

INSERT INTO `validasi` (`id_validasi`, `id_pengajuan_history`, `id_struktur`, `status_validasi`, `message`, `created_at`, `updated_at`) VALUES
(252, 264, 114, 1, 'UPT  Career Development Center - Input pengajuan', '2021-08-18 03:29:07', '2021-08-18 03:29:07'),
(256, 268, 61, 1, 'Direktorat Sumber Daya Manusia - Input pengajuan', '2021-08-19 06:31:22', '2021-08-19 06:31:22'),
(257, 269, 61, 1, 'Direktorat Sumber Daya Manusia - Input pengajuan', '2021-08-19 06:38:25', '2021-08-19 06:38:25'),
(258, 270, 58, 2, 'Warek 1 Akademik - ', '2021-08-19 07:34:11', '2021-08-19 07:34:11'),
(259, 271, 58, 2, 'Warek 1 Akademik - ', '2021-08-19 07:35:31', '2021-08-19 07:35:31'),
(260, 272, 57, 1, 'Direktorat Sistem &Teknologi Informasi - Input pengajuan', '2021-08-20 01:38:38', '2021-08-20 01:38:38'),
(262, 274, 24, 2, 'Direktur Keuangan - silahkan dilengkapi daftar panitia dan peserta yang 30 orang ', '2021-08-23 03:37:31', '2021-08-23 03:37:31'),
(263, 275, 24, 2, 'Direktur Keuangan - mohon dilengkapi nama2 asesor dll ', '2021-08-23 03:40:31', '2021-08-23 03:40:31'),
(264, 276, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2021-08-23 05:37:35', '2021-08-23 05:37:35'),
(265, 277, 58, 0, 'Warek 1 Akademik - 1. harus tetap ada KAK dari direktorat kemahasiswaan; 2. di RAB perlu ditulis anggaran untuk kegiatan di RKAT berapa, trus berapa yang sudah dan rencana digunakan, dan sisanya', '2021-08-24 09:21:11', '2021-08-24 09:21:11'),
(270, 282, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2021-08-26 01:35:36', '2021-08-26 01:35:36'),
(271, 283, 58, 2, 'Warek 1 Akademik - ', '2021-08-26 01:40:25', '2021-08-26 01:40:25'),
(273, 285, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2021-08-26 01:59:38', '2021-08-26 01:59:38'),
(274, 286, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2021-08-26 03:07:05', '2021-08-26 03:07:05'),
(275, 287, 24, 2, 'Direktur Keuangan - ', '2021-08-26 07:43:51', '2021-08-26 07:43:51'),
(276, 288, 57, 1, 'Direktorat Sistem &Teknologi Informasi - Input pengajuan', '2021-08-27 03:45:14', '2021-08-27 03:45:14'),
(279, 291, 73, 1, 'Direktorat Kerjasama Dalam Negeri - Input pengajuan', '2021-08-27 06:00:53', '2021-08-27 06:00:53'),
(280, 292, 58, 2, 'Warek 1 Akademik - ', '2021-08-27 08:04:08', '2021-08-27 08:04:08'),
(281, 293, 58, 2, 'Warek 1 Akademik - ', '2021-08-27 08:06:08', '2021-08-27 08:06:08'),
(282, 294, 24, 2, 'Direktur Keuangan - ', '2021-08-30 03:59:30', '2021-08-30 03:59:30'),
(283, 295, 24, 2, 'Direktur Keuangan - ', '2021-08-30 04:18:13', '2021-08-30 04:18:13'),
(284, 296, 117, 2, 'Warek VI Kerjasama - Disetujui oleh Plt WR4 a.n. Abdul Hadi Ilman', '2021-08-31 02:47:11', '2021-08-31 02:47:11'),
(285, 297, 24, 2, 'Direktur Keuangan - mohon dirincikan penggunaan dana dari masing-masing, misal untuk konsumsi, transportasi dll ', '2021-08-31 03:33:19', '2021-08-31 03:33:19'),
(286, 298, 23, 2, 'Warek II Keuangan - ', '2021-08-31 07:21:52', '2021-08-31 07:21:52'),
(287, 299, 23, 2, 'Warek II Keuangan - ', '2021-08-31 07:30:31', '2021-08-31 07:30:31'),
(288, 300, 23, 0, 'Warek II Keuangan - pemateri  siapa? mc siapa? ', '2021-08-31 07:34:57', '2021-08-31 07:34:57'),
(289, 301, 23, 2, 'Warek II Keuangan - ', '2021-08-31 07:37:14', '2021-08-31 07:37:14'),
(290, 302, 23, 0, 'Warek II Keuangan - kenapa harus ada konsumsi? bukannya zoom?', '2021-08-31 07:40:07', '2021-08-31 07:40:07'),
(291, 303, 23, 0, 'Warek II Keuangan - harus ada surat pengantar/pengajuan, KAK/TOR, jangan hanya RAB saja. ', '2021-08-31 07:45:59', '2021-08-31 07:45:59'),
(295, 307, 71, 1, 'Direktorat Pengabdian Kepada Masyarakat - Input pengajuan', '2021-09-01 03:11:38', '2021-09-01 03:11:38'),
(296, 308, 64, 1, 'Pusat bahasa - Input pengajuan', '2021-09-01 05:46:03', '2021-09-01 05:46:03'),
(297, 309, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2021-09-01 05:57:08', '2021-09-01 05:57:08'),
(298, 310, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2021-09-01 06:03:50', '2021-09-01 06:03:50'),
(299, 311, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2021-09-01 06:08:47', '2021-09-01 06:08:47'),
(300, 312, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2021-09-01 06:14:20', '2021-09-01 06:14:20'),
(301, 313, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2021-09-01 06:19:00', '2021-09-01 06:19:00'),
(302, 314, 22, 2, 'Rektor - ', '2021-09-01 06:23:49', '2021-09-01 06:23:49'),
(303, 315, 22, 2, 'Rektor - ', '2021-09-01 06:26:06', '2021-09-01 06:26:06'),
(304, 316, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2021-09-01 06:26:55', '2021-09-01 06:26:55'),
(305, 317, 22, 2, 'Rektor - ', '2021-09-01 06:28:01', '2021-09-01 06:28:01'),
(306, 318, 56, 2, 'Warek 3 Riset & Inovasi - lanjutkan', '2021-09-01 06:46:25', '2021-09-01 06:46:25'),
(307, 319, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2021-09-01 07:05:36', '2021-09-01 07:05:36'),
(308, 320, 89, 1, 'Fakultas Teknik Lingkugan dan Mineral - Input pengajuan', '2021-09-01 07:09:43', '2021-09-01 07:09:43'),
(309, 321, 80, 1, 'Fakultas Teknologi Pertanian - Input pengajuan', '2021-09-01 08:42:43', '2021-09-01 08:42:43'),
(310, 322, 21, 0, 'Sekniv - Rekening Pencairan menggunakan Rekening unit', '2021-09-02 02:37:14', '2021-09-02 02:37:14'),
(311, 323, 64, 1, 'Pusat bahasa - Update pengajuan', '2021-09-02 02:45:43', '2021-09-02 02:45:43'),
(312, 324, 53, 1, 'Direktorat Akademik - Input pengajuan', '2021-09-02 03:15:19', '2021-09-02 03:15:19'),
(314, 326, 21, 2, 'Sekniv - ', '2021-09-06 03:49:53', '2021-09-06 03:49:53'),
(315, 327, 60, 1, 'Direktorat Kemahasiswaan & Alumni - Input pengajuan', '2021-09-06 05:09:53', '2021-09-06 05:09:53'),
(316, 328, 24, 2, 'Direktur Keuangan - ', '2021-09-06 05:45:32', '2021-09-06 05:45:32'),
(317, 329, 24, 2, 'Direktur Keuangan - ', '2021-09-06 06:27:43', '2021-09-06 06:27:43'),
(318, 330, 24, 2, 'Direktur Keuangan - mohon untuk dirincikan nama-nama dosen yang menerima dana talangan publikasi', '2021-09-06 06:31:59', '2021-09-06 06:31:59'),
(319, 331, 24, 2, 'Direktur Keuangan - ', '2021-09-06 06:34:03', '2021-09-06 06:34:03'),
(320, 332, 24, 2, 'Direktur Keuangan - ', '2021-09-06 06:35:48', '2021-09-06 06:35:48'),
(321, 333, 24, 2, 'Direktur Keuangan - ', '2021-09-06 06:36:54', '2021-09-06 06:36:54'),
(322, 334, 24, 2, 'Direktur Keuangan - ', '2021-09-06 06:38:49', '2021-09-06 06:38:49'),
(323, 335, 24, 2, 'Direktur Keuangan - ', '2021-09-06 06:46:46', '2021-09-06 06:46:46'),
(324, 336, 24, 2, 'Direktur Keuangan - ', '2021-09-06 06:47:33', '2021-09-06 06:47:33'),
(325, 337, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2021-09-06 13:49:21', '2021-09-06 13:49:21'),
(326, 338, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2021-09-06 14:05:59', '2021-09-06 14:05:59'),
(327, 339, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2021-09-06 14:18:29', '2021-09-06 14:18:29'),
(328, 340, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2021-09-06 14:22:57', '2021-09-06 14:22:57'),
(329, 341, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2021-09-06 14:27:00', '2021-09-06 14:27:00'),
(330, 342, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2021-09-06 14:33:34', '2021-09-06 14:33:34'),
(331, 343, 116, 1, 'Teknik Lingkungan - Input pengajuan', '2021-09-06 14:38:20', '2021-09-06 14:38:20'),
(332, 344, 111, 1, 'Fakultas Rekayasa Sistem - Input pengajuan', '2021-09-07 08:22:08', '2021-09-07 08:22:08'),
(334, 346, 23, 0, 'Warek II Keuangan - kenapa sewa tempat bayar nya 2x padahal ditempat yang sama? siapa pelatihnya? kenapa aqua gelas jumlah harganya 250rb, padahal jumlah quantitinya hanya 1 dus saja. Booklet sebaiknya gunakan e-booklet saja. konsumsi cukup satu saja, pilih antara nasi atau kue. ', '2021-09-08 01:56:34', '2021-09-08 01:56:34'),
(335, 347, 23, 0, 'Warek II Keuangan - surat pengantar mohon di submit, untuk RAB minta yg lebih detail, mohon file dikirim dalam bentuk pdf.', '2021-09-08 02:08:20', '2021-09-08 02:08:20'),
(336, 348, 111, 1, 'Fakultas Rekayasa Sistem - Input pengajuan', '2021-09-08 02:22:17', '2021-09-08 02:22:17'),
(337, 349, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar, RAB di kirim dg file PDF, RAB minta yg lebih detail (konsumsi untuk berapa orang? perorang nya berapa?)', '2021-09-08 02:33:23', '2021-09-08 02:33:23'),
(338, 350, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar, RAB di submit dalam bentuk pdf, siapa pemateri dan mc nya? konsumsi cukup sekali saja. konsumsi rapat tidak perlu.', '2021-09-08 02:40:03', '2021-09-08 02:40:03'),
(339, 351, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar, siapa pemateri nya ? konsumsi untuk berapa orang? mohon RAB di submit dalam bentuk pdf', '2021-09-08 02:57:37', '2021-09-08 02:57:37'),
(340, 352, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar. RAB di submit dalam bentuk pdf. RAB tidak detail, rapat tim kenapa harus ada pengeluaran? siapa saja tim penyusun? berapa honor tim penyusun per-orangnya? sosialisasi kenapa harus ada pengeluaran? intinya harus dijelaskan lebih detail di RAB nya', '2021-09-08 03:00:17', '2021-09-08 03:00:17'),
(341, 353, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar, RAB di submit dalam bentuk PDF, RAB sangat tidak detail. coba buat lebih sangat detail, kenapa rapat, sosialisasi, feedback, dll harus ada pengeluaran? ', '2021-09-08 03:02:49', '2021-09-08 03:02:49'),
(342, 354, 23, 0, 'Warek II Keuangan - mohon di submit surat pengantar, RAB di submit dalam bentuk PDF, RAB sangat tidak detail. coba buat lebih sangat detail, kenapa rapat, sosialisasi, penyusunan dokumen, dll harus ada pengeluaran? ', '2021-09-08 03:04:24', '2021-09-08 03:04:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `iku_child1`
--
ALTER TABLE `iku_child1`
  ADD PRIMARY KEY (`id_iku_child1`),
  ADD KEY `id_iku_parent` (`id_iku_parent`);

--
-- Indexes for table `iku_child2`
--
ALTER TABLE `iku_child2`
  ADD PRIMARY KEY (`id_iku_child2`),
  ADD KEY `id_iku_child1` (`id_iku_child1`);

--
-- Indexes for table `iku_parent`
--
ALTER TABLE `iku_parent`
  ADD PRIMARY KEY (`id_iku_parent`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `id_rkat` (`kode_rkat`),
  ADD KEY `id_iku_parent` (`id_iku_parent`),
  ADD KEY `id_iku_child1` (`id_iku_child1`),
  ADD KEY `id_iku_child2` (`id_iku_child2`);

--
-- Indexes for table `pengajuan_history`
--
ALTER TABLE `pengajuan_history`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `id_rkat` (`kode_rkat`),
  ADD KEY `id_iku_parent` (`id_iku_parent`),
  ADD KEY `id_iku_child1` (`id_iku_child1`),
  ADD KEY `id_iku_child2` (`id_iku_child2`);

--
-- Indexes for table `rkat`
--
ALTER TABLE `rkat`
  ADD PRIMARY KEY (`id_rkat`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id_struktur`);

--
-- Indexes for table `struktur_child1`
--
ALTER TABLE `struktur_child1`
  ADD PRIMARY KEY (`id_struktur_child1`),
  ADD KEY `id_struktur` (`id_struktur`);

--
-- Indexes for table `struktur_child2`
--
ALTER TABLE `struktur_child2`
  ADD PRIMARY KEY (`id_struktur_child2`),
  ADD KEY `id_struktur_child1` (`id_struktur_child1`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_struktur` (`id_struktur`),
  ADD KEY `id_struktur_child1` (`id_struktur_child1`),
  ADD KEY `id_struktur_child2` (`id_struktur_child2`);

--
-- Indexes for table `validasi`
--
ALTER TABLE `validasi`
  ADD PRIMARY KEY (`id_validasi`),
  ADD KEY `id_pengajuan_history` (`id_pengajuan_history`),
  ADD KEY `id_struktur` (`id_struktur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iku_child1`
--
ALTER TABLE `iku_child1`
  MODIFY `id_iku_child1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `iku_child2`
--
ALTER TABLE `iku_child2`
  MODIFY `id_iku_child2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `iku_parent`
--
ALTER TABLE `iku_parent`
  MODIFY `id_iku_parent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `pengajuan_history`
--
ALTER TABLE `pengajuan_history`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `rkat`
--
ALTER TABLE `rkat`
  MODIFY `id_rkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT for table `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id_struktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `struktur_child1`
--
ALTER TABLE `struktur_child1`
  MODIFY `id_struktur_child1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `struktur_child2`
--
ALTER TABLE `struktur_child2`
  MODIFY `id_struktur_child2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `validasi`
--
ALTER TABLE `validasi`
  MODIFY `id_validasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `iku_child1`
--
ALTER TABLE `iku_child1`
  ADD CONSTRAINT `iku_child1_ibfk_1` FOREIGN KEY (`id_iku_parent`) REFERENCES `iku_parent` (`id_iku_parent`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `iku_child2`
--
ALTER TABLE `iku_child2`
  ADD CONSTRAINT `iku_child2_ibfk_1` FOREIGN KEY (`id_iku_child1`) REFERENCES `iku_child1` (`id_iku_child1`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rkat`
--
ALTER TABLE `rkat`
  ADD CONSTRAINT `rkat_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `struktur_child1`
--
ALTER TABLE `struktur_child1`
  ADD CONSTRAINT `struktur_child1_ibfk_1` FOREIGN KEY (`id_struktur`) REFERENCES `struktur` (`id_struktur`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
