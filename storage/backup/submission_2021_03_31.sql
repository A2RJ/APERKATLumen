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
  `iku_child1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_iku_child1`),
  KEY `id_iku_parent` (`id_iku_parent`),
  CONSTRAINT `iku_child1_ibfk_1` FOREIGN KEY (`id_iku_parent`) REFERENCES `iku_parent` (`id_iku_parent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id_iku_child1` int(11) NOT NULL,
  `iku_child2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_iku_child2`),
  KEY `id_iku_child1` (`id_iku_child1`),
  CONSTRAINT `iku_child2_ibfk_1` FOREIGN KEY (`id_iku_child1`) REFERENCES `iku_child1` (`id_iku_child1`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id_iku_parent` int(11) NOT NULL AUTO_INCREMENT,
  `iku_parent` int(11) NOT NULL,
  PRIMARY KEY (`id_iku_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_03_30_000805_create_iku_child1_table',1),(2,'2021_03_30_000805_create_iku_child2_table',1),(3,'2021_03_30_000805_create_iku_parent_table',1),(4,'2021_03_30_000805_create_pengajuan_history_table',2),(5,'2021_03_30_000805_create_pengajuan_table',2),(6,'2021_03_30_000805_create_rkat_table',2),(7,'2021_03_30_000805_create_struktur_child1_table',2),(8,'2021_03_30_000805_create_struktur_child2_table',2),(9,'2021_03_30_000805_create_struktur_table',2),(10,'2021_03_30_000805_create_user_table',2),(11,'2021_03_30_000805_create_validasi_table',2),(12,'2021_03_30_000808_add_foreign_keys_to_iku_child1_table',2),(13,'2021_03_30_000808_add_foreign_keys_to_iku_child2_table',2),(14,'2021_03_30_000808_add_foreign_keys_to_pengajuan_table',2),(15,'2021_03_30_000808_add_foreign_keys_to_rkat_table',2),(16,'2021_03_30_000808_add_foreign_keys_to_struktur_child1_table',2),(17,'2021_03_30_000808_add_foreign_keys_to_struktur_child2_table',2);
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
  `status_pengajuan` enum('progress','approved') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_pengajuan`),
  KEY `id_rkat` (`id_rkat`),
  KEY `id_iku_parent` (`id_iku_parent`),
  KEY `id_iku_child1` (`id_iku_child1`),
  KEY `id_iku_child2` (`id_iku_child2`),
  CONSTRAINT `pengajuan_ibfk_1` FOREIGN KEY (`id_rkat`) REFERENCES `rkat` (`id_rkat`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengajuan`
--

LOCK TABLES `pengajuan` WRITE;
/*!40000 ALTER TABLE `pengajuan` DISABLE KEYS */;
INSERT INTO `pengajuan` VALUES (6,15,'One','Pembelian','Kampus UTS','2021-02-01','Lab kampus',1,2,3,'140000','coba.jpg','progress','2021-03-29 11:52:49','2021-03-31 03:13:54');
/*!40000 ALTER TABLE `pengajuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengajuan_history`
--

DROP TABLE IF EXISTS `pengajuan_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengajuan_history` (
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
  `status_pengajuan` enum('progress','approved') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_pengajuan`),
  KEY `id_rkat` (`id_rkat`),
  KEY `id_iku_parent` (`id_iku_parent`),
  KEY `id_iku_child1` (`id_iku_child1`),
  KEY `id_iku_child2` (`id_iku_child2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengajuan_history`
--

LOCK TABLES `pengajuan_history` WRITE;
/*!40000 ALTER TABLE `pengajuan_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengajuan_history` ENABLE KEYS */;
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
  KEY `id_user` (`id_user`),
  CONSTRAINT `rkat_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rkat`
--

LOCK TABLES `rkat` WRITE;
/*!40000 ALTER TABLE `rkat` DISABLE KEYS */;
INSERT INTO `rkat` VALUES (15,4,'Tidak tahu','Tidak tahu juga','Pembelian PC','Beli PC','Untuk tingkatkan lab','Dukung penggunaan lab','2021-03-28 00:00:00','2021-03-28 00:00:00','Lab UTS','Dana Kampus','1500000','1500000','2021-03-29 11:23:41','2021-03-29 11:23:41');
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
  `nama_struktur` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_struktur`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `struktur`
--

LOCK TABLES `struktur` WRITE;
/*!40000 ALTER TABLE `struktur` DISABLE KEYS */;
INSERT INTO `struktur` VALUES (1,1,'Rektor'),(2,2,'Warek'),(3,3,'Dir. Keuangan'),(4,4,'Warek III//Setniv'),(5,4,'Fakultas'),(9,5,'Prodi'),(10,5,'UPT');
/*!40000 ALTER TABLE `struktur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `struktur_child1`
--

DROP TABLE IF EXISTS `struktur_child1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `struktur_child1` (
  `id_struktur_child1` int(11) NOT NULL AUTO_INCREMENT,
  `id_struktur` int(11) NOT NULL,
  `nama_struktur_child1` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_struktur_child1`),
  KEY `id_struktur` (`id_struktur`),
  CONSTRAINT `struktur_child1_ibfk_1` FOREIGN KEY (`id_struktur`) REFERENCES `struktur` (`id_struktur`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `struktur_child1`
--

LOCK TABLES `struktur_child1` WRITE;
/*!40000 ALTER TABLE `struktur_child1` DISABLE KEYS */;
INSERT INTO `struktur_child1` VALUES (5,5,'FTI'),(6,5,'FTB');
/*!40000 ALTER TABLE `struktur_child1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `struktur_child2`
--

DROP TABLE IF EXISTS `struktur_child2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `struktur_child2` (
  `id_struktur_child2` int(11) NOT NULL AUTO_INCREMENT,
  `id_struktur_child1` int(11) NOT NULL,
  `id_struktur` int(11) NOT NULL,
  `nama_struktur_child2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_struktur_child2`),
  KEY `id_struktur_child1` (`id_struktur_child1`),
  KEY `id_struktur` (`id_struktur`),
  CONSTRAINT `struktur_child2_ibfk_1` FOREIGN KEY (`id_struktur`) REFERENCES `struktur` (`id_struktur`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `struktur_child2_ibfk_2` FOREIGN KEY (`id_struktur_child1`) REFERENCES `struktur_child1` (`id_struktur_child1`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `struktur_child2`
--

LOCK TABLES `struktur_child2` WRITE;
/*!40000 ALTER TABLE `struktur_child2` DISABLE KEYS */;
INSERT INTO `struktur_child2` VALUES (3,5,5,'TI'),(4,6,5,'Biotek');
/*!40000 ALTER TABLE `struktur_child2` ENABLE KEYS */;
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
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_struktur` int(11) DEFAULT NULL,
  `id_struktur_child1` int(11) DEFAULT NULL,
  `id_struktur_child2` int(11) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_wa` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rek` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_struktur` (`id_struktur`),
  KEY `id_struktur_child1` (`id_struktur_child1`),
  KEY `id_struktur_child2` (`id_struktur_child2`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'Ardiansyah Putra','$2y$10$GCyWsVdzvohQqtFhmoj51.IjKpOFJN3G3pucYXKsmRYDZCN62E0V2','$2y$10$HSZUfe7BZe55GkTLkBiPIu877B6OSUfFB1ckKyYNRshFMvkAR0Kdq',9,5,3,'ardi@gmail.com','980','Bank BNI','8789789','2021-03-28 17:49:34','2021-03-28 17:49:34');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validasi`
--

DROP TABLE IF EXISTS `validasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validasi` (
  `id_validasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengajuan_history` int(11) NOT NULL,
  `id_struktur` int(11) NOT NULL,
  `status_validasi` tinyint(4) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_validasi`),
  KEY `id_pengajuan_history` (`id_pengajuan_history`),
  KEY `id_struktur` (`id_struktur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validasi`
--

LOCK TABLES `validasi` WRITE;
/*!40000 ALTER TABLE `validasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `validasi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-31 12:36:02
