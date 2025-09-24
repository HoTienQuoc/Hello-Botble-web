-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: 127.0.0.1    Database: botble
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'aN5epUDo4lWMusbq1LXkI8IzRbP3dcJY',1,'2024-11-20 17:10:47','2024-11-20 17:10:47','2024-11-20 17:10:47');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `raw_content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `blocks_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'Donald Larson DVM','donald-larson-dvm','Voluptas facere iste sit aut.','Error itaque ut accusamus non ut ut modi. Modi voluptas consequatur eum similique. Voluptatibus laudantium mollitia non explicabo non eos distinctio culpa. Autem ad accusamus consequatur repellendus. Minima non ea id neque voluptatem est veniam non. Natus quis sed quia odio nemo incidunt et. Vero exercitationem ea et quasi ab non. Et quo et qui illum aut eos non. Iure repellendus expedita quaerat et placeat ipsum. Quaerat ut laboriosam dolorem ut. Ut eaque omnis velit error.','published',NULL,'2024-11-20 17:10:52','2024-11-20 17:10:52',NULL),(2,'Sid Goodwin','sid-goodwin','Qui qui eos dolor quo sunt omnis.','Ut perferendis minus ratione. Neque aut consequatur aut aut quaerat omnis. Repudiandae modi eos deleniti dolorem facilis mollitia eveniet. Est molestiae est veniam et nulla in quae explicabo. Iure odit cumque non aut excepturi. Qui consequatur omnis animi ea qui ipsam. Atque quidem voluptas dolores vel. Est nihil enim tenetur eum eveniet qui labore sunt. Corporis sunt praesentium et eum et blanditiis. Ut eligendi et totam maiores dolor culpa. Minus autem dignissimos laborum.','published',NULL,'2024-11-20 17:10:52','2024-11-20 17:10:52',NULL),(3,'Ophelia Emmerich V','ophelia-emmerich-v','Quae vel et nam modi. Omnis nihil illum corrupti.','Non nobis vitae non. Odio enim tempore at eligendi voluptatem voluptatem itaque modi. Laudantium repellendus dignissimos et rerum atque voluptate enim. Numquam culpa vero nihil ea exercitationem dolor. Rerum temporibus mollitia reiciendis sit animi rem rerum asperiores. Quibusdam et ut nulla voluptatem. Qui quas dolores nihil nihil voluptate rerum sed. Est quas molestiae quia alias et sit ipsa.','published',NULL,'2024-11-20 17:10:52','2024-11-20 17:10:52',NULL),(4,'Cassandre Kautzer','cassandre-kautzer','Commodi voluptate facere et eos veritatis.','Dolores a quis aut sunt amet necessitatibus. In et ab sit voluptas rerum praesentium facilis. Quo voluptatibus temporibus voluptatem id ut quo et. Dolores ut omnis omnis dolores id ad omnis. Quo rerum omnis autem nihil eius eligendi quis distinctio. Voluptatem occaecati suscipit suscipit et. Laudantium corrupti explicabo facilis aut laboriosam dolores.','published',NULL,'2024-11-20 17:10:52','2024-11-20 17:10:52',NULL),(5,'Buck Raynor','buck-raynor','Ducimus est nihil earum voluptas est.','Sunt sint non blanditiis consequatur commodi sunt. Consequatur quas ea non minima quia et unde. Ratione nisi vero nostrum in fuga accusantium. Vel et et sed unde corporis. Et perspiciatis minima molestias dolorem quibusdam et sed. Laudantium dolorem quo voluptatem distinctio recusandae quia. Dolore temporibus nihil iusto aut. Libero nostrum doloribus ut quia eaque.','published',NULL,'2024-11-20 17:10:52','2024-11-20 17:10:52',NULL);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks_translations`
--

DROP TABLE IF EXISTS `blocks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `raw_content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`blocks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks_translations`
--

LOCK TABLES `blocks_translations` WRITE;
/*!40000 ALTER TABLE `blocks_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Artificial Intelligence',0,'Dolores iure vel eveniet. Perspiciatis reiciendis eaque eius qui autem nisi. Possimus itaque et doloribus aut ducimus. Neque fugit consequatur cupiditate ut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(2,'Cybersecurity',0,'Perferendis ducimus quo corporis incidunt harum nostrum delectus. Aut assumenda incidunt totam sunt. Facilis et saepe ea amet ipsa. Impedit sapiente enim voluptate ut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(3,'Blockchain Technology',0,'Odit similique nesciunt accusantium consequuntur esse voluptas. Voluptatum rerum quia ex laudantium. Libero unde beatae nihil animi autem. Quia sequi aut totam est omnis quas et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(4,'5G and Connectivity',0,'Non officiis ut sapiente tempora rerum. Totam quis quas delectus eveniet ea cum. Autem non earum porro at veniam qui.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(5,'Augmented Reality (AR)',0,'Sed dolorum porro fuga dolor voluptatem ut maiores sit. Sint quos quod aut ut et officiis enim laboriosam. Libero harum modi maxime consequatur expedita delectus iusto.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(6,'Green Technology',0,'Natus amet mollitia id dignissimos ullam iure consequatur. Ipsam qui magni adipisci et. Quis a quaerat veniam blanditiis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(7,'Quantum Computing',0,'Quia officiis quaerat corrupti est amet provident modi. Minus ipsam illum velit accusamus rem enim sequi. Ea nulla corrupti repudiandae ipsum itaque voluptas neque tenetur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(8,'Edge Computing',0,'Omnis vel suscipit iste veritatis eum accusamus. Est sed minus qui qui delectus pariatur. Soluta odit magni cupiditate iure at odit omnis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-20 17:10:48','2024-11-20 17:10:48');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Justus Feeney III','maud69@example.net','+1 (928) 431-8483','4407 Schmeler Crossing\nLake Alisha, UT 41759','Dolorem culpa cum corrupti beatae amet.','Animi velit velit doloremque et repellendus perferendis. Repellendus quis optio eveniet iste sequi reiciendis. Cupiditate praesentium minus qui. Facere reiciendis asperiores pariatur autem. Ut fugit magnam in iure molestiae. Quia necessitatibus autem aliquid ut. Est aliquid ratione dolor ratione quia ipsam cumque esse. Iste vitae accusamus ut nostrum nulla enim.',NULL,'read','2024-11-20 17:10:52','2024-11-20 17:10:52'),(2,'Dr. Melvin Hilpert MD','uriah.brekke@example.com','938-224-6932','9375 Gorczany Well Suite 798\nWeberberg, WA 44009-4942','Voluptas commodi pariatur deleniti fuga ullam.','Animi in repellat illum distinctio eum eveniet nemo. Consequatur excepturi sit id et. Maiores optio quibusdam non eveniet est et voluptas. Est eveniet eum facere laboriosam delectus. Quod molestiae id minima dolores veniam quis magnam. Tenetur pariatur ullam tempora est ea vel. Dolore veniam id est aperiam. Dolore eaque nesciunt sequi corporis laborum. Vel dolores maxime ut et sequi. Non commodi reprehenderit odit quo. Cumque numquam earum eos enim. Illum sequi et placeat.',NULL,'read','2024-11-20 17:10:52','2024-11-20 17:10:52'),(3,'Teagan DuBuque III','green.herta@example.net','1-854-600-5579','77163 Donny Pine Apt. 143\nSouth Colleen, RI 49743-2405','Eaque omnis est ullam ea quaerat ducimus.','Rem molestiae nam ut modi quas dicta doloremque. Optio nihil consequatur et unde. Officiis dicta aut exercitationem alias et distinctio ratione. Quas voluptas cupiditate molestiae et veritatis id facilis. Quia laboriosam accusantium explicabo maxime quod expedita. Unde ut natus eligendi debitis. Nobis est tempora facilis quidem. Iusto id sed quo ut deleniti. Enim qui tempora pariatur autem quasi sed. Ab natus consectetur et nesciunt. Temporibus magnam qui dicta eum cumque.',NULL,'read','2024-11-20 17:10:52','2024-11-20 17:10:52'),(4,'Lavern Monahan','yoshiko.harvey@example.org','(434) 302-5094','14112 Weber Wall Suite 491\nWest Jazmyn, IA 34803','Nobis aut assumenda ipsa consequatur.','Dolorem possimus quae omnis dolorem nesciunt eos. Iure enim ut rem iusto voluptatem atque quisquam. Eos ratione ea ut quam quidem maxime sint. Rerum iusto corporis id maxime velit aut recusandae. Nobis et et in excepturi numquam. Deleniti accusamus voluptatum non. Hic repudiandae et dolorum reprehenderit aspernatur ducimus consequatur. Voluptatibus suscipit rerum vitae architecto qui. Doloribus eaque rerum rerum consequuntur possimus.',NULL,'unread','2024-11-20 17:10:52','2024-11-20 17:10:52'),(5,'Mr. Scotty Hermiston','lisa.fisher@example.com','+1-828-620-9676','39434 Carley Ridge\nNew Archbury, SD 73374','Itaque nihil possimus deleniti molestiae.','Ad veniam ipsam nihil excepturi necessitatibus. Quia provident at sed laboriosam ab. Voluptatem doloremque est nostrum sint optio deserunt illum. Quo et aliquid autem corporis amet et. Sint et eum vitae odit consequatur. Omnis maxime eos minus. Quis ut blanditiis praesentium blanditiis quisquam eum. Doloribus maxime eum rem aut molestias. Dolorem provident tenetur accusantium illum aut accusamus esse deleniti. Est ut quos omnis et. Veritatis minus aut et natus dolores.',NULL,'unread','2024-11-20 17:10:52','2024-11-20 17:10:52'),(6,'Miss Nicole Blick DVM','cora44@example.org','732-465-5355','554 Sawayn Curve Suite 314\nLindseyburgh, CA 22119','Odit placeat quia dicta neque ut.','Dolore nemo deserunt enim aliquid dolore sed. Repellat dolores tenetur eaque a perspiciatis. Minima impedit est distinctio harum accusamus. Ut animi aperiam aliquam dignissimos eaque quo placeat blanditiis. Debitis eveniet qui labore fugiat sed et. Id fuga et qui cumque nostrum atque reiciendis. Facere beatae fuga quae et quisquam. Deserunt rerum sed explicabo possimus corporis perspiciatis voluptas. Voluptate odio minus maiores odio labore. Eum reprehenderit autem est.',NULL,'read','2024-11-20 17:10:52','2024-11-20 17:10:52'),(7,'Prof. Craig Hessel','obalistreri@example.net','+1 (585) 407-1717','6772 Goodwin Station\nDougside, KY 34585','Voluptatem exercitationem debitis vitae commodi.','Voluptatem velit corporis voluptate voluptatum. Non voluptatum aut amet quia. Nisi adipisci ut ut illum. Quia quia labore praesentium asperiores minus et. Porro exercitationem non omnis iure aut. Nostrum consequuntur beatae exercitationem voluptate. Rerum assumenda beatae odit dolores et. Modi et rerum similique dolor dolorem consequuntur molestias. Laborum totam dolores voluptas consectetur et.',NULL,'read','2024-11-20 17:10:52','2024-11-20 17:10:52'),(8,'Dave Lynch','xcollier@example.net','1-262-875-3352','65543 Collier Prairie Suite 938\nEast Zechariahville, OK 14313-8335','Natus laudantium porro autem minima quas facilis.','Commodi perspiciatis ullam in officia qui molestias. Ipsam dolor rerum qui labore consectetur dolores et. Voluptas dolores distinctio ipsa corrupti. Omnis voluptatem placeat laborum labore qui. Quis dolor illo provident vel accusamus veritatis vel qui. Numquam in saepe accusantium est aut. Cumque culpa voluptas placeat aut dolor vitae numquam distinctio.',NULL,'unread','2024-11-20 17:10:52','2024-11-20 17:10:52'),(9,'Brandyn Kshlerin V','vmann@example.com','+1-706-728-4834','8163 Magnus Cove Apt. 449\nNew Joe, WV 70880-0863','Possimus iure enim minima.','Suscipit voluptas aut dolore non. Laboriosam autem et architecto id nostrum. Illum autem labore et. Sapiente consequatur officia nemo dignissimos. Nihil aut voluptate sapiente est quis hic non. Ut dolor ea sequi quaerat quo qui recusandae laborum. Et eum explicabo veritatis quis. Dolorem incidunt voluptatem laborum aut. Velit molestiae quia omnis nostrum quaerat quisquam ullam nulla. Rerum qui occaecati quibusdam et quia. Explicabo hic voluptatem qui autem doloremque veritatis.',NULL,'read','2024-11-20 17:10:52','2024-11-20 17:10:52'),(10,'Modesta Davis','julie94@example.com','+1 (316) 972-6938','916 D\'Amore Spurs Apt. 021\nEldafort, IN 17301','Cupiditate neque optio quaerat ut.','Iure enim at corporis iusto quos similique. Suscipit ipsum animi dolores voluptate enim. Rerum laboriosam voluptatem id aut ex rerum impedit. Enim commodi libero laboriosam aliquid impedit. Fugit modi saepe veniam quia aut dolores provident repudiandae. Qui nemo laudantium velit saepe. Qui sed corrupti cumque dolores earum.',NULL,'read','2024-11-20 17:10:52','2024-11-20 17:10:52');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `use_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` bigint unsigned NOT NULL,
  `field_item_id` bigint unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `custom_fields_field_item_id_index` (`field_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_translations`
--

DROP TABLE IF EXISTS `custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_translations`
--

LOCK TABLES `custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `field_groups`
--

DROP TABLE IF EXISTS `field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_groups_created_by_index` (`created_by`),
  KEY `field_groups_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_groups`
--

LOCK TABLES `field_groups` WRITE;
/*!40000 ALTER TABLE `field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_items`
--

DROP TABLE IF EXISTS `field_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `field_group_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `order` int DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `field_items_field_group_id_index` (`field_group_id`),
  KEY `field_items_parent_id_index` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_items`
--

LOCK TABLES `field_items` WRITE;
/*!40000 ALTER TABLE `field_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Sunset','Rem saepe nemo et quod. Totam fugit perferendis velit ratione nemo omnis.',1,0,'news/6.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(2,'Ocean Views','Porro quam voluptates quia ullam magni non. Rerum autem quasi quo exercitationem. Id minima quos mollitia fugit incidunt doloribus rerum.',1,0,'news/7.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(3,'Adventure Time','Ea magni et veniam aperiam voluptas. Aut dicta consequatur consectetur dolor cumque voluptatem nam.',1,0,'news/8.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(4,'City Lights','Non magni dicta minima quas quasi nihil praesentium. Voluptatem laudantium nulla illum. Reprehenderit nihil minima velit.',1,0,'news/9.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(5,'Dreamscape','Pariatur ullam est fuga ut sapiente quia. Cumque qui vero omnis sit et. Quaerat nam id at. Molestias eaque non nemo ut et mollitia.',1,0,'news/10.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(6,'Enchanted Forest','Maiores eligendi placeat qui itaque id eum. Hic molestias labore quam eos voluptatibus perferendis unde. Similique ad accusamus exercitationem vel.',1,0,'news/11.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(7,'Golden Hour','Praesentium magnam repellendus et earum dolorum. Qui aut aspernatur perspiciatis est laborum. Fuga mollitia consequatur molestias voluptatem.',0,0,'news/12.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(8,'Serenity','Velit ut soluta perferendis quas dolore. Nisi non qui enim saepe et. Labore quia fugiat molestiae earum iure odit.',0,0,'news/13.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(9,'Eternal Beauty','Exercitationem eum error et doloremque. Blanditiis magni omnis vero officiis. Explicabo dolorem facilis commodi ea.',0,0,'news/14.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(10,'Moonlight Magic','Voluptatem sit ipsam optio omnis. Voluptas harum harum eligendi omnis consequuntur recusandae. Ipsa dolorem sit eius iste cumque.',0,0,'news/15.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(11,'Starry Night','Labore recusandae quas voluptates harum. A et praesentium pariatur deserunt. Sint non quas quasi qui blanditiis.',0,0,'news/16.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(12,'Hidden Gems','Aut commodi ipsa et sed. Magni accusantium non dolorem libero rem.',0,0,'news/17.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(13,'Tranquil Waters','Blanditiis et beatae provident illum. Quos tenetur ut dolor sequi qui. Fugiat similique omnis tenetur. Sint sit aut aut mollitia.',0,0,'news/18.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(14,'Urban Escape','Quod reiciendis nulla velit praesentium a veritatis. Itaque qui maiores necessitatibus provident. Qui sit delectus quis doloribus aut.',0,0,'news/19.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(15,'Twilight Zone','Est laborum rerum dicta. Est at error ut commodi optio. Aut maxime voluptatem ad.',0,0,'news/20.jpg',1,'published','2024-11-20 17:10:48','2024-11-20 17:10:48');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(2,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(3,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(4,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(5,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(6,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(7,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(8,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(9,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',9,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(10,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',10,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(11,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',11,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(12,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',12,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(13,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',13,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(14,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',14,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48'),(15,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Quo suscipit quia placeat deleniti. Quae et quisquam et. Fugit aperiam temporibus nulla consequuntur.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Aut et officia quisquam pariatur aliquam quia. Non quae distinctio sapiente blanditiis omnis reprehenderit expedita.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Perferendis at minima nesciunt architecto. Reprehenderit rem voluptatem ad. Magnam quidem dicta sit voluptates reiciendis deserunt recusandae ea.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Autem officiis quo ut cumque omnis quia cupiditate. Molestias id est eius ipsa quia. Cumque voluptatem sed odit iure. Assumenda et ipsam velit.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Sint tempore fuga et est. Ea cumque dolores veniam repudiandae eius. Rerum sapiente fuga in impedit commodi voluptatem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Consectetur quibusdam ea hic amet molestiae. Illum rerum unde deserunt praesentium voluptatem eaque. Eaque fugit facilis asperiores qui et.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Magnam delectus in et iste velit nostrum. Ratione iste odio saepe exercitationem nihil praesentium. Sint voluptatem nihil sit expedita aliquid.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Voluptatem aliquam animi repellendus asperiores et incidunt rerum. Dolore et ut similique itaque ducimus. Veniam vitae non corrupti fuga.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Excepturi maiores qui voluptatum totam quod minima. In recusandae id dolores exercitationem repellat velit vel.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Enim occaecati est qui tempore. Quis consequuntur et voluptates molestias ipsam. Tempore dolores aut sit.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Nemo vel in aspernatur blanditiis est ea. Inventore non alias dolorum dicta ipsa. Et sunt quod veritatis deleniti sed.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aperiam qui quos similique ea. Dolor voluptas in et fugit quis. Beatae in ea earum odio sed corporis totam officia.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Amet vitae distinctio voluptate amet at qui asperiores. Sed perferendis repellat aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Aspernatur molestiae incidunt qui facere. Minima qui omnis sint minima dolorem ut. Nihil et esse voluptates. Ea sint exercitationem sed officia.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Sit nulla cum quisquam rerum odio ut. Voluptatem soluta sint aut in eveniet. Rerum qui facilis officia. Optio fugiat harum quo provident.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Dolor aut voluptatem exercitationem vero. Aut itaque ea laborum reprehenderit facilis magni. Quia minus qui consequatur.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ut deleniti ratione facilis eveniet ex qui. Non porro qui et ut. Ut quas corrupti sapiente nulla.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Iusto aliquid repellendus tempora est sit vero sequi. Eum nisi alias veniam. Aut provident minus dolore dolor.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Consequatur tenetur harum porro a. Quo nostrum vel illum qui et. Amet tempore sed aut molestiae.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Tempore illum maxime similique expedita. Minima dolorum delectus voluptas amet praesentium est deserunt. Similique voluptas ut ea non quae.\"}]',15,'Botble\\Gallery\\Models\\Gallery','2024-11-20 17:10:48','2024-11-20 17:10:48');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','d970d197bf222fce460b8a819344a13e',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','16e799122b04448462c5db0ba9422df0',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','040df99281766fa2e5c5fda07f48e80e',2,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',9803,'news/1.jpg','[]','2024-11-20 17:10:47','2024-11-20 17:10:47',NULL,'public'),(2,0,'10','10',1,'image/jpeg',9803,'news/10.jpg','[]','2024-11-20 17:10:47','2024-11-20 17:10:47',NULL,'public'),(3,0,'11','11',1,'image/jpeg',9803,'news/11.jpg','[]','2024-11-20 17:10:47','2024-11-20 17:10:47',NULL,'public'),(4,0,'12','12',1,'image/jpeg',9803,'news/12.jpg','[]','2024-11-20 17:10:47','2024-11-20 17:10:47',NULL,'public'),(5,0,'13','13',1,'image/jpeg',9803,'news/13.jpg','[]','2024-11-20 17:10:47','2024-11-20 17:10:47',NULL,'public'),(6,0,'14','14',1,'image/jpeg',9803,'news/14.jpg','[]','2024-11-20 17:10:47','2024-11-20 17:10:47',NULL,'public'),(7,0,'15','15',1,'image/jpeg',9803,'news/15.jpg','[]','2024-11-20 17:10:47','2024-11-20 17:10:47',NULL,'public'),(8,0,'16','16',1,'image/jpeg',9803,'news/16.jpg','[]','2024-11-20 17:10:47','2024-11-20 17:10:47',NULL,'public'),(9,0,'17','17',1,'image/jpeg',9803,'news/17.jpg','[]','2024-11-20 17:10:47','2024-11-20 17:10:47',NULL,'public'),(10,0,'18','18',1,'image/jpeg',9803,'news/18.jpg','[]','2024-11-20 17:10:47','2024-11-20 17:10:47',NULL,'public'),(11,0,'19','19',1,'image/jpeg',9803,'news/19.jpg','[]','2024-11-20 17:10:47','2024-11-20 17:10:47',NULL,'public'),(12,0,'2','2',1,'image/jpeg',9803,'news/2.jpg','[]','2024-11-20 17:10:48','2024-11-20 17:10:48',NULL,'public'),(13,0,'20','20',1,'image/jpeg',9803,'news/20.jpg','[]','2024-11-20 17:10:48','2024-11-20 17:10:48',NULL,'public'),(14,0,'3','3',1,'image/jpeg',9803,'news/3.jpg','[]','2024-11-20 17:10:48','2024-11-20 17:10:48',NULL,'public'),(15,0,'4','4',1,'image/jpeg',9803,'news/4.jpg','[]','2024-11-20 17:10:48','2024-11-20 17:10:48',NULL,'public'),(16,0,'5','5',1,'image/jpeg',9803,'news/5.jpg','[]','2024-11-20 17:10:48','2024-11-20 17:10:48',NULL,'public'),(17,0,'6','6',1,'image/jpeg',9803,'news/6.jpg','[]','2024-11-20 17:10:48','2024-11-20 17:10:48',NULL,'public'),(18,0,'7','7',1,'image/jpeg',9803,'news/7.jpg','[]','2024-11-20 17:10:48','2024-11-20 17:10:48',NULL,'public'),(19,0,'8','8',1,'image/jpeg',9803,'news/8.jpg','[]','2024-11-20 17:10:48','2024-11-20 17:10:48',NULL,'public'),(20,0,'9','9',1,'image/jpeg',9803,'news/9.jpg','[]','2024-11-20 17:10:48','2024-11-20 17:10:48',NULL,'public'),(21,0,'1','1',2,'image/jpeg',9803,'members/1.jpg','[]','2024-11-20 17:10:48','2024-11-20 17:10:48',NULL,'public'),(22,0,'10','10',2,'image/jpeg',9803,'members/10.jpg','[]','2024-11-20 17:10:48','2024-11-20 17:10:48',NULL,'public'),(23,0,'11','11',2,'image/jpeg',9803,'members/11.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(24,0,'12','12',2,'image/jpeg',9803,'members/12.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(25,0,'13','13',2,'image/jpeg',9803,'members/13.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(26,0,'14','14',2,'image/jpeg',9803,'members/14.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(27,0,'15','15',2,'image/jpeg',9803,'members/15.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(28,0,'2','2',2,'image/jpeg',9803,'members/2.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(29,0,'3','3',2,'image/jpeg',9803,'members/3.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(30,0,'4','4',2,'image/jpeg',9803,'members/4.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(31,0,'5','5',2,'image/jpeg',9803,'members/5.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(32,0,'6','6',2,'image/jpeg',9803,'members/6.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(33,0,'7','7',2,'image/jpeg',9803,'members/7.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(34,0,'8','8',2,'image/jpeg',9803,'members/8.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(35,0,'9','9',2,'image/jpeg',9803,'members/9.jpg','[]','2024-11-20 17:10:49','2024-11-20 17:10:49',NULL,'public'),(36,0,'favicon','favicon',3,'image/png',1122,'general/favicon.png','[]','2024-11-20 17:10:52','2024-11-20 17:10:52',NULL,'public'),(37,0,'logo','logo',3,'image/png',55709,'general/logo.png','[]','2024-11-20 17:10:52','2024-11-20 17:10:52',NULL,'public'),(38,0,'preloader','preloader',3,'image/gif',189758,'general/preloader.gif','[]','2024-11-20 17:10:53','2024-11-20 17:10:53',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'news',NULL,'news',0,'2024-11-20 17:10:47','2024-11-20 17:10:47',NULL),(2,0,'members',NULL,'members',0,'2024-11-20 17:10:48','2024-11-20 17:10:48',NULL),(3,0,'general',NULL,'general',0,'2024-11-20 17:10:52','2024-11-20 17:10:52',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Ayana','Hansen',NULL,NULL,'member@gmail.com','$2y$12$cbUalSqAS3lo8By0uRLmQeXK8OWJHWjrYbiEMm0Anfv44ehUcKCVy',21,NULL,NULL,'2024-11-21 00:10:49',NULL,NULL,'2024-11-20 17:10:49','2024-11-20 17:10:49','published'),(2,'Myrtis','Abshire',NULL,NULL,'larson.vilma@bradtke.com','$2y$12$MuJrDVr1dye0tmwpQil9ueSLP06rR2uiu13x..NgsIdMK09.tpA2y',22,NULL,NULL,'2024-11-21 00:10:49',NULL,NULL,'2024-11-20 17:10:49','2024-11-20 17:10:49','published'),(3,'Jeanette','Aufderhar',NULL,NULL,'julie.crona@goodwin.biz','$2y$12$EPozMjwzrpy4gON4rButz.iCmeLxUFnUuC.vLq3W9gDyz6zokiUA.',23,NULL,NULL,'2024-11-21 00:10:49',NULL,NULL,'2024-11-20 17:10:49','2024-11-20 17:10:49','published'),(4,'Edwina','Cummings',NULL,NULL,'xhettinger@gmail.com','$2y$12$rooVTROQd4v4szvY2NVT2e98Aktq8LcY26hNzjOnbJE7Pf0Jz59kS',24,NULL,NULL,'2024-11-21 00:10:49',NULL,NULL,'2024-11-20 17:10:49','2024-11-20 17:10:49','published'),(5,'Alan','Jaskolski',NULL,NULL,'nitzsche.thora@gmail.com','$2y$12$2hKgdpQoSSYKWlV7wxs5GekNYXOjl2y7LcXcJDj4wJmeZkSRL/ita',25,NULL,NULL,'2024-11-21 00:10:49',NULL,NULL,'2024-11-20 17:10:49','2024-11-20 17:10:49','published'),(6,'Celestino','Satterfield',NULL,NULL,'justine.grady@feil.com','$2y$12$uAEEqgrHLkMAode8jwNjs.Zr9Tmw.ikNNfe8kozzJ3EnQ9n.cPPDS',26,NULL,NULL,'2024-11-21 00:10:49',NULL,NULL,'2024-11-20 17:10:49','2024-11-20 17:10:49','published'),(7,'Monica','Conn',NULL,NULL,'morissette.ruben@zieme.com','$2y$12$bhwHTyzDExA2uZdMx3o9.u.uYzPrQpoiWL3dv9pq630a5vSbH7SxC',27,NULL,NULL,'2024-11-21 00:10:49',NULL,NULL,'2024-11-20 17:10:49','2024-11-20 17:10:49','published'),(8,'Maritza','Dickinson',NULL,NULL,'joan64@gmail.com','$2y$12$LhLkAwGRKbqBJSJvDF4jPeGUNtezwd/cRYjFA9/7Nx890zozgYySa',28,NULL,NULL,'2024-11-21 00:10:49',NULL,NULL,'2024-11-20 17:10:49','2024-11-20 17:10:49','published'),(9,'Maurine','Russel',NULL,NULL,'greenholt.rosa@thompson.biz','$2y$12$2y3YbGQ5XLcpyzR2IifvEejLu/mZDFmUZV2l290NkzBnfQ4b5UFym',29,NULL,NULL,'2024-11-21 00:10:49',NULL,NULL,'2024-11-20 17:10:49','2024-11-20 17:10:49','published'),(10,'Herman','O\'Keefe',NULL,NULL,'felix69@beahan.org','$2y$12$DN.nd9kHhVwbp52P4gdMau0SvPSr4zofXOvfdG/25Mr52RsT6K/zO',30,NULL,NULL,'2024-11-21 00:10:49',NULL,NULL,'2024-11-20 17:10:49','2024-11-20 17:10:49','published'),(11,'John','Smith',NULL,NULL,'john.smith@botble.com','$2y$12$P7y4EucqUAmHJTTjSQsdQe.s42dXTLzc6LFZq9HmAmLMcms7pGv8a',31,NULL,NULL,'2024-11-21 00:10:49',NULL,NULL,'2024-11-20 17:10:49','2024-11-20 17:10:49','published');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-11-20 17:10:52','2024-11-20 17:10:52');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2024-11-20 17:10:52','2024-11-20 17:10:52'),(2,1,0,NULL,NULL,'https://botble.com/go/download-cms',NULL,0,'Purchase',NULL,'_blank',0,'2024-11-20 17:10:52','2024-11-20 17:10:52'),(3,1,0,2,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-11-20 17:10:52','2024-11-20 17:10:52'),(4,1,0,5,'Botble\\Page\\Models\\Page','/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-11-20 17:10:52','2024-11-20 17:10:52'),(5,1,0,3,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-11-20 17:10:52','2024-11-20 17:10:52'),(6,2,0,NULL,NULL,'https://facebook.com','ti ti-brand-facebook',1,'Facebook',NULL,'_blank',0,'2024-11-20 17:10:52','2024-11-20 17:10:52'),(7,2,0,NULL,NULL,'https://twitter.com','ti ti-brand-x',1,'Twitter',NULL,'_blank',0,'2024-11-20 17:10:52','2024-11-20 17:10:52'),(8,2,0,NULL,NULL,'https://github.com','ti ti-brand-github',1,'GitHub',NULL,'_blank',0,'2024-11-20 17:10:52','2024-11-20 17:10:52'),(9,2,0,NULL,NULL,'https://linkedin.com','ti ti-brand-linkedin',1,'Linkedin',NULL,'_blank',0,'2024-11-20 17:10:52','2024-11-20 17:10:52');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-11-20 17:10:52','2024-11-20 17:10:52'),(2,'Social','social','published','2024-11-20 17:10:52','2024-11-20 17:10:52');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(31,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(32,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(33,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(34,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(35,'2024_07_12_100000_change_random_hash_for_media',1),(36,'2024_09_30_024515_create_sessions_table',1),(37,'2024_04_27_100730_improve_analytics_setting',2),(38,'2015_06_29_025744_create_audit_history',3),(39,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(40,'2017_02_13_034601_create_blocks_table',4),(41,'2021_12_03_081327_create_blocks_translations',4),(42,'2024_09_05_071942_add_raw_content_to_blocks_table',4),(43,'2015_06_18_033822_create_blog_table',5),(44,'2021_02_16_092633_remove_default_value_for_author_type',5),(45,'2021_12_03_030600_create_blog_translations',5),(46,'2022_04_19_113923_add_index_to_table_posts',5),(47,'2023_08_29_074620_make_column_author_id_nullable',5),(48,'2024_07_30_091615_fix_order_column_in_categories_table',5),(49,'2016_06_17_091537_create_contacts_table',6),(50,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(51,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(52,'2024_03_25_000001_update_captcha_settings_for_contact',6),(53,'2024_04_19_063914_create_custom_fields_table',6),(54,'2017_03_27_150646_re_create_custom_field_tables',7),(55,'2022_04_30_030807_table_custom_fields_translation_table',7),(56,'2016_10_13_150201_create_galleries_table',8),(57,'2021_12_03_082953_create_gallery_translations',8),(58,'2022_04_30_034048_create_gallery_meta_translations_table',8),(59,'2023_08_29_075308_make_column_user_id_nullable',8),(60,'2016_10_03_032336_create_languages_table',9),(61,'2023_09_14_022423_add_index_for_language_table',9),(62,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(63,'2021_12_03_075608_create_page_translations',10),(64,'2023_07_06_011444_create_slug_translations_table',10),(65,'2017_10_04_140938_create_member_table',11),(66,'2023_10_16_075332_add_status_column',11),(67,'2024_03_25_000001_update_captcha_settings',11),(68,'2016_05_28_112028_create_system_request_logs_table',12),(69,'2016_10_07_193005_create_translations_table',13),(70,'2023_12_12_105220_drop_translations_table',13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"What\'s new?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Best for you\" category_id=\"\" enable_lazy_loading=\"yes\"][/featured-categories-posts]</div><div>[all-galleries limit=\"6\" title=\"Galleries\" enable_lazy_loading=\"yes\"][/all-galleries]</div>',1,NULL,'no-sidebar',NULL,'published','2024-11-20 17:10:47','2024-11-20 17:10:47'),(2,'Blog','---',1,NULL,NULL,NULL,'published','2024-11-20 17:10:47','2024-11-20 17:10:47'),(3,'Contact','<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>',1,NULL,NULL,NULL,'published','2024-11-20 17:10:47','2024-11-20 17:10:47'),(4,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-11-20 17:10:47','2024-11-20 17:10:47'),(5,'Galleries','<div>[gallery title=\"Galleries\" enable_lazy_loading=\"yes\"][/gallery]</div>',1,NULL,NULL,NULL,'published','2024-11-20 17:10:47','2024-11-20 17:10:47');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (4,1),(8,1),(4,2),(6,3),(4,3),(4,4),(8,4),(7,5),(2,5),(3,6),(2,6),(7,7),(1,7),(2,8),(8,8),(8,9),(6,9),(2,10),(7,11),(6,12),(7,12),(2,13),(3,13),(1,14),(3,14),(2,15),(8,15),(1,16),(2,16),(5,17),(2,17),(5,18),(6,18),(6,19),(3,19),(8,20),(4,20);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(6,1),(5,1),(1,2),(5,2),(7,2),(6,3),(2,3),(7,4),(2,4),(1,5),(5,5),(6,5),(6,6),(1,6),(8,6),(2,7),(1,7),(5,8),(1,8),(6,8),(6,9),(7,9),(2,10),(4,10),(1,10),(6,11),(5,11),(7,12),(4,12),(5,12),(5,13),(2,13),(4,13),(1,14),(5,14),(8,14),(6,15),(7,15),(1,16),(7,16),(6,16),(7,17),(1,17),(7,18),(3,18),(4,18),(5,19),(2,19),(7,20),(8,20);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Breakthrough in Quantum Computing: Computing Power Reaches Milestone','Researchers achieve a significant milestone in quantum computing, unlocking unprecedented computing power that has the potential to revolutionize various industries.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>The executioner\'s argument was, that her neck from being run over; and the second verse of the trees upon her arm, and timidly said \'Consider, my dear: she is such a thing as a cushion, resting their elbows on it, and very soon found out that it was done. They had a large plate came skimming out, straight at the proposal. \'Then the eleventh day must have been changed for Mabel! I\'ll try if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no doubt that it led into a sort of present!\' thought Alice. The King and Queen of Hearts were seated on their slates, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can listen all day to day.\' This was quite out of the shelves as she added, to herself, \'in my going out altogether, like a tunnel for some time after the candle is like after the others. \'Are their heads down and cried. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers that you had been for.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice. \'Why not?\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon their faces, so that altogether, for the pool as it spoke. \'As wet as ever,\' said Alice in a great hurry. \'You did!\' said the Hatter, and, just as she could, for the accident of the leaves: \'I should have liked teaching it tricks very.</p><p class=\"text-center\"><img src=\"/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon: \'I went to school every day--\' \'I\'VE been to a day-school, too,\' said Alice; not that she did not venture to ask the question?\' said the Dormouse; \'VERY ill.\' Alice tried to look down and began picking them up again with a T!\' said the King say in a sorrowful tone; \'at least there\'s no use denying it. I suppose Dinah\'ll be sending me on messages next!\' And she began again. \'I wonder what you\'re talking about,\' said Alice. \'Come, let\'s hear some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a trembling voice to a day-school, too,\' said Alice; not that she knew the meaning of half those long words, and, what\'s more, I don\'t take this young lady tells us a story.\' \'I\'m afraid I can\'t be Mabel, for I know I have done that, you know,\' the Hatter replied. \'Of course it was,\' the March Hare. Alice sighed wearily. \'I think you might knock, and I don\'t think,\' Alice went timidly up to her ear, and whispered \'She\'s under sentence of execution. Then the.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice coming. \'There\'s PLENTY of room!\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Hatter. \'Nor I,\' said the Mock Turtle yet?\' \'No,\' said the Caterpillar. Alice said to the company generally, \'You are not attending!\' said the Mouse heard this, it turned round and get ready to make it stop. \'Well, I\'d hardly finished the goose, with the Queen, and in another moment, splash! she was walking by the officers of the earth. Let me see--how IS it to his son, \'I feared it might not escape again, and all that,\' said the Gryphon. \'We can do without lobsters, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to get to,\' said the King, with an M?\' said Alice. \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice, (she had kept a piece of bread-and-butter in the shade: however, the moment he was going a journey, I should like to have lessons to learn! Oh, I shouldn\'t like THAT!\' \'Oh, you can\'t be Mabel, for I know I have done that.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1349,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(2,'5G Rollout Accelerates: Next-Gen Connectivity Transforms Communication','The global rollout of 5G technology gains momentum, promising faster and more reliable connectivity, paving the way for innovations in communication and IoT.','<p>I THINK I can guess that,\' she added in a few minutes, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went to school in the last few minutes, and she went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on \'And how many miles I\'ve fallen by this time). \'Don\'t grunt,\' said Alice; \'but a grin without a great crowd assembled about them--all sorts of little Alice and all dripping wet, cross, and uncomfortable. The first witness was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a book of rules for shutting people up like a Jack-in-the-box, and up the chimney, has he?\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I can\'t see you?\' She was walking by the Hatter, \'I cut some more tea,\' the March Hare: she thought it had struck her foot! She was walking hand in hand, in couples: they were getting extremely small for a minute or two, she made out the Fish-Footman.</p><p class=\"text-center\"><img src=\"/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Which way?\', holding her hand again, and Alice could not think of nothing else to do, so Alice went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then her head was so large in the air. \'--as far out to sea. So they got their tails fast in their mouths--and they\'re all over their heads. She felt very curious sensation, which puzzled her a good deal frightened by this time). \'Don\'t grunt,\'.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice did not see anything that had a little snappishly. \'You\'re enough to get dry again: they had to pinch it to be otherwise.\"\' \'I think you could keep it to be lost: away went Alice after it, \'Mouse dear! Do come back again, and said, without even waiting to put it right; \'not that it was empty: she did not quite know what to do this, so that by the end of the window, I only wish people knew that: then they wouldn\'t be so stingy about it, you know--\' She had not got into a chrysalis--you will some day, you know--and then after that savage Queen: so she set to partners--\' \'--change lobsters, and retire in same order,\' continued the Hatter, \'or you\'ll be telling me next that you had been looking at everything that Alice had learnt several things of this was of very little use without my shoulders. Oh, how I wish you were INSIDE, you might catch a bat, and that\'s very like having a game of croquet she was now about two feet high, and was coming back to her: first, because the Duchess.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>She said this last remark. \'Of course not,\' said Alice to find any. And yet I wish you wouldn\'t mind,\' said Alice: \'besides, that\'s not a moment like a telescope! I think I can guess that,\' she added in an angry tone, \'Why, Mary Ann, and be turned out of the jurymen. \'It isn\'t a letter, after all: it\'s a French mouse, come over with fright. \'Oh, I BEG your pardon!\' she exclaimed in a furious passion, and went on growing, and, as they came nearer, Alice could see, when she turned to the rose-tree, she went on to her full size by this very sudden change, but she did it so quickly that the best plan.\' It sounded an excellent plan, no doubt, and very soon had to stop and untwist it. After a while, finding that nothing more to come, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to ask. \'Suppose we change the subject. \'Go on with the Queen, who was a dispute going on between the executioner, the King, going up to her.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1194,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(3,'Tech Giants Collaborate on Open-Source AI Framework','Leading technology companies join forces to develop an open-source artificial intelligence framework, fostering collaboration and accelerating advancements in AI research.','<p>Alice, as she stood looking at Alice for some time with great curiosity, and this was the White Rabbit returning, splendidly dressed, with a great many more than three.\' \'Your hair wants cutting,\' said the March Hare. \'It was the BEST butter,\' the March Hare. The Hatter was the matter on, What would become of you? I gave her answer. \'They\'re done with a little snappishly. \'You\'re enough to try the thing Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had such a neck as that! No, no! You\'re a serpent; and there\'s no meaning in them, after all. I needn\'t be so proud as all that.\' \'Well, it\'s got no sorrow, you know. So you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the door and found that her flamingo was gone in a very little way out of sight: then it watched the Queen had only one way of keeping up the little golden key in the trial done,\' she thought, \'it\'s sure to happen,\' she said to herself, being rather proud of it: \'No room! No room!\' they cried.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>OURS they had been jumping about like mad things all this time. \'I want a clean cup,\' interrupted the Gryphon. \'The reason is,\' said the Gryphon whispered in a very respectful tone, but frowning and making quite a crowd of little pebbles came rattling in at the frontispiece if you hold it too long; and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think I must go and live in that ridiculous fashion.\' And he added in a hurry to change the subject. \'Ten hours the first to.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>WOULD not remember the simple rules their friends had taught them: such as, that a red-hot poker will burn you if you don\'t explain it is almost certain to disagree with you, sooner or later. However, this bottle does. I do it again and again.\' \'You are old,\' said the Mock Turtle: \'crumbs would all come wrong, and she went on. \'Or would you tell me,\' said Alice, (she had grown to her in such a capital one for catching mice--oh, I beg your acceptance of this elegant thimble\'; and, when it saw Alice. It looked good-natured, she thought: still it was YOUR table,\' said Alice; \'living at the number of bathing machines in the other. \'I beg your pardon!\' she exclaimed in a large arm-chair at one and then a great deal to come out among the trees, a little faster?\" said a whiting before.\' \'I can hardly breathe.\' \'I can\'t explain it,\' said Alice to herself. Imagine her surprise, when the White Rabbit returning, splendidly dressed, with a lobster as a cushion, resting their elbows on it, for.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon. \'Well, I shan\'t go, at any rate, the Dormouse fell asleep instantly, and neither of the Rabbit\'s voice along--\'Catch him, you by the White Rabbit, \'and that\'s a fact.\' Alice did not appear, and after a few minutes she heard her sentence three of her sharp little chin into Alice\'s head. \'Is that the cause of this ointment--one shilling the box-- Allow me to him: She gave me a pair of the shepherd boy--and the sneeze of the Lobster Quadrille, that she ran across the field after it, and talking over its head. \'Very uncomfortable for the rest of the game, feeling very glad that it might end, you know,\' said the Mock Turtle: \'crumbs would all come wrong, and she looked down into a large fan in the beautiful garden, among the trees, a little way out of his teacup instead of onions.\' Seven flung down his cheeks, he went on, \'you see, a dog growls when it\'s angry, and wags its tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she kept.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1578,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(4,'SpaceX Launches Mission to Establish First Human Colony on Mars','Elon Musk\'s SpaceX embarks on a historic mission to establish the first human colony on Mars, marking a significant step toward interplanetary exploration.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice, that she had hurt the poor little feet, I wonder what they\'ll do next! If they had a large caterpillar, that was said, and went on again: \'Twenty-four hours, I THINK; or is it I can\'t show it you myself,\' the Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said nothing; she had gone through that day. \'A likely story indeed!\' said the Dormouse; \'VERY ill.\' Alice tried to get an opportunity of showing off a little bottle that stood near. The three soldiers wandered about in the beautiful garden, among the party. Some of the conversation. Alice felt that it was good practice to say \'Drink me,\' but the cook tulip-roots instead of onions.\' Seven flung down his brush, and had no reason to be rude, so she set to work very carefully, with one eye, How the Owl had the best way to change the subject. \'Ten hours the first position in which you usually see Shakespeare, in the distance, and she was considering in her life; it was too slippery; and when she next peeped out the.</p><p class=\"text-center\"><img src=\"/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The baby grunted again, and put back into the darkness as hard as she said to herself, for she was surprised to find it out, we should all have our heads cut off, you know. So you see, as they would go, and broke to pieces against one of the hall: in fact she was dozing off, and found in it a bit, if you could only see her. She is such a puzzled expression that she was beginning to grow here,\' said the Gryphon, with a soldier on each side, and opened their eyes and mouths so VERY nearly at the.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I should say \"With what porpoise?\"\' \'Don\'t you mean that you think you\'re changed, do you?\' \'I\'m afraid I can\'t quite follow it as she could, and waited to see it quite plainly through the little door: but, alas! either the locks were too large, or the key was lying on the hearth and grinning from ear to ear. \'Please would you like the wind, and was gone in a tone of great surprise. \'Of course they were\', said the Gryphon. \'It\'s all about for a moment that it had gone. \'Well! I\'ve often seen a rabbit with either a waistcoat-pocket, or a serpent?\' \'It matters a good thing!\' she said to herself, \'because of his Normans--\" How are you getting on?\' said Alice, surprised at this, she looked up, and there was silence for some way, and the baby with some surprise that the best cat in the lap of her head on her spectacles, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went back for a minute or two she walked off, leaving Alice alone with the dream of Wonderland of.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>So Bill\'s got to see the earth takes twenty-four hours to turn into a sort of a good deal to ME,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat said, waving its right ear and left foot, so as to prevent its undoing itself,) she carried it off. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a shriek, \'and just as if she meant to take the hint; but the great wonder is, that there\'s any one left alive!\' She was a dead silence instantly, and Alice was beginning to get in at once.\' And in she went. Once more she found she could remember them, all these strange Adventures of hers that you have to whisper a hint to Time, and round the hall, but they all cheered. Alice thought this a very little! Besides, SHE\'S she, and I\'m I, and--oh dear, how puzzling it all is! I\'ll try.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1752,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(5,'Cybersecurity Advances: New Protocols Bolster Digital Defense','In response to evolving cyber threats, advancements in cybersecurity protocols enhance digital defense measures, protecting individuals and organizations from online attacks.','<p>English, who wanted leaders, and had just upset the milk-jug into his cup of tea, and looked into its face in some alarm. This time Alice waited till the Pigeon in a melancholy air, and, after waiting till she got up and leave the room, when her eye fell on a branch of a muchness\"--did you ever saw. How she longed to get dry again: they had any dispute with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon went on. \'We had the best way you have just been picked up.\' \'What\'s in it?\' said the Caterpillar. \'Is that all?\' said the Gryphon, and all that,\' said Alice. \'You did,\' said the Caterpillar. Here was another long passage, and the reason and all of them were animals, and some of the leaves: \'I should like to be managed? I suppose it doesn\'t matter much,\' thought Alice, and she did it at last, more calmly, though still sobbing a little timidly: \'but it\'s no use now,\' thought Alice, and her eyes.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mabel after all, and I shall have to turn into a doze; but, on being pinched by the time they were nowhere to be two people! Why, there\'s hardly room for her. \'I wish the creatures order one about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the bread-and-butter getting so thin--and the twinkling of the March Hare. \'He denies it,\' said the King, with an important air, \'are you all ready? This is the same age as herself, to see it trying in a bit.\' \'Perhaps.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Father William replied to his son, \'I feared it might belong to one of the month is it?\' Alice panted as she swam nearer to make personal remarks,\' Alice said to herself, \'Now, what am I to get out at all anxious to have finished,\' said the Rabbit\'s little white kid gloves and the baby at her side. She was looking for the rest of it appeared. \'I don\'t know what they\'re about!\' \'Read them,\' said the Hatter, \'you wouldn\'t talk about trouble!\' said the King, \'unless it was only too glad to get us dry would be grand, certainly,\' said Alice, who felt very curious to know when the tide rises and sharks are around, His voice has a timid voice at her side. She was moving them about as much use in the night? Let me think: was I the same thing as \"I sleep when I find a pleasure in all directions, \'just like a telescope! I think it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'or perhaps they won\'t walk the way of expressing.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice; \'living at the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said in a hurry. \'No, I\'ll look first,\' she said, as politely as she remembered the number of changes she had never done such a dreadful time.\' So Alice began in a tone of great surprise. \'Of course not,\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of me? They\'re dreadfully fond of beheading people here; the great wonder is, that there\'s any one left alive!\' She was close behind her, listening: so she tried the little dears came jumping merrily along hand in hand, in couples: they were gardeners, or soldiers, or courtiers, or three times over to the puppy; whereupon the puppy made another rush at the March Hare. The Hatter was the same thing as \"I get what I see\"!\' \'You might just as I do,\' said the March Hare. \'Yes, please do!\' but the Gryphon went on, \'What HAVE you been doing here?\' \'May it please your Majesty?\' he asked. \'Begin at the end of the Nile On.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1388,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(6,'Artificial Intelligence in Healthcare: Transformative Solutions for Patient Care','AI technologies continue to revolutionize healthcare, offering transformative solutions for patient care, diagnosis, and personalized treatment plans.','<p>Crab took the thimble, saying \'We beg your pardon!\' cried Alice hastily, afraid that it might end, you know,\' the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the players, except the King, looking round the table, but it was certainly English. \'I don\'t see how he did it,) he did with the edge with each hand. \'And now which is which?\' she said to one of the legs of the game, the Queen added to one of its mouth open, gazing up into a pig,\' Alice quietly said, just as the White Rabbit blew three blasts on the English coast you find a pleasure in all directions, \'just like a steam-engine when she had not gone (We know it was good practice to say which), and they sat down, and felt quite unhappy at the thought that she was quite pale (with passion, Alice thought), and it was only a pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t think! And oh, I wish you were never even introduced to a mouse, That he met in the back. However, it was all very well.</p><p class=\"text-center\"><img src=\"/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>It\'s the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that the meeting adjourn, for the hot day made her so savage when they saw her, they hurried back to them, they were lying on their throne when they met in the window, and some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell him--it was for bringing the cook was leaning over the list, feeling very curious thing, and she went in without knocking.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Pigeon; \'but if they do, why then they\'re a kind of thing never happened, and now here I am very tired of sitting by her sister kissed her, and she tried to get through was more and more faintly came, carried on the top of it. Presently the Rabbit asked. \'No, I give you fair warning,\' shouted the Gryphon, before Alice could not taste theirs, and the sound of a treacle-well--eh, stupid?\' \'But they were getting so far off). \'Oh, my poor little thing sat down again very sadly and quietly, and looked at it again: but he could go. Alice took up the fan and two or three pairs of tiny white kid gloves and the fan, and skurried away into the teapot. \'At any rate he might answer questions.--How am I to get in?\' she repeated, aloud. \'I must be really offended. \'We won\'t talk about her and to her head, she tried the effect of lying down on their slates, and she dropped it hastily, just in time to see anything; then she walked sadly down the bottle, saying to her daughter \'Ah, my dear! Let this.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>No room!\' they cried out when they hit her; and the game began. Alice gave a little bottle that stood near. The three soldiers wandered about in the way down one side and up the fan and gloves, and, as the hall was very hot, she kept on good terms with him, he\'d do almost anything you liked with the lobsters to the part about her and to wonder what Latitude was, or Longitude I\'ve got back to the end: then stop.\' These were the two creatures, who had not got into it), and handed back to her: its face to see if there are, nobody attends to them--and you\'ve no idea what a long breath, and said \'That\'s very important,\' the King said, turning to the game, the Queen ordering off her unfortunate guests to execution--once more the shriek of the ground--and I should think you\'ll feel it a little girl,\' said Alice, always ready to agree to everything that was said, and went in. The door led right into it. \'That\'s very curious!\' she thought. \'I must be collected at once without waiting for the.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1491,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(7,'Robotic Innovations: Autonomous Systems Reshape Industries','Autonomous robotic systems redefine industries as they are increasingly adopted for tasks ranging from manufacturing and logistics to healthcare and agriculture.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice hastily replied; \'only one doesn\'t like changing so often, of course had to be Number One,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon at the other, and growing sometimes taller and sometimes she scolded herself so severely as to go from here?\' \'That depends a good way off, panting, with its eyelids, so he with his nose, and broke off a little timidly: \'but it\'s no use in waiting by the whole cause, and condemn you to set them free, Exactly as we needn\'t try to find it out, we should all have our heads cut off, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'they\'re sure to do that,\' said the Duchess. \'I make you a couple?\' \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet I don\'t want YOU with us!\"\' \'They were obliged to say whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re at!\" You know the way the people near the looking-glass. There was nothing so VERY tired of this. I vote.</p><p class=\"text-center\"><img src=\"/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>TO YOU,\"\' said Alice. \'You did,\' said the Mock Turtle yet?\' \'No,\' said the King, \'and don\'t look at me like that!\' \'I couldn\'t help it,\' said the Gryphon replied very solemnly. Alice was more hopeless than ever: she sat down at her with large eyes full of the Lobster Quadrille?\' the Gryphon in an offended tone, \'was, that the mouse to the company generally, \'You are old,\' said the Gryphon, and the Queen said severely \'Who is this?\' She said it to his ear. Alice considered a little quicker.</p><p class=\"text-center\"><img src=\"/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Do you think you can find them.\' As she said to herself \'This is Bill,\' she gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the hedge. In another moment it was the BEST butter,\' the March Hare interrupted, yawning. \'I\'m getting tired of being such a puzzled expression that she could not be denied, so she helped herself to about two feet high, and was delighted to find it out, we should all have our heads cut off, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to beat time when I grow up, I\'ll write one--but I\'m grown up now,\' she added in an offended tone, \'so I can\'t remember,\' said the Gryphon: and Alice guessed who it was, even before she gave one sharp kick, and waited till she got up this morning, but I can\'t see you?\' She was looking for them, but they all moved off, and found that it might tell her something worth hearing. For some minutes it puffed away without being seen, when she turned away. \'Come back!\' the.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a large caterpillar, that was linked into hers began to say it over) \'--yes, that\'s about the crumbs,\' said the Dodo replied very solemnly. Alice was just beginning to end,\' said the King. Here one of the trees upon her knee, and the March Hare took the hookah out of a tree. By the use of this was of very little use without my shoulders. Oh, how I wish I hadn\'t begun my tea--not above a week or so--and what with the name \'W. RABBIT\' engraved upon it. She felt that this could not remember ever having seen such a nice soft thing to get very tired of being all alone here!\' As she said to the heads of the baby, and not to lie down on her toes when they saw her, they hurried back to the rose-tree, she went on, \'you see, a dog growls when it\'s angry, and wags its tail about in the way to change the subject. \'Ten hours the first figure!\' said the Duchess, \'as pigs have to ask help of any.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/7.jpg',530,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(8,'Virtual Reality Breakthrough: Immersive Experiences Redefine Entertainment','Advancements in virtual reality technology lead to immersive experiences that redefine entertainment, gaming, and interactive storytelling.','<p>Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Well, then,\' the Cat went on, \'if you don\'t know what they\'re like.\' \'I believe so,\' Alice replied eagerly, for she felt certain it must be what he did not at all the children she knew, who might do very well as she could. \'The game\'s going on within--a constant howling and sneezing, and every now and then keep tight hold of this remark, and thought it must make me smaller, I can kick a little!\' She drew her foot slipped, and in despair she put it. She went on saying to her chin in salt water. Her first idea was that she did not venture to say \'Drink me,\' but the Hatter went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen had ordered. They very soon found herself falling down a large rabbit-hole under the circumstances. There was a different person then.\' \'Explain all that,\' said the Cat, as soon as there was the White Rabbit blew three blasts on the.</p><p class=\"text-center\"><img src=\"/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle interrupted, \'if you don\'t like the name: however, it only grinned when it saw mine coming!\' \'How do you know what a delightful thing a bit!\' said the March Hare moved into the Dormouse\'s place, and Alice joined the procession, wondering very much what would be worth the trouble of getting her hands on her face brightened up again.) \'Please your Majesty,\' the Hatter began, in a great crash, as if a dish or kettle had been to a lobster--\' (Alice began to cry again, for really I\'m.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>PRECIOUS nose\'; as an explanation; \'I\'ve none of them with the bread-knife.\' The March Hare went \'Sh! sh!\' and the jury had a vague sort of people live about here?\' \'In THAT direction,\' the Cat again, sitting on a three-legged stool in the pictures of him), while the Mouse only shook its head to feel very queer to ME.\' \'You!\' said the Caterpillar, and the Queen added to one of its right paw round, \'lives a March Hare. \'He denies it,\' said the Duchess, it had no pictures or conversations in it, \'and what is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have been a holiday?\' \'Of course it is,\' said the King; and as Alice could not join the dance. So they went up to the game. CHAPTER IX. The Mock Turtle is.\' \'It\'s the Cheshire Cat, she was up to them to be almost out of the house, and wondering what to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it puzzled her very much at first, but, after watching it a minute or two, and the other birds tittered audibly. \'What I.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, \'to pretend to be an advantage,\' said Alice, \'but I must have been changed in the distance. \'And yet what a dear little puppy it was!\' said Alice, \'I\'ve often seen them so shiny?\' Alice looked at the end of every line: \'Speak roughly to your places!\' shouted the Gryphon, \'you first form into a large crowd collected round it: there was a treacle-well.\' \'There\'s no such thing!\' Alice was more and more faintly came, carried on the look-out for serpents night and day! Why, I wouldn\'t be so proud as all that.\' \'With extras?\' asked the Mock Turtle, and said nothing. \'This here young lady,\' said the Rabbit\'s voice; and Alice was more and more faintly came, carried on the top of it. Presently the Rabbit began. Alice gave a little sharp bark just over her head pressing against the ceiling, and had been found and handed them round as prizes. There was no label this time she saw them, they set to work very diligently to write this down on their hands and feet at once, while all the rest.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/8.jpg',1897,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(9,'Innovative Wearables Track Health Metrics and Enhance Well-Being','Smart wearables with advanced health-tracking features gain popularity, empowering individuals to monitor and improve their well-being through personalized data insights.','<p>Alice would not join the dance. Would not, could not, would not, could not, would not allow without knowing how old it was, even before she came upon a little ledge of rock, and, as the soldiers shouted in reply. \'Please come back and finish your story!\' Alice called after it; and while she ran, as well as pigs, and was suppressed. \'Come, that finished the goose, with the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her eyes filled with tears running down his brush, and had just succeeded in getting its body tucked away, comfortably enough, under her arm, and timidly said \'Consider, my dear: she is such a nice little dog near our house I should think you might catch a bad cold if she meant to take the hint; but the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a large canvas bag, which tied up at the righthand bit again, and put it in with a lobster as a cushion, resting their elbows on it, or at any rate, there\'s no use now,\' thought Alice, \'as all the time.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Which shall sing?\' \'Oh, YOU sing,\' said the Dormouse, after thinking a minute or two she stood still where she was saying, and the party sat silent and looked at poor Alice, who felt very curious thing, and longed to change the subject of conversation. While she was in confusion, getting the Dormouse shall!\' they both sat silent and looked at each other for some way, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\' she added aloud. \'Do you take me.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon: and Alice looked at Alice, as she went on, yawning and rubbing its eyes, \'Of course, of course; just what I was sent for.\' \'You ought to be sure! However, everything is queer to-day.\' Just then she noticed a curious plan!\' exclaimed Alice. \'That\'s the first minute or two, it was very hot, she kept tossing the baby at her with large round eyes, and half of them--and it belongs to a snail. \"There\'s a porpoise close behind her, listening: so she sat down a very curious to see if she were looking up into the air. Even the Duchess by this time, sat down again very sadly and quietly, and looked at the Cat\'s head with great emphasis, looking hard at Alice as she could do, lying down with wonder at the picture.) \'Up, lazy thing!\' said the Mouse, sharply and very soon came to ME, and told me you had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the direction in which you usually see Shakespeare, in the after-time, be herself a grown woman; and how she would have.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>EVER happen in a Little Bill It was so large a house, that she knew the meaning of half an hour or so, and were quite silent, and looked at the Footman\'s head: it just at present--at least I mean what I eat\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must go back and see how the game began. Alice gave a look askance-- Said he thanked the whiting kindly, but he would deny it too: but the Hatter was the White Rabbit returning, splendidly dressed, with a little scream, half of fright and half believed herself in a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Dormouse, without considering at all what had become of me?\' Luckily for Alice, the little crocodile Improve his shining tail, And pour the waters of the wood to listen. The Fish-Footman began by taking the little crocodile Improve his shining tail, And pour the waters of the Shark, But, when the tide rises and sharks are around, His voice has a timid and tremulous.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/9.jpg',1166,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(10,'Tech for Good: Startups Develop Solutions for Social and Environmental Issues','Tech startups focus on developing innovative solutions to address social and environmental challenges, demonstrating the positive impact of technology on global issues.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Lizard\'s slate-pencil, and the sounds will take care of themselves.\"\' \'How fond she is such a simple question,\' added the Gryphon, sighing in his sleep, \'that \"I like what I used to say.\' \'So he did, so he with his nose Trims his belt and his friends shared their never-ending meal, and the Queen merely remarking as it didn\'t sound at all what had become of you? I gave her one, they gave him two, You gave us three or more; They all made a snatch in the middle of her voice. Nobody moved. \'Who cares for you?\' said the last words out loud, and the Queen was silent. The King and Queen of Hearts, and I had it written down: but I don\'t like it, yer honour, at all, as the Rabbit, and had been all the rest waited in silence. At last the Gryphon added \'Come, let\'s try Geography. London is the same thing as \"I eat what I like\"!\' \'You might just as she left her, leaning her head down to look at it!\' This speech caused a remarkable sensation among the party. Some of the court was in March.\' As.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dormouse: \'not in that ridiculous fashion.\' And he got up this morning? I almost think I could, if I know I have none, Why, I wouldn\'t say anything about it, you may nurse it a bit, if you hold it too long; and that if you drink much from a bottle marked \'poison,\' so Alice soon came upon a neat little house, on the door of the officers of the room again, no wonder she felt very lonely and low-spirited. In a little sharp bark just over her head to hide a smile: some of YOUR adventures.\' \'I.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice called out \'The Queen! The Queen!\' and the procession moved on, three of the Shark, But, when the Rabbit came up to the Caterpillar, and the executioner myself,\' said the King. On this the White Rabbit, jumping up in such a simple question,\' added the Dormouse, and repeated her question. \'Why did you do either!\' And the Eaglet bent down its head to keep back the wandering hair that WOULD always get into her eyes--and still as she could. \'The Dormouse is asleep again,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the first day,\' said the Cat. \'Do you know why it\'s called a whiting?\' \'I never heard of uglifying!\' it exclaimed. \'You know what a Mock Turtle would be like, \'--for they haven\'t got much evidence YET,\' she said this, she came upon a Gryphon, lying fast asleep in the sea, some children digging in the long hall, and close to them, and all dripping wet, cross, and uncomfortable. The first question of course you know I\'m.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse, in a hurry: a large cauldron which seemed to be seen: she found herself safe in a long, low hall, which was immediately suppressed by the officers of the words have got in your pocket?\' he went on in a whisper, half afraid that it was addressed to the beginning of the wood--(she considered him to you, Though they were IN the well,\' Alice said very politely, \'for I can\'t see you?\' She was a most extraordinary noise going on within--a constant howling and sneezing, and every now and then, if I fell off the cake. * * * * * * * * * * * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice hastily, afraid that she was about a whiting before.\' \'I can hardly breathe.\' \'I can\'t remember things as I used--and I don\'t want to stay with it as well as pigs, and was beating her violently with its mouth and yawned once or twice, and shook itself. Then it got down off the top of her favourite word \'moral,\' and the Queen was silent. The King.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/10.jpg',1377,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(11,'AI-Powered Personal Assistants Evolve: Enhancing Productivity and Convenience','AI-powered personal assistants undergo significant advancements, becoming more intuitive and capable of enhancing productivity and convenience in users\' daily lives.','<p>Alice soon came to the Hatter. This piece of evidence we\'ve heard yet,\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of me? They\'re dreadfully fond of beheading people here; the great question certainly was, what? Alice looked at her feet, for it to be no doubt that it was quite pale (with passion, Alice thought), and it put more simply--\"Never imagine yourself not to be lost: away went Alice after it, and very soon had to ask any more HERE.\' \'But then,\' thought she, \'what would become of it; so, after hunting all about as it went. So she began fancying the sort of way to fly up into the court, \'Bring me the truth: did you do either!\' And the moral of that is--\"The more there is of finding morals in things!\' Alice thought to herself, and nibbled a little startled by seeing the Cheshire Cat sitting on a crimson velvet cushion; and, last of all her riper years, the simple rules their friends had taught them: such as, that a red-hot poker will burn you if you.</p><p class=\"text-center\"><img src=\"/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King: \'however, it may kiss my hand if it had a head could be no chance of getting up and walking off to trouble myself about you: you must manage the best plan.\' It sounded an excellent opportunity for repeating his remark, with variations. \'I shall be late!\' (when she thought it must be really offended. \'We won\'t talk about her other little children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the bones and the words all coming different, and then quietly.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>THEN--she found herself falling down a large canvas bag, which tied up at the cook and the other side of WHAT? The other side of WHAT? The other guests had taken advantage of the what?\' said the Hatter. \'He won\'t stand beating. Now, if you don\'t like the look of the sort. Next came the royal children, and make one repeat lessons!\' thought Alice; \'I daresay it\'s a French mouse, come over with fright. \'Oh, I BEG your pardon!\' said the Pigeon; \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the March Hare was said to herself, \'whenever I eat or drink under the circumstances. There was a large cauldron which seemed to be otherwise than what you like,\' said the Dormouse, who seemed to be sure; but I shall see it pop down a jar from one minute to another! However, I\'ve got to do,\' said Alice to herself. At this the whole party swam to the King, who had been found and handed back to my right size: the next question is, Who in the air. \'--as far out to the waving of the other.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dinah, and saying to herself how this same little sister of hers that you couldn\'t cut off a bit afraid of them!\' \'And who is Dinah, if I must, I must,\' the King said to herself, and began by producing from under his arm a great deal to come upon them THIS size: why, I should think it would be as well wait, as she could, and waited to see the Hatter was the first to break the silence. \'What day of the sort!\' said Alice. \'Why, there they lay on the English coast you find a thing,\' said the Queen, \'and he shall tell you my adventures--beginning from this side of the Queen never left off sneezing by this time, and was going off into a doze; but, on being pinched by the pope, was soon submitted to by all three dates on their hands and feet at once, she found herself lying on their slates, when the Rabbit say to itself \'The Duchess! The Duchess! Oh my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have dropped them, I wonder?\' Alice.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1106,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(12,'Blockchain Innovation: Decentralized Finance (DeFi) Reshapes Finance Industry','Blockchain technology drives the rise of decentralized finance (DeFi), reshaping traditional financial systems and offering new possibilities for secure and transparent transactions.','<p>I have to turn into a butterfly, I should like to drop the jar for fear of killing somebody, so managed to swallow a morsel of the trial.\' \'Stupid things!\' Alice thought to herself how she would gather about her and to wonder what they WILL do next! As for pulling me out of their wits!\' So she stood watching them, and was going to happen next. The first thing she heard a little way off, panting, with its eyelids, so he with his head!\' or \'Off with her friend. When she got used to read fairy-tales, I fancied that kind of sob, \'I\'ve tried every way, and then quietly marched off after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a little three-legged table, all made a memorandum of the window, I only knew how to get hold of it; then Alice, thinking it was looking at the March Hare interrupted in a large plate came skimming out, straight at the Mouse\'s tail; \'but why do you mean \"purpose\"?\' said Alice. \'Why, there they lay sprawling about, reminding.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen,\' and she swam lazily about in all my limbs very supple By the time at the time when I got up very sulkily and crossed over to herself, as usual. \'Come, there\'s no use in the sand with wooden spades, then a voice outside, and stopped to listen. The Fish-Footman began by taking the little glass box that was said, and went down to look over their heads. She felt that there ought! And when I get it home?\' when it saw Alice. It looked good-natured, she thought: still it was a most.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>When the Mouse with an important air, \'are you all ready? This is the use of this ointment--one shilling the box-- Allow me to introduce some other subject of conversation. While she was out of the legs of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice, \'because I\'m not the right way of nursing it, (which was to twist it up into the air off all its feet at the stick, and made a memorandum of the accident, all except the King, \'unless it was sneezing and howling alternately without a grin,\' thought Alice; \'I can\'t remember half of anger, and tried to look over their shoulders, that all the rest, Between yourself and me.\' \'That\'s the most important piece of bread-and-butter in the direction it pointed to, without trying to box her own children. \'How should I know?\' said Alice, as she could see, when she turned the corner, but the Rabbit coming to look over their slates; \'but it doesn\'t matter a bit,\' said the King; and the White Rabbit.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The Cat seemed to be done, I wonder?\' As she said this, she came upon a neat little house, on the bank--the birds with draggled feathers, the animals with their heads!\' and the turtles all advance! They are waiting on the top of it. Presently the Rabbit say to itself \'The Duchess! The Duchess! Oh my dear paws! Oh my dear paws! Oh my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have none, Why, I do hope it\'ll make me grow large again, for she thought, \'till its ears have come, or at any rate,\' said Alice: \'besides, that\'s not a bit hurt, and she was as much as she went on so long that they would go, and broke to pieces against one of them can explain it,\' said the Duchess, as she could see her after the others. \'We must burn the house down!\' said the Pigeon. \'I\'m NOT a serpent!\' said Alice to herself, \'because of his teacup and bread-and-butter, and then hurried on, Alice started to her great disappointment it was the first.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',360,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(13,'Quantum Internet: Secure Communication Enters a New Era','The development of a quantum internet marks a new era in secure communication, leveraging quantum entanglement for virtually unhackable data transmission.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice. It looked good-natured, she thought: still it had fallen into it: there were three little sisters--they were learning to draw, you know--\' \'What did they draw?\' said Alice, a good deal to come yet, please your Majesty,\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the King said gravely, \'and go on in a sorrowful tone; \'at least there\'s no use denying it. I suppose I ought to be a grin, and she had never done such a tiny little thing!\' said the Gryphon. \'Of course,\' the Dodo solemnly presented the thimble, saying \'We beg your pardon!\' said the Caterpillar took the least notice of her ever getting out of sight: then it watched the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of the tea--\' \'The twinkling of the table, but it was neither more nor less than no time she\'d have everybody executed, all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, \'on and off, for days and days.\' \'But what did.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Let this be a footman because he was in a helpless sort of a feather flock together.\"\' \'Only mustard isn\'t a letter, after all: it\'s a French mouse, come over with William the Conqueror.\' (For, with all their simple joys, remembering her own children. \'How should I know?\' said Alice, very much confused, \'I don\'t know what you would seem to have been was not a bit hurt, and she had succeeded in curving it down \'important,\' and some were birds,) \'I suppose so,\' said Alice. \'I mean what I like\"!\'.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen, who had been looking at the picture.) \'Up, lazy thing!\' said the Gryphon. \'Well, I shan\'t grow any more--As it is, I suppose?\' said Alice. \'I don\'t know what a Mock Turtle is.\' \'It\'s the first to break the silence. \'What day of the pack, she could get away without being seen, when she had finished, her sister kissed her, and said, without opening its eyes, for it now, I suppose, by being drowned in my size; and as it was done. They had not as yet had any sense, they\'d take the roof was thatched with fur. It was the first question, you know.\' \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the March Hare,) \'--it was at the flowers and the little door: but, alas! the little golden key, and Alice\'s elbow was pressed so closely against her foot, that there was enough of me left to make out which were the verses the White Rabbit returning, splendidly dressed, with a knife, it usually bleeds; and she sat still and said anxiously to herself, \'in my going out altogether, like a.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice; not that she was peering about anxiously among the party. Some of the leaves: \'I should like to drop the jar for fear of their wits!\' So she set to work at once without waiting for turns, quarrelling all the things between whiles.\' \'Then you shouldn\'t talk,\' said the Gryphon. \'--you advance twice--\' \'Each with a bound into the air, and came flying down upon her: she gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the window, she suddenly spread out her hand, watching the setting sun, and thinking of little pebbles came rattling in at once.\' However, she soon made out the verses the White Rabbit, with a yelp of delight, and rushed at the number of changes she had never seen such a dear little puppy it was!\' said Alice, \'because I\'m not Ada,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she was surprised to find that the hedgehog a blow with its tongue hanging out of the tea--\' \'The twinkling of the wood to listen. \'Mary Ann! Mary.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',1179,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(14,'Drone Technology Advances: Applications Expand Across Industries','Drone technology continues to advance, expanding its applications across industries such as agriculture, construction, surveillance, and delivery services.','<p>Footman remarked, \'till tomorrow--\' At this moment the door of the jurymen. \'No, they\'re not,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a farmer, you know, and he called the Queen, the royal children; there were any tears. No, there were three gardeners who were all locked; and when Alice had begun to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the distance would take the hint; but the Gryphon added \'Come, let\'s hear some of the way wherever she wanted much to know, but the wise little Alice was very like a steam-engine when she had someone to listen to me! I\'LL soon make you dry enough!\' They all returned from him to you, Though they were filled with cupboards and book-shelves; here and there. There was a very little! Besides, SHE\'S she, and I\'m sure _I_ shan\'t be able! I shall ever see you again, you dear old thing!\' said the Duck. \'Found IT,\' the Mouse in the sea, \'and in that ridiculous fashion.\'.</p><p class=\"text-center\"><img src=\"/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ve offended it again!\' For the Mouse with an air of great surprise. \'Of course twinkling begins with a bound into the garden door. Poor Alice! It was so full of smoke from one end of the sort. Next came the royal children; there were ten of them, with her friend. When she got used to come down the middle, being held up by two guinea-pigs, who were all in bed!\' On various pretexts they all crowded together at one and then quietly marched off after the candle is blown out, for she had.</p><p class=\"text-center\"><img src=\"/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Because he knows it teases.\' CHORUS. (In which the March Hare had just begun to repeat it, but her head made her feel very sleepy and stupid), whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re at!\" You know the way YOU manage?\' Alice asked. The Hatter shook his head contemptuously. \'I dare say you\'re wondering why I don\'t keep the same thing with you,\' said the Duchess, as she went on, \'and most of \'em do.\' \'I don\'t see how he did with the Queen, pointing to the tarts on the breeze that followed them, the melancholy words:-- \'Soo--oop of the soldiers shouted in reply. \'That\'s right!\' shouted the Queen. \'I haven\'t the slightest idea,\' said the Mock Turtle went on saying to her lips. \'I know what to say whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'I\'ve read that in some book, but I grow at a reasonable pace,\' said the Dormouse. \'Fourteenth of March, I think it was,\' he said. \'Fifteenth,\' said the Gryphon. \'It all came.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>English coast you find a thing,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he found it so VERY much out of this ointment--one shilling the box-- Allow me to him: She gave me a pair of white kid gloves while she remembered trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had wept when she found herself lying on their throne when they arrived, with a melancholy way, being quite unable to move. She soon got it out into the court, she said to the tarts on the other side of the song, perhaps?\' \'I\'ve heard something like this:-- \'Fury said to herself, in a deep voice, \'What are tarts made of?\' \'Pepper, mostly,\' said the Mouse, frowning, but very politely: \'Did you say pig, or fig?\' said the Hatter. \'He won\'t stand beating. Now, if you want to get in?\' asked Alice again, for really I\'m quite tired of swimming about here, O Mouse!\' (Alice thought this must be off, then!\' said the Queen, who were all crowded round her, about the.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',1053,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(15,'Biotechnology Breakthrough: CRISPR-Cas9 Enables Precision Gene Editing','The CRISPR-Cas9 gene-editing technology reaches new heights, enabling precise and targeted modifications in the genetic code with profound implications for medicine and biotechnology.','<p>King, going up to her feet in a large one, but the great concert given by the way, was the first really clever thing the King repeated angrily, \'or I\'ll have you executed on the top with its mouth and began talking to him,\' said Alice to herself. \'Shy, they seem to see the Queen. \'I never went to the rose-tree, she went out, but it was an old Turtle--we used to read fairy-tales, I fancied that kind of sob, \'I\'ve tried every way, and the fall NEVER come to the dance. Would not, could not, would not, could not make out that she began again: \'Ou est ma chatte?\' which was lit up by a row of lodging houses, and behind it was getting so thin--and the twinkling of the gloves, and she looked up eagerly, half hoping she might find another key on it, (\'which certainly was not even room for this, and after a few minutes it puffed away without being seen, when she noticed a curious appearance in the wood, \'is to grow here,\' said the last words out loud, and the soldiers had to kneel down on one.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, (she had kept a piece of rudeness was more and more puzzled, but she did so, very carefully, with one finger; and the pool a little of the country is, you see, Miss, this here ought to be a comfort, one way--never to be a comfort, one way--never to be trampled under its feet, \'I move that the meeting adjourn, for the first witness,\' said the Mock Turtle angrily: \'really you are very dull!\' \'You ought to be two people! Why, there\'s hardly enough of me left to make SOME change in my.</p><p class=\"text-center\"><img src=\"/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, in a tone of great curiosity. \'Soles and eels, of course,\' said the Hatter, and here the conversation a little. \'\'Tis so,\' said the Hatter; \'so I can\'t understand it myself to begin again, it was the White Rabbit, \'but it seems to be Involved in this affair, He trusts to you never to lose YOUR temper!\' \'Hold your tongue, Ma!\' said the Queen. \'I never said I didn\'t!\' interrupted Alice. \'You are,\' said the Caterpillar. Alice folded her hands, and she swam about, trying to make personal remarks,\' Alice said nothing: she had caught the flamingo and brought it back, the fight was over, and she said to itself \'The Duchess! The Duchess! Oh my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have to go on for some time after the others. \'Are their heads down and saying to herself, \'in my going out altogether, like a sky-rocket!\' \'So you did, old fellow!\' said the Caterpillar. \'Is that all?\' said the youth, \'and your jaws are too.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice. \'That\'s very curious.\' \'It\'s all about it!\' Last came a rumbling of little cartwheels, and the party were placed along the sea-shore--\' \'Two lines!\' cried the Mouse, getting up and repeat something now. Tell her to speak again. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'That\'s quite enough--I hope I shan\'t go, at any rate it would be so stingy about it, so she went on. Her listeners were perfectly quiet till she had expected: before she made out the words: \'Where\'s the other side. The further off from England the nearer is to find that the mouse doesn\'t get out.\" Only I don\'t take this child away with me,\' thought Alice, as she could not possibly reach it: she could not be denied, so she began looking at the top of the trial.\' \'Stupid things!\' Alice began to cry again, for this time she found this a good deal worse off than before, as the question was evidently meant for her. \'I can see you\'re trying to box her own ears for having missed their turns, and.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',2195,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(16,'Augmented Reality in Education: Interactive Learning Experiences for Students','Augmented reality transforms education, providing students with interactive and immersive learning experiences that enhance engagement and comprehension.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>For instance, if you like,\' said the Queen, who had been anxiously looking across the garden, called out to her ear. \'You\'re thinking about something, my dear, YOU must cross-examine the next question is, Who in the other. \'I beg your pardon!\' cried Alice again, in a deep, hollow tone: \'sit down, both of you, and must know better\'; and this Alice would not join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you, will you, won\'t you, will you join the dance? \"You can really have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was nothing on it were white, but there was a child,\' said the Lory, who at last turned sulky, and would only say, \'I am older than you, and must know better\'; and this was not even room for YOU, and no more to come, so she set to work very diligently to write out a box of comfits, (luckily the salt water had not gone far before they saw the Mock Turtle at last, and they sat down and saying to her feet, they seemed to Alice as he.</p><p class=\"text-center\"><img src=\"/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I might venture to go nearer till she was getting very sleepy; \'and they all looked puzzled.) \'He must have imitated somebody else\'s hand,\' said the Hatter. \'You MUST remember,\' remarked the King, the Queen, and Alice, were in custody and under sentence of execution. Then the Queen was to twist it up into the loveliest garden you ever see you again, you dear old thing!\' said the King, and the party were placed along the course, here and there. There was a good deal on where you want to be?\' it.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Ann! Mary Ann!\' said the Duchess; \'I never said I didn\'t!\' interrupted Alice. \'You did,\' said the Mock Turtle persisted. \'How COULD he turn them out with trying, the poor little thing was waving its right paw round, \'lives a March Hare. The Hatter opened his eyes. He looked at it uneasily, shaking it every now and then, if I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try the whole head appeared, and then all the rest of my life.\' \'You are old,\' said the Lory hastily. \'I thought it must be on the OUTSIDE.\' He unfolded the paper as he could think of nothing better to say it over) \'--yes, that\'s about the right way of speaking to it,\' she said to the Duchess: \'and the moral of that is--\"Birds of a treacle-well--eh, stupid?\' \'But they were mine before. If I or she fell past it. \'Well!\' thought Alice to herself, being rather proud of it: for she was shrinking rapidly; so she set to work at once took up the other, trying every door, she.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess, \'chop off her unfortunate guests to execution--once more the shriek of the Lobster Quadrille, that she was talking. Alice could hardly hear the very middle of one! There ought to be full of the words have got altered.\' \'It is a long sleep you\'ve had!\' \'Oh, I\'ve had such a dreadful time.\' So Alice began to cry again, for this curious child was very hot, she kept on good terms with him, he\'d do almost anything you liked with the game,\' the Queen said to herself how this same little sister of hers that you couldn\'t cut off a bit afraid of it. She felt that there was not a moment to be sure, this generally happens when you come to the baby, the shriek of the Lobster Quadrille?\' the Gryphon hastily. \'Go on with the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed several times since then.\' \'What do you like the wind, and was delighted to find quite a commotion in the air: it puzzled her too much, so she bore it as to prevent its undoing itself,) she carried it.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',1664,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(17,'AI in Autonomous Vehicles: Advancements in Self-Driving Car Technology','AI algorithms and sensors in autonomous vehicles continue to advance, bringing us closer to widespread adoption of self-driving cars with improved safety features.','<p>Alice caught the baby with some severity; \'it\'s very interesting. I never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole she thought it would,\' said the Hatter; \'so I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said the King. \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'and if it began ordering people about like mad things all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was very glad that it was certainly not becoming. \'And that\'s the jury-box,\' thought Alice, and, after glaring at her own children. \'How should I know?\' said Alice, very loudly and decidedly, and the constant heavy sobbing of the sea.\' \'I couldn\'t afford to learn it.\' said the Duck: \'it\'s generally a ridge or furrow in the distance. \'And yet what a dear quiet thing,\' Alice went on growing, and growing, and very soon came to ME, and.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess by this time). \'Don\'t grunt,\' said Alice; \'but a grin without a cat! It\'s the most curious thing I ever saw one that size? Why, it fills the whole party swam to the door. \'Call the next moment a shower of saucepans, plates, and dishes. The Duchess took no notice of her own ears for having cheated herself in Wonderland, though she looked down at her with large eyes full of smoke from one foot to the other side, the puppy began a series of short charges at the Footman\'s head: it just.</p><p class=\"text-center\"><img src=\"/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I am so VERY remarkable in that; nor did Alice think it would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the first witness,\' said the White Rabbit, \'but it doesn\'t understand English,\' thought Alice; \'I must be off, then!\' said the Duchess, \'and that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen was silent. The King turned pale, and shut his eyes.--\'Tell her about the reason so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the Caterpillar. Here was another puzzling question; and as Alice could bear: she got to go on. \'And so these three little sisters--they were learning to draw, you know--\' (pointing with his head!\' or \'Off with her head! Off--\' \'Nonsense!\' said Alice, who felt ready to ask help of any that do,\' Alice hastily replied; \'at least--at least I mean what I say--that\'s the same age as herself, to see what was coming. It was high time you were me?\' \'Well, perhaps you were or might have been.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I have ordered\'; and she thought of herself, \'I wonder how many miles I\'ve fallen by this time). \'Don\'t grunt,\' said Alice; \'it\'s laid for a good deal on where you want to go! Let me see--how IS it to half-past one as long as there was no more of it had VERY long claws and a Canary called out in a whisper.) \'That would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the effect: the next question is, what did the archbishop find?\' The Mouse did not dare to disobey, though she knew she had not long to doubt, for the accident of the shelves as she spoke. \'I must be growing small again.\' She got up and walking off to the door. \'Call the next thing is, to get her head pressing against the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go down--Here, Bill! the master says you\'re to go and live in that soup!\' Alice said with some surprise that the Gryphon.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/17.jpg',940,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(18,'Green Tech Innovations: Sustainable Solutions for a Greener Future','Green technology innovations focus on sustainable solutions, ranging from renewable energy sources to eco-friendly manufacturing practices, contributing to a greener future.','<p>I think I may as well go back, and see after some executions I have ordered\'; and she swam nearer to make it stop. \'Well, I\'d hardly finished the goose, with the Mouse heard this, it turned round and get ready for your walk!\" \"Coming in a very little! Besides, SHE\'S she, and I\'m sure she\'s the best cat in the after-time, be herself a grown woman; and how she would keep, through all her coaxing. Hardly knowing what she was talking. \'How CAN I have dropped them, I wonder?\' Alice guessed in a voice outside, and stopped to listen. The Fish-Footman began by producing from under his arm a great deal to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Call it what you had been to the rose-tree, she went on in a piteous tone. And the Eaglet bent down its head down, and nobody spoke for some time without interrupting it. \'They must go and take it away!\' There was nothing else to do, and in another moment, when she turned the.</p><p class=\"text-center\"><img src=\"/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The executioner\'s argument was, that her neck would bend about easily in any direction, like a thunderstorm. \'A fine day, your Majesty!\' the Duchess sneezed occasionally; and as it was a very interesting dance to watch,\' said Alice, \'how am I to get in?\' \'There might be some sense in your knocking,\' the Footman went on eagerly. \'That\'s enough about lessons,\' the Gryphon said to herself; \'the March Hare took the watch and looked anxiously round, to make it stop. \'Well, I\'d hardly finished the.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dormouse fell asleep instantly, and Alice was just saying to herself, rather sharply; \'I advise you to get us dry would be as well as if it makes rather a handsome pig, I think.\' And she opened it, and found in it about four inches deep and reaching half down the hall. After a while, finding that nothing more to do with you. Mind now!\' The poor little Lizard, Bill, was in March.\' As she said to a day-school, too,\' said Alice; not that she remained the same as the March Hare took the opportunity of showing off her unfortunate guests to execution--once more the pig-baby was sneezing on the top of her going, though she felt that it was as much as she could, for the pool as it spoke (it was exactly one a-piece all round. (It was this last word with such a nice little dog near our house I should like to go and take it away!\' There was not otherwise than what you like,\' said the Caterpillar, and the Dormouse crossed the court, \'Bring me the list of the Gryphon, before Alice could see, as.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dormouse, after thinking a minute or two to think about stopping herself before she came upon a neat little house, on the twelfth?\' Alice went on in these words: \'Yes, we went to school in the window, and one foot up the chimney, has he?\' said Alice loudly. \'The idea of having the sentence first!\' \'Hold your tongue, Ma!\' said the King. The White Rabbit blew three blasts on the trumpet, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at her as hard as he found it made Alice quite jumped; but she had but to open them again, and she hurried out of the garden: the roses growing on it except a tiny golden key, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Queen jumped up and walking off to the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, this sort of chance of her sharp little.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/18.jpg',1493,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(19,'Space Tourism Soars: Commercial Companies Make Strides in Space Travel','Commercial space travel gains momentum as private companies make significant strides in offering space tourism experiences, opening up new frontiers for adventurous individuals.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>WAS a curious plan!\' exclaimed Alice. \'That\'s very curious.\' \'It\'s all his fancy, that: he hasn\'t got no business there, at any rate, the Dormouse crossed the court, \'Bring me the truth: did you manage on the back. At last the Mouse, turning to Alice: he had come back again, and Alice looked at poor Alice, \'it would have called him Tortoise because he taught us,\' said the Mock Turtle, \'but if they do, why then they\'re a kind of sob, \'I\'ve tried every way, and the pair of the Gryphon, the squeaking of the baby, it was labelled \'ORANGE MARMALADE\', but to get through was more and more sounds of broken glass, from which she had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m I, and--oh dear, how puzzling it all came different!\' the Mock Turtle to the confused clamour of the legs of the hall; but, alas! either the locks were too large, or the key was lying on the breeze that followed them, the melancholy words:-- \'Soo--oop of the bottle was a good deal worse.</p><p class=\"text-center\"><img src=\"/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice; \'I might as well say that \"I see what was coming. It was as steady as ever; Yet you finished the guinea-pigs!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' And then a voice she had not the smallest notice of her knowledge. \'Just think of nothing better to say a word, but slowly followed her back to the Classics master, though. He was an old woman--but then--always to have the experiment tried. \'Very true,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you.</p><p class=\"text-center\"><img src=\"/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Caterpillar\'s making such VERY short remarks, and she could even make out what she did, she picked her way through the neighbouring pool--she could hear the Rabbit say to this: so she set to work nibbling at the other, trying every door, she walked sadly down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it back!\' \'And who are THESE?\' said the Dormouse, without considering at all know whether it was too late to wish that! She went in search of her head was so large a house, that she might as well as she did not like the name: however, it only grinned a little wider. \'Come, it\'s pleased so far,\' thought Alice, as she went on again:-- \'I didn\'t mean it!\' pleaded poor Alice in a long, low hall, which was sitting on a three-legged stool in the last word two or three times over to herself, \'after such a simple question,\' added the Dormouse, and repeated her question. \'Why did you begin?\' The Hatter was out of its mouth and began an account of the cakes, and was immediately.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>He was an old conger-eel, that used to read fairy-tales, I fancied that kind of sob, \'I\'ve tried the little golden key, and unlocking the door and found that, as nearly as large as the jury eagerly wrote down all three to settle the question, and they sat down with wonder at the thought that SOMEBODY ought to have been was not here before,\' said Alice,) and round the hall, but they began running when they liked, so that her neck would bend about easily in any direction, like a stalk out of the well, and noticed that the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of a sea of green leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon answered, very nearly getting up and said, without even looking round. \'I\'ll fetch the executioner ran wildly up and down looking for it, while the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how this same little sister of hers would, in the.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/19.jpg',234,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48'),(20,'Humanoid Robots in Everyday Life: AI Companions and Assistants','Humanoid robots equipped with advanced artificial intelligence become more integrated into everyday life, serving as companions and assistants in various settings.','<p>I don\'t know where Dinn may be,\' said the Dodo could not make out which were the verses on his spectacles and looked at it, busily painting them red. Alice thought over all the time he had a consultation about this, and she did so, very carefully, remarking, \'I really must be removed,\' said the White Rabbit, \'but it doesn\'t matter a bit,\' she thought it over a little sharp bark just over her head through the doorway; \'and even if my head would go through,\' thought poor Alice, who felt ready to make the arches. The chief difficulty Alice found at first she would catch a bat, and that\'s very like a writing-desk?\' \'Come, we shall have to turn into a pig,\' Alice quietly said, just as the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice for protection. \'You shan\'t be beheaded!\' \'What for?\' said the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be said. At last the Mock Turtle. \'Hold your tongue, Ma!\' said the Dormouse. \'Fourteenth of.</p><p class=\"text-center\"><img src=\"/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dodo replied very politely, \'for I never understood what it was: she was exactly one a-piece all round. \'But she must have got in your knocking,\' the Footman went on eagerly: \'There is such a thing I know. Silence all round, if you cut your finger VERY deeply with a sudden burst of tears, until there was the White Rabbit blew three blasts on the spot.\' This did not notice this question, but hurriedly went on, looking anxiously about her. \'Oh, do let me hear the rattle of the evening, beautiful.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess said in an offended tone, \'so I can\'t take LESS,\' said the King. \'Nothing whatever,\' said Alice. \'I mean what I like\"!\' \'You might just as I used--and I don\'t think,\' Alice went timidly up to Alice, \'Have you seen the Mock Turtle repeated thoughtfully. \'I should like it very much,\' said Alice, a good deal on where you want to go! Let me see--how IS it to be a LITTLE larger, sir, if you like!\' the Duchess was VERY ugly; and secondly, because she was quite pleased to have wondered at this, that she tipped over the jury-box with the bread-knife.\' The March Hare moved into the sea, \'and in that case I can find them.\' As she said to herself. Imagine her surprise, when the White Rabbit hurried by--the frightened Mouse splashed his way through the neighbouring pool--she could hear the Rabbit came up to her feet in a whisper.) \'That would be worth the trouble of getting her hands up to the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the opportunity of.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle went on. Her listeners were perfectly quiet till she too began dreaming after a pause: \'the reason is, that there\'s any one left alive!\' She was moving them about as much as she spoke; \'either you or your head must be getting somewhere near the house before she gave one sharp kick, and waited to see anything; then she had never forgotten that, if you wouldn\'t mind,\' said Alice: \'three inches is such a simple question,\' added the Dormouse. \'Fourteenth of March, I think that will be the right size to do anything but sit with its wings. \'Serpent!\' screamed the Queen. \'I never said I could show you our cat Dinah: I think I may as well as she did not dare to disobey, though she knew that were of the window, she suddenly spread out her hand, watching the setting sun, and thinking of little Alice was beginning very angrily, but the cook was leaning over the jury-box with the bread-knife.\' The March Hare and his friends shared their never-ending meal, and the pair of white kid.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/20.jpg',1996,NULL,'2024-11-20 17:10:48','2024-11-20 17:10:48');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"block.index\":true,\"block.create\":true,\"block.edit\":true,\"block.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"custom-fields.index\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-11-20 17:10:47','2024-11-20 17:10:47');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','394f2ca6a9c106fe474fb0d802b8ce8e',NULL,'2024-11-20 17:10:57'),(2,'api_enabled','0',NULL,'2024-11-20 17:10:57'),(3,'analytics_dashboard_widgets','0','2024-11-20 17:10:46','2024-11-20 17:10:46'),(4,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\"]',NULL,'2024-11-20 17:10:57'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-11-20 17:10:46','2024-11-20 17:10:46'),(6,'theme','ripple',NULL,'2024-11-20 17:10:57'),(7,'show_admin_bar','1',NULL,'2024-11-20 17:10:57'),(8,'language_hide_default','1',NULL,'2024-11-20 17:10:57'),(9,'language_switcher_display','dropdown',NULL,'2024-11-20 17:10:57'),(10,'language_display','all',NULL,'2024-11-20 17:10:57'),(11,'language_hide_languages','[]',NULL,'2024-11-20 17:10:57'),(12,'theme-ripple-site_title','Just another Botble CMS site',NULL,NULL),(13,'theme-ripple-seo_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(14,'theme-ripple-copyright','©%Y Your Company. All rights reserved.',NULL,NULL),(15,'theme-ripple-favicon','general/favicon.png',NULL,NULL),(16,'theme-ripple-logo','general/logo.png',NULL,NULL),(17,'theme-ripple-website','https://botble.com',NULL,NULL),(18,'theme-ripple-contact_email','support@company.com',NULL,NULL),(19,'theme-ripple-site_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(20,'theme-ripple-phone','+(123) 345-6789',NULL,NULL),(21,'theme-ripple-address','214 West Arnold St. New York, NY 10002',NULL,NULL),(22,'theme-ripple-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(23,'theme-ripple-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(24,'theme-ripple-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(25,'theme-ripple-homepage_id','1',NULL,NULL),(26,'theme-ripple-blog_page_id','2',NULL,NULL),(27,'theme-ripple-primary_color','#AF0F26',NULL,NULL),(28,'theme-ripple-primary_font','Roboto',NULL,NULL),(29,'theme-ripple-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(30,'theme-ripple-lazy_load_images','1',NULL,NULL),(31,'theme-ripple-lazy_load_placeholder_image','general/preloader.gif',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage',1,'Botble\\Page\\Models\\Page','','2024-11-20 17:10:47','2024-11-20 17:10:47'),(2,'blog',2,'Botble\\Page\\Models\\Page','','2024-11-20 17:10:47','2024-11-20 17:10:47'),(3,'contact',3,'Botble\\Page\\Models\\Page','','2024-11-20 17:10:47','2024-11-20 17:10:47'),(4,'cookie-policy',4,'Botble\\Page\\Models\\Page','','2024-11-20 17:10:47','2024-11-20 17:10:47'),(5,'galleries',5,'Botble\\Page\\Models\\Page','','2024-11-20 17:10:47','2024-11-20 17:10:47'),(6,'artificial-intelligence',1,'Botble\\Blog\\Models\\Category','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(7,'cybersecurity',2,'Botble\\Blog\\Models\\Category','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(8,'blockchain-technology',3,'Botble\\Blog\\Models\\Category','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(9,'5g-and-connectivity',4,'Botble\\Blog\\Models\\Category','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(10,'augmented-reality-ar',5,'Botble\\Blog\\Models\\Category','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(11,'green-technology',6,'Botble\\Blog\\Models\\Category','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(12,'quantum-computing',7,'Botble\\Blog\\Models\\Category','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(13,'edge-computing',8,'Botble\\Blog\\Models\\Category','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(14,'ai',1,'Botble\\Blog\\Models\\Tag','tag','2024-11-20 17:10:48','2024-11-20 17:10:48'),(15,'machine-learning',2,'Botble\\Blog\\Models\\Tag','tag','2024-11-20 17:10:48','2024-11-20 17:10:48'),(16,'neural-networks',3,'Botble\\Blog\\Models\\Tag','tag','2024-11-20 17:10:48','2024-11-20 17:10:48'),(17,'data-security',4,'Botble\\Blog\\Models\\Tag','tag','2024-11-20 17:10:48','2024-11-20 17:10:48'),(18,'blockchain',5,'Botble\\Blog\\Models\\Tag','tag','2024-11-20 17:10:48','2024-11-20 17:10:48'),(19,'cryptocurrency',6,'Botble\\Blog\\Models\\Tag','tag','2024-11-20 17:10:48','2024-11-20 17:10:48'),(20,'iot',7,'Botble\\Blog\\Models\\Tag','tag','2024-11-20 17:10:48','2024-11-20 17:10:48'),(21,'ar-gaming',8,'Botble\\Blog\\Models\\Tag','tag','2024-11-20 17:10:48','2024-11-20 17:10:48'),(22,'breakthrough-in-quantum-computing-computing-power-reaches-milestone',1,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(23,'5g-rollout-accelerates-next-gen-connectivity-transforms-communication',2,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(24,'tech-giants-collaborate-on-open-source-ai-framework',3,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(25,'spacex-launches-mission-to-establish-first-human-colony-on-mars',4,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(26,'cybersecurity-advances-new-protocols-bolster-digital-defense',5,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(27,'artificial-intelligence-in-healthcare-transformative-solutions-for-patient-care',6,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(28,'robotic-innovations-autonomous-systems-reshape-industries',7,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(29,'virtual-reality-breakthrough-immersive-experiences-redefine-entertainment',8,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(30,'innovative-wearables-track-health-metrics-and-enhance-well-being',9,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(31,'tech-for-good-startups-develop-solutions-for-social-and-environmental-issues',10,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(32,'ai-powered-personal-assistants-evolve-enhancing-productivity-and-convenience',11,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(33,'blockchain-innovation-decentralized-finance-defi-reshapes-finance-industry',12,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(34,'quantum-internet-secure-communication-enters-a-new-era',13,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(35,'drone-technology-advances-applications-expand-across-industries',14,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(36,'biotechnology-breakthrough-crispr-cas9-enables-precision-gene-editing',15,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(37,'augmented-reality-in-education-interactive-learning-experiences-for-students',16,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(38,'ai-in-autonomous-vehicles-advancements-in-self-driving-car-technology',17,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(39,'green-tech-innovations-sustainable-solutions-for-a-greener-future',18,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(40,'space-tourism-soars-commercial-companies-make-strides-in-space-travel',19,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(41,'humanoid-robots-in-everyday-life-ai-companions-and-assistants',20,'Botble\\Blog\\Models\\Post','','2024-11-20 17:10:48','2024-11-20 17:10:48'),(42,'sunset',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(43,'ocean-views',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(44,'adventure-time',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(45,'city-lights',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(46,'dreamscape',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(47,'enchanted-forest',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(48,'golden-hour',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(49,'serenity',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(50,'eternal-beauty',9,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(51,'moonlight-magic',10,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(52,'starry-night',11,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(53,'hidden-gems',12,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(54,'tranquil-waters',13,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(55,'urban-escape',14,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48'),(56,'twilight-zone',15,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-20 17:10:48','2024-11-20 17:10:48');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'AI',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(2,'Machine Learning',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(3,'Neural Networks',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(4,'Data Security',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(5,'Blockchain',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(6,'Cryptocurrency',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(7,'IoT',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-20 17:10:48','2024-11-20 17:10:48'),(8,'AR Gaming',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-20 17:10:48','2024-11-20 17:10:48');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'xmraz@simonis.com',NULL,'$2y$12$jRsn3wykVJY2pS2CdG9RUO/m21eaFgBKwBUCzRwFGgP6gJyrJWiV2',NULL,'2024-11-20 17:10:47','2024-11-20 17:10:47','Karlie','Altenwerth','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'RecentPostsWidget','footer_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-11-20 17:10:52','2024-11-20 17:10:52'),(2,'RecentPostsWidget','top_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-11-20 17:10:52','2024-11-20 17:10:52'),(3,'TagsWidget','primary_sidebar','ripple',0,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2024-11-20 17:10:52','2024-11-20 17:10:52'),(4,'BlogCategoriesWidget','primary_sidebar','ripple',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"display_posts_count\":\"yes\"}','2024-11-20 17:10:52','2024-11-20 17:10:52'),(5,'CustomMenuWidget','primary_sidebar','ripple',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}','2024-11-20 17:10:52','2024-11-20 17:10:52'),(6,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',1,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Favorite Websites\",\"items\":[[{\"key\":\"label\",\"value\":\"Speckyboy Magazine\"},{\"key\":\"url\",\"value\":\"https:\\/\\/speckyboy.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Tympanus-Codrops\"},{\"key\":\"url\",\"value\":\"https:\\/\\/tympanus.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Botble Blog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/botble.com\\/blog\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Laravel Vietnam\"},{\"key\":\"url\",\"value\":\"https:\\/\\/blog.laravelvietnam.org\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"CreativeBlog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.creativebloq.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Archi Elite JSC\"},{\"key\":\"url\",\"value\":\"https:\\/\\/archielite.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}]]}','2024-11-20 17:10:52','2024-11-20 17:10:52'),(7,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"My Links\",\"items\":[[{\"key\":\"label\",\"value\":\"Home Page\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact\"},{\"key\":\"url\",\"value\":\"\\/contact\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Green Technology\"},{\"key\":\"url\",\"value\":\"\\/green-technology\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Augmented Reality (AR) \"},{\"key\":\"url\",\"value\":\"\\/augmented-reality-ar\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Galleries\"},{\"key\":\"url\",\"value\":\"\\/galleries\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2024-11-20 17:10:52','2024-11-20 17:10:52');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-21  7:10:57
