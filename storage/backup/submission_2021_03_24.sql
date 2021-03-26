-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: submission
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `iku_child1`
--

DROP TABLE IF EXISTS `iku_child1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iku_child1` (
  `id_iku_child1` int(11) NOT NULL AUTO_INCREMENT,
  `id_iku_parent` int(11) NOT NULL,
  `iku_child1` int(11) NOT NULL,
  PRIMARY KEY (`id_iku_child1`),
  UNIQUE KEY `id_iku_parent` (`id_iku_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iku_child1`
--

LOCK TABLES `iku_child1` WRITE;
/*!40000 ALTER TABLE `iku_child1` DISABLE KEYS */;
/*!40000 ALTER TABLE `iku_child1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iku_child2`
--

DROP TABLE IF EXISTS `iku_child2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iku_child2` (
  `id_iku_child2` int(11) NOT NULL AUTO_INCREMENT,
  `id_iku_parent` int(11) NOT NULL,
  `iku_child2` int(11) NOT NULL,
  PRIMARY KEY (`id_iku_child2`),
  UNIQUE KEY `id_iku_parent` (`id_iku_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iku_child2`
--

LOCK TABLES `iku_child2` WRITE;
/*!40000 ALTER TABLE `iku_child2` DISABLE KEYS */;
/*!40000 ALTER TABLE `iku_child2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iku_parent`
--

DROP TABLE IF EXISTS `iku_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iku_parent` (
  `id_iku_parent` int(11) NOT NULL,
  `iku_parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iku_parent`
--

LOCK TABLES `iku_parent` WRITE;
/*!40000 ALTER TABLE `iku_parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `iku_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_03_08_095445_create_submissions_table',1),(2,'2021_03_23_233715_create_pengajuan_table',1),(3,'2021_03_23_233715_create_rkat_table',1),(4,'2021_03_23_233715_create_user_table',1),(5,'2021_03_24_030317_create_iku_child1_table',0),(6,'2021_03_24_030317_create_iku_child2_table',0),(7,'2021_03_24_030317_create_iku_parent_table',0),(8,'2021_03_24_030317_create_pengajuan_table',0),(9,'2021_03_24_030317_create_rkat_table',0),(10,'2021_03_24_030317_create_struktur_table',0),(11,'2021_03_24_030317_create_struktur_child_table',0),(12,'2021_03_24_030317_create_user_table',0),(13,'2021_03_24_030356_create_iku_child1_table',0),(14,'2021_03_24_030356_create_iku_child2_table',0),(15,'2021_03_24_030356_create_iku_parent_table',0),(16,'2021_03_24_030356_create_pengajuan_table',0),(17,'2021_03_24_030356_create_rkat_table',0),(18,'2021_03_24_030356_create_struktur_table',0),(19,'2021_03_24_030356_create_struktur_child_table',0),(20,'2021_03_24_030356_create_user_table',0);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengajuan`
--

DROP TABLE IF EXISTS `pengajuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengajuan` (
  `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT,
  `id_rkat` int(11) NOT NULL,
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
  `status_pengajuan` enum('progress','approved','','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_pengajuan`),
  UNIQUE KEY `id_rkat` (`id_rkat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengajuan`
--

LOCK TABLES `pengajuan` WRITE;
/*!40000 ALTER TABLE `pengajuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengajuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rkat`
--

DROP TABLE IF EXISTS `rkat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rkat` (
  `id_rkat` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `kode_rkat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sasaran_strategi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indikator_sasaran_strategi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_program` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_kerja` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai_program` datetime NOT NULL,
  `selesai_program` datetime NOT NULL,
  `tempat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_anggaran` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rencara_anggaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_anggaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_rkat`),
  UNIQUE KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rkat`
--

LOCK TABLES `rkat` WRITE;
/*!40000 ALTER TABLE `rkat` DISABLE KEYS */;
/*!40000 ALTER TABLE `rkat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `struktur`
--

DROP TABLE IF EXISTS `struktur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `struktur` (
  `id_struktur` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `nama_struktur` varchar(20) NOT NULL,
  PRIMARY KEY (`id_struktur`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `struktur`
--

LOCK TABLES `struktur` WRITE;
/*!40000 ALTER TABLE `struktur` DISABLE KEYS */;
INSERT INTO `struktur` VALUES (1,1,'Rektor'),(2,2,'Warek'),(3,3,'Dir. Keuangan'),(4,4,'Warek III'),(5,4,'Fakultas'),(6,5,'Prodi'),(7,5,'UPT'),(8,4,'Setniv');
/*!40000 ALTER TABLE `struktur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `struktur_child`
--

DROP TABLE IF EXISTS `struktur_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `struktur_child` (
  `id_struktur_child` int(11) NOT NULL AUTO_INCREMENT,
  `id_struktur` int(11) NOT NULL,
  `nama_struktur_child` varchar(30) NOT NULL,
  PRIMARY KEY (`id_struktur_child`),
  UNIQUE KEY `id_struktur` (`id_struktur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `struktur_child`
--

LOCK TABLES `struktur_child` WRITE;
/*!40000 ALTER TABLE `struktur_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `struktur_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_unit` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_wa` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rek` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-24 10:04:45