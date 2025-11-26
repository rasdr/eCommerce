CREATE DATABASE  IF NOT EXISTS `tverr` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tverr`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: tverr
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_customer','Can add customer'),(26,7,'change_customer','Can change customer'),(27,7,'delete_customer','Can delete customer'),(28,7,'view_customer','Can view customer'),(29,8,'add_order','Can add order'),(30,8,'change_order','Can change order'),(31,8,'delete_order','Can delete order'),(32,8,'view_order','Can view order'),(33,9,'add_product','Can add product'),(34,9,'change_product','Can change product'),(35,9,'delete_product','Can delete product'),(36,9,'view_product','Can view product'),(37,10,'add_shippingaddress','Can add shipping address'),(38,10,'change_shippingaddress','Can change shipping address'),(39,10,'delete_shippingaddress','Can delete shipping address'),(40,10,'view_shippingaddress','Can view shipping address'),(41,11,'add_orderitem','Can add order item'),(42,11,'change_orderitem','Can change order item'),(43,11,'delete_orderitem','Can delete order item'),(44,11,'view_orderitem','Can view order item');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` timestamp NOT NULL,
  `first_name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$BbOsJMV8hwkyOZguEA3Ztc$2Ko9q859B2H21/pt2ys4o7nTfWzoL30oW/G+YWImzHs=','2021-05-01 19:55:05',1,'Ruhul','','ruhulaminparvez007@gmail.com',1,1,'2021-05-01 19:54:14',''),(2,'pbkdf2_sha256$260000$vZOeyUvhqhbpzQw1V8u0HD$vaKrJbrtqrLZbmNuQy1hSFRSIxx+k4HzaJ63zCxsq3E=','2021-09-12 16:20:01',1,'ruhulaminparvez','','ruhulaminparvez007@gmail.com',1,1,'2021-09-10 19:46:33','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` timestamp NOT NULL,
  `object_id` varchar(8) DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `change_message` varchar(255) NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-05-01 19:57:06','1','Headphones','[{`added`: {}}]',9,1,1),(2,'2021-05-01 19:57:30','1','Headphones','[{`changed`: {`fields`: [`Digital`]}}]',9,1,2),(3,'2021-05-01 19:58:21','2','Mount of Olives Book','[{`added`: {}}]',9,1,1),(4,'2021-05-01 19:58:49','3','Project Source Code','[{`added`: {}}]',9,1,1),(5,'2021-05-01 19:59:13','4','Watch','[{`added`: {}}]',9,1,1),(6,'2021-05-01 19:59:27','5','Shoes','[{`added`: {}}]',9,1,1),(7,'2021-05-01 19:59:42','6','T-shirt','[{`added`: {}}]',9,1,1),(8,'2021-05-04 15:01:58','6','T-shirt','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(9,'2021-05-04 15:02:13','5','Shoes','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(10,'2021-05-04 15:02:26','4','Watch','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(11,'2021-05-04 15:02:42','3','Project Source Code','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(12,'2021-05-04 15:02:57','2','Mount of Olives Book','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(13,'2021-05-04 15:03:12','1','Headphones','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(14,'2021-05-04 15:42:14','6','Buds','[{`changed`: {`fields`: [`Name`, `Image`]}}]',9,1,2),(15,'2021-05-04 15:42:30','4','Watch','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(16,'2021-05-04 15:43:04','3','Bag','[{`changed`: {`fields`: [`Name`, `Image`]}}]',9,1,2),(17,'2021-05-04 15:43:14','2','Mount of Olives Book','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(18,'2021-05-04 15:50:32','6','Plant','[{`changed`: {`fields`: [`Name`, `Image`]}}]',9,1,2),(19,'2021-05-04 15:51:14','3','Camera','[{`changed`: {`fields`: [`Name`, `Price`, `Image`]}}]',9,1,2),(20,'2021-05-04 15:55:32','6','Plant','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(21,'2021-05-04 15:55:48','3','Camera','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(22,'2021-05-04 15:58:53','4','Watch','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(23,'2021-05-04 18:51:45','7','Air Buds','[{`added`: {}}]',9,1,1),(24,'2021-05-04 18:52:32','8','Cap','[{`added`: {}}]',9,1,1),(25,'2021-05-04 18:53:25','9','Sun Glass','[{`added`: {}}]',9,1,1),(26,'2021-05-04 18:54:34','10','Face Wash','[{`added`: {}}]',9,1,1),(27,'2021-05-04 18:55:17','11','Perfume','[{`added`: {}}]',9,1,1),(28,'2021-05-04 18:56:16','12','Mobile','[{`added`: {}}]',9,1,1),(29,'2021-05-04 18:57:04','13','Shirt','[{`added`: {}}]',9,1,1),(30,'2021-05-04 18:57:24','14','T-shirt','[{`added`: {}}]',9,1,1),(31,'2021-05-04 18:57:53','15','Travel Bag','[{`added`: {}}]',9,1,1),(32,'2021-05-06 15:56:06','1','Ruhul Amin','[{`added`: {}}]',7,1,1),(33,'2021-05-06 15:57:02','1','1','[{`added`: {}}]',8,1,1),(34,'2021-05-06 15:58:08','1','OrderItem object (1)','[{`added`: {}}]',11,1,1),(35,'2021-05-06 15:58:29','2','OrderItem object (2)','[{`added`: {}}]',11,1,1),(36,'2021-05-06 17:33:24','10','Face Wash','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(37,'2021-05-06 17:35:50','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(38,'2021-05-06 17:37:01','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(39,'2021-05-06 17:37:41','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(40,'2021-05-06 17:37:52','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(41,'2021-05-06 17:38:54','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(42,'2021-05-06 17:39:54','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(43,'2021-05-06 17:40:37','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(44,'2021-05-06 17:40:53','11','Perfume','[]',9,1,2),(45,'2021-05-06 17:41:28','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(46,'2021-05-06 17:43:03','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(47,'2021-05-06 17:43:24','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(48,'2021-05-06 17:44:25','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(49,'2021-05-06 17:44:59','11','Perfume','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(50,'2021-05-06 17:50:00','11','Speaker','[{`changed`: {`fields`: [`Name`, `Price`, `Image`]}}]',9,1,2),(51,'2021-05-06 17:51:45','4','Watch','[{`changed`: {`fields`: [`Image`]}}]',9,1,2),(52,'2021-09-10 19:48:31','1','OrderItem object (1)','',11,2,3),(53,'2021-09-10 19:48:36','2','OrderItem object (2)','',11,2,3),(54,'2021-09-10 19:48:46','1','1','',8,2,3),(55,'2021-09-10 19:49:35','1','Ruhul Amin','',7,2,3),(56,'2021-09-10 19:50:09','2','ruhulamin','[{`added`: {}}]',7,2,1),(57,'2021-09-10 19:50:35','2','ruhulamin','',7,2,3),(58,'2021-09-10 19:51:52','3','Ruhul Amin Parvez','[{`added`: {}}]',7,2,1),(59,'2021-09-10 19:52:38','2','2','[{`added`: {}}]',8,2,1),(60,'2021-09-10 19:52:43','3','OrderItem object (3)','[{`added`: {}}]',11,2,1),(61,'2021-09-10 19:52:59','4','OrderItem object (4)','[{`added`: {}}]',11,2,1),(62,'2021-09-11 08:36:27','2','Mount of Olives Book','[{`changed`: {`fields`: [`Digital`]}}]',9,2,2),(63,'2021-09-12 16:14:14','16','Sneakers','[{`added`: {}}]',9,2,1),(64,'2021-09-12 16:14:37','17','Book','[{`added`: {}}]',9,2,1),(65,'2021-09-12 16:15:02','18','Shirt','[{`added`: {}}]',9,2,1),(66,'2021-09-12 16:16:16','18','Shirt','',9,2,3),(67,'2021-09-12 16:16:27','17','Book','',9,2,3),(68,'2021-09-12 16:16:36','16','Sneakers','',9,2,3),(69,'2021-09-12 16:17:12','19','Sneakers','[{`added`: {}}]',9,2,1),(70,'2021-09-12 16:17:44','20','Yellow Shirt','[{`added`: {}}]',9,2,1),(71,'2021-09-12 16:18:02','21','Book','[{`added`: {}}]',9,2,1),(72,'2021-09-12 16:20:38','22','Headsphones','[{`added`: {}}]',9,2,1),(73,'2021-09-12 16:20:51','22','Headsphones','',9,2,3),(74,'2021-09-12 16:26:55','21','Book','',9,2,3),(75,'2021-09-12 16:26:55','20','Yellow Shirt','',9,2,3),(76,'2021-09-12 16:26:55','19','Sneakers','',9,2,3),(77,'2021-09-12 16:27:37','23','Sneakers','[{`added`: {}}]',9,2,1),(78,'2021-09-12 16:27:54','24','Yellow Shirt','[{`added`: {}}]',9,2,1),(79,'2021-09-12 16:28:14','25','Book','[{`added`: {}}]',9,2,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'store','customer'),(8,'store','order'),(11,'store','orderitem'),(9,'store','product'),(10,'store','shippingaddress');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-05-01 19:46:36'),(2,'auth','0001_initial','2021-05-01 19:46:36'),(3,'admin','0001_initial','2021-05-01 19:46:36'),(4,'admin','0002_logentry_remove_auto_add','2021-05-01 19:46:37'),(5,'admin','0003_logentry_add_action_flag_choices','2021-05-01 19:46:37'),(6,'contenttypes','0002_remove_content_type_name','2021-05-01 19:46:37'),(7,'auth','0002_alter_permission_name_max_length','2021-05-01 19:46:37'),(8,'auth','0003_alter_user_email_max_length','2021-05-01 19:46:37'),(9,'auth','0004_alter_user_username_opts','2021-05-01 19:46:38'),(10,'auth','0005_alter_user_last_login_null','2021-05-01 19:46:38'),(11,'auth','0006_require_contenttypes_0002','2021-05-01 19:46:38'),(12,'auth','0007_alter_validators_add_error_messages','2021-05-01 19:46:38'),(13,'auth','0008_alter_user_username_max_length','2021-05-01 19:46:38'),(14,'auth','0009_alter_user_last_name_max_length','2021-05-01 19:46:38'),(15,'auth','0010_alter_group_name_max_length','2021-05-01 19:46:39'),(16,'auth','0011_update_proxy_permissions','2021-05-01 19:46:39'),(17,'auth','0012_alter_user_first_name_max_length','2021-05-01 19:46:39'),(18,'sessions','0001_initial','2021-05-01 19:46:39'),(19,'store','0001_initial','2021-05-01 19:46:40'),(20,'store','0002_product_image','2021-05-04 14:54:13');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` varchar(500) NOT NULL,
  `expire_date` timestamp NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ougnj1vmhfzfv5vgwzjuyhtj3n39djjl','.eJxVjEEOwiAQAP_C2ZAutAgevfuGZmF3pWogKe3J-HdD0oNeZybzVjPuW573xuu8kLooo06_LGJ6cumCHljuVadatnWJuif6sE3fKvHrerR_g4wt920SQLEIYyBwwZsEjicn0Q7IMVimIbjxDB45sJDzYiZrABIZCYyoPl_uFzhl:1mP0m6:JwPCoMDUiKJypR_jYSiA6p0JUcC32yJ-jE95t5_6wZ4','2021-09-25 09:02:22'),('txkrzn4u97bgf4wqifikf600qomo31jr','.eJxVjDEOwjAMRe-SGUXgNLhhZO8ZIjt2SAGlUtNOiLtDpQ6w_vfef5lI61Li2nSOo5iLOZnD78aUHlo3IHeqt8mmqS7zyHZT7E6bHSbR53V3_w4KtfKtHQhSAD2T-tz7lDsOkpMTRgbCDCCdl4wSwLmsQD0eSRM6jwiS2Lw_Dis4_g:1lcxZp:2mUKHVc1sILArTDgqVvWirNblOF56I8zI16j9Y367Zk','2021-05-15 19:55:05');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_customer`
--

DROP TABLE IF EXISTS `store_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_customer`
--

LOCK TABLES `store_customer` WRITE;
/*!40000 ALTER TABLE `store_customer` DISABLE KEYS */;
INSERT INTO `store_customer` VALUES (3,'Ruhul Amin Parvez','ruhulaminparvez007@gmail.com',2),(4,'SABINA','varsityworks03@gmail.com',NULL),(5,'newUser','new@gmail.com',NULL);
/*!40000 ALTER TABLE `store_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_order` timestamp NOT NULL,
  `complete` tinyint(1) DEFAULT NULL,
  `transaction_id` varchar(200) DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_customer_id_13d6d43e` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
INSERT INTO `store_order` VALUES (2,'2021-09-10 19:52:38',1,'1631359677.328553',3),(3,'2021-09-11 09:28:00',1,'1631359758.336635',3),(4,'2021-09-11 09:29:22',1,'1631359775.958279',3),(5,'2021-09-11 09:29:37',1,'1631360076.076647',3),(6,'2021-09-11 09:34:38',1,'1631360093.823332',3),(7,'2021-09-11 09:34:56',1,'1631385779.297626',3),(8,'2021-09-11 16:43:02',1,'1631437861.2598',3),(9,'2021-09-12 07:11:03',1,'1631469152.192069',3),(10,'2021-09-12 15:52:35',1,'1631469305.647263',3),(11,'2021-09-12 15:55:08',1,'1631469499.488966',3),(12,'2021-09-12 15:58:22',1,'1631471384.985449',3),(13,'2021-09-12 15:59:41',1,'1631469580.957803',4),(14,'2021-09-12 16:29:46',0,NULL,3),(15,'2021-09-12 16:31:09',1,'1631471469.085241',5);
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_orderitem`
--

DROP TABLE IF EXISTS `store_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_orderitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `date_added` timestamp NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_orderitem_order_id_acf8722d` (`order_id`),
  KEY `store_orderitem_product_id_f2b098d4` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_orderitem`
--

LOCK TABLES `store_orderitem` WRITE;
/*!40000 ALTER TABLE `store_orderitem` DISABLE KEYS */;
INSERT INTO `store_orderitem` VALUES (10,1,'2021-09-11 09:24:53',2,1),(11,1,'2021-09-11 09:29:12',3,3),(12,1,'2021-09-11 09:29:25',4,2),(13,1,'2021-09-11 09:34:29',5,2),(14,1,'2021-09-11 09:34:43',6,6),(15,1,'2021-09-11 16:42:44',7,3),(16,1,'2021-09-12 07:10:46',8,2),(17,1,'2021-09-12 07:10:48',8,3),(19,1,'2021-09-12 07:27:17',9,1),(20,1,'2021-09-12 07:27:19',9,3),(23,1,'2021-09-12 15:54:18',10,14),(24,1,'2021-09-12 15:54:20',10,15),(25,1,'2021-09-12 15:54:23',10,13),(27,2,'2021-09-12 15:57:04',11,5),(28,1,'2021-09-12 15:57:09',11,6),(29,2,'2021-09-12 15:57:13',11,14),(30,1,'2021-09-12 15:57:15',11,13),(31,3,'2021-09-12 15:59:42',13,1),(32,2,'2021-09-12 15:59:42',13,14),(33,1,'2021-09-12 15:59:42',13,15),(35,2,'2021-09-12 16:28:32',12,24),(37,2,'2021-09-12 16:28:39',12,15),(38,2,'2021-09-12 16:28:41',12,13),(39,2,'2021-09-12 16:31:10',15,2),(40,1,'2021-09-12 16:31:10',15,3);
/*!40000 ALTER TABLE `store_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `digital` tinyint(1) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (1,'Headphones',179,0,'headphones.jpg'),(2,'Mount of Olives Book',14.99,1,'book.jpg'),(3,'Camera',599.99,1,'camera.jpg'),(4,'Watch',259,0,'apple-watch.jpg'),(5,'Shoes',150,0,'shoes.jpg'),(6,'Plant',99,0,'plant.jpg'),(7,'Air Buds',50.99,0,'buds.jpg'),(8,'Cap',25,0,'cap.jpg'),(9,'Sun Glass',20,0,'sun-glass.jpg'),(10,'Face Wash',15.99,0,'facewash.jpg'),(11,'Speaker',125,0,'speaker.jpg'),(12,'Mobile',100,0,'mobile.jpg'),(13,'Shirt',39.99,0,'shirt.jpg'),(14,'T-shirt',25.99,0,'tshirt.jpg'),(15,'Travel Bag',55.99,0,'travel-bag.jpg'),(23,'Sneakers',350,0,'sneakers_Hb2Op4C.jpg'),(24,'Yellow Shirt',150,0,'shirt-another_IBd2jh9.jpg'),(25,'Book',50,1,'book-another_K1HOPeg.jpg');
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_shippingaddress`
--

DROP TABLE IF EXISTS `store_shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_shippingaddress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zipcode` varchar(200) DEFAULT NULL,
  `date_added` timestamp NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_shippingaddress_customer_id_66e362a6` (`customer_id`),
  KEY `store_shippingaddress_order_id_e6decfbb` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_shippingaddress`
--

LOCK TABLES `store_shippingaddress` WRITE;
/*!40000 ALTER TABLE `store_shippingaddress` DISABLE KEYS */;
INSERT INTO `store_shippingaddress` VALUES (1,'Dhaka','Dhaka','Dhaka','3310','2021-09-11 09:27:58',3,2),(2,'bahubal','sylhet','habiganj','3310','2021-09-11 09:34:54',3,6),(3,'Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet','Dhaka','Dhaka','3310','2021-09-12 15:52:32',3,9),(4,'Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet','Habiganj','Dhaka','3310','2021-09-12 15:55:06',3,10),(5,'Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet','Dhaka','Dhaka','3310','2021-09-12 15:58:20',3,11),(6,'Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet','Dhaka','Dhaka','3310','2021-09-12 15:59:43',4,13),(7,'Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet','Dhaka','Dhaka','3310','2021-09-12 16:29:45',3,12);
/*!40000 ALTER TABLE `store_shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-24 11:05:38
