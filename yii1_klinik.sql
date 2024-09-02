-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: yii1_klinik
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'0001_01_01_000002_create_jobs_table',1),(3,'2024_08_31_143857_create_tbl_user_table',1),(4,'2024_08_31_145153_create_tbl_patient_table',1),(5,'2024_08_31_150215_create_tbl_employee_table',1),(6,'2024_08_31_150726_create_tbl_role_table',1),(7,'2024_08_31_151510_create_tbl_region_table',1),(8,'2024_08_31_152218_create_tbl_division_table',1),(9,'2024_08_31_153216_create_tbl_action_table',1),(10,'2024_08_31_153847_create_tbl_medication_table',1),(11,'2024_08_31_191227_create_tbl_ticket_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_action`
--

DROP TABLE IF EXISTS `tbl_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_action` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_action`
--

LOCK TABLES `tbl_action` WRITE;
/*!40000 ALTER TABLE `tbl_action` DISABLE KEYS */;
INSERT INTO `tbl_action` VALUES ('18967295-e346-4e3a-acb9-cc4f3aa9463a','Vaccination','2024-09-02 07:17:37','2024-09-02 07:17:37'),('202ea5dd-649b-44ef-bbfb-55290ceae489','Prescription Writing','2024-09-02 07:17:37','2024-09-02 07:17:37'),('2418ecae-3f2b-4dc7-a243-194bc86e020b','Consultation','2024-09-02 07:17:37','2024-09-02 07:17:37'),('2481f069-fff8-447c-8156-bde6029160a1','Health Screening','2024-09-02 07:17:37','2024-09-02 07:17:37'),('2b035621-837d-4658-b496-1f700edbf960','Counseling','2024-09-02 07:17:37','2024-09-02 07:17:37'),('56573316-4dba-48a3-a0d1-024852d93d4f','Blood Pressure Check','2024-09-02 07:17:37','2024-09-02 07:17:37'),('6d54a477-ebbe-4f9f-83d2-13aed68f229d','Follow-up Visit','2024-09-02 07:17:37','2024-09-02 07:17:37'),('8184a27c-be24-4017-8991-fdc3b1481eb8','Ultrasound','2024-09-02 07:17:37','2024-09-02 07:17:37'),('81bd04ee-356b-4a9d-891b-e92dae76081b','Laboratory Test','2024-09-02 07:17:37','2024-09-02 07:17:37'),('9ee4dbc8-2272-4513-a671-dc3eb0a9a5a8','X-Ray','2024-09-02 07:17:37','2024-09-02 07:17:37'),('a980431b-27e7-4de8-9087-b93f512d3b7c','Physical Therapy','2024-09-02 07:17:37','2024-09-02 07:17:37'),('bf04c3d1-74d5-4a0f-9dd4-44b5149b06a0','Physical Examination','2024-09-02 07:17:37','2024-09-02 07:17:37'),('fc31b4e7-5e6f-44ad-939b-55ea5279808b','Wound Dressing','2024-09-02 07:17:37','2024-09-02 07:17:37'),('fc3d06fb-beca-44dd-a9af-f76d15133a2b','Surgery','2024-09-02 07:17:37','2024-09-02 07:17:37'),('fe7e97d4-6931-4334-81f2-de005a7848b1','Medication Administration','2024-09-02 07:17:37','2024-09-02 07:17:37');
/*!40000 ALTER TABLE `tbl_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_division`
--

DROP TABLE IF EXISTS `tbl_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_division` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_division`
--

LOCK TABLES `tbl_division` WRITE;
/*!40000 ALTER TABLE `tbl_division` DISABLE KEYS */;
INSERT INTO `tbl_division` VALUES ('110e6608-a833-4937-b8f4-2ec95933fe51','Cashier','2024-09-02 07:17:36','2024-09-02 07:17:36'),('1ec903c4-d6f9-404c-b273-aec86964da3c','Admin','2024-09-02 07:17:36','2024-09-02 07:17:36'),('2167d231-632d-4b6c-8518-8ec8d7a058c2','Human Resources','2024-09-02 07:17:36','2024-09-02 07:17:36'),('283ac954-849b-464e-9f8f-6453c926d788','Radiology','2024-09-02 07:17:36','2024-09-02 07:17:36'),('7f4bd6ec-c52d-45dd-b709-12071409d239','Manager','2024-09-02 07:17:36','2024-09-02 07:17:36'),('8ad4ac31-09c5-4c06-a863-53cec757be03','IT Support','2024-09-02 07:17:36','2024-09-02 07:17:36'),('8c51f234-1426-443d-868d-46faf44496ed','Pharmacist','2024-09-02 07:17:36','2024-09-02 07:17:36'),('a1d63e20-a76e-47d6-a01a-9b4df0a15cd1','Doctor','2024-09-02 07:17:36','2024-09-02 07:17:36'),('ad1880f8-ad48-4307-bf0e-96905a74969e','Accounting','2024-09-02 07:17:36','2024-09-02 07:17:36'),('be50e6db-5b20-48bf-ba0e-d3bd66b7a1f5','Laboratory','2024-09-02 07:17:36','2024-09-02 07:17:36'),('e2d291ed-cd4a-482c-bb3d-ab054b0d5b42','Nurse','2024-09-02 07:17:36','2024-09-02 07:17:36'),('eea939bb-8b1d-45c8-9e8a-eda447e72609','Receptionist','2024-09-02 07:17:36','2024-09-02 07:17:36');
/*!40000 ALTER TABLE `tbl_division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employee`
--

DROP TABLE IF EXISTS `tbl_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_employee` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee`
--

LOCK TABLES `tbl_employee` WRITE;
/*!40000 ALTER TABLE `tbl_employee` DISABLE KEYS */;
INSERT INTO `tbl_employee` VALUES ('01217fbe-a142-4783-84e0-f8c23ab1fc24','Febi Ami Hassanah S.Kom','7f4bd6ec-c52d-45dd-b709-12071409d239','2024-09-02 07:17:37','2024-09-02 07:17:37'),('033b78fd-3a8a-4ee3-91b3-77c3219afe5e','Laras Ilsa Lailasari M.Farm','7f4bd6ec-c52d-45dd-b709-12071409d239','2024-09-02 07:17:37','2024-09-02 07:17:37'),('03c7dc94-5767-4b99-81c4-2e946ca57901','Jumadi Jailani','8ad4ac31-09c5-4c06-a863-53cec757be03','2024-09-02 07:17:37','2024-09-02 07:17:37'),('08ececbb-8745-4231-b36e-ce60c6f3ac0c','Adhiarja Budiman','be50e6db-5b20-48bf-ba0e-d3bd66b7a1f5','2024-09-02 07:17:37','2024-09-02 07:17:37'),('09130302-de3e-4773-99d0-107978769477','Viman Galih Hutasoit S.Farm','283ac954-849b-464e-9f8f-6453c926d788','2024-09-02 07:17:37','2024-09-02 07:17:37'),('11ab5f37-5036-4e2d-93dd-b44250ecef1e','Dagel Santoso S.Pt','ad1880f8-ad48-4307-bf0e-96905a74969e','2024-09-02 07:17:37','2024-09-02 07:17:37'),('12164d54-94f0-44ad-917c-0973d1f125b1','Irma Riyanti S.Gz','283ac954-849b-464e-9f8f-6453c926d788','2024-09-02 07:17:37','2024-09-02 07:17:37'),('22d16325-2f8c-427e-baf1-1eb8a735c609','Rachel Prastuti','ad1880f8-ad48-4307-bf0e-96905a74969e','2024-09-02 07:17:37','2024-09-02 07:17:37'),('270b70a8-408d-41a2-99e2-c50e2bff0f43','Paulin Mayasari M.Pd','1ec903c4-d6f9-404c-b273-aec86964da3c','2024-09-02 07:17:37','2024-09-02 07:17:37'),('27c46e85-0b3b-4d77-abd0-259de30f3d2a','Putri Yolanda','8c51f234-1426-443d-868d-46faf44496ed','2024-09-02 07:17:37','2024-09-02 07:17:37'),('28207056-8a5a-42b1-b3eb-5024bb22be61','Suci Padmasari','eea939bb-8b1d-45c8-9e8a-eda447e72609','2024-09-02 07:17:37','2024-09-02 07:17:37'),('2cb6f3e6-a1ba-4fc0-8cb6-26b45f15fa6d','Kiandra Yolanda','110e6608-a833-4937-b8f4-2ec95933fe51','2024-09-02 07:17:37','2024-09-02 07:17:37'),('3dc3e68e-9c96-4345-9e83-f8a45150e1d7','Nabila Melani','8c51f234-1426-443d-868d-46faf44496ed','2024-09-02 07:17:37','2024-09-02 07:17:37'),('3f9b046d-99a8-4f42-b258-e2b7afd9f354','Perkasa Ramadan','7f4bd6ec-c52d-45dd-b709-12071409d239','2024-09-02 07:17:37','2024-09-02 07:17:37'),('3fea216e-1e15-446f-8d42-e7bc07253776','Olga Pratama S.I.Kom','a1d63e20-a76e-47d6-a01a-9b4df0a15cd1','2024-09-02 07:17:37','2024-09-02 07:17:37'),('4dfb718c-9270-4a4b-90c4-f67e6567c96f','Ulya Chelsea Purnawati','eea939bb-8b1d-45c8-9e8a-eda447e72609','2024-09-02 07:17:37','2024-09-02 07:17:37'),('5cd54ef4-35c0-4891-a8ed-25a56e255a20','Talia Mandasari','7f4bd6ec-c52d-45dd-b709-12071409d239','2024-09-02 07:17:37','2024-09-02 07:17:37'),('603b91f8-933b-4a43-b9d5-47ad2ee2669e','Yance Elma Hastuti','e2d291ed-cd4a-482c-bb3d-ab054b0d5b42','2024-09-02 07:17:37','2024-09-02 07:17:37'),('72541ec8-1a8c-47b4-8cdf-33c62c4bbe22','Virman Budiman','e2d291ed-cd4a-482c-bb3d-ab054b0d5b42','2024-09-02 07:17:37','2024-09-02 07:17:37'),('7dc212db-f4bc-4c3b-84c0-a6090c96f855','Cici Paris Wastuti','eea939bb-8b1d-45c8-9e8a-eda447e72609','2024-09-02 07:17:37','2024-09-02 07:17:37'),('8e57129b-04af-4d6c-bbd6-34a3f5760c71','Kayla Anggraini','ad1880f8-ad48-4307-bf0e-96905a74969e','2024-09-02 07:17:37','2024-09-02 07:17:37'),('99c7f707-5202-4e39-8a1f-dacd1ae3b9f1','Widya Kuswandari S.Sos','2167d231-632d-4b6c-8518-8ec8d7a058c2','2024-09-02 07:17:37','2024-09-02 07:17:37'),('9b26b033-fc4b-4d2f-880b-27d59ac44a69','Kasiyah Mardhiyah M.Ak','ad1880f8-ad48-4307-bf0e-96905a74969e','2024-09-02 07:17:37','2024-09-02 07:17:37'),('b80311c7-ea24-4ca5-8c5e-fb4706d91832','Koko Pranowo','8ad4ac31-09c5-4c06-a863-53cec757be03','2024-09-02 07:17:37','2024-09-02 07:17:37'),('c961ec86-a8a8-40e9-a5e1-a5ee98ccdca1','Ami Uyainah','eea939bb-8b1d-45c8-9e8a-eda447e72609','2024-09-02 07:17:37','2024-09-02 07:17:37'),('cecdd7ee-3dac-45f0-bc84-42a54ef41f8c','Ade Mandala','8c51f234-1426-443d-868d-46faf44496ed','2024-09-02 07:17:37','2024-09-02 07:17:37'),('d2c63315-1e3f-42ff-bce0-0f7835e2295d','Jumadi Hadi Sitorus','eea939bb-8b1d-45c8-9e8a-eda447e72609','2024-09-02 07:17:37','2024-09-02 07:17:37'),('d6605d7d-78be-4e13-abee-a0cebc53a237','Jasmin Keisha Novitasari','7f4bd6ec-c52d-45dd-b709-12071409d239','2024-09-02 07:17:37','2024-09-02 07:17:37'),('d8810da3-9ce9-4630-ba7c-404b97e52bf4','Vera Permata S.Pt','8ad4ac31-09c5-4c06-a863-53cec757be03','2024-09-02 07:17:37','2024-09-02 07:17:37'),('dce54ccb-f968-4880-aae6-8ad4736f358e','Cagak Mahesa Budiman','ad1880f8-ad48-4307-bf0e-96905a74969e','2024-09-02 07:17:37','2024-09-02 07:17:37'),('e1e29e50-e0c0-44da-9edc-ee864cc4ebe3','Endah Maryati S.Farm','eea939bb-8b1d-45c8-9e8a-eda447e72609','2024-09-02 07:17:37','2024-09-02 07:17:37'),('ec08c337-6509-4124-af63-55161a674683','Hasim Kemal Prasetyo','e2d291ed-cd4a-482c-bb3d-ab054b0d5b42','2024-09-02 07:17:37','2024-09-02 07:17:37'),('f3d47637-c52e-4469-abe9-506641dded29','Jindra Gandi Gunawan S.E.','8ad4ac31-09c5-4c06-a863-53cec757be03','2024-09-02 07:17:37','2024-09-02 07:17:37'),('f6a0df97-364c-4370-9c54-cd01995b0bbc','Baktiadi Saragih','1ec903c4-d6f9-404c-b273-aec86964da3c','2024-09-02 07:17:37','2024-09-02 07:17:37'),('f8ee8bce-43da-4c70-82dd-9a0a252eba2f','Yahya Chandra Thamrin S.IP','2167d231-632d-4b6c-8518-8ec8d7a058c2','2024-09-02 07:17:37','2024-09-02 07:17:37'),('fa2083c2-bb93-4a01-bd7f-1e806cd290c8','Ghaliyati Susanti','2167d231-632d-4b6c-8518-8ec8d7a058c2','2024-09-02 07:17:37','2024-09-02 07:17:37');
/*!40000 ALTER TABLE `tbl_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_medication`
--

DROP TABLE IF EXISTS `tbl_medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_medication` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_medication`
--

LOCK TABLES `tbl_medication` WRITE;
/*!40000 ALTER TABLE `tbl_medication` DISABLE KEYS */;
INSERT INTO `tbl_medication` VALUES ('161d74a7-d6dd-4726-9f22-cb6553461a84','Ciprofloxacin',43,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('2a286f52-bc47-452d-86f1-b724697679fd','Omeprazole',33,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('35da300b-7dce-44aa-861a-658766d9f451','Azithromycin',31,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('39868245-ffeb-45c3-a5b8-b51ef8fa7fe5','Prednisone',87,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('53484189-ec0f-4da7-9036-49a498da7263','Metronidazole',58,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('8a33a89c-80c8-4986-aded-156ab61ce2fd','Paracetamol',8,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('9bd199e7-ea32-4e28-98a3-eed29fdf14e9','Metformin',77,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('9f79639c-dd51-4b61-bf66-4a517f3ee1cb','Amoxicillin',48,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('9fdc9ab8-39a5-4e39-b5d0-4c72363a4323','Lisinopril',48,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('a3a09333-c426-4911-8bb5-c057330bb568','Alprazolam',43,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('bb26293a-547b-43bf-8ac5-5822a564121a','Aspirin',6,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('be6ea2d3-5f48-4d91-9575-2c6f5f2bd2a6','Ceftriaxone',74,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('dcc8f422-167d-4e54-a22d-7eade1fa6eaa','Losartan',16,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('f1e2d308-1a9d-4bc2-ba54-ad9ee6b1731e','Ibuprofen',50,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('f4a2b403-5ed8-4749-9fa3-b4c26289bb10','Atorvastatin',1,'2024-09-02 07:17:37','2024-09-02 07:17:37');
/*!40000 ALTER TABLE `tbl_medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_patient`
--

DROP TABLE IF EXISTS `tbl_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_patient` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_patient`
--

LOCK TABLES `tbl_patient` WRITE;
/*!40000 ALTER TABLE `tbl_patient` DISABLE KEYS */;
INSERT INTO `tbl_patient` VALUES ('00a03660-b0c4-486f-82a7-178b1b651e2a','Muni Nainggolan S.IP','1991-04-26','Female','Jr. Bakau No. 670, Banjarmasin 71509, Gorontalo','(+62) 962 6807 230','f687d30e-6386-4424-ac28-63875df83a5e','2024-09-02 07:17:36','2024-09-02 07:17:36'),('02ffc9d5-2d2b-4f9b-b0bc-e9cfd7052780','Timbul Budiman','2022-08-07','Male','Psr. Bata Putih No. 402, Lhokseumawe 83050, Jatim','(+62) 979 0977 6106','fbcabcea-9691-45dd-860c-767e3744f352','2024-09-02 07:17:36','2024-09-02 07:17:36'),('030dcb94-3374-415a-ae3a-0f7ea9a3d02a','Emin Januar','1979-03-13','Male','Gg. Mahakam No. 69, Sabang 58088, Papua','0311 9309 178','ec18dc33-f45c-4c8a-82ab-622e046436cc','2024-09-02 07:17:36','2024-09-02 07:17:36'),('058f670f-9308-4e1d-b472-dbb1cc4bb101','Faizah Kamaria Andriani','1971-02-17','Female','Jr. PHH. Mustofa No. 658, Gorontalo 79054, Bengkulu','(+62) 23 9872 7802','969b050c-fa9f-4c09-a998-750740e7b1ef','2024-09-02 07:17:37','2024-09-02 07:17:37'),('087a89bb-3465-4ebe-b13f-3552dd155f6e','Omar Gangsar Tarihoran','1989-06-29','Male','Ki. Samanhudi No. 699, Magelang 38946, Kalsel','0555 2799 6411','92594382-05c5-49e3-85a0-6362a3fb939e','2024-09-02 07:17:36','2024-09-02 07:17:36'),('0b52fcfc-a2c3-48c9-b793-f2bd0dfee2bd','Caturangga Karsana Budiman','1996-04-14','Female','Dk. Labu No. 512, Salatiga 98598, Jatim','(+62) 834 6116 4255','23319915-619f-4405-9c8e-053b9253f3be','2024-09-02 07:17:36','2024-09-02 07:17:36'),('0d0387e1-b023-4b0b-a1bd-7ebd2f2356ac','Elvina Lailasari S.Farm','2001-02-02','Female','Jr. Sutoyo No. 416, Kotamobagu 40187, Pabar','(+62) 530 0075 865','f687d30e-6386-4424-ac28-63875df83a5e','2024-09-02 07:17:36','2024-09-02 07:17:36'),('11c59782-cfa9-44aa-aa94-9042ad70c1b8','Purwa Maheswara','2004-04-20','Male','Psr. K.H. Maskur No. 99, Binjai 56148, Riau','(+62) 947 0174 3090','fc69c1e6-32a9-4b5a-9206-9a107024578c','2024-09-02 07:17:36','2024-09-02 07:17:36'),('152671fb-dcf2-4988-ab7e-8884f325ce61','Dalima Kusmawati S.E.I','1971-03-03','Male','Ds. Yohanes No. 923, Padangsidempuan 86066, Jatim','0433 4817 395','fbcabcea-9691-45dd-860c-767e3744f352','2024-09-02 07:17:37','2024-09-02 07:17:37'),('1643ccf8-62d2-4a3c-81c2-08a0593a8a87','Carla Widiastuti S.Ked','1975-02-25','Male','Ki. Gotong Royong No. 333, Langsa 15071, Papua','0488 3092 618','fc69c1e6-32a9-4b5a-9206-9a107024578c','2024-09-02 07:17:36','2024-09-02 07:17:36'),('180cf7df-f917-41f0-aa3e-059b61c64a12','Muhammad Lazuardi','2006-11-15','Male','Jln. Jend. Sudirman No. 585, Singkawang 95545, Gorontalo','(+62) 437 5262 0157','d3bde3db-8c86-4124-9f14-8aef9091ef45','2024-09-02 07:17:36','2024-09-02 07:17:36'),('1823f47e-af22-4ef7-aedc-a092485e1c84','Putu Budiman','1996-09-19','Male','Gg. Tangkuban Perahu No. 710, Tidore Kepulauan 12062, Papua','0809 0261 6703','fc69c1e6-32a9-4b5a-9206-9a107024578c','2024-09-02 07:17:36','2024-09-02 07:17:36'),('1a77c9fb-1e50-43cd-a37a-77a12e50c8b5','Farah Utami S.Psi','1994-11-25','Female','Dk. Arifin No. 819, Malang 34344, Sulsel','(+62) 871 8555 3833','3fabdcc5-4e54-4253-ba71-3d9472f66c2b','2024-09-02 07:17:36','2024-09-02 07:17:36'),('1d573b27-bd54-4cb0-b4ec-c6749bbe7030','Talia Susanti','2016-05-23','Male','Dk. Ters. Kiaracondong No. 112, Palu 75216, Sulbar','(+62) 685 9270 541','3fabdcc5-4e54-4253-ba71-3d9472f66c2b','2024-09-02 07:17:36','2024-09-02 07:17:36'),('20236ba2-a2e4-4378-866b-e92e241817c5','Novi Lintang Melani M.Pd','2020-12-06','Female','Psr. Padang No. 480, Malang 54281, DKI','0565 2046 786','3fabdcc5-4e54-4253-ba71-3d9472f66c2b','2024-09-02 07:17:36','2024-09-02 07:17:36'),('20cac648-9a33-48ff-b83a-9064bfe72a5c','Siti Puput Yulianti S.Gz','2006-03-17','Female','Dk. Lada No. 797, Parepare 18801, Banten','(+62) 703 5334 4530','af40eda0-a2e9-4c64-84e6-967092a33717','2024-09-02 07:17:36','2024-09-02 07:17:36'),('25acecb6-3f0d-4d54-ae3b-11e05f5eca33','Siska Oliva Puspita','1977-06-17','Male','Ds. Baranang Siang No. 618, Jayapura 59123, Jatim','(+62) 688 8806 5816','dfc9fd63-f6f9-4ba2-a316-c26ecda9bab9','2024-09-02 07:17:36','2024-09-02 07:17:36'),('2900b3c2-6e31-473a-9b20-156b37779a9a','Eli Kusmawati','2020-11-29','Male','Gg. Basuki Rahmat  No. 417, Tebing Tinggi 38524, DIY','0533 5565 424','5bbe9c32-2b27-4a29-92ab-8742ac553375','2024-09-02 07:17:36','2024-09-02 07:17:36'),('2c668d54-9d5b-4d39-94bc-50a972ac6629','Diah Zulaika','1973-07-26','Female','Dk. Kalimantan No. 306, Bengkulu 67164, Kalteng','0476 2602 865','cb093c2b-e983-487a-81b6-7592187336ae','2024-09-02 07:17:36','2024-09-02 07:17:36'),('2dde8b74-8c8b-4735-af44-13b3212d6021','Maras Kunthara Irawan S.T.','2005-12-28','Female','Psr. Villa No. 194, Probolinggo 47813, Sultra','024 7034 6900','d3bde3db-8c86-4124-9f14-8aef9091ef45','2024-09-02 07:17:36','2024-09-02 07:17:36'),('2e65a252-cb73-4570-ace7-3b20ce965ff9','Amalia Jasmin Zulaika S.IP','2000-12-19','Female','Ds. Sutarjo No. 805, Tanjung Pinang 53410, Kepri','(+62) 596 2179 226','49f644a8-c4e3-4c3c-94d3-4804a02491b6','2024-09-02 07:17:36','2024-09-02 07:17:36'),('351633b1-3503-4e2a-8483-64b00bcd2778','Kayla Hastuti S.I.Kom','2003-10-20','Male','Ds. Pacuan Kuda No. 492, Payakumbuh 41360, Sulteng','(+62) 860 4727 238','fc69c1e6-32a9-4b5a-9206-9a107024578c','2024-09-02 07:17:36','2024-09-02 07:17:36'),('36f5086e-95f9-46c4-8f91-bd1411a28a61','Paiman Karja Simanjuntak M.Kom.','1997-03-23','Female','Jr. Asia Afrika No. 893, Salatiga 50924, Kalbar','(+62) 720 1796 4301','81ddfcef-b163-4bd3-8971-2b74730ea369','2024-09-02 07:17:36','2024-09-02 07:17:36'),('38f8aed4-47c9-4ef2-8766-f30c10ab206f','Fitria Pertiwi S.E.I','1994-09-23','Male','Ds. Bak Mandi No. 12, Pematangsiantar 43011, Sulut','0985 8450 161','e4096548-af34-4e09-9271-a84839d5a56b','2024-09-02 07:17:36','2024-09-02 07:17:36'),('3b4df63b-e932-4852-986a-8ae5ba0ca680','Nilam Hassanah','1985-09-12','Female','Jln. Sunaryo No. 521, Bandung 72642, Kaltim','(+62) 354 7480 328','ddfda82d-7d74-4aa7-b948-f6b07ee574f0','2024-09-02 07:17:37','2024-09-02 07:17:37'),('3d6bf169-31f9-4f8c-9141-f70fb2d71823','Aisyah Uyainah','1997-04-05','Male','Ki. Badak No. 372, Madiun 68611, Kalsel','(+62) 345 1010 0952','749d7133-b3cf-4519-994e-a0cdc3c31f23','2024-09-02 07:17:36','2024-09-02 07:17:36'),('3df81cdd-8d4f-4080-b472-d38225cf8f65','Julia Cinthia Sudiati','1993-11-24','Male','Ds. Labu No. 226, Kendari 70313, Bengkulu','0845 857 219','23319915-619f-4405-9c8e-053b9253f3be','2024-09-02 07:17:36','2024-09-02 07:17:36'),('48c0cc91-012b-4fac-a990-b16bfd9c6091','Prasetyo Budiman S.Psi','2024-01-10','Male','Kpg. Bawal No. 887, Makassar 43429, Kaltara','(+62) 533 7884 399','e66b6c99-0816-47d6-a31b-bdbab78f83fc','2024-09-02 07:17:36','2024-09-02 07:17:36'),('491cde14-bdd4-4e36-a27f-1c33c0541c43','Reksa Rajata','2001-11-24','Male','Psr. Baabur Royan No. 194, Administrasi Jakarta Pusat 83368, NTB','0801 560 295','49f644a8-c4e3-4c3c-94d3-4804a02491b6','2024-09-02 07:17:36','2024-09-02 07:17:36'),('4d6c9157-07f0-4055-a741-6fe24e1bce9f','Argono Dabukke','1970-09-27','Female','Gg. Bagas Pati No. 626, Palu 61684, Aceh','0551 8146 681','f687d30e-6386-4424-ac28-63875df83a5e','2024-09-02 07:17:36','2024-09-02 07:17:36'),('4e9da3c6-4ebe-47f7-8e9b-9f22409c206a','Farah Usamah S.Pd','1999-03-25','Male','Gg. Kyai Mojo No. 95, Pasuruan 33875, Kepri','0588 6241 299','f687d30e-6386-4424-ac28-63875df83a5e','2024-09-02 07:17:36','2024-09-02 07:17:36'),('5407c0d2-01b3-42a9-be4a-1cadcd1c3491','Liman Bakiman Waskita M.M.','2015-01-23','Male','Jln. Abdullah No. 117, Cilegon 62140, Sulsel','(+62) 406 0504 547','e4096548-af34-4e09-9271-a84839d5a56b','2024-09-02 07:17:36','2024-09-02 07:17:36'),('5c08b8d2-29c2-473e-8f1c-6f4dc738b0ea','Ganda Rajasa','1982-02-08','Male','Kpg. Rajawali No. 187, Kediri 28263, Jateng','(+62) 770 8998 145','47347b96-8472-49b2-937c-00099d85c075','2024-09-02 07:17:37','2024-09-02 07:17:37'),('5d114b71-4e94-49b8-90a3-5266e1ea56fc','Kamila Yulianti','2013-01-09','Male','Jln. Umalas No. 561, Bandung 60161, Bali','(+62) 817 2695 1507','81ddfcef-b163-4bd3-8971-2b74730ea369','2024-09-02 07:17:36','2024-09-02 07:17:36'),('5eb145a1-3dd1-48ba-81a4-3cdb3f072a82','Cengkir Megantara M.Farm','1987-09-05','Male','Kpg. Tentara Pelajar No. 632, Tangerang 28788, Lampung','0966 8152 3337','d424548d-0d2b-4777-81a3-a1521e38bc10','2024-09-02 07:17:36','2024-09-02 07:17:36'),('60461cdd-0e0b-403a-b8d9-789082a15bc0','Gamani Catur Putra','2004-07-19','Female','Gg. Bawal No. 16, Salatiga 47045, Bali','028 8185 1942','8b139b05-e7c9-4025-93ae-77ea5ddf5548','2024-09-02 07:17:36','2024-09-02 07:17:36'),('6148abc6-c170-4124-b3ba-e765a643d0de','Damu Mangunsong','2005-01-28','Male','Jln. Otto No. 503, Kupang 52191, NTT','(+62) 859 110 232','92594382-05c5-49e3-85a0-6362a3fb939e','2024-09-02 07:17:37','2024-09-02 07:17:37'),('6294b8c1-f416-4451-95d4-97de0d0374fc','Nugraha Nainggolan M.Pd','2010-03-29','Male','Ki. Batako No. 513, Padang 23877, Gorontalo','(+62) 757 2402 897','e4005157-7c80-4636-a886-a8aea59d3af2','2024-09-02 07:17:36','2024-09-02 07:17:36'),('6473fc86-d394-4886-9201-912d269eae45','Banara Laksana Mandala','2019-12-10','Male','Jln. S. Parman No. 590, Kotamobagu 73415, Kalbar','(+62) 370 6476 016','e65ce964-87a5-4394-aeb6-c12b0d89ead6','2024-09-02 07:17:36','2024-09-02 07:17:36'),('647d53e2-9944-4600-9944-53c9eeac5324','Kurnia Rafi Kuswoyo','1991-12-01','Female','Jln. Yos No. 517, Balikpapan 67873, Aceh','0988 9918 649','ebdaa68d-8e7e-4d0d-8357-df7b548d112f','2024-09-02 07:17:36','2024-09-02 07:17:36'),('675c0a47-8a27-437d-98a5-c044b3546ba0','Zaenab Padmasari','1977-12-08','Female','Psr. Ciumbuleuit No. 91, Parepare 67501, Bali','(+62) 870 0091 3531','81ddfcef-b163-4bd3-8971-2b74730ea369','2024-09-02 07:17:36','2024-09-02 07:17:36'),('682a661b-8215-48b7-86cf-e0153e142b5f','Limar Darimin Hidayanto M.Pd','1982-04-06','Male','Jr. Teuku Umar No. 399, Sibolga 96071, Gorontalo','0325 5815 880','8b139b05-e7c9-4025-93ae-77ea5ddf5548','2024-09-02 07:17:37','2024-09-02 07:17:37'),('69152780-8615-4ccb-9639-2305fc51bb90','Yunita Riyanti','1979-12-27','Male','Jln. Bata Putih No. 739, Parepare 98894, Sumsel','0567 6959 0255','fde7f191-ca10-4d39-a532-b46ab8715b86','2024-09-02 07:17:36','2024-09-02 07:17:36'),('69ec520b-8a85-4f5e-97a9-bf071bbba353','Koko Pangestu','1971-03-09','Female','Psr. Dahlia No. 667, Padangsidempuan 45979, Lampung','(+62) 831 6111 727','92594382-05c5-49e3-85a0-6362a3fb939e','2024-09-02 07:17:36','2024-09-02 07:17:36'),('6f9d0068-f9ee-400b-9328-23f171d134c8','Samiah Wijayanti','2001-08-02','Female','Ki. Babakan No. 615, Mojokerto 59031, Riau','0447 3985 848','d424548d-0d2b-4777-81a3-a1521e38bc10','2024-09-02 07:17:36','2024-09-02 07:17:36'),('70e5567f-2100-4919-903a-113a944cea62','Argono Kurniawan','2013-05-02','Female','Dk. Achmad Yani No. 524, Sabang 85049, Jabar','(+62) 346 0495 0091','ebdaa68d-8e7e-4d0d-8357-df7b548d112f','2024-09-02 07:17:36','2024-09-02 07:17:36'),('722d5e62-024b-488f-814a-b7d0be7ff46c','Rahmi Kuswandari','1997-03-13','Male','Psr. Bakin No. 744, Metro 25064, Sulsel','(+62) 733 5416 494','81ddfcef-b163-4bd3-8971-2b74730ea369','2024-09-02 07:17:37','2024-09-02 07:17:37'),('752e4843-5177-4309-aaa2-7dc1614ec447','Dian Farida','2014-02-17','Female','Jr. Baya Kali Bungur No. 559, Surabaya 88392, Sumut','0453 0038 6388','584b8f6d-4f9e-4b0c-a400-03b166443e5d','2024-09-02 07:17:36','2024-09-02 07:17:36'),('77be05d8-f4e2-4bf2-a39c-97c53cafb754','Widya Hartati','1987-02-05','Female','Ki. Antapani Lama No. 45, Administrasi Jakarta Timur 61305, Sumsel','(+62) 614 3171 6242','5bbe9c32-2b27-4a29-92ab-8742ac553375','2024-09-02 07:17:36','2024-09-02 07:17:36'),('7a10998f-f3e9-4840-998f-2361e44c613a','Taswir Winarno','1970-07-23','Male','Jr. Rajawali Barat No. 224, Gunungsitoli 96775, Gorontalo','(+62) 854 4417 8764','d3bde3db-8c86-4124-9f14-8aef9091ef45','2024-09-02 07:17:36','2024-09-02 07:17:36'),('7ca3df05-ebc2-47dc-9dc0-4e7f7c773cee','Wulan Suartini','1988-07-08','Male','Jr. Bagis Utama No. 644, Tebing Tinggi 17774, Aceh','0913 7179 4597','5bbe9c32-2b27-4a29-92ab-8742ac553375','2024-09-02 07:17:36','2024-09-02 07:17:36'),('7e2d8ccd-bd10-4abe-bba6-853fb1432bae','Zulaikha Rahayu M.Farm','2018-09-11','Male','Psr. Otto No. 335, Tangerang Selatan 22001, Sumut','(+62) 472 1388 206','81ddfcef-b163-4bd3-8971-2b74730ea369','2024-09-02 07:17:37','2024-09-02 07:17:37'),('7ece9fe5-6d83-4aea-b7fb-afefced65d1c','Kamidin Tarihoran','1999-04-17','Female','Kpg. Sugiyopranoto No. 386, Bandar Lampung 27504, Jateng','(+62) 637 0115 2221','49f644a8-c4e3-4c3c-94d3-4804a02491b6','2024-09-02 07:17:36','2024-09-02 07:17:36'),('7faa5f69-495a-4499-9e50-fa5a53dee3fa','Hamima Palastri S.I.Kom','2021-12-16','Male','Psr. Jamika No. 341, Pekanbaru 13992, Sultra','0568 9879 117','81ddfcef-b163-4bd3-8971-2b74730ea369','2024-09-02 07:17:36','2024-09-02 07:17:36'),('814b8200-af68-4098-a105-fa3cd7b37195','Aisyah Suryatmi','1988-09-16','Female','Dk. Ketandan No. 754, Madiun 80782, NTT','(+62) 922 5615 199','81ddfcef-b163-4bd3-8971-2b74730ea369','2024-09-02 07:17:36','2024-09-02 07:17:36'),('838139b0-0273-40c0-928c-74e9f2cc3aa6','Cici Tantri Mulyani','1971-04-30','Male','Psr. Gremet No. 611, Administrasi Jakarta Selatan 83249, Jambi','(+62) 695 7977 470','49f644a8-c4e3-4c3c-94d3-4804a02491b6','2024-09-02 07:17:36','2024-09-02 07:17:36'),('8466eb97-a129-44ed-a560-ed95a9794277','Jayeng Hidayanto S.H.','2003-03-19','Female','Psr. Kartini No. 466, Administrasi Jakarta Barat 80913, Sumsel','(+62) 28 8964 099','ddfda82d-7d74-4aa7-b948-f6b07ee574f0','2024-09-02 07:17:36','2024-09-02 07:17:36'),('8828da35-a243-4df6-b4c7-22ce95fcb006','Faizah Safitri','2008-03-10','Female','Ds. Baung No. 491, Tebing Tinggi 46638, Banten','(+62) 243 8242 101','ebdaa68d-8e7e-4d0d-8357-df7b548d112f','2024-09-02 07:17:36','2024-09-02 07:17:36'),('8ad27932-e0ef-4741-b303-5db854e99357','Lili Nasyidah','2018-06-30','Male','Psr. Merdeka No. 236, Tangerang 13618, Sumut','(+62) 881 447 565','584b8f6d-4f9e-4b0c-a400-03b166443e5d','2024-09-02 07:17:37','2024-09-02 07:17:37'),('8b6fa50a-90aa-4cd5-ba11-a824021603bc','Suci Utami S.Pd','1980-08-28','Female','Jr. Ketandan No. 434, Semarang 29116, Jabar','0467 3845 6168','e65ce964-87a5-4394-aeb6-c12b0d89ead6','2024-09-02 07:17:36','2024-09-02 07:17:36'),('91ee4ccf-3e8e-47cf-87c3-e75b75cac4a9','Dacin Sitorus','2015-06-13','Male','Kpg. Sadang Serang No. 188, Cirebon 58773, Aceh','(+62) 681 2294 4934','e66b6c99-0816-47d6-a31b-bdbab78f83fc','2024-09-02 07:17:36','2024-09-02 07:17:36'),('9502e418-c5d2-48ac-8610-f3a9177ecc49','Yance Vanya Safitri','1973-02-21','Male','Ds. Baik No. 274, Metro 86357, Jatim','(+62) 28 8710 2951','f687d30e-6386-4424-ac28-63875df83a5e','2024-09-02 07:17:36','2024-09-02 07:17:36'),('97d87d8f-b1ab-4ec9-a0e8-4735fa3a6f38','Harsana Bajragin Nashiruddin','1980-01-07','Male','Gg. Dipenogoro No. 917, Sorong 53947, DKI','(+62) 26 0070 5973','fc69c1e6-32a9-4b5a-9206-9a107024578c','2024-09-02 07:17:36','2024-09-02 07:17:36'),('99437474-f3db-4c32-853c-db1301eb27bd','Aswani Narpati M.Pd','2017-06-15','Male','Gg. Cikapayang No. 391, Kupang 88488, NTT','0818 385 761','749d7133-b3cf-4519-994e-a0cdc3c31f23','2024-09-02 07:17:36','2024-09-02 07:17:36'),('9acff566-ea3f-4c7f-9856-0e3a67c47778','Salwa Yolanda S.Gz','1993-06-28','Female','Ds. Pelajar Pejuang 45 No. 517, Tanjungbalai 14807, Sulbar','0482 9053 715','f687d30e-6386-4424-ac28-63875df83a5e','2024-09-02 07:17:36','2024-09-02 07:17:36'),('9c2744b2-76e9-4121-853b-622ecfabd452','Gabriella Wulandari','1985-10-28','Male','Psr. Ters. Pasir Koja No. 542, Sawahlunto 67238, Papua','(+62) 387 2116 5782','5bbe9c32-2b27-4a29-92ab-8742ac553375','2024-09-02 07:17:37','2024-09-02 07:17:37'),('a3ef966f-3fcf-4055-aa45-7daaebe7d5eb','Violet Kuswandari','2000-11-22','Male','Psr. Ronggowarsito No. 135, Ambon 72239, NTB','(+62) 29 9825 5863','23319915-619f-4405-9c8e-053b9253f3be','2024-09-02 07:17:36','2024-09-02 07:17:36'),('a7219daa-d65f-4cd8-927e-1988237ab447','Padma Hartati','2008-06-13','Male','Psr. Raden Saleh No. 111, Pagar Alam 49705, Kalbar','(+62) 440 5670 8680','92594382-05c5-49e3-85a0-6362a3fb939e','2024-09-02 07:17:36','2024-09-02 07:17:36'),('a9c84d31-f132-446e-9578-8f3093cc8115','Mala Pratiwi M.Pd','2003-03-25','Male','Kpg. Tambak No. 229, Batam 48267, Jatim','021 5258 4468','f332aa59-1f7c-4e6f-bf49-64db552d20a9','2024-09-02 07:17:37','2024-09-02 07:17:37'),('adf01e36-84cc-4ab0-a445-55810f9ee773','Samiah Rahmawati S.Pt','2021-09-08','Male','Ds. Sutoyo No. 243, Tanjung Pinang 87714, NTB','0439 4248 5528','f332aa59-1f7c-4e6f-bf49-64db552d20a9','2024-09-02 07:17:37','2024-09-02 07:17:37'),('b1e52c7a-6293-4011-9524-623917381147','Salimah Nasyiah S.I.Kom','1978-08-23','Male','Jr. Basudewo No. 966, Padangsidempuan 26931, Kepri','0384 6710 7370','d3bde3db-8c86-4124-9f14-8aef9091ef45','2024-09-02 07:17:36','2024-09-02 07:17:36'),('b98d535a-685c-4ba3-b0bf-237d2d13c7fa','Janet Tiara Fujiati S.IP','2003-08-12','Male','Dk. Agus Salim No. 959, Kendari 21449, NTT','0325 7701 0237','969b050c-fa9f-4c09-a998-750740e7b1ef','2024-09-02 07:17:36','2024-09-02 07:17:36'),('bae75141-1149-432f-ba7d-73d622820851','Jefri Upik Rajasa S.E.','1999-05-06','Male','Ds. Bakit  No. 744, Bandung 30587, Gorontalo','(+62) 933 9169 160','e4096548-af34-4e09-9271-a84839d5a56b','2024-09-02 07:17:36','2024-09-02 07:17:36'),('bc5b1c61-9991-4c8e-aab4-08ae84e357fc','Malika Usamah','1981-11-06','Male','Jr. Basoka Raya No. 310, Salatiga 34802, DKI','(+62) 472 4546 7751','47347b96-8472-49b2-937c-00099d85c075','2024-09-02 07:17:37','2024-09-02 07:17:37'),('bcc3ec4a-077f-4f8e-b1d6-34937b1104ac','Rafi Maryadi Megantara','2014-06-02','Female','Ki. Babadan No. 401, Batam 69936, Riau','(+62) 323 7107 348','fbcabcea-9691-45dd-860c-767e3744f352','2024-09-02 07:17:36','2024-09-02 07:17:36'),('be3000ea-c737-47ab-b0f8-517490e5c0b2','Diana Anggraini','2016-09-07','Female','Ds. Raden No. 262, Batam 73549, Sumsel','(+62) 21 9193 4811','af40eda0-a2e9-4c64-84e6-967092a33717','2024-09-02 07:17:36','2024-09-02 07:17:36'),('c0197941-da67-4067-9a33-ca01c0041d70','Opan Pandu Simanjuntak','1996-07-09','Male','Kpg. Bak Air No. 403, Tanjungbalai 16611, Kalsel','0838 1046 273','af40eda0-a2e9-4c64-84e6-967092a33717','2024-09-02 07:17:36','2024-09-02 07:17:36'),('c409a60d-1096-4e77-9660-8e08f4baf2eb','Rahmi Permata','1975-05-09','Male','Ds. Ciumbuleuit No. 281, Palangka Raya 55462, Kalteng','(+62) 511 4704 5621','dfc9fd63-f6f9-4ba2-a316-c26ecda9bab9','2024-09-02 07:17:36','2024-09-02 07:17:36'),('c69eba14-6fe8-4442-81fe-dc898655b79f','Cinthia Wulandari','1990-02-26','Male','Jr. Yos No. 808, Pekanbaru 97528, Kepri','0885 0624 512','ec18dc33-f45c-4c8a-82ab-622e046436cc','2024-09-02 07:17:36','2024-09-02 07:17:36'),('c85ff8ba-24af-4b8b-a3e4-ee6b90008497','Uli Anggraini','2021-03-28','Female','Jln. Sunaryo No. 838, Bogor 67647, Bengkulu','(+62) 270 2949 4686','749d7133-b3cf-4519-994e-a0cdc3c31f23','2024-09-02 07:17:37','2024-09-02 07:17:37'),('c8ed13d0-d4cb-41c7-bdbf-0091eb79c5e8','Diah Lailasari','1981-12-22','Female','Jr. Sugiono No. 313, Tasikmalaya 93055, Bengkulu','(+62) 295 7140 612','cb093c2b-e983-487a-81b6-7592187336ae','2024-09-02 07:17:36','2024-09-02 07:17:36'),('c989b5a6-70cb-4887-8b22-ee76eb2fecde','Latika Haryanti','2011-02-07','Female','Dk. Kebonjati No. 191, Cimahi 28757, Kaltim','(+62) 888 112 820','e4096548-af34-4e09-9271-a84839d5a56b','2024-09-02 07:17:36','2024-09-02 07:17:36'),('cd0ee019-dd15-46f2-8bb4-574f99053911','Kamila Kuswandari','2014-11-07','Female','Jr. Hayam Wuruk No. 918, Banjarbaru 75672, Kalteng','0418 6534 837','fde7f191-ca10-4d39-a532-b46ab8715b86','2024-09-02 07:17:36','2024-09-02 07:17:36'),('d00e8331-4e8b-45ba-850e-39da49ee9b25','Karimah Nasyiah','1996-04-16','Female','Jln. Karel S. Tubun No. 5, Pasuruan 58408, Riau','(+62) 518 9575 649','5bbe9c32-2b27-4a29-92ab-8742ac553375','2024-09-02 07:17:36','2024-09-02 07:17:36'),('d0afc193-4664-40b7-a6de-6d53354d3c43','Endah Nasyiah','2004-06-11','Male','Ds. Laswi No. 804, Pontianak 13279, Sulsel','0851 8078 410','92594382-05c5-49e3-85a0-6362a3fb939e','2024-09-02 07:17:36','2024-09-02 07:17:36'),('d2067c58-9003-4f25-9423-276c67c8e194','Vivi Aryani','2001-08-11','Male','Kpg. Gotong Royong No. 76, Palangka Raya 51679, Kalsel','(+62) 913 7523 9006','3fabdcc5-4e54-4253-ba71-3d9472f66c2b','2024-09-02 07:17:36','2024-09-02 07:17:36'),('d3927ae0-dffa-439f-97f6-a0cdcfa07d93','Adiarja Haryanto','2001-10-15','Female','Ds. Sugiyopranoto No. 433, Probolinggo 16904, Jateng','(+62) 692 9446 3236','e65ce964-87a5-4394-aeb6-c12b0d89ead6','2024-09-02 07:17:36','2024-09-02 07:17:36'),('d90e010f-56e9-442c-a36d-837ac4679ec5','Oni Lestari','1983-04-17','Female','Ds. Sutarjo No. 88, Sibolga 29665, Sulsel','(+62) 824 871 668','8b139b05-e7c9-4025-93ae-77ea5ddf5548','2024-09-02 07:17:36','2024-09-02 07:17:36'),('e351564b-a95d-4102-ba4f-c9f99750e6f2','Restu Suryatmi','2013-04-22','Male','Jr. Fajar No. 730, Tasikmalaya 87349, Riau','(+62) 206 7144 252','d424548d-0d2b-4777-81a3-a1521e38bc10','2024-09-02 07:17:36','2024-09-02 07:17:36'),('e6787936-e12e-4beb-a068-c848206db19f','Lanang Pranowo S.Gz','1997-02-28','Male','Ki. Babah No. 254, Banjar 89966, Sulsel','0572 2824 3691','52b3c809-6d20-4a2b-b5d1-624f09aa34fd','2024-09-02 07:17:36','2024-09-02 07:17:36'),('e81e7e13-d6db-45c8-b7c3-c79936676a13','Genta Utami','2022-07-12','Female','Ki. Jagakarsa No. 80, Depok 74789, Papua','0257 9455 8418','23319915-619f-4405-9c8e-053b9253f3be','2024-09-02 07:17:37','2024-09-02 07:17:37'),('ee71902f-6760-4a38-84fd-f40767b74fe5','Laras Uchita Suryatmi','1986-11-14','Male','Dk. Ir. H. Juanda No. 920, Bitung 49362, Sumbar','0845 5548 5402','d3bde3db-8c86-4124-9f14-8aef9091ef45','2024-09-02 07:17:37','2024-09-02 07:17:37'),('eef1aaa2-b802-4c71-82ba-7ce816897da3','Farhunnisa Mayasari M.M.','1971-02-17','Female','Kpg. Bakau No. 6, Kendari 46452, NTT','(+62) 731 5513 233','5bbe9c32-2b27-4a29-92ab-8742ac553375','2024-09-02 07:17:36','2024-09-02 07:17:36'),('f0821901-27e7-45c5-a3ea-dea9c3eb576b','Najib Nainggolan','1982-04-27','Female','Kpg. Babadan No. 130, Prabumulih 48445, Sulsel','0722 5890 5939','584b8f6d-4f9e-4b0c-a400-03b166443e5d','2024-09-02 07:17:36','2024-09-02 07:17:36'),('f1b28887-f210-4054-a612-f7ce44de2d9d','Rangga Jagaraga Gunarto S.Farm','1985-03-12','Female','Jr. Bass No. 808, Banjar 34734, Bali','(+62) 325 1132 3305','ebdaa68d-8e7e-4d0d-8357-df7b548d112f','2024-09-02 07:17:36','2024-09-02 07:17:36'),('f3f66843-d0c2-4de4-a102-cee7082f0c44','Nasim Saragih','1995-10-22','Male','Jln. Bata Putih No. 139, Cilegon 43496, Jabar','0763 9371 7840','5bbe9c32-2b27-4a29-92ab-8742ac553375','2024-09-02 07:17:36','2024-09-02 07:17:36'),('f48bec70-b3d0-449c-a1c0-2321cefaaa3f','Faizah Ika Fujiati S.Psi','2000-12-07','Male','Kpg. Basmol Raya No. 947, Pontianak 62215, Papua','0855 927 773','8b139b05-e7c9-4025-93ae-77ea5ddf5548','2024-09-02 07:17:37','2024-09-02 07:17:37'),('f4b518e8-79d5-4d22-8e2e-6f523dd7ff85','Kenari Winarno','2019-08-12','Female','Ki. Ujung No. 101, Batam 84425, Sumut','0575 8762 066','584b8f6d-4f9e-4b0c-a400-03b166443e5d','2024-09-02 07:17:36','2024-09-02 07:17:36'),('f8f288b8-32a6-42f1-a943-489fb1209110','Eja Prasasta','1983-02-21','Female','Dk. Abdul Rahmat No. 717, Padangsidempuan 28436, DIY','(+62) 659 1148 5061','dfc9fd63-f6f9-4ba2-a316-c26ecda9bab9','2024-09-02 07:17:37','2024-09-02 07:17:37'),('fdd4c73a-f645-4728-a7b2-a63f9db88f0d','Shakila Farida','1987-07-29','Male','Psr. Cikapayang No. 843, Administrasi Jakarta Selatan 32956, Kaltara','(+62) 594 1142 671','e66b6c99-0816-47d6-a31b-bdbab78f83fc','2024-09-02 07:17:36','2024-09-02 07:17:36');
/*!40000 ALTER TABLE `tbl_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_region`
--

DROP TABLE IF EXISTS `tbl_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_region` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_region`
--

LOCK TABLES `tbl_region` WRITE;
/*!40000 ALTER TABLE `tbl_region` DISABLE KEYS */;
INSERT INTO `tbl_region` VALUES ('0df475eb-5fb0-4871-a659-7d41f018accf','Palopo','2024-09-02 07:17:36','2024-09-02 07:17:36'),('23319915-619f-4405-9c8e-053b9253f3be','Ambon','2024-09-02 07:17:36','2024-09-02 07:17:36'),('3fabdcc5-4e54-4253-ba71-3d9472f66c2b','Padang','2024-09-02 07:17:36','2024-09-02 07:17:36'),('47347b96-8472-49b2-937c-00099d85c075','Banda Aceh','2024-09-02 07:17:36','2024-09-02 07:17:36'),('49f644a8-c4e3-4c3c-94d3-4804a02491b6','Surabaya','2024-09-02 07:17:36','2024-09-02 07:17:36'),('52b3c809-6d20-4a2b-b5d1-624f09aa34fd','Sukabumi','2024-09-02 07:17:36','2024-09-02 07:17:36'),('584b8f6d-4f9e-4b0c-a400-03b166443e5d','Tanjung Pinang','2024-09-02 07:17:36','2024-09-02 07:17:36'),('5bbe9c32-2b27-4a29-92ab-8742ac553375','Sibolga','2024-09-02 07:17:36','2024-09-02 07:17:36'),('749d7133-b3cf-4519-994e-a0cdc3c31f23','Tebing Tinggi','2024-09-02 07:17:36','2024-09-02 07:17:36'),('81ddfcef-b163-4bd3-8971-2b74730ea369','Magelang','2024-09-02 07:17:36','2024-09-02 07:17:36'),('8b139b05-e7c9-4025-93ae-77ea5ddf5548','Pekalongan','2024-09-02 07:17:36','2024-09-02 07:17:36'),('92594382-05c5-49e3-85a0-6362a3fb939e','Pagar Alam','2024-09-02 07:17:36','2024-09-02 07:17:36'),('969b050c-fa9f-4c09-a998-750740e7b1ef','Cimahi','2024-09-02 07:17:36','2024-09-02 07:17:36'),('af40eda0-a2e9-4c64-84e6-967092a33717','Langsa','2024-09-02 07:17:36','2024-09-02 07:17:36'),('cb093c2b-e983-487a-81b6-7592187336ae','Cirebon','2024-09-02 07:17:36','2024-09-02 07:17:36'),('d3bde3db-8c86-4124-9f14-8aef9091ef45','Administrasi Jakarta Timur','2024-09-02 07:17:36','2024-09-02 07:17:36'),('d424548d-0d2b-4777-81a3-a1521e38bc10','Pematangsiantar','2024-09-02 07:17:36','2024-09-02 07:17:36'),('ddfda82d-7d74-4aa7-b948-f6b07ee574f0','Administrasi Jakarta Pusat','2024-09-02 07:17:36','2024-09-02 07:17:36'),('dfc9fd63-f6f9-4ba2-a316-c26ecda9bab9','Binjai','2024-09-02 07:17:36','2024-09-02 07:17:36'),('e4005157-7c80-4636-a886-a8aea59d3af2','Medan','2024-09-02 07:17:36','2024-09-02 07:17:36'),('e4096548-af34-4e09-9271-a84839d5a56b','Cilegon','2024-09-02 07:17:36','2024-09-02 07:17:36'),('e65ce964-87a5-4394-aeb6-c12b0d89ead6','Serang','2024-09-02 07:17:36','2024-09-02 07:17:36'),('e66b6c99-0816-47d6-a31b-bdbab78f83fc','Kupang','2024-09-02 07:17:36','2024-09-02 07:17:36'),('ebdaa68d-8e7e-4d0d-8357-df7b548d112f','Banjarbaru','2024-09-02 07:17:36','2024-09-02 07:17:36'),('ec18dc33-f45c-4c8a-82ab-622e046436cc','Prabumulih','2024-09-02 07:17:36','2024-09-02 07:17:36'),('f332aa59-1f7c-4e6f-bf49-64db552d20a9','Bukittinggi','2024-09-02 07:17:36','2024-09-02 07:17:36'),('f687d30e-6386-4424-ac28-63875df83a5e','Batam','2024-09-02 07:17:36','2024-09-02 07:17:36'),('fbcabcea-9691-45dd-860c-767e3744f352','Tangerang Selatan','2024-09-02 07:17:36','2024-09-02 07:17:36'),('fc69c1e6-32a9-4b5a-9206-9a107024578c','Pontianak','2024-09-02 07:17:36','2024-09-02 07:17:36'),('fde7f191-ca10-4d39-a532-b46ab8715b86','Balikpapan','2024-09-02 07:17:36','2024-09-02 07:17:36');
/*!40000 ALTER TABLE `tbl_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_role`
--

DROP TABLE IF EXISTS `tbl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_role` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_role`
--

LOCK TABLES `tbl_role` WRITE;
/*!40000 ALTER TABLE `tbl_role` DISABLE KEYS */;
INSERT INTO `tbl_role` VALUES ('0030345e-5fe6-406c-9c26-812dd30ef084','admin','2024-09-02 07:17:35','2024-09-02 07:17:35'),('12a16836-7bb0-4275-8c5f-1f62a9dccd0f','billing_officer','2024-09-02 07:17:35','2024-09-02 07:17:35'),('3d556de1-fb2f-4a24-a279-a6df7bb6f62d','receptionist','2024-09-02 07:17:35','2024-09-02 07:17:35'),('40d104ad-c8bf-4737-b92d-9302f6fe0c93','patient','2024-09-02 07:17:35','2024-09-02 07:17:35'),('50005802-534f-455e-b8bb-b8ff5109b10d','nurse','2024-09-02 07:17:35','2024-09-02 07:17:35'),('54352a69-5051-42ca-b533-95b673b76aea','doctor','2024-09-02 07:17:35','2024-09-02 07:17:35'),('775be4c9-38f8-4579-ac91-f8351dfc08b2','user','2024-09-02 07:17:35','2024-09-02 07:17:35'),('93fcbbcc-31c4-4f02-92b0-0ab38c32ce26','pharmacist','2024-09-02 07:17:35','2024-09-02 07:17:35'),('ad884bdd-17b6-4b3e-b3a5-423262f7f1e0','laboratory_technician','2024-09-02 07:17:35','2024-09-02 07:17:35'),('de29e406-0a54-4294-a959-383564fec421','super_admin','2024-09-02 07:17:35','2024-09-02 07:17:35');
/*!40000 ALTER TABLE `tbl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ticket`
--

DROP TABLE IF EXISTS `tbl_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ticket` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_to` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_status` enum('Open','In Progress','Closed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medication_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` enum('Paid','Unpaid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ticket`
--

LOCK TABLES `tbl_ticket` WRITE;
/*!40000 ALTER TABLE `tbl_ticket` DISABLE KEYS */;
INSERT INTO `tbl_ticket` VALUES ('06a917b5-0198-42ac-baf9-5dc19aaf3e44','901a016e-6202-44b1-bf11-96ffd57689d0','152671fb-dcf2-4988-ab7e-8884f325ce61','08ececbb-8745-4231-b36e-ce60c6f3ac0c','Open','18967295-e346-4e3a-acb9-cc4f3aa9463a','bb26293a-547b-43bf-8ac5-5822a564121a','Unpaid',91923.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('06f3f7c2-95ac-453e-8b15-434677721777','7ba78bfb-866c-4ec1-8557-282e42b9bc88','cd0ee019-dd15-46f2-8bb4-574f99053911','fa2083c2-bb93-4a01-bd7f-1e806cd290c8','In Progress','fc3d06fb-beca-44dd-a9af-f76d15133a2b','161d74a7-d6dd-4726-9f22-cb6553461a84','Paid',84167.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('09dfcfdf-3837-47c0-ae4a-d06e4ad5e6fc','577ecae2-af25-4cbe-8e33-ba1daa47bc17','a3ef966f-3fcf-4055-aa45-7daaebe7d5eb','2cb6f3e6-a1ba-4fc0-8cb6-26b45f15fa6d','Closed','9ee4dbc8-2272-4513-a671-dc3eb0a9a5a8','f1e2d308-1a9d-4bc2-ba54-ad9ee6b1731e','Unpaid',6695.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('0d1e3752-d683-4177-b3ab-27278874bfaa','fb9a680a-4adb-4dcc-a5f8-640689cbdb17','2900b3c2-6e31-473a-9b20-156b37779a9a','f8ee8bce-43da-4c70-82dd-9a0a252eba2f','In Progress','bf04c3d1-74d5-4a0f-9dd4-44b5149b06a0','8a33a89c-80c8-4986-aded-156ab61ce2fd','Unpaid',44224.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('12fadc09-92f0-40dc-9ef6-0c441014843c','fb9a680a-4adb-4dcc-a5f8-640689cbdb17','d3927ae0-dffa-439f-97f6-a0cdcfa07d93','f8ee8bce-43da-4c70-82dd-9a0a252eba2f','Open','2418ecae-3f2b-4dc7-a243-194bc86e020b','9fdc9ab8-39a5-4e39-b5d0-4c72363a4323','Unpaid',34222.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('1a9ef919-06f5-4bdc-97b7-9b5e7768cac5','901a016e-6202-44b1-bf11-96ffd57689d0','4d6c9157-07f0-4055-a741-6fe24e1bce9f','c961ec86-a8a8-40e9-a5e1-a5ee98ccdca1','In Progress','202ea5dd-649b-44ef-bbfb-55290ceae489','bb26293a-547b-43bf-8ac5-5822a564121a','Paid',55884.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('2701fb1b-d0dd-41a9-83f3-48cb4cf8adf8','705d4fd4-0711-47f5-8cba-a51055e8ff95','1d573b27-bd54-4cb0-b4ec-c6749bbe7030','09130302-de3e-4773-99d0-107978769477','Open','6d54a477-ebbe-4f9f-83d2-13aed68f229d','a3a09333-c426-4911-8bb5-c057330bb568','Unpaid',54056.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('2876dac1-9f28-4418-87fd-7b87dd8c8b33','fb9a680a-4adb-4dcc-a5f8-640689cbdb17','adf01e36-84cc-4ab0-a445-55810f9ee773','03c7dc94-5767-4b99-81c4-2e946ca57901','In Progress','202ea5dd-649b-44ef-bbfb-55290ceae489','be6ea2d3-5f48-4d91-9575-2c6f5f2bd2a6','Unpaid',28484.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('2cd9efa8-7fe7-481b-ac7e-9488bfa1eaf5','caeaeded-646a-4c36-909d-31cec8b18b8f','a9c84d31-f132-446e-9578-8f3093cc8115','99c7f707-5202-4e39-8a1f-dacd1ae3b9f1','Closed','9ee4dbc8-2272-4513-a671-dc3eb0a9a5a8','bb26293a-547b-43bf-8ac5-5822a564121a','Paid',79195.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('2cef293f-a09a-4566-b117-c11e69102426','cb57500e-a777-4a36-b871-6eb5309b9b14','7faa5f69-495a-4499-9e50-fa5a53dee3fa','270b70a8-408d-41a2-99e2-c50e2bff0f43','Open','9ee4dbc8-2272-4513-a671-dc3eb0a9a5a8','53484189-ec0f-4da7-9036-49a498da7263','Paid',97465.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('32ea1673-acdf-42d5-9f26-eb13001d89c4','a9c3a62a-174e-44ef-910d-abc4f5166734','5c08b8d2-29c2-473e-8f1c-6f4dc738b0ea','9b26b033-fc4b-4d2f-880b-27d59ac44a69','In Progress','fc31b4e7-5e6f-44ad-939b-55ea5279808b','9bd199e7-ea32-4e28-98a3-eed29fdf14e9','Paid',62125.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('37c77821-32ee-4096-8372-9584ab70d369','caeaeded-646a-4c36-909d-31cec8b18b8f','1643ccf8-62d2-4a3c-81c2-08a0593a8a87','09130302-de3e-4773-99d0-107978769477','Closed','202ea5dd-649b-44ef-bbfb-55290ceae489','bb26293a-547b-43bf-8ac5-5822a564121a','Unpaid',38707.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('3a293b58-aa60-4855-9b47-6b193d7fd7e3','cb57500e-a777-4a36-b871-6eb5309b9b14','fdd4c73a-f645-4728-a7b2-a63f9db88f0d','27c46e85-0b3b-4d77-abd0-259de30f3d2a','Open','81bd04ee-356b-4a9d-891b-e92dae76081b','bb26293a-547b-43bf-8ac5-5822a564121a','Unpaid',9266.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('408e7ce3-3ff5-4753-b266-1e8ffe80b622','fb9a680a-4adb-4dcc-a5f8-640689cbdb17','722d5e62-024b-488f-814a-b7d0be7ff46c','fa2083c2-bb93-4a01-bd7f-1e806cd290c8','Closed','56573316-4dba-48a3-a0d1-024852d93d4f','a3a09333-c426-4911-8bb5-c057330bb568','Unpaid',89626.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('44432a4e-9512-45d5-8f0d-b5f5db90de57','a9c3a62a-174e-44ef-910d-abc4f5166734','02ffc9d5-2d2b-4f9b-b0bc-e9cfd7052780','033b78fd-3a8a-4ee3-91b3-77c3219afe5e','In Progress','2481f069-fff8-447c-8156-bde6029160a1','9f79639c-dd51-4b61-bf66-4a517f3ee1cb','Paid',22427.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('488538b6-0d47-4691-ac15-8d7f279c813e','cb57500e-a777-4a36-b871-6eb5309b9b14','c85ff8ba-24af-4b8b-a3e4-ee6b90008497','d8810da3-9ce9-4630-ba7c-404b97e52bf4','Closed','9ee4dbc8-2272-4513-a671-dc3eb0a9a5a8','53484189-ec0f-4da7-9036-49a498da7263','Unpaid',27325.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('494251fc-7346-4c82-8040-ed147f75a40e','fd926fb5-4b4b-4c70-bc39-649f86bd50ca','91ee4ccf-3e8e-47cf-87c3-e75b75cac4a9','d8810da3-9ce9-4630-ba7c-404b97e52bf4','In Progress','2418ecae-3f2b-4dc7-a243-194bc86e020b','39868245-ffeb-45c3-a5b8-b51ef8fa7fe5','Paid',1805.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('4b5f76ca-800d-40dd-a9d4-b77e449cc11f','901a016e-6202-44b1-bf11-96ffd57689d0','5d114b71-4e94-49b8-90a3-5266e1ea56fc','5cd54ef4-35c0-4891-a8ed-25a56e255a20','In Progress','a980431b-27e7-4de8-9087-b93f512d3b7c','2a286f52-bc47-452d-86f1-b724697679fd','Unpaid',84332.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('4fa494c7-ddba-4456-a2d2-c86632f29302','705d4fd4-0711-47f5-8cba-a51055e8ff95','058f670f-9308-4e1d-b472-dbb1cc4bb101','99c7f707-5202-4e39-8a1f-dacd1ae3b9f1','Open','2418ecae-3f2b-4dc7-a243-194bc86e020b','53484189-ec0f-4da7-9036-49a498da7263','Unpaid',75570.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('50f90fd2-50a4-49f6-8eb5-f91fcec8a8cc','fd926fb5-4b4b-4c70-bc39-649f86bd50ca','3b4df63b-e932-4852-986a-8ae5ba0ca680','d2c63315-1e3f-42ff-bce0-0f7835e2295d','Open','202ea5dd-649b-44ef-bbfb-55290ceae489','35da300b-7dce-44aa-861a-658766d9f451','Paid',46904.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('53931df7-a61b-4fea-8b2a-3284f93fc7cf','fd926fb5-4b4b-4c70-bc39-649f86bd50ca','ee71902f-6760-4a38-84fd-f40767b74fe5','fa2083c2-bb93-4a01-bd7f-1e806cd290c8','Open','a980431b-27e7-4de8-9087-b93f512d3b7c','f1e2d308-1a9d-4bc2-ba54-ad9ee6b1731e','Unpaid',61472.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('53a68563-dbe7-4429-b0e2-32e13baaa434','cb57500e-a777-4a36-b871-6eb5309b9b14','3df81cdd-8d4f-4080-b472-d38225cf8f65','ec08c337-6509-4124-af63-55161a674683','Closed','9ee4dbc8-2272-4513-a671-dc3eb0a9a5a8','f4a2b403-5ed8-4749-9fa3-b4c26289bb10','Unpaid',57540.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('54bd9f53-9b05-4be5-bb64-84b7c6bfc6ba','577ecae2-af25-4cbe-8e33-ba1daa47bc17','20236ba2-a2e4-4378-866b-e92e241817c5','08ececbb-8745-4231-b36e-ce60c6f3ac0c','In Progress','56573316-4dba-48a3-a0d1-024852d93d4f','35da300b-7dce-44aa-861a-658766d9f451','Unpaid',27031.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('59b0d3e5-07c0-4e12-b4e9-0411264d0b83','b10547a9-932e-47de-b4ac-a1f6e91077f5','c989b5a6-70cb-4887-8b22-ee76eb2fecde','4dfb718c-9270-4a4b-90c4-f67e6567c96f','In Progress','202ea5dd-649b-44ef-bbfb-55290ceae489','2a286f52-bc47-452d-86f1-b724697679fd','Paid',34570.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('5a3101f5-b186-4f75-b020-78430840dfc1','a9c3a62a-174e-44ef-910d-abc4f5166734','9c2744b2-76e9-4121-853b-622ecfabd452','12164d54-94f0-44ad-917c-0973d1f125b1','Open','9ee4dbc8-2272-4513-a671-dc3eb0a9a5a8','f1e2d308-1a9d-4bc2-ba54-ad9ee6b1731e','Unpaid',27872.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('60d2f5ae-2309-4ed2-90a4-afdcb7ca975f','4613d829-82a0-42a0-857a-5261bb53c569','69152780-8615-4ccb-9639-2305fc51bb90','d2c63315-1e3f-42ff-bce0-0f7835e2295d','Closed','9ee4dbc8-2272-4513-a671-dc3eb0a9a5a8','2a286f52-bc47-452d-86f1-b724697679fd','Paid',72506.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('66165338-ac2b-4799-8709-4c71d929c2db','901a016e-6202-44b1-bf11-96ffd57689d0','7a10998f-f3e9-4840-998f-2361e44c613a','5cd54ef4-35c0-4891-a8ed-25a56e255a20','Closed','202ea5dd-649b-44ef-bbfb-55290ceae489','f1e2d308-1a9d-4bc2-ba54-ad9ee6b1731e','Paid',52415.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('769055b9-8234-4ecd-a301-a9726bb2e2b8','caeaeded-646a-4c36-909d-31cec8b18b8f','4d6c9157-07f0-4055-a741-6fe24e1bce9f','01217fbe-a142-4783-84e0-f8c23ab1fc24','Open','2481f069-fff8-447c-8156-bde6029160a1','161d74a7-d6dd-4726-9f22-cb6553461a84','Unpaid',7099.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('781e50cb-92f8-4e63-80ca-57ceaa7a8eb8','fd926fb5-4b4b-4c70-bc39-649f86bd50ca','838139b0-0273-40c0-928c-74e9f2cc3aa6','d8810da3-9ce9-4630-ba7c-404b97e52bf4','Closed','bf04c3d1-74d5-4a0f-9dd4-44b5149b06a0','8a33a89c-80c8-4986-aded-156ab61ce2fd','Unpaid',36533.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('7c765fa7-5feb-4131-a804-1b2c2c95ff12','75bb59c0-0a5f-44cf-84db-2d1c217d901b','a9c84d31-f132-446e-9578-8f3093cc8115','01217fbe-a142-4783-84e0-f8c23ab1fc24','Open','8184a27c-be24-4017-8991-fdc3b1481eb8','be6ea2d3-5f48-4d91-9575-2c6f5f2bd2a6','Unpaid',87302.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('7dcc0991-827b-47d6-8244-f8a0e720dce0','75bb59c0-0a5f-44cf-84db-2d1c217d901b','351633b1-3503-4e2a-8483-64b00bcd2778','c961ec86-a8a8-40e9-a5e1-a5ee98ccdca1','Closed','fe7e97d4-6931-4334-81f2-de005a7848b1','53484189-ec0f-4da7-9036-49a498da7263','Unpaid',54020.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('83bce177-097b-4261-8cf1-905a0fb411a1','b10547a9-932e-47de-b4ac-a1f6e91077f5','f8f288b8-32a6-42f1-a943-489fb1209110','28207056-8a5a-42b1-b3eb-5024bb22be61','In Progress','81bd04ee-356b-4a9d-891b-e92dae76081b','be6ea2d3-5f48-4d91-9575-2c6f5f2bd2a6','Paid',35088.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('84dc1b5b-b470-4488-a7c6-94d136c16407','b10547a9-932e-47de-b4ac-a1f6e91077f5','eef1aaa2-b802-4c71-82ba-7ce816897da3','603b91f8-933b-4a43-b9d5-47ad2ee2669e','Closed','81bd04ee-356b-4a9d-891b-e92dae76081b','f4a2b403-5ed8-4749-9fa3-b4c26289bb10','Paid',91441.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('8b831ecf-4da4-43b4-81e4-458105b0cdb4','b10547a9-932e-47de-b4ac-a1f6e91077f5','5d114b71-4e94-49b8-90a3-5266e1ea56fc','01217fbe-a142-4783-84e0-f8c23ab1fc24','In Progress','fc3d06fb-beca-44dd-a9af-f76d15133a2b','35da300b-7dce-44aa-861a-658766d9f451','Unpaid',5817.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('9caa0858-2f51-4e9d-8151-b041e977d57a','fd926fb5-4b4b-4c70-bc39-649f86bd50ca','c989b5a6-70cb-4887-8b22-ee76eb2fecde','ec08c337-6509-4124-af63-55161a674683','Closed','2481f069-fff8-447c-8156-bde6029160a1','dcc8f422-167d-4e54-a22d-7eade1fa6eaa','Unpaid',50174.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('9eb716fd-8e3c-42b6-8ce5-804a328c5bf8','705d4fd4-0711-47f5-8cba-a51055e8ff95','682a661b-8215-48b7-86cf-e0153e142b5f','99c7f707-5202-4e39-8a1f-dacd1ae3b9f1','Open','2481f069-fff8-447c-8156-bde6029160a1','dcc8f422-167d-4e54-a22d-7eade1fa6eaa','Unpaid',22987.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('a639b06c-018d-445c-990b-05795f3ee728','7ba78bfb-866c-4ec1-8557-282e42b9bc88','f1b28887-f210-4054-a612-f7ce44de2d9d','5cd54ef4-35c0-4891-a8ed-25a56e255a20','Open','56573316-4dba-48a3-a0d1-024852d93d4f','161d74a7-d6dd-4726-9f22-cb6553461a84','Unpaid',72754.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('a93469b7-9be7-4194-bdb7-1c575ab3f1d2','901a016e-6202-44b1-bf11-96ffd57689d0','3b4df63b-e932-4852-986a-8ae5ba0ca680','03c7dc94-5767-4b99-81c4-2e946ca57901','Closed','56573316-4dba-48a3-a0d1-024852d93d4f','f4a2b403-5ed8-4749-9fa3-b4c26289bb10','Unpaid',37670.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('b2b9604e-24be-4169-81bf-874bf9329103','705d4fd4-0711-47f5-8cba-a51055e8ff95','1d573b27-bd54-4cb0-b4ec-c6749bbe7030','4dfb718c-9270-4a4b-90c4-f67e6567c96f','Closed','2481f069-fff8-447c-8156-bde6029160a1','161d74a7-d6dd-4726-9f22-cb6553461a84','Paid',52246.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('c0de3439-7271-4418-9f85-eb38a608e21a','cb57500e-a777-4a36-b871-6eb5309b9b14','99437474-f3db-4c32-853c-db1301eb27bd','cecdd7ee-3dac-45f0-bc84-42a54ef41f8c','In Progress','fc3d06fb-beca-44dd-a9af-f76d15133a2b','dcc8f422-167d-4e54-a22d-7eade1fa6eaa','Paid',52972.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('c65cc829-0c4b-4df0-86c8-e1e44222228e','577ecae2-af25-4cbe-8e33-ba1daa47bc17','4e9da3c6-4ebe-47f7-8e9b-9f22409c206a','27c46e85-0b3b-4d77-abd0-259de30f3d2a','Closed','9ee4dbc8-2272-4513-a671-dc3eb0a9a5a8','9f79639c-dd51-4b61-bf66-4a517f3ee1cb','Paid',9910.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('c736c86e-ef0f-4b5f-819e-902b8bfa858f','7ba78bfb-866c-4ec1-8557-282e42b9bc88','e81e7e13-d6db-45c8-b7c3-c79936676a13','7dc212db-f4bc-4c3b-84c0-a6090c96f855','Closed','a980431b-27e7-4de8-9087-b93f512d3b7c','8a33a89c-80c8-4986-aded-156ab61ce2fd','Paid',21745.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('d98c1b41-5af7-4e08-a449-4dc9048ea393','caeaeded-646a-4c36-909d-31cec8b18b8f','e81e7e13-d6db-45c8-b7c3-c79936676a13','08ececbb-8745-4231-b36e-ce60c6f3ac0c','Closed','2b035621-837d-4658-b496-1f700edbf960','35da300b-7dce-44aa-861a-658766d9f451','Paid',20822.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('dccd9016-f45e-4f90-b910-7262cf61ac6a','705d4fd4-0711-47f5-8cba-a51055e8ff95','2e65a252-cb73-4570-ace7-3b20ce965ff9','f8ee8bce-43da-4c70-82dd-9a0a252eba2f','In Progress','8184a27c-be24-4017-8991-fdc3b1481eb8','9f79639c-dd51-4b61-bf66-4a517f3ee1cb','Unpaid',70831.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('e3f21182-ede6-46e8-b733-4321187c8d9a','4613d829-82a0-42a0-857a-5261bb53c569','77be05d8-f4e2-4bf2-a39c-97c53cafb754','01217fbe-a142-4783-84e0-f8c23ab1fc24','Closed','2b035621-837d-4658-b496-1f700edbf960','9bd199e7-ea32-4e28-98a3-eed29fdf14e9','Paid',73835.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('e6ccc453-f3ab-43df-baf2-78b24bed15e4','b10547a9-932e-47de-b4ac-a1f6e91077f5','36f5086e-95f9-46c4-8f91-bd1411a28a61','d6605d7d-78be-4e13-abee-a0cebc53a237','In Progress','2b035621-837d-4658-b496-1f700edbf960','53484189-ec0f-4da7-9036-49a498da7263','Paid',38557.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('e95597a0-8315-4e05-ab83-c740e7dc073b','7ba78bfb-866c-4ec1-8557-282e42b9bc88','c409a60d-1096-4e77-9660-8e08f4baf2eb','72541ec8-1a8c-47b4-8cdf-33c62c4bbe22','Open','fc31b4e7-5e6f-44ad-939b-55ea5279808b','9fdc9ab8-39a5-4e39-b5d0-4c72363a4323','Unpaid',37744.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('efda6e70-91b4-4da0-a9a6-0d39d2141c96','fb9a680a-4adb-4dcc-a5f8-640689cbdb17','b1e52c7a-6293-4011-9524-623917381147','28207056-8a5a-42b1-b3eb-5024bb22be61','Closed','fe7e97d4-6931-4334-81f2-de005a7848b1','be6ea2d3-5f48-4d91-9575-2c6f5f2bd2a6','Unpaid',90316.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('f51d0c69-c7c4-4fb3-b5a1-89d2c05d2b31','901a016e-6202-44b1-bf11-96ffd57689d0','2900b3c2-6e31-473a-9b20-156b37779a9a','4dfb718c-9270-4a4b-90c4-f67e6567c96f','In Progress','fe7e97d4-6931-4334-81f2-de005a7848b1','9bd199e7-ea32-4e28-98a3-eed29fdf14e9','Paid',53935.00,'2024-09-02 07:17:37','2024-09-02 07:17:37'),('f54f2482-fa10-4792-a323-b40ab14d3fb9','fd926fb5-4b4b-4c70-bc39-649f86bd50ca','4e9da3c6-4ebe-47f7-8e9b-9f22409c206a','3f9b046d-99a8-4f42-b258-e2b7afd9f354','Open','8184a27c-be24-4017-8991-fdc3b1481eb8','9fdc9ab8-39a5-4e39-b5d0-4c72363a4323','Unpaid',57540.00,'2024-09-02 07:17:37','2024-09-02 07:17:37');
/*!40000 ALTER TABLE `tbl_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbl_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES ('4613d829-82a0-42a0-857a-5261bb53c569','gmustofa','$2y$12$IO.XDOvxg646TR7mDsgxxuF3b9j7XuX8.aEdtanKUjsQCFRZcoLo.','0030345e-5fe6-406c-9c26-812dd30ef084','2024-09-02 07:17:36','2024-09-02 07:17:36'),('577ecae2-af25-4cbe-8e33-ba1daa47bc17','luhung.salahudin','$2y$12$IO.XDOvxg646TR7mDsgxxuF3b9j7XuX8.aEdtanKUjsQCFRZcoLo.','50005802-534f-455e-b8bb-b8ff5109b10d','2024-09-02 07:17:36','2024-09-02 07:17:36'),('705d4fd4-0711-47f5-8cba-a51055e8ff95','demo','$2y$12$s9PCBPT7zVdOg3X6zMPiHO3/Id49PmxUO5Ty7m2YN10ASvTljhUnO','775be4c9-38f8-4579-ac91-f8351dfc08b2','2024-09-02 07:17:36','2024-09-02 07:17:36'),('75bb59c0-0a5f-44cf-84db-2d1c217d901b','intan.melani','$2y$12$IO.XDOvxg646TR7mDsgxxuF3b9j7XuX8.aEdtanKUjsQCFRZcoLo.','ad884bdd-17b6-4b3e-b3a5-423262f7f1e0','2024-09-02 07:17:36','2024-09-02 07:17:36'),('7ba78bfb-866c-4ec1-8557-282e42b9bc88','purwanti.indah','$2y$12$IO.XDOvxg646TR7mDsgxxuF3b9j7XuX8.aEdtanKUjsQCFRZcoLo.','54352a69-5051-42ca-b533-95b673b76aea','2024-09-02 07:17:36','2024-09-02 07:17:36'),('901a016e-6202-44b1-bf11-96ffd57689d0','pyuliarti','$2y$12$IO.XDOvxg646TR7mDsgxxuF3b9j7XuX8.aEdtanKUjsQCFRZcoLo.','775be4c9-38f8-4579-ac91-f8351dfc08b2','2024-09-02 07:17:36','2024-09-02 07:17:36'),('a9c3a62a-174e-44ef-910d-abc4f5166734','saragih.lanang','$2y$12$IO.XDOvxg646TR7mDsgxxuF3b9j7XuX8.aEdtanKUjsQCFRZcoLo.','54352a69-5051-42ca-b533-95b673b76aea','2024-09-02 07:17:36','2024-09-02 07:17:36'),('b10547a9-932e-47de-b4ac-a1f6e91077f5','esiregar','$2y$12$IO.XDOvxg646TR7mDsgxxuF3b9j7XuX8.aEdtanKUjsQCFRZcoLo.','93fcbbcc-31c4-4f02-92b0-0ab38c32ce26','2024-09-02 07:17:36','2024-09-02 07:17:36'),('caeaeded-646a-4c36-909d-31cec8b18b8f','adika.megantara','$2y$12$IO.XDOvxg646TR7mDsgxxuF3b9j7XuX8.aEdtanKUjsQCFRZcoLo.','93fcbbcc-31c4-4f02-92b0-0ab38c32ce26','2024-09-02 07:17:36','2024-09-02 07:17:36'),('cb57500e-a777-4a36-b871-6eb5309b9b14','halim.mahesa','$2y$12$IO.XDOvxg646TR7mDsgxxuF3b9j7XuX8.aEdtanKUjsQCFRZcoLo.','93fcbbcc-31c4-4f02-92b0-0ab38c32ce26','2024-09-02 07:17:36','2024-09-02 07:17:36'),('fb9a680a-4adb-4dcc-a5f8-640689cbdb17','admin','$2y$12$ZKp4NO2dTcQGcouvdcO69OQYB8YzPKEpQhGQnVs7ui6.CyRzLfeam','0030345e-5fe6-406c-9c26-812dd30ef084','2024-09-02 07:17:35','2024-09-02 07:17:35'),('fd926fb5-4b4b-4c70-bc39-649f86bd50ca','roktaviani','$2y$12$IO.XDOvxg646TR7mDsgxxuF3b9j7XuX8.aEdtanKUjsQCFRZcoLo.','93fcbbcc-31c4-4f02-92b0-0ab38c32ce26','2024-09-02 07:17:36','2024-09-02 07:17:36');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 21:18:59
