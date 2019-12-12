
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
DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inPost` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (3,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:13:31','2019-11-18 12:13:31'),(4,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:13:39','2019-11-18 12:13:39'),(5,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:16:07','2019-11-18 12:16:07'),(6,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:19:29','2019-11-18 12:19:29'),(7,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:30:38','2019-11-18 12:30:38'),(8,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:32:49','2019-11-18 12:32:49'),(9,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:41:05','2019-11-18 12:41:05'),(10,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:42:01','2019-11-18 12:42:01'),(11,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:45:21','2019-11-18 12:45:21'),(12,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:45:59','2019-11-18 12:45:59'),(13,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:47:19','2019-11-18 12:47:19'),(14,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:47:35','2019-11-18 12:47:35'),(15,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:48:58','2019-11-18 12:48:58'),(16,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:49:24','2019-11-18 12:49:24'),(17,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:50:44','2019-11-18 12:50:44'),(18,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:57:01','2019-11-18 12:57:01'),(19,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 12:57:22','2019-11-18 12:57:22'),(20,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 13:00:00','2019-11-18 13:00:00'),(21,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 13:04:22','2019-11-18 13:04:22'),(22,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 13:11:38','2019-11-18 13:11:38'),(23,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 13:13:25','2019-11-18 13:13:25'),(24,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 13:30:54','2019-11-18 13:30:54'),(25,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 13:32:10','2019-11-18 13:32:10'),(26,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 13:32:50','2019-11-18 13:32:50'),(27,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-18 13:34:29','2019-11-18 13:34:29'),(28,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-19 07:01:16','2019-11-19 07:01:16'),(29,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-19 09:33:23','2019-11-19 09:33:23'),(30,NULL,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-26 08:36:44','2019-11-26 08:36:44'),(31,NULL,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-29 07:22:40','2019-11-29 07:22:40'),(32,NULL,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-29 07:22:52','2019-11-29 07:22:52'),(33,NULL,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-29 07:25:01','2019-11-29 07:25:01'),(34,NULL,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-11-29 07:55:38','2019-11-29 07:55:38'),(35,1,'mbielak@ideashirt.pl','Podwale','49-100','Niemodlin',NULL,'+48 694 556 711',NULL,'2019-12-04 16:29:38','2019-12-04 16:29:38');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_boolean` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'Kolor',NULL,'2019-11-25 09:15:00','2019-11-25 09:24:31',0),(2,'Typ szycia',NULL,'2019-11-25 09:16:00','2019-11-25 09:24:11',0),(3,'Z daszkiem',NULL,'2019-11-25 09:26:07','2019-11-25 09:26:07',1);
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL,
  `external_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Czapka z daszkiem','czapka-z-daszkiem','<p>Czapka z daszkiem</p>','Czapka z daszkiem','Czapka z daszkiem','categories/czrwona.jpg',1,NULL,'2019-11-28 11:18:55','2019-11-28 11:18:55'),(2,'Czapki zimowe','czapki-zimowe','<p>Czapki zimowe</p>','Czapki zimowe','Czapki zimowe','categories/czrwona.jpg',1,NULL,'2019-11-28 11:20:17','2019-11-28 11:20:17');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','text','Id',1,0,0,0,0,0,'{}',1),(23,4,'name','text','Name',1,1,1,1,1,1,'{}',2),(24,4,'desc','rich_text_box','Desc',0,1,1,1,1,1,'{}',3),(25,4,'url','text','Url',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"unique:products,url\",\"messages\":{\"unique\":\"Te pole musi by\\u0107 unikatowe.\"}}}',4),(26,4,'short_desc','text','Short Desc',0,1,1,1,1,1,'{}',5),(27,4,'images','media_picker','Images',0,1,1,1,1,1,'{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":95}',6),(28,4,'main_image','image','Main Image',1,1,1,1,1,1,'{}',7),(29,4,'page_title','text','Page Title',1,1,1,1,1,1,'{}',8),(30,4,'page_description','text','Page Description',0,1,1,1,1,1,'{}',9),(31,4,'price','number','Price',1,1,1,1,1,1,'{}',10),(32,4,'price_sellout','number','Price Sellout',0,1,1,1,1,1,'{}',11),(33,4,'active','checkbox','Active',1,1,1,1,1,1,'{}',12),(34,4,'is_new','checkbox','Is New',1,1,1,1,1,1,'{}',13),(35,4,'stock','number','Stock',1,1,1,1,1,1,'{}',14),(36,4,'sku','text','Sku',0,1,1,1,1,1,'{}',15),(37,4,'sku_parrent','text','Sku Parrent',0,0,0,0,0,0,'{}',16),(38,4,'country','text','Country',1,1,1,1,1,1,'{}',17),(39,4,'weight','number','Weight',0,1,1,1,1,1,'{}',18),(40,4,'in_package','number','In Package',0,0,0,0,0,0,'{}',19),(41,4,'orders_count','text','Orders Count',1,0,0,0,0,0,'{}',20),(42,4,'views_count','text','Views Count',1,0,0,0,0,0,'{}',21),(43,4,'external_id','text','External Id',0,0,0,0,0,0,'{}',22),(44,4,'keywords','text','Keywords',0,1,1,1,1,1,'{}',23),(45,4,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',24),(46,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',25),(47,4,'deleted_at','text','Deleted At',0,1,1,0,0,1,'{}',26),(48,5,'id','text','Id',1,0,0,0,0,0,'{}',1),(49,5,'name','text','Name',1,1,1,1,1,1,'{}',2),(50,5,'data','hidden','Data',1,1,1,1,1,1,'{}',3),(51,5,'image','media_picker','Image',1,1,1,1,1,1,'{}',4),(52,5,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(53,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(54,6,'id','text','Id',1,0,0,0,0,0,'{}',1),(55,6,'name','text','Name',1,1,1,1,1,1,'{}',2),(56,6,'url','media_picker','Url',1,1,1,1,1,1,'{}',3),(57,6,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(58,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(59,6,'font_family','text','Font Family',1,1,1,1,1,1,'{}',6),(60,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(61,7,'name','text','Name',1,1,1,1,1,1,'{}',2),(62,7,'price','number','Price',1,1,1,1,1,1,'{}',3),(63,7,'controller','text','Controller',0,0,0,0,0,0,'{}',4),(64,7,'free_shipping_allowed','checkbox','Dozwolona darmowa wysyłka',1,1,1,1,1,1,'{}',5),(65,7,'settings','hidden','Settings',0,0,0,1,1,1,'{}',6),(66,7,'weight','number','Weight',1,1,1,1,1,1,'{}',7),(67,7,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',9),(68,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),(69,7,'logo','media_picker','Logo',0,1,1,1,1,1,'{}',8),(70,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(71,9,'local_order_id','hidden','Local Order Id',0,0,0,1,1,1,'{}',2),(72,9,'payu_order_id','hidden','Payu Order Id',1,0,0,1,1,1,'{}',3),(73,9,'currency','text','Currency',1,1,1,1,1,1,'{}',4),(74,9,'totalAmount','text','TotalAmount',1,1,1,1,1,1,'{}',5),(75,9,'history','hidden','History',0,0,0,1,1,1,'{}',6),(76,9,'status','text','Status',1,1,1,1,1,1,'{}',7),(77,9,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(78,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(79,9,'payu_payment_belongsto_order_relationship','relationship','orders',0,1,1,1,1,1,'{\"model\":\"App\\\\order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"local_order_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"addresses\",\"pivot\":\"0\",\"taggable\":null}',10),(80,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(81,10,'user_id','text','User Id',0,1,1,1,1,1,'{}',2),(82,10,'address_id','text','Address Id',1,1,1,1,1,1,'{}',3),(83,10,'payment_type','radio_btn','Payment Type',1,1,1,1,1,1,'{\"default\":\"bank\",\"options\":{\"radio1\":\"bank\",\"radio2\":\"payu\"}}',4),(84,10,'shipping_id','text','Shipping Id',1,1,1,1,1,1,'{}',5),(85,10,'notes','text','Notes',0,1,1,1,1,1,'{}',6),(86,10,'status','text','Status',1,1,1,1,1,1,'{}',7),(87,10,'hash','text','Hash',1,1,1,1,1,1,'{}',8),(88,10,'amount','number','Amount',1,1,1,1,1,1,'{}',9),(89,10,'shipment_amount','number','Shipment Amount',1,1,1,1,1,1,'{}',10),(90,10,'payment_link','text','Payment Link',0,1,1,1,1,1,'{}',11),(91,10,'paid','checkbox','Paid',1,1,1,1,1,1,'{}',12),(92,10,'tracking','text','Tracking',0,1,1,1,1,1,'{}',13),(93,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',14),(94,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',15),(95,10,'order_belongsto_user_relationship','relationship','users',0,1,1,1,1,1,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}',16),(96,10,'order_belongsto_address_relationship','relationship','addresses',0,1,1,1,1,1,'{\"model\":\"App\\\\Address\",\"table\":\"addresses\",\"type\":\"belongsTo\",\"column\":\"address_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}',17),(97,10,'order_belongsto_shipment_relationship','relationship','shipments',0,1,1,1,1,1,'{\"model\":\"App\\\\Shipment\",\"table\":\"shipments\",\"type\":\"belongsTo\",\"column\":\"shipping_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}',18),(98,11,'id','text','Id',1,0,0,0,0,0,'{}',1),(99,11,'name','text','Name',1,1,1,1,1,1,'{}',2),(100,11,'icon','media_picker','Icon',0,1,1,1,1,1,'{}',3),(101,11,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(102,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(103,11,'is_boolean','checkbox','Is Boolean',1,1,1,1,1,1,'{}',4),(104,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(105,12,'name','text','Name',1,1,1,1,1,1,'{}',2),(106,12,'url','text','Url',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"unique:categories,url\",\"messages\":{\"unique\":\"Te pole musi by\\u0107 unikalne\"}}}',3),(107,12,'desc','rich_text_box','Desc',0,1,1,1,1,1,'{}',4),(108,12,'page_title','text','Page Title',1,1,1,1,1,1,'{}',5),(109,12,'page_description','text','Page Description',1,1,1,1,1,1,'{}',6),(110,12,'images','media_picker','Images',0,1,1,1,1,1,'{}',7),(111,12,'active','checkbox','Active',1,1,1,1,1,1,'{}',8),(112,12,'external_id','hidden','External Id',0,1,1,1,1,1,'{}',9),(113,12,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',10),(114,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(115,4,'product_belongsto_category_relationship','relationship','categories',0,1,1,1,1,1,'{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}',27),(116,4,'data','hidden','Data',0,1,1,1,1,1,'{}',27),(117,4,'category_id','text','Category Id',0,1,1,1,1,1,'{}',28),(118,14,'id','text','Id',1,0,0,0,0,0,'{}',1),(119,14,'name','text','Name',1,1,1,1,1,1,'{}',2),(120,14,'content','rich_text_box','Content',0,1,1,1,1,1,'{}',3),(121,14,'active','checkbox','Active',1,1,1,1,1,1,'{}',4),(122,14,'type','radio_btn','Type',1,1,1,1,1,1,'{\"default\":\"blog\",\"options\":{\"blog\":\"Blog\",\"home_header\":\"Strona g\\u0142\\u00f3wna banner 1\"}}',5),(123,14,'images','media_picker','Images',0,1,1,1,1,1,'{}',6),(124,14,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',7),(125,14,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2019-11-06 13:47:16','2019-11-06 13:47:16'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2019-11-06 13:47:16','2019-11-06 13:47:16'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2019-11-06 13:47:16','2019-11-06 13:47:16'),(4,'products','products','Produkty','Produkty','voyager-shop','App\\Product',NULL,'App\\Http\\Controllers\\Voyager\\ProductController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-11-06 14:12:05','2019-11-28 11:24:10'),(5,'patterns','patterns','Pattern','Patterns',NULL,'App\\Pattern',NULL,'App\\Http\\Controllers\\Voyager\\PatternController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-11-13 13:05:30','2019-11-13 14:01:58'),(6,'fonts','fonts','Font','Fonts',NULL,'App\\Font',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-11-14 06:58:17','2019-11-14 07:04:39'),(7,'shipments','shipments','Shipment','Shipments',NULL,'App\\Shipment',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-11-18 09:28:56','2019-11-18 09:46:06'),(9,'payu_payments','payu-payments','Payu Payment','Payu Payments',NULL,'App\\Services\\PayuModel',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-11-18 14:23:54','2019-11-18 14:23:54'),(10,'orders','orders','Order','Orders',NULL,'App\\Order',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-11-19 07:09:37','2019-11-19 07:21:40'),(11,'attributes','attributes','Attribute','Attributes',NULL,'App\\Attribute',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-11-25 09:15:38','2019-11-25 09:22:48'),(12,'categories','categories','Category','Categories',NULL,'App\\Category',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-11-28 11:10:51','2019-11-28 11:11:28'),(14,'pos','pos','Pos','Pos',NULL,'App\\Pos',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-12-05 13:39:57','2019-12-05 13:40:30');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `designs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pattern_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `designs` WRITE;
/*!40000 ALTER TABLE `designs` DISABLE KEYS */;
INSERT INTO `designs` VALUES (7,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":65,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//60e24fa5b2a052f81e7d8a134b5bcab6.jpg',2,NULL,'2019-11-15 09:18:15','2019-11-15 09:18:15',0),(8,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":65,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//fe9e89fbc758b309ba241c37e3538065.jpg',2,NULL,'2019-11-15 09:19:14','2019-11-15 09:19:14',0),(9,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":65,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//007d27d2559b90baddc2b16a785ca831.jpg',2,NULL,'2019-11-15 09:19:56','2019-11-15 09:19:56',0),(10,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":65,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//8a9046e923b052c80a1b57ea35d332d3.jpg',2,NULL,'2019-11-15 09:20:14','2019-11-15 09:20:14',0),(11,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":65,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//23e1bbec9a01c12daa02fa1fbedf4221.jpg',2,NULL,'2019-11-15 09:20:55','2019-11-15 09:20:55',0),(12,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":65,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//79339bbccaa4d98a92f5afa3d90cc4e9.jpg',2,NULL,'2019-11-15 09:21:16','2019-11-15 09:21:16',0),(13,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":65,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//9808641d418607e0e5fd3b6323bea1fb.jpg',2,NULL,'2019-11-15 09:24:39','2019-11-15 09:24:39',0),(14,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Twoja czapka\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":68,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#E20C0C\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"Berkshire Swash\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//2abba08e1e64bea6147dd5d96cf006f0.jpg',2,NULL,'2019-11-15 09:53:06','2019-11-15 09:53:06',0),(15,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":65,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//eb8702eb60c87f2bcfb4cfa11f02a3d7.jpg',2,NULL,'2019-11-15 11:01:38','2019-11-15 11:01:38',0),(16,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"JESTEM ZAJEBISTY\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":56,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#43DAC2\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"Berkshire Swash\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//812c640f2e93229aff0c840d87a1f661.jpg',2,NULL,'2019-11-15 11:06:58','2019-11-15 11:06:58',0),(17,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Twoja czapka\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":68,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#E20C0C\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"Berkshire Swash\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//b683f27a98c9371af6b374f94185da99.jpg',2,NULL,'2019-11-15 11:19:10','2019-11-15 11:19:10',0),(18,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Twoja czapka\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":68,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#E20C0C\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"Berkshire Swash\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//09c7931783443d81dc6bff672e86f6fa.jpg',2,NULL,'2019-11-15 11:20:23','2019-11-15 11:20:23',0),(19,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Twoja czapka\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":68,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#E20C0C\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"Berkshire Swash\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//2d992348fe6fb4efc86ea067bbbca78a.jpg',2,NULL,'2019-11-15 11:22:03','2019-11-15 11:22:03',0),(20,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Twoja czapka\",\"x\":0,\"max_font_size\":120,\"min_font_size\":10,\"fontSize\":68,\"height\":170.8554065422137,\"y\":0,\"fill\":\"#E20C0C\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"Berkshire Swash\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":396.14653524628847}]}','designs_previews/November2019//8998f23a3c1c8c3531b72bf803953d95.jpg',2,NULL,'2019-11-15 11:33:59','2019-11-15 11:33:59',0),(21,NULL,'{\"configKonva\":{\"width\":600,\"height\":600},\"layer\":{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":396.14653524628847,\"height\":170.8554065422137,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":30,\"min_font_size\":10,\"fontSize\":20,\"height\":85.42770327110685,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":396.14653524628847},{\"name\":\"second\",\"text\":\"Example\",\"x\":0,\"max_font_size\":30,\"min_font_size\":10,\"fontSize\":20,\"height\":85.42770327110685,\"y\":85.42770327110685,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":396.14653524628847}]}','designs_previews/November2019//212b0e317ad1c2d7432c8432801e00ef.jpg',2,NULL,'2019-11-18 09:01:57','2019-11-18 09:01:57',0),(27,NULL,'{\"configKonva\":{\"width\":857.1428571428572,\"height\":857.1428571428572},\"layer\":{\"x\":149.8551620726013,\"edited\":true,\"y\":237.9643934799699,\"width\":565.9236217804121,\"height\":244.07915220316244,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":129,\"min_font_size\":14,\"fontSize\":72,\"height\":122.03957610158122,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":565.9236217804121},{\"name\":\"second\",\"text\":\"Example\",\"x\":0,\"max_font_size\":129,\"min_font_size\":14,\"fontSize\":71.5,\"height\":122.03957610158122,\"y\":122.03957610158122,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":565.9236217804121}]}','designs_previews/November2019//d528b5e2ebad9006411a52fe6590af9d.jpg',2,NULL,'2019-11-25 07:06:18','2019-11-25 07:06:18',0),(41,NULL,'{\"configKonva\":{\"width\":300,\"height\":300},\"layer\":{\"x\":52.44930672541045,\"edited\":true,\"y\":83.28753771798947,\"width\":198.07326762314423,\"height\":85.42770327110685,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"TEKST\",\"x\":0,\"max_font_size\":45,\"min_font_size\":5,\"fontSize\":17,\"height\":42.713851635553425,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":198.07326762314423},{\"name\":\"second\",\"text\":\"Example\",\"x\":0,\"max_font_size\":45,\"min_font_size\":5,\"fontSize\":25,\"height\":42.713851635553425,\"y\":42.713851635553425,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":198.07326762314423}]}','designs_previews/November2019//fef87191e31487ee2f9840821852e271.jpg',2,NULL,'2019-11-26 08:31:27','2019-11-26 08:31:27',0),(42,NULL,'{\"configKonva\":{\"width\":857.1428571428572,\"height\":857.1428571428572},\"layer\":{\"x\":149.8551620726013,\"edited\":true,\"y\":237.9643934799699,\"width\":565.9236217804121,\"height\":244.07915220316244,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":129,\"min_font_size\":14,\"fontSize\":72,\"height\":122.03957610158122,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":565.9236217804121},{\"name\":\"second\",\"text\":\"Example\",\"x\":0,\"max_font_size\":129,\"min_font_size\":14,\"fontSize\":71.5,\"height\":122.03957610158122,\"y\":122.03957610158122,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":565.9236217804121}]}','designs_previews/November2019//59568a06c88a97350980627fbc40043e.jpg',2,NULL,'2019-11-26 08:35:47','2019-11-26 08:35:47',0),(43,NULL,'{\"configKonva\":{\"width\":857.1428571428572,\"height\":857.1428571428572},\"layer\":{\"x\":149.8551620726013,\"edited\":true,\"y\":237.9643934799699,\"width\":565.9236217804121,\"height\":244.07915220316244,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"xdxdxdxd\",\"x\":0,\"max_font_size\":129,\"min_font_size\":14,\"fontSize\":72,\"height\":122.03957610158122,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":565.9236217804121},{\"name\":\"second\",\"text\":\"Example\",\"x\":0,\"max_font_size\":129,\"min_font_size\":14,\"fontSize\":71.5,\"height\":122.03957610158122,\"y\":122.03957610158122,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":565.9236217804121}]}','designs_previews/November2019//a05edd577088f6d894786bdff22e1508.jpg',2,NULL,'2019-11-26 13:59:27','2019-11-26 13:59:27',0),(44,NULL,'{\"configKonva\":{\"width\":857.1428571428572,\"height\":857.1428571428572},\"layer\":{\"x\":149.8551620726013,\"edited\":true,\"y\":237.9643934799699,\"width\":565.9236217804121,\"height\":244.07915220316244,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":129,\"min_font_size\":14,\"fontSize\":72,\"height\":122.03957610158122,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":565.9236217804121},{\"name\":\"second\",\"text\":\"Example\",\"x\":0,\"max_font_size\":129,\"min_font_size\":14,\"fontSize\":71.5,\"height\":122.03957610158122,\"y\":122.03957610158122,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":50},\"width\":565.9236217804121}]}','designs_previews/November2019//5c4b81d9c62c1f5c63855c51819614e7.jpg',2,NULL,'2019-11-28 09:57:03','2019-11-28 09:57:03',0),(45,NULL,'[{\"name\":\"first\",\"text\":\"SUPER TEKST\",\"x\":0,\"max_font_size\":171,\"min_font_size\":14,\"fontSize\":93,\"height\":244.07915220316244,\"y\":0,\"fill\":\"#FF0000\",\"align\":\"center\",\"verticalAlign\":\"middle\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":565.9236217804121}]','designs/November2019//9d03078a3cb1c93ce656fc50736f9f53.jpg',2,1,'2019-11-28 13:51:45','2019-11-28 13:51:45',0),(46,NULL,'{\"configKonva\":{\"width\":857.1428571428572,\"height\":857.1428571428572},\"layer\":{\"x\":112.85714285714286,\"edited\":true,\"y\":240.837275307474,\"width\":627.4189822377323,\"height\":251.1825922421953,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"POZDRO 600\",\"x\":0,\"max_font_size\":171,\"min_font_size\":14,\"fontSize\":113,\"height\":251.1825922421953,\"y\":0,\"fill\":\"#FF0000\",\"align\":\"center\",\"verticalAlign\":\"middle\",\"fontFamily\":\"Berkshire Swash\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":627.4189822377323}]}','designs_previews/November2019//cb8e6ae43458e5da5e97a51fd33f9ebc.jpg',3,NULL,'2019-11-29 07:24:19','2019-11-29 07:24:19',0),(47,NULL,'{\"configKonva\":{\"width\":300,\"height\":300},\"layer\":{\"x\":52.44930672541045,\"edited\":true,\"y\":83.28753771798947,\"width\":198.07326762314423,\"height\":85.42770327110685,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"text\":\"Example\",\"x\":0,\"max_font_size\":43,\"min_font_size\":4,\"fontSize\":43,\"height\":85.42770327110685,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"top\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":198.07326762314423}]}','designs_previews/November2019//7c95629e1b9ac22845464b29d68016f6.jpg',2,NULL,'2019-11-29 07:53:07','2019-11-29 07:53:07',0),(48,NULL,'{\"configKonva\":{\"width\":857.1428571428572,\"height\":857.1428571428572},\"layer\":{\"x\":112.85714285714286,\"edited\":true,\"y\":240.837275307474,\"width\":627.4189822377323,\"height\":251.1825922421953,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"pattern_id\":3,\"text\":\"wojagahgaoighagioawg\",\"x\":0,\"max_font_size\":171,\"min_font_size\":14,\"fontSize\":88,\"height\":251.1825922421953,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"middle\",\"fontFamily\":\"Berkshire Swash\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":627.4189822377323}]}','designs_previews/November2019//561537a7d6db09659259fc226f8d9fa7.jpg',3,NULL,'2019-11-29 09:17:28','2019-11-29 09:17:28',3),(49,NULL,'[{\"name\":\"first\",\"pattern_id\":3,\"text\":\"fawfwafawf\",\"x\":0,\"max_font_size\":60,\"min_font_size\":5,\"fontSize\":20,\"height\":85.42770327110685,\"y\":0,\"fill\":\"#FFFFFF\",\"align\":\"center\",\"verticalAlign\":\"middle\",\"fontFamily\":\"McLaren\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":198.07326762314423}]','designs/November2019//ce4edb5877a1e5683b187c0abb36b657.jpg',2,1,'2019-11-29 09:29:50','2019-11-29 09:29:50',3),(50,NULL,'{\"configKonva\":{\"width\":857.1428571428572,\"height\":857.1428571428572},\"layer\":{\"x\":112.85714285714286,\"edited\":true,\"y\":240.837275307474,\"width\":627.4189822377323,\"height\":251.1825922421953,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":false,\"rotation\":0,\"scaleX\":1,\"scaleY\":1,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0},\"texts\":[{\"name\":\"first\",\"pattern_id\":3,\"text\":\"Example\",\"x\":0,\"max_font_size\":171,\"min_font_size\":14,\"fontSize\":118,\"height\":251.1825922421953,\"y\":0,\"fill\":\"#000000\",\"align\":\"center\",\"verticalAlign\":\"middle\",\"fontFamily\":\"Berkshire Swash\",\"padding\":5,\"setLayer\":{\"height\":\"100.00\"},\"width\":627.4189822377323}]}','designs_previews/December2019//31b759b4bbc32ec359c38402d9e30453.jpg',3,1,'2019-12-04 16:29:22','2019-12-04 16:29:22',3);
/*!40000 ALTER TABLE `designs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `fonts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fonts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `font_family` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fonts` WRITE;
/*!40000 ALTER TABLE `fonts` DISABLE KEYS */;
INSERT INTO `fonts` VALUES (1,'BebasNue','fonts/BebasNeue-Regular.ttf','2019-11-14 07:02:00','2019-11-14 07:05:12','BebasNeue'),(2,'McLaren-Regular','fonts/McLaren-Regular.ttf','2019-11-14 07:02:00','2019-11-14 07:05:02','McLaren'),(3,'Yeon Sung','fonts/YeonSung-Regular.ttf','2019-11-14 07:05:34','2019-11-14 07:05:34','Yeon Sung'),(4,'Aladin','fonts/Aladin-Regular.ttf','2019-11-14 07:06:08','2019-11-14 07:06:08','Aladin'),(5,'Berkshire Swash','fonts/BerkshireSwash-Regular.ttf','2019-11-14 07:06:46','2019-11-14 07:06:46','Berkshire Swash'),(6,'Courgette','fonts/Courgette-Regular.ttf','2019-11-14 07:07:09','2019-11-14 07:07:09','Courgette'),(7,'Merienda One','fonts/MeriendaOne-Regular.ttf','2019-11-14 07:08:01','2019-11-14 07:08:01','Merienda One'),(8,'Parisienne','fonts/Parisienne-Regular.ttf','2019-11-14 07:08:12','2019-11-14 07:08:12','Parisienne'),(9,'Permanent Marker','fonts/PermanentMarker-Regular.ttf','2019-11-14 07:08:26','2019-11-14 07:08:26','Permanent Marker'),(10,'Sriracha','fonts/Sriracha-Regular.ttf','2019-11-14 07:08:40','2019-11-14 07:08:40','Sriracha');
/*!40000 ALTER TABLE `fonts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2019-11-06 13:47:16','2019-11-06 13:47:16','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2019-11-06 13:47:16','2019-11-06 13:47:16','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2019-11-06 13:47:16','2019-11-06 13:47:16','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2019-11-06 13:47:16','2019-11-06 13:47:16','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2019-11-06 13:47:16','2019-11-06 13:47:16',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2019-11-06 13:47:16','2019-11-06 13:47:16','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,11,'2019-11-06 13:47:16','2019-11-06 13:47:16','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2019-11-06 13:47:16','2019-11-06 13:47:16','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,13,'2019-11-06 13:47:16','2019-11-06 13:47:16','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2019-11-06 13:47:16','2019-11-06 13:47:16','voyager.settings.index',NULL),(11,1,'Hooks','','_self','voyager-hook',NULL,5,13,'2019-11-06 13:47:16','2019-11-06 13:47:16','voyager.hooks',NULL),(12,1,'Produkty','','_self','voyager-shop',NULL,NULL,15,'2019-11-06 14:12:05','2019-11-06 14:12:05','voyager.products.index',NULL),(13,1,'Patterns','','_self',NULL,NULL,NULL,16,'2019-11-13 13:05:30','2019-11-13 13:05:30','voyager.patterns.index',NULL),(14,1,'Fonts','','_self',NULL,NULL,NULL,17,'2019-11-14 06:58:17','2019-11-14 06:58:17','voyager.fonts.index',NULL),(15,1,'Shipments','','_self',NULL,NULL,NULL,18,'2019-11-18 09:28:56','2019-11-18 09:28:56','voyager.shipments.index',NULL),(16,1,'Payu Payments','','_self',NULL,NULL,NULL,19,'2019-11-18 14:23:54','2019-11-18 14:23:54','voyager.payu-payments.index',NULL),(17,1,'Orders','','_self',NULL,NULL,NULL,20,'2019-11-19 07:09:37','2019-11-19 07:09:37','voyager.orders.index',NULL),(18,1,'Attributes','','_self',NULL,NULL,NULL,21,'2019-11-25 09:15:38','2019-11-25 09:15:38','voyager.attributes.index',NULL),(19,1,'Categories','','_self',NULL,NULL,NULL,22,'2019-11-28 11:10:51','2019-11-28 11:10:51','voyager.categories.index',NULL),(20,2,'Kontakt','/kontakt','_self',NULL,'#000000',NULL,23,'2019-12-04 15:14:34','2019-12-04 15:14:34',NULL,''),(21,2,'Produkty','/produkty','_self',NULL,'#000000',NULL,24,'2019-12-04 15:14:51','2019-12-04 15:14:51',NULL,''),(22,1,'Pos','','_self',NULL,NULL,NULL,25,'2019-12-05 13:39:57','2019-12-05 13:39:57','voyager.pos.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2019-11-06 13:47:16','2019-11-06 13:47:16'),(2,'footer','2019-12-04 15:14:17','2019-12-04 15:14:17');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_11_06_145143_create_addresses_table',2),(25,'2019_11_06_145303_create_products_table',2),(26,'2019_11_06_145807_create_product_categories_table',2),(27,'2019_11_06_145906_create_categories_table',2),(28,'2019_11_06_151237_add_soft_delates_to_products_table',3),(29,'2019_11_07_114704_add_field_to_products_table',4),(30,'2019_11_13_140203_create_patterns_table',5),(31,'2019_11_14_075640_create_fonts_table',6),(32,'2019_11_14_080349_add_font_family_to_fonts_table',7),(33,'2015_03_07_311070_create_tracker_paths_table',8),(34,'2015_03_07_311071_create_tracker_queries_table',8),(35,'2015_03_07_311072_create_tracker_queries_arguments_table',8),(36,'2015_03_07_311073_create_tracker_routes_table',8),(37,'2015_03_07_311074_create_tracker_routes_paths_table',8),(38,'2015_03_07_311075_create_tracker_route_path_parameters_table',8),(39,'2015_03_07_311076_create_tracker_agents_table',8),(40,'2015_03_07_311077_create_tracker_cookies_table',8),(41,'2015_03_07_311078_create_tracker_devices_table',8),(42,'2015_03_07_311079_create_tracker_domains_table',8),(43,'2015_03_07_311080_create_tracker_referers_table',8),(44,'2015_03_07_311081_create_tracker_geoip_table',8),(45,'2015_03_07_311082_create_tracker_sessions_table',8),(46,'2015_03_07_311083_create_tracker_errors_table',8),(47,'2015_03_07_311084_create_tracker_system_classes_table',8),(48,'2015_03_07_311085_create_tracker_log_table',8),(49,'2015_03_07_311086_create_tracker_events_table',8),(50,'2015_03_07_311087_create_tracker_events_log_table',8),(51,'2015_03_07_311088_create_tracker_sql_queries_table',8),(52,'2015_03_07_311089_create_tracker_sql_query_bindings_table',8),(53,'2015_03_07_311090_create_tracker_sql_query_bindings_parameters_table',8),(54,'2015_03_07_311091_create_tracker_sql_queries_log_table',8),(55,'2015_03_07_311092_create_tracker_connections_table',8),(56,'2015_03_07_311093_create_tracker_tables_relations',8),(57,'2015_03_13_311094_create_tracker_referer_search_term_table',8),(58,'2015_03_13_311095_add_tracker_referer_columns',8),(59,'2015_11_23_311096_add_tracker_referer_column_to_log',8),(60,'2015_11_23_311097_create_tracker_languages_table',8),(61,'2015_11_23_311098_add_language_id_column_to_sessions',8),(62,'2015_11_23_311099_add_tracker_language_foreign_key_to_sessions',8),(63,'2015_11_23_311100_add_nullable_to_tracker_error',8),(64,'2017_01_31_311101_fix_agent_name',8),(65,'2017_06_20_311102_add_agent_name_hash',8),(66,'2017_12_13_150000_fix_query_arguments',8),(67,'2019_11_14_123633_create_designs_table',9),(68,'2019_11_15_145843_create_payu_payments_table',10),(69,'2019_11_18_100523_create_orders_table',11),(70,'2019_11_18_101337_create_shipments_table',12),(71,'2019_11_18_104330_add_logo_to_shipments_table',13),(72,'2019_11_18_132417_create_order_items_table',14),(73,'2019_11_25_100546_create_attributes_table',15),(74,'2019_11_25_100812_create_product_attributes_table',15),(75,'2019_11_25_102032_add_is_boolean_to_atributes_table',16),(76,'2019_11_28_122154_add_category_id_to_products_table',17),(77,'2019_11_29_091703_add_pattern_id_to_designs_table',18),(78,'2019_12_04_170706_create_newsletters_table',19),(79,'2019_12_05_142903_create_pos_table',20),(80,'2019_12_05_143315_create_pages_table',20);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
INSERT INTO `newsletters` VALUES (1,'matpiw@gmail.com',1,'2019-12-04 16:09:38','2019-12-04 16:09:38'),(2,'mbilwagwa@gmail.com',1,'2019-12-04 16:10:34','2019-12-04 16:10:34'),(3,'awhgoah@gmail.com',1,'2019-12-04 16:11:15','2019-12-04 16:11:15'),(4,'matpiw@gmail.comfwaf',1,'2019-12-04 16:12:04','2019-12-04 16:12:04'),(5,'iahwgoiwah@gmail.com',1,'2019-12-04 16:12:52','2019-12-04 16:12:52'),(6,'gawjgawka@gmail.com',1,'2019-12-04 16:13:13','2019-12-04 16:13:13');
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `design_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `design_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (11,14,2,21,10,20.00,50.00,'2019-11-18 13:00:00','2019-11-18 13:00:00'),(12,15,2,21,10,20.00,50.00,'2019-11-18 13:04:22','2019-11-18 13:04:22'),(13,16,2,21,10,20.00,50.00,'2019-11-18 13:11:38','2019-11-18 13:11:38'),(14,17,2,21,10,20.00,50.00,'2019-11-18 13:13:25','2019-11-18 13:13:25'),(15,18,2,21,10,20.00,50.00,'2019-11-18 13:30:54','2019-11-18 13:30:54'),(16,21,2,21,10,20.00,50.00,'2019-11-18 13:34:31','2019-11-18 13:34:31'),(17,22,2,22,1,20.00,50.00,'2019-11-19 07:01:20','2019-11-19 07:01:20'),(18,23,2,22,1,20.00,50.00,'2019-11-19 09:33:26','2019-11-19 09:33:26'),(19,23,2,23,1,20.00,50.00,'2019-11-19 09:33:26','2019-11-19 09:33:26'),(20,24,2,42,1,20.00,25.00,'2019-11-26 08:36:47','2019-11-26 08:36:47'),(21,25,4,NULL,1,10.00,0.00,'2019-11-29 07:22:43','2019-11-29 07:22:43'),(22,26,4,NULL,1,10.00,0.00,'2019-11-29 07:22:53','2019-11-29 07:22:53'),(23,27,3,46,2,15.00,50.00,'2019-11-29 07:25:02','2019-11-29 07:25:02'),(24,28,2,47,1,20.00,25.00,'2019-11-29 07:55:41','2019-11-29 07:55:41'),(25,29,4,NULL,3,10.00,0.00,'2019-12-04 16:29:40','2019-12-04 16:29:40'),(26,29,3,50,1,15.00,25.00,'2019-12-04 16:29:40','2019-12-04 16:29:40');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `shipment_amount` double(8,2) NOT NULL,
  `payment_link` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `tracking` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (17,1,23,'payu',1,'Uwagi do zamowienia','new','a89b3a1926c8f4c4edef8b76d9820abf',260.00,10.00,'https://merch-prod.snd.payu.com/pay/?orderId=1K6JDDD25J191118GUEST000P01&token=eyJhbGciOiJIUzI1NiJ9.eyJvcmRlcklkIjoiMUs2SkRERDI1SjE5MTExOEdVRVNUMDAwUDAxIiwicG9zSWQiOiJpaTYyRHc4SCIsImF1dGhvcml0aWVzIjpbIlJPTEVfQ0xJRU5UIl0sInBheWVyRW1haWwiOiJtYmllbGFrQGlkZWFzaGlydC5wbCIsImV4cCI6MTU3NDE2OTIwNiwiaXNzIjoiUEFZVSIsImF1ZCI6ImFwaS1nYXRld2F5Iiwic3ViIjoiUGF5VSBzdWJqZWN0IiwianRpIjoiYWU1NTNkZDEtNjQyMi00YThkLWE5OWEtM2ZlOGRiZDhiNzQ2In0.-PExFhJ4Eh7rgkAexOjOIFvX4hke-BzUQcIRSiDZEpg',1,NULL,'2019-11-18 13:13:25','2019-11-18 13:13:29'),(18,1,24,'payu',1,'Uwagi do zamowienia','new','4bf81344c2fffca08549713a6d7fb54f',260.00,10.00,'https://merch-prod.snd.payu.com/pay/?orderId=N6TFRX12GS191118GUEST000P01&token=eyJhbGciOiJIUzI1NiJ9.eyJvcmRlcklkIjoiTjZURlJYMTJHUzE5MTExOEdVRVNUMDAwUDAxIiwicG9zSWQiOiJpaTYyRHc4SCIsImF1dGhvcml0aWVzIjpbIlJPTEVfQ0xJRU5UIl0sInBheWVyRW1haWwiOiJtYmllbGFrQGlkZWFzaGlydC5wbCIsImV4cCI6MTU3NDE3MDI1NCwiaXNzIjoiUEFZVSIsImF1ZCI6ImFwaS1nYXRld2F5Iiwic3ViIjoiUGF5VSBzdWJqZWN0IiwianRpIjoiNjU0NDQ2MmItYTZkZC00YWJlLWJlODQtODY1ZTVhMWJhYzg1In0.sBZgI69386hx8qQVoOQSR4fkaKktB-lWZsF-RKxWyo4',1,NULL,'2019-11-18 13:30:54','2019-11-18 13:30:55'),(19,1,25,'payu',1,'Uwagi do zamowienia','new','b8911ffcc04990941bd25e61dbba5773',260.00,10.00,NULL,0,NULL,'2019-11-18 13:32:10','2019-11-18 13:32:10'),(20,1,26,'payu',1,'Uwagi do zamowienia','new','6c43cd41b3a512338a4202945e926d34',260.00,10.00,NULL,0,NULL,'2019-11-18 13:32:50','2019-11-18 13:32:50'),(21,1,27,'payu',1,'Uwagi do zamowienia','new','691819ec927fc4b368fc88707d989833',260.00,10.00,'https://merch-prod.snd.payu.com/pay/?orderId=ZKHFGWCS6H191118GUEST000P01&token=eyJhbGciOiJIUzI1NiJ9.eyJvcmRlcklkIjoiWktIRkdXQ1M2SDE5MTExOEdVRVNUMDAwUDAxIiwicG9zSWQiOiJpaTYyRHc4SCIsImF1dGhvcml0aWVzIjpbIlJPTEVfQ0xJRU5UIl0sInBheWVyRW1haWwiOiJtYmllbGFrQGlkZWFzaGlydC5wbCIsImV4cCI6MTU3NDE3MDQ3MiwiaXNzIjoiUEFZVSIsImF1ZCI6ImFwaS1nYXRld2F5Iiwic3ViIjoiUGF5VSBzdWJqZWN0IiwianRpIjoiYWQ0YWFlNDItN2M3Ny00YmIzLThlYWEtMGM0NTk5MTUzN2NlIn0.Utsg1KG-gZjMK26UPs4bgsyzmPo32wyrRqmk0OxGRM0',0,NULL,'2019-11-18 13:34:29','2019-11-18 14:25:00'),(22,1,28,'payu',1,'Uwagi do zamowienia','new','4b0420df566070e3d80ef8fa36a96143',80.00,10.00,'https://merch-prod.snd.payu.com/pay/?orderId=M7PVNM1WCR191119GUEST000P01&token=eyJhbGciOiJIUzI1NiJ9.eyJvcmRlcklkIjoiTTdQVk5NMVdDUjE5MTExOUdVRVNUMDAwUDAxIiwicG9zSWQiOiJpaTYyRHc4SCIsImF1dGhvcml0aWVzIjpbIlJPTEVfQ0xJRU5UIl0sInBheWVyRW1haWwiOiJtYmllbGFrQGlkZWFzaGlydC5wbCIsImV4cCI6MTU3NDIzMzI4MCwiaXNzIjoiUEFZVSIsImF1ZCI6ImFwaS1nYXRld2F5Iiwic3ViIjoiUGF5VSBzdWJqZWN0IiwianRpIjoiN2QwOTY2ZTQtZThhNi00MjE0LThmMDgtM2M0OTQwZDMyMjViIn0.k1cTfGEpuAVh963f54bOoDYPw2oOAL-JvfISJ7KfUV8',1,NULL,'2019-11-19 07:01:16','2019-11-19 07:04:53'),(23,1,29,'payu',1,'Uwagi do zamowienia','new','79324224f34ef48506cf537db2701d76',150.00,10.00,'https://merch-prod.snd.payu.com/pay/?orderId=LGFFS83PS8191119GUEST000P01&token=eyJhbGciOiJIUzI1NiJ9.eyJvcmRlcklkIjoiTEdGRlM4M1BTODE5MTExOUdVRVNUMDAwUDAxIiwicG9zSWQiOiJpaTYyRHc4SCIsImF1dGhvcml0aWVzIjpbIlJPTEVfQ0xJRU5UIl0sInBheWVyRW1haWwiOiJtYmllbGFrQGlkZWFzaGlydC5wbCIsImV4cCI6MTU3NDI0MjQwNiwiaXNzIjoiUEFZVSIsImF1ZCI6ImFwaS1nYXRld2F5Iiwic3ViIjoiUGF5VSBzdWJqZWN0IiwianRpIjoiNDhmMjNkOTMtNDFjOS00MTliLWJmMzktZDg1MGQ5MjhlMjczIn0.DOM9oHpaJABK0FbwagbDR-dPlr1683nWYMV-xUjP9ks',1,NULL,'2019-11-19 09:33:23','2019-11-19 09:33:26'),(24,NULL,30,'payu',1,'Uwagi do zamowienia','new','f0f503c11db5f0a6e426ea423b11cdcd',55.00,10.00,NULL,0,NULL,'2019-11-26 08:36:44','2019-11-26 08:36:44'),(25,NULL,31,'payu',1,'Uwagi do zamowienia','new','53fe9a113d74a4dc50f404e0a16c8aad',20.00,10.00,NULL,0,NULL,'2019-11-29 07:22:40','2019-11-29 07:22:40'),(26,NULL,32,'payu',1,'Uwagi do zamowienia','new','65b593ca0ae4e17c4e5e5b606154d719',20.00,10.00,NULL,0,NULL,'2019-11-29 07:22:52','2019-11-29 07:22:52'),(27,NULL,33,'bank',1,'Uwagi do zamowienia','new','96c1fee999dbf69fe3da1e8dcefc750c',90.00,10.00,NULL,0,NULL,'2019-11-29 07:25:01','2019-11-29 07:25:01'),(28,NULL,34,'bank',1,'Uwagi do zamowienia','new','c6b1af245e74a30ae4ad08194aa0fb91',55.00,10.00,NULL,0,NULL,'2019-11-29 07:55:38','2019-11-29 07:55:38'),(29,1,35,'payu',1,'Uwagi do zamowienia','new','8ced6208077d7a2f112b6cda62982819',80.00,10.00,'https://merch-prod.snd.payu.com/pay/?orderId=FF2BLF775L191204GUEST000P01&token=eyJhbGciOiJIUzI1NiJ9.eyJvcmRlcklkIjoiRkYyQkxGNzc1TDE5MTIwNEdVRVNUMDAwUDAxIiwicG9zSWQiOiJpaTYyRHc4SCIsImF1dGhvcml0aWVzIjpbIlJPTEVfQ0xJRU5UIl0sInBheWVyRW1haWwiOiJtYmllbGFrQGlkZWFzaGlydC5wbCIsImV4cCI6MTU3NTU2MzM4MSwiaXNzIjoiUEFZVSIsImF1ZCI6ImFwaS1nYXRld2F5Iiwic3ViIjoiUGF5VSBzdWJqZWN0IiwianRpIjoiNjNkNWU3NDAtZWEzYS00M2ExLTlhNDEtNzljZGFmMjhmYjkxIn0.jXgrB6cHutjckJkb2uiR52jD4HZuP-0qujK7aiM_nic',1,NULL,'2019-12-04 16:29:38','2019-12-04 16:29:41');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_url_unique` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patterns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `patterns` WRITE;
/*!40000 ALTER TABLE `patterns` DISABLE KEYS */;
INSERT INTO `patterns` VALUES (2,'1 & 1','[{\"name\":\"first\",\"fontSizeMin\":10,\"fontSizeMax\":\"90\",\"height\":50},{\"name\":\"second\",\"fontSizeMin\":10,\"fontSizeMax\":\"90\",\"height\":50}]','patterns/icon (1).png','2019-11-13 14:04:00','2019-11-19 06:35:01'),(3,'Główna','[{\"name\":\"first\",\"fontSizeMin\":10,\"fontSizeMax\":\"120\",\"height\":\"100.00\"}]','patterns/icon (1).png','2019-11-13 14:09:00','2019-11-14 06:56:16'),(4,'1 & 1 & 1','[{\"name\":\"first\",\"fontSizeMin\":10,\"fontSizeMax\":30,\"height\":\"33.33\"},{\"name\":\"second\",\"fontSizeMin\":10,\"fontSizeMax\":30,\"height\":\"33.33\"},{\"name\":\"third\",\"fontSizeMin\":10,\"fontSizeMax\":30,\"height\":\"33.33\"}]','patterns/icon (1).png','2019-11-13 14:20:00','2019-11-13 14:20:45'),(5,'0.7 & 0.3','[{\"name\":\"first\",\"fontSizeMin\":10,\"fontSizeMax\":\"100\",\"height\":\"70.06\"},{\"name\":\"second\",\"fontSizeMin\":10,\"fontSizeMax\":30,\"height\":\"29.945\"}]','patterns/icon (1).png','2019-11-13 14:21:22','2019-11-13 14:21:22'),(6,'0.3 & 0.7','[{\"name\":\"first\",\"fontSizeMin\":10,\"fontSizeMax\":30,\"height\":\"30.00\"},{\"name\":\"second\",\"fontSizeMin\":\"30\",\"fontSizeMax\":\"100\",\"height\":\"70\"}]','patterns/icon (1).png','2019-11-13 14:22:00','2019-11-13 14:22:33'),(7,'0.6 & 0.4','[{\"name\":\"first\",\"fontSizeMin\":\"30\",\"fontSizeMax\":\"80\",\"height\":\"60\"},{\"name\":\"second\",\"fontSizeMin\":\"20\",\"fontSizeMax\":\"50\",\"height\":\"40.00\"}]','patterns/icon (1).png','2019-11-13 14:23:11','2019-11-13 14:23:11'),(8,'0.4 & 0.6','[{\"name\":\"first\",\"fontSizeMin\":\"20\",\"fontSizeMax\":\"50\",\"height\":\"40\"},{\"name\":\"second\",\"fontSizeMin\":\"30\",\"fontSizeMax\":\"80\",\"height\":\"60.00\"}]','patterns/icon (1).png','2019-11-13 14:23:41','2019-11-13 14:23:41'),(9,'0.25 & 0.5 & 0.25','[{\"name\":\"first\",\"fontSizeMin\":10,\"fontSizeMax\":30,\"height\":\"25.00\"},{\"name\":\"second\",\"fontSizeMin\":10,\"fontSizeMax\":30,\"height\":\"50\"},{\"name\":\"third\",\"fontSizeMin\":10,\"fontSizeMax\":30,\"height\":\"25.00\"}]','patterns/icon (1).png','2019-11-13 14:25:00','2019-11-13 14:25:50');
/*!40000 ALTER TABLE `patterns` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `payu_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payu_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `local_order_id` int(11) DEFAULT NULL,
  `payu_order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalAmount` double(8,2) NOT NULL,
  `history` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `payu_payments` WRITE;
/*!40000 ALTER TABLE `payu_payments` DISABLE KEYS */;
INSERT INTO `payu_payments` VALUES (1,17,'1K6JDDD25J191118GUEST000P01','PLN',2.60,'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:24:\"App\\Services\\PayuHistory\":3:{s:4:\"date\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2019-11-18 14:13:29.321106\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Warsaw\";}s:5:\"title\";s:21:\"Płatność utworzona\";s:4:\"desc\";s:55:\"Płatność dla zamówienia 17utworzona w systemie PayU\";}}}','SUCCESS','2019-11-18 13:13:29','2019-11-18 13:13:29'),(2,18,'N6TFRX12GS191118GUEST000P01','PLN',2.60,'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:24:\"App\\Services\\PayuHistory\":3:{s:4:\"date\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2019-11-18 14:30:55.138156\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Warsaw\";}s:5:\"title\";s:21:\"Płatność utworzona\";s:4:\"desc\";s:55:\"Płatność dla zamówienia 18utworzona w systemie PayU\";}}}','SUCCESS','2019-11-18 13:30:55','2019-11-18 13:30:55'),(3,21,'ZKHFGWCS6H191118GUEST000P01','PLN',2.60,'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"�*�items\";a:1:{i:0;O:24:\"App\\Services\\PayuHistory\":3:{s:4:\"date\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2019-11-18 14:34:32.473817\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Warsaw\";}s:5:\"title\";s:21:\"Płatność utworzona\";s:4:\"desc\";s:55:\"Płatność dla zamówienia 21utworzona w systemie PayU\";}}}','PENDING','2019-11-18 13:34:00','2019-11-18 14:25:00'),(4,22,'M7PVNM1WCR191119GUEST000P01','PLN',0.80,'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"�*�items\";a:1:{i:0;O:24:\"App\\Services\\PayuHistory\":3:{s:4:\"date\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2019-11-19 08:01:20.967885\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Warsaw\";}s:5:\"title\";s:21:\"Płatność utworzona\";s:4:\"desc\";s:55:\"Płatność dla zamówienia 22utworzona w systemie PayU\";}}}','SUCCESS','2019-11-19 07:01:00','2019-11-19 07:04:53'),(5,23,'LGFFS83PS8191119GUEST000P01','PLN',1.50,'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:24:\"App\\Services\\PayuHistory\":3:{s:4:\"date\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2019-11-19 10:33:26.654042\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Warsaw\";}s:5:\"title\";s:21:\"Płatność utworzona\";s:4:\"desc\";s:55:\"Płatność dla zamówienia 23utworzona w systemie PayU\";}}}','SUCCESS','2019-11-19 09:33:26','2019-11-19 09:33:26'),(6,29,'FF2BLF775L191204GUEST000P01','PLN',0.80,'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:24:\"App\\Services\\PayuHistory\":3:{s:4:\"date\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2019-12-04 17:29:41.634763\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Warsaw\";}s:5:\"title\";s:21:\"Płatność utworzona\";s:4:\"desc\";s:55:\"Płatność dla zamówienia 29utworzona w systemie PayU\";}}}','SUCCESS','2019-12-04 16:29:41','2019-12-04 16:29:41');
/*!40000 ALTER TABLE `payu_payments` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2019-11-06 13:47:16','2019-11-06 13:47:16'),(2,'browse_bread',NULL,'2019-11-06 13:47:16','2019-11-06 13:47:16'),(3,'browse_database',NULL,'2019-11-06 13:47:16','2019-11-06 13:47:16'),(4,'browse_media',NULL,'2019-11-06 13:47:16','2019-11-06 13:47:16'),(5,'browse_compass',NULL,'2019-11-06 13:47:16','2019-11-06 13:47:16'),(6,'browse_menus','menus','2019-11-06 13:47:16','2019-11-06 13:47:16'),(7,'read_menus','menus','2019-11-06 13:47:16','2019-11-06 13:47:16'),(8,'edit_menus','menus','2019-11-06 13:47:16','2019-11-06 13:47:16'),(9,'add_menus','menus','2019-11-06 13:47:16','2019-11-06 13:47:16'),(10,'delete_menus','menus','2019-11-06 13:47:16','2019-11-06 13:47:16'),(11,'browse_roles','roles','2019-11-06 13:47:16','2019-11-06 13:47:16'),(12,'read_roles','roles','2019-11-06 13:47:16','2019-11-06 13:47:16'),(13,'edit_roles','roles','2019-11-06 13:47:16','2019-11-06 13:47:16'),(14,'add_roles','roles','2019-11-06 13:47:16','2019-11-06 13:47:16'),(15,'delete_roles','roles','2019-11-06 13:47:16','2019-11-06 13:47:16'),(16,'browse_users','users','2019-11-06 13:47:16','2019-11-06 13:47:16'),(17,'read_users','users','2019-11-06 13:47:16','2019-11-06 13:47:16'),(18,'edit_users','users','2019-11-06 13:47:16','2019-11-06 13:47:16'),(19,'add_users','users','2019-11-06 13:47:16','2019-11-06 13:47:16'),(20,'delete_users','users','2019-11-06 13:47:16','2019-11-06 13:47:16'),(21,'browse_settings','settings','2019-11-06 13:47:16','2019-11-06 13:47:16'),(22,'read_settings','settings','2019-11-06 13:47:16','2019-11-06 13:47:16'),(23,'edit_settings','settings','2019-11-06 13:47:16','2019-11-06 13:47:16'),(24,'add_settings','settings','2019-11-06 13:47:16','2019-11-06 13:47:16'),(25,'delete_settings','settings','2019-11-06 13:47:16','2019-11-06 13:47:16'),(26,'browse_hooks',NULL,'2019-11-06 13:47:16','2019-11-06 13:47:16'),(27,'browse_products','products','2019-11-06 14:12:05','2019-11-06 14:12:05'),(28,'read_products','products','2019-11-06 14:12:05','2019-11-06 14:12:05'),(29,'edit_products','products','2019-11-06 14:12:05','2019-11-06 14:12:05'),(30,'add_products','products','2019-11-06 14:12:05','2019-11-06 14:12:05'),(31,'delete_products','products','2019-11-06 14:12:05','2019-11-06 14:12:05'),(32,'browse_patterns','patterns','2019-11-13 13:05:30','2019-11-13 13:05:30'),(33,'read_patterns','patterns','2019-11-13 13:05:30','2019-11-13 13:05:30'),(34,'edit_patterns','patterns','2019-11-13 13:05:30','2019-11-13 13:05:30'),(35,'add_patterns','patterns','2019-11-13 13:05:30','2019-11-13 13:05:30'),(36,'delete_patterns','patterns','2019-11-13 13:05:30','2019-11-13 13:05:30'),(37,'browse_fonts','fonts','2019-11-14 06:58:17','2019-11-14 06:58:17'),(38,'read_fonts','fonts','2019-11-14 06:58:17','2019-11-14 06:58:17'),(39,'edit_fonts','fonts','2019-11-14 06:58:17','2019-11-14 06:58:17'),(40,'add_fonts','fonts','2019-11-14 06:58:17','2019-11-14 06:58:17'),(41,'delete_fonts','fonts','2019-11-14 06:58:17','2019-11-14 06:58:17'),(42,'browse_shipments','shipments','2019-11-18 09:28:56','2019-11-18 09:28:56'),(43,'read_shipments','shipments','2019-11-18 09:28:56','2019-11-18 09:28:56'),(44,'edit_shipments','shipments','2019-11-18 09:28:56','2019-11-18 09:28:56'),(45,'add_shipments','shipments','2019-11-18 09:28:56','2019-11-18 09:28:56'),(46,'delete_shipments','shipments','2019-11-18 09:28:56','2019-11-18 09:28:56'),(47,'browse_payu_payments','payu_payments','2019-11-18 14:23:54','2019-11-18 14:23:54'),(48,'read_payu_payments','payu_payments','2019-11-18 14:23:54','2019-11-18 14:23:54'),(49,'edit_payu_payments','payu_payments','2019-11-18 14:23:54','2019-11-18 14:23:54'),(50,'add_payu_payments','payu_payments','2019-11-18 14:23:54','2019-11-18 14:23:54'),(51,'delete_payu_payments','payu_payments','2019-11-18 14:23:54','2019-11-18 14:23:54'),(52,'browse_orders','orders','2019-11-19 07:09:37','2019-11-19 07:09:37'),(53,'read_orders','orders','2019-11-19 07:09:37','2019-11-19 07:09:37'),(54,'edit_orders','orders','2019-11-19 07:09:37','2019-11-19 07:09:37'),(55,'add_orders','orders','2019-11-19 07:09:37','2019-11-19 07:09:37'),(56,'delete_orders','orders','2019-11-19 07:09:37','2019-11-19 07:09:37'),(57,'browse_attributes','attributes','2019-11-25 09:15:38','2019-11-25 09:15:38'),(58,'read_attributes','attributes','2019-11-25 09:15:38','2019-11-25 09:15:38'),(59,'edit_attributes','attributes','2019-11-25 09:15:38','2019-11-25 09:15:38'),(60,'add_attributes','attributes','2019-11-25 09:15:38','2019-11-25 09:15:38'),(61,'delete_attributes','attributes','2019-11-25 09:15:38','2019-11-25 09:15:38'),(62,'browse_categories','categories','2019-11-28 11:10:51','2019-11-28 11:10:51'),(63,'read_categories','categories','2019-11-28 11:10:51','2019-11-28 11:10:51'),(64,'edit_categories','categories','2019-11-28 11:10:51','2019-11-28 11:10:51'),(65,'add_categories','categories','2019-11-28 11:10:51','2019-11-28 11:10:51'),(66,'delete_categories','categories','2019-11-28 11:10:51','2019-11-28 11:10:51'),(67,'browse_pos','pos','2019-12-05 13:39:57','2019-12-05 13:39:57'),(68,'read_pos','pos','2019-12-05 13:39:57','2019-12-05 13:39:57'),(69,'edit_pos','pos','2019-12-05 13:39:57','2019-12-05 13:39:57'),(70,'add_pos','pos','2019-12-05 13:39:57','2019-12-05 13:39:57'),(71,'delete_pos','pos','2019-12-05 13:39:57','2019-12-05 13:39:57');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pos` WRITE;
/*!40000 ALTER TABLE `pos` DISABLE KEYS */;
INSERT INTO `pos` VALUES (1,'CZAPKI Z WŁASNYM HAFTEM?','<p>W IdeaCap to możliwe! Wybierz interesujący Cię model, a następnie przy pomocy naszego kreatora stw&oacute;rz w pełni spersonalizowany produkt!</p>',1,'home_header','pos/cap slider 02.png','2019-12-05 13:41:37','2019-12-05 13:45:44');
/*!40000 ALTER TABLE `pos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `product_attributes` WRITE;
/*!40000 ALTER TABLE `product_attributes` DISABLE KEYS */;
INSERT INTO `product_attributes` VALUES (33,3,1,'Czarny','2019-11-28 13:47:37','2019-11-28 13:47:37'),(34,3,2,'5 panelowa','2019-11-28 13:47:37','2019-11-28 13:47:37'),(35,3,3,'1','2019-11-28 13:47:37','2019-11-28 13:47:37'),(36,4,1,'Czerwona','2019-12-06 07:24:49','2019-12-06 07:24:49'),(37,4,2,'6 Panelowa','2019-12-06 07:24:49','2019-12-06 07:24:49'),(38,4,3,'1','2019-12-06 07:24:49','2019-12-06 07:24:49');
/*!40000 ALTER TABLE `product_attributes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `price_sellout` double(8,2) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `is_new` tinyint(1) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '1',
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku_parrent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pl',
  `weight` double(8,2) DEFAULT NULL,
  `in_package` int(11) DEFAULT NULL,
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `views_count` int(11) NOT NULL DEFAULT '0',
  `external_id` int(11) DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_url_unique` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Nazwa produktu 2','<p>Opis produktu fafwagaw</p>','nazwa-produktu-2','Krótki opis','[]','products/November2019/SEfq6L24RuajZsqDmJKi.png','Tytuł','Opis',20.00,NULL,1,1,100,NULL,NULL,'PL',0.01,NULL,0,0,NULL,'CZapka','2019-11-06 14:25:00','2019-11-28 11:24:45',NULL,NULL,2),(2,'Lol','<p>Nazwa produktu 2</p>','lol','Nazwa produktu 2','[]','products/November2019/u74qNfIGnlautUVLWcrG.jpg','Nazwa produktu 2','Nazwa produktu 2',20.00,20.00,0,0,100,'20',NULL,'PL',20.00,NULL,0,0,NULL,'gawia','2019-11-07 08:15:00','2019-11-28 11:24:34',NULL,'{\"tool\":\"rect\",\"tools\":[{\"x\":104.8986134508209,\"edited\":true,\"y\":166.57507543597893,\"width\":300,\"height\":300,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":true,\"rotation\":0,\"scaleX\":1.3204884508209616,\"scaleY\":0.569518021807379,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0}],\"configKonva\":{\"width\":600,\"height\":600},\"configImage\":{\"width\":600,\"height\":600,\"src\":\"http:\\/\\/192.168.0.182:9000\\/storage\\/products\\/November2019\\/u74qNfIGnlautUVLWcrG.jpg?\",\"image\":[],\"image_src\":\"products\\/November2019\\/u74qNfIGnlautUVLWcrG.jpg\"}}',1),(3,'Czapka z daszkiem 2','<p>Czapka z daszkiem 2</p>','czapka-z-daszkiem-2','Czapka z daszkiem 2','[]','products/November2019/VJkKQM8ZekyfGzcwcwGo.jpg','Czapka z daszkiem 2','Czapka z daszkiem 2',20.00,15.00,1,1,968,NULL,NULL,'PL',NULL,NULL,0,0,NULL,NULL,'2019-11-14 13:40:00','2019-11-28 13:47:37',NULL,'{\"tool\":\"rect\",\"tools\":[{\"x\":79,\"edited\":true,\"y\":168.58609271523179,\"width\":300,\"height\":300,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":true,\"rotation\":0,\"scaleX\":1.4639776252213754,\"scaleY\":0.5860927152317891,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0}],\"configKonva\":{\"width\":600,\"height\":600},\"configImage\":{\"width\":600,\"height\":600,\"src\":\"http:\\/\\/192.168.0.182:9000\\/storage\\/products\\/November2019\\/VJkKQM8ZekyfGzcwcwGo.jpg?\",\"image\":[],\"image_src\":\"products\\/November2019\\/VJkKQM8ZekyfGzcwcwGo.jpg\"}}',1),(4,'Czapka czerwona','<h3 style=\"box-sizing: border-box; font-family: Montserrat, \'Helvetica Neue\', sans-serif; line-height: 1.1; color: #047373; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 14px; text-transform: uppercase;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #2e2013; font-size: 12px; text-align: justify;\">KOSZULKA T-SHIRT BASIC Z DOWOLNYM, PEŁNOKOLOROWYM NADRUKIEM DTG.</span></h3>\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Montserrat, \'Helvetica Neue\', sans-serif; font-size: 12px;\">\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\">Koszulka BASIC to jeden z najczęściej wybieranych produkt&oacute;w, przez klient&oacute;w IdeaShirt. Jest idealnym kompromisem pomiędzy jakością a ceną. Jest wykonana z wysokogatunkowej bawełny ringspun o gramaturze 190g.m2. Dzięki temu koszulka posłuży przez długi czas. Klasyczny kr&oacute;j t-shirt pasuje do wielu codziennych stylizacji, a nasz kreator pozwoli Ci na dopasowanie koszulki według własnych preferencji.</p>\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Technologia nadruku</span>: DTG Kornit NeoPigment Ink.</p>\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Średni czas realizacji:</span>&nbsp;1-3 dni robocze, w przypadku braku koszulki na magazynie do 5 dni roboczych</p>\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Idealne jako:</span><br style=\"box-sizing: border-box;\" />- koszulki promocyjne<br style=\"box-sizing: border-box;\" />- koszulki na prezent<br style=\"box-sizing: border-box;\" />- koszulki na eventy</p>\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Specyfikacja:</span></p>\nMateriał: 100% bawełna stabilizowana, p&oacute;łczesana ring-spun (wysoka jakość materiału)<br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-align: justify;\">Gramatura: 190 g/m2</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-align: justify;\">Ściągacz z lycrą</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-align: justify;\">Podw&oacute;jne szwy</span><br style=\"box-sizing: border-box;\" />Taśma wzmacniająca na ramionach<br style=\"box-sizing: border-box;\" />Boki bezszwowe</div>\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\">&nbsp;</p>\n<div class=\"col-xs-6\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative; min-height: 1px; float: left; width: 317.5px; color: #333333; font-family: Montserrat, \'Helvetica Neue\', sans-serif; font-size: 12px;\">\n<div id=\"editorElementDeliveryPhoto\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">\n<div class=\"richtext\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 1.6;\">\n<h4 style=\"box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.1; color: #666666; margin: 20px 0px 10px; font-size: 14px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-image: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; text-shadow: #ffffff 1px 1px 1px; border-color: initial initial #eeeeee initial; border-style: initial initial solid initial;\">Tylko sprawdzeni dostawcy odzieży</h4>\n</div>\n<img style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; height: auto !important; width: 287.5px;\" title=\"Dostawcy odzieży\" src=\"https://xy.ideashirt.pl/static/img/deliveryphoto/a2fbd77549436ab2d6b9e3e4f87bd9f0/dostawcy-odziezy-1.jpg\" alt=\"Dostawcy odzieży\" /></div>\n</div>\n<div class=\"col-xs-6\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative; min-height: 1px; float: left; width: 317.5px; color: #333333; font-family: Montserrat, \'Helvetica Neue\', sans-serif; font-size: 12px;\">\n<div id=\"editorElementProductionPhoto\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">\n<div class=\"richtext\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 1.6;\">\n<h4 style=\"box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.1; color: #666666; margin: 20px 0px 10px; font-size: 14px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-image: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; text-shadow: #ffffff 1px 1px 1px; border-color: initial initial #eeeeee initial; border-style: initial initial solid initial;\">Profesjonalny nadruk</h4>\n</div>\n<img style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; height: auto !important; width: 287.5px;\" title=\"Profesjonalny nadruk\" src=\"https://xy.ideashirt.pl/static/img/productionphoto/993c88e86f2d52f62a839aa94298a27d/profesjonalny-nadruk-1.jpg\" alt=\"Profesjonalny nadruk\" /></div>\n</div>','czapka-czerwona','Czapeczka czerwona','[\"products/November2019/u74qNfIGnlautUVLWcrG.jpg\"]','products/November2019/EvZRKxIyCt7H635Ad3b1.jpg','Czapka czerwona','Czapka SUPER CZERWONA',20.00,10.00,1,1,10,NULL,NULL,'PL',0.50,NULL,0,0,NULL,NULL,'2019-11-25 11:40:27','2019-12-06 07:24:49',NULL,'{\"tool\":\"rect\",\"tools\":[{\"x\":88.52563939148314,\"edited\":true,\"y\":154.28335424087098,\"width\":300,\"height\":300,\"fill\":\"rgba(255,0,0,0.3)\",\"name\":\"rect\",\"stroke\":\"red\",\"draggable\":true,\"scaleX\":1.3376178994275112,\"scaleY\":0.6568659327545814,\"rotation\":0,\"offsetX\":0,\"offsetY\":0,\"skewX\":0,\"skewY\":0}],\"configKonva\":{\"width\":600,\"height\":600},\"configImage\":{\"width\":600,\"height\":600,\"src\":\"http:\\/\\/192.168.0.182:9000\\/storage\\/products\\/November2019\\/EvZRKxIyCt7H635Ad3b1.jpg?\",\"image\":[],\"image_src\":\"products\\/November2019\\/EvZRKxIyCt7H635Ad3b1.jpg\"}}',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2019-11-06 13:47:16','2019-11-06 13:47:16'),(2,'user','Normal User','2019-11-06 13:47:16','2019-11-06 13:47:16');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Ideacap - Najlepsze czapki w mieście','','text',1,'Site'),(2,'site.description','Site Description','Czapki z twoim własnym haftem','','text',2,'Site'),(3,'site.logo','Site Logo','settings/November2019/agWUXn8lGIy7tKJYf6ug.','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),(11,'shop.creator_cart','Kreator (dodawania do koszyka)','Każdy produkt w koszyku możesz swobodnie edytować w późniejszym czasie. Wystarczy kliknąć przycisk koszyka znajdujący się w prawym górnym rogu.',NULL,'text_area',6,'shop'),(12,'site.contact_email','Email','mbielak@ideashirt.pl',NULL,'text',7,'Site'),(13,'site.footer','Stopka','<p>ul. Gen. Romualda Traugutta 135/1A,</p>\r\n<p>50-419 Wrocław (czynne pon-pt 10-18)</p>\r\n<p>NIP 832 201 84 12&nbsp;</p>\r\n<p>REGON 100730267</p>',NULL,'rich_text_box',8,'Site'),(14,'site.logo_white','Logo white','settings/December2019/dn9Mid14CBD4uKzZOBVu.png',NULL,'image',9,'Site');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_shipping_allowed` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8mb4_unicode_ci,
  `weight` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (1,'Poczta polska',10.00,NULL,1,NULL,20,'2019-11-18 09:29:00','2019-11-18 09:46:49','shipments/poczta-polska-logo.png'),(2,'Odbiór osobisty',0.00,NULL,0,NULL,0,'2019-11-18 10:21:00','2019-11-18 10:21:46',NULL);
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_agents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_hash` varchar(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_agents_name_hash_unique` (`name_hash`),
  KEY `tracker_agents_created_at_index` (`created_at`),
  KEY `tracker_agents_updated_at_index` (`updated_at`),
  KEY `tracker_agents_browser_index` (`browser`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_agents` WRITE;
/*!40000 ALTER TABLE `tracker_agents` DISABLE KEYS */;
INSERT INTO `tracker_agents` VALUES (1,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','Chrome','78.0.3904','2019-11-14 09:01:21','2019-11-14 09:01:21','b2c6e381741b029fe529958e90c82cbf1c659fe1e20b75f70b43a949bb7cc6ab'),(2,'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1','Mobile Safari','11.0','2019-11-15 09:34:04','2019-11-15 09:34:04','25168d829db25a9cf6416e5b6b33ee146048edaed2d53cf9d916cd2070209dc6'),(3,'PostmanRuntime/7.19.0','Other','','2019-11-15 12:32:51','2019-11-15 12:32:51','55845ff693aea6032379b70babadc2562fd3d76a5a031a19a9945e7a98465222'),(4,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','Chrome','78.0.3904','2019-11-19 06:32:08','2019-11-19 06:32:08','3181fd3baf3bbe09a9625dc7ef5774b4246f340f1c3aa765c6ee219644745a5c'),(5,'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.137 Mobile Safari/537.36','Chrome Mobile','64.0.3282','2019-11-22 12:55:25','2019-11-22 12:55:25','73f5079bad8d64889f47cda3ac93d9c2c91e33623614e6ee76caa2a7fa23562a'),(6,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36','Chrome Mobile','78.0.3904','2019-11-22 13:05:38','2019-11-22 13:05:38','29dfb3a1913bb934d52ec5926d4009cc7e1bfafc014535fde7f020207e4923bd'),(7,'Mozilla/5.0 (Linux; Android 9; Mi 9 SE) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36','Chrome Mobile','78.0.3904','2019-11-22 13:07:12','2019-11-22 13:07:12','5fb976f2580a0371973d98c155f6047aff2fbaeb8475e1f77bec56ea07c5c18f'),(8,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36','Chrome','78.0.3904','2019-11-25 06:45:55','2019-11-25 06:45:55','bc358c2d9c6b35c5bccba39dafb23d539fc5bf1edbb79e92382f1069b22f664a'),(9,'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36','Chrome Mobile','78.0.3904','2019-11-25 06:46:35','2019-11-25 06:46:35','97ad678f75b13deb055d42da5699030ff9d4997bc9a0c49509034fe93af122e8'),(10,'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1','Mobile Safari','13.0.3','2019-11-26 08:31:43','2019-11-26 08:31:43','d925dd54c2af3125ec164a5e160bde829c0363f1e16a354b6dbb0a92a0d454ad'),(11,'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 Mobile/15A5341f Safari/604.1','Mobile Safari','11.0','2019-12-04 13:49:22','2019-12-04 13:49:22','da037ff50cc63693d27c960e92899932729b1a62e446e76225d3a79df0e7c569');
/*!40000 ALTER TABLE `tracker_agents` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_connections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_connections_created_at_index` (`created_at`),
  KEY `tracker_connections_updated_at_index` (`updated_at`),
  KEY `tracker_connections_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_connections` WRITE;
/*!40000 ALTER TABLE `tracker_connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_connections` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_cookies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_cookies_uuid_unique` (`uuid`),
  KEY `tracker_cookies_created_at_index` (`created_at`),
  KEY `tracker_cookies_updated_at_index` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_cookies` WRITE;
/*!40000 ALTER TABLE `tracker_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_cookies` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_devices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform_version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_devices_kind_model_platform_platform_version_unique` (`kind`,`model`,`platform`,`platform_version`),
  KEY `tracker_devices_created_at_index` (`created_at`),
  KEY `tracker_devices_updated_at_index` (`updated_at`),
  KEY `tracker_devices_kind_index` (`kind`),
  KEY `tracker_devices_model_index` (`model`),
  KEY `tracker_devices_platform_index` (`platform`),
  KEY `tracker_devices_platform_version_index` (`platform_version`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_devices` WRITE;
/*!40000 ALTER TABLE `tracker_devices` DISABLE KEYS */;
INSERT INTO `tracker_devices` VALUES (1,'Computer','Macintosh','Mac OS X','10.13.6',0,'2019-11-14 09:01:21','2019-11-14 09:01:21'),(2,'Phone','iPhone','iOS','11.0',1,'2019-11-15 09:34:04','2019-11-15 09:34:04'),(3,'Computer','0','Other','',0,'2019-11-15 12:32:51','2019-11-15 12:32:51'),(4,'Computer','Macintosh','Mac OS X','10.15.1',0,'2019-11-19 06:32:08','2019-11-19 06:32:08'),(5,'Phone','WebKit','Android','7.0',1,'2019-11-22 12:55:25','2019-11-22 12:55:25'),(6,'Phone','Nexus','Android','6.0',1,'2019-11-22 13:05:38','2019-11-22 13:05:38'),(7,'Phone','WebKit','Android','9',1,'2019-11-22 13:07:12','2019-11-22 13:07:12'),(8,'Phone','iPhone','iOS','13.2.3',1,'2019-11-26 08:31:43','2019-11-26 08:31:43'),(9,'Tablet','iPad','iOS','11.0',1,'2019-12-04 13:49:22','2019-12-04 13:49:22');
/*!40000 ALTER TABLE `tracker_devices` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_domains` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_domains_created_at_index` (`created_at`),
  KEY `tracker_domains_updated_at_index` (`updated_at`),
  KEY `tracker_domains_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_domains` WRITE;
/*!40000 ALTER TABLE `tracker_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_domains` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_errors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_errors_created_at_index` (`created_at`),
  KEY `tracker_errors_updated_at_index` (`updated_at`),
  KEY `tracker_errors_code_index` (`code`),
  KEY `tracker_errors_message_index` (`message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_errors` WRITE;
/*!40000 ALTER TABLE `tracker_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_errors` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_events_created_at_index` (`created_at`),
  KEY `tracker_events_updated_at_index` (`updated_at`),
  KEY `tracker_events_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_events` WRITE;
/*!40000 ALTER TABLE `tracker_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_events` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_events_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_events_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) unsigned NOT NULL,
  `class_id` bigint(20) unsigned DEFAULT NULL,
  `log_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_events_log_created_at_index` (`created_at`),
  KEY `tracker_events_log_updated_at_index` (`updated_at`),
  KEY `tracker_events_log_event_id_index` (`event_id`),
  KEY `tracker_events_log_class_id_index` (`class_id`),
  KEY `tracker_events_log_log_id_index` (`log_id`),
  CONSTRAINT `tracker_events_log_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `tracker_system_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_events_log_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `tracker_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_events_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_events_log` WRITE;
/*!40000 ALTER TABLE `tracker_events_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_events_log` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_geoip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_geoip` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code3` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_code` bigint(20) DEFAULT NULL,
  `dma_code` double DEFAULT NULL,
  `metro_code` double DEFAULT NULL,
  `continent_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_geoip_created_at_index` (`created_at`),
  KEY `tracker_geoip_updated_at_index` (`updated_at`),
  KEY `tracker_geoip_latitude_index` (`latitude`),
  KEY `tracker_geoip_longitude_index` (`longitude`),
  KEY `tracker_geoip_country_code_index` (`country_code`),
  KEY `tracker_geoip_country_code3_index` (`country_code3`),
  KEY `tracker_geoip_country_name_index` (`country_name`),
  KEY `tracker_geoip_city_index` (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_geoip` WRITE;
/*!40000 ALTER TABLE `tracker_geoip` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_geoip` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `preference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language-range` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_languages_preference_language_range_unique` (`preference`,`language-range`),
  KEY `tracker_languages_created_at_index` (`created_at`),
  KEY `tracker_languages_updated_at_index` (`updated_at`),
  KEY `tracker_languages_preference_index` (`preference`),
  KEY `tracker_languages_language_range_index` (`language-range`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_languages` WRITE;
/*!40000 ALTER TABLE `tracker_languages` DISABLE KEYS */;
INSERT INTO `tracker_languages` VALUES (1,'en-us','en-us,en,pl,de,la','2019-11-14 09:01:21','2019-11-14 09:01:21'),(2,'en','','2019-11-15 12:32:51','2019-11-15 12:32:51'),(3,'pl-pl','pl-pl,pl,en-us,en','2019-11-22 12:55:25','2019-11-22 12:55:25'),(4,'en-us','en-us','2019-11-26 08:31:43','2019-11-26 08:31:43');
/*!40000 ALTER TABLE `tracker_languages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` bigint(20) unsigned NOT NULL,
  `path_id` bigint(20) unsigned DEFAULT NULL,
  `query_id` bigint(20) unsigned DEFAULT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_path_id` bigint(20) unsigned DEFAULT NULL,
  `is_ajax` tinyint(1) NOT NULL,
  `is_secure` tinyint(1) NOT NULL,
  `is_json` tinyint(1) NOT NULL,
  `wants_json` tinyint(1) NOT NULL,
  `error_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referer_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_log_created_at_index` (`created_at`),
  KEY `tracker_log_updated_at_index` (`updated_at`),
  KEY `tracker_log_session_id_index` (`session_id`),
  KEY `tracker_log_path_id_index` (`path_id`),
  KEY `tracker_log_query_id_index` (`query_id`),
  KEY `tracker_log_method_index` (`method`),
  KEY `tracker_log_route_path_id_index` (`route_path_id`),
  KEY `tracker_log_error_id_index` (`error_id`),
  KEY `tracker_log_referer_id_index` (`referer_id`),
  CONSTRAINT `tracker_log_error_id_foreign` FOREIGN KEY (`error_id`) REFERENCES `tracker_errors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_path_id_foreign` FOREIGN KEY (`path_id`) REFERENCES `tracker_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `tracker_sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_log` WRITE;
/*!40000 ALTER TABLE `tracker_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_log` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_paths` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_paths_created_at_index` (`created_at`),
  KEY `tracker_paths_updated_at_index` (`updated_at`),
  KEY `tracker_paths_path_index` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_paths` WRITE;
/*!40000 ALTER TABLE `tracker_paths` DISABLE KEYS */;
INSERT INTO `tracker_paths` VALUES (1,'/','2019-11-14 09:01:21','2019-11-14 09:01:21'),(2,'patterns','2019-11-14 09:01:22','2019-11-14 09:01:22'),(3,'fonts','2019-11-14 09:01:22','2019-11-14 09:01:22'),(4,'admin','2019-11-14 09:02:42','2019-11-14 09:02:42'),(5,'admin/voyager-assets','2019-11-14 09:02:43','2019-11-14 09:02:43'),(6,'products/2','2019-11-14 09:07:20','2019-11-14 09:07:20'),(7,'products/1','2019-11-14 09:07:22','2019-11-14 09:07:22'),(8,'products/2132','2019-11-14 09:07:32','2019-11-14 09:07:32'),(9,'_ignition/health-check','2019-11-14 09:07:32','2019-11-14 09:07:32'),(10,'products/213','2019-11-14 09:08:04','2019-11-14 09:08:04'),(11,'products/23131','2019-11-14 09:08:39','2019-11-14 09:08:39'),(12,'products/32131','2019-11-14 09:09:58','2019-11-14 09:09:58'),(13,'upload/designs','2019-11-14 10:44:51','2019-11-14 10:44:51'),(14,'saveProject','2019-11-14 10:44:51','2019-11-14 10:44:51'),(15,'designs','2019-11-14 10:44:55','2019-11-14 10:44:55'),(16,'js/vuetify.js.map','2019-11-14 10:47:07','2019-11-14 10:47:07'),(17,'admin/products','2019-11-14 11:00:43','2019-11-14 11:00:43'),(18,'admin/logout','2019-11-14 12:04:09','2019-11-14 12:04:09'),(19,'admin/login','2019-11-14 12:04:09','2019-11-14 12:04:09'),(20,'storage/undefined','2019-11-14 12:07:39','2019-11-14 12:07:39'),(21,'designs/1/db','2019-11-14 12:09:53','2019-11-14 12:09:53'),(22,'designs/1/session','2019-11-14 12:14:20','2019-11-14 12:14:20'),(23,'designs/2/db','2019-11-14 12:28:41','2019-11-14 12:28:41'),(24,'storage/fwaf','2019-11-14 12:53:27','2019-11-14 12:53:27'),(25,'storage/fwaf.fwa','2019-11-14 12:53:38','2019-11-14 12:53:38'),(26,'storage/faw','2019-11-14 12:54:02','2019-11-14 12:54:02'),(27,'storage/faw.jpg','2019-11-14 12:54:06','2019-11-14 12:54:06'),(28,'storage/designs/November2019//2207b6dd7d972775b210c03ab9bd3d91','2019-11-14 12:54:43','2019-11-14 12:54:43'),(29,'storage/fawf','2019-11-14 12:55:44','2019-11-14 12:55:44'),(30,'storage/fonts/BebasNeue-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(31,'storage/fonts/McLaren-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(32,'storage/fonts/YeonSung-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(33,'storage/fonts/Aladin-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(34,'storage/fonts/BerkshireSwash-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(35,'storage/fonts/Courgette-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(36,'storage/fonts/MeriendaOne-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(37,'storage/fonts/Parisienne-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(38,'storage/fonts/PermanentMarker-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(39,'storage/fonts/Sriracha-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(40,'storage/products/November2019/u74qNfIGnlautUVLWcrG.jpg','2019-11-14 12:57:31','2019-11-14 12:57:31'),(41,'storage/logo.png','2019-11-14 12:57:31','2019-11-14 12:57:31'),(42,'storage/patterns/icon%20(1).png','2019-11-14 12:57:31','2019-11-14 12:57:31'),(43,'storage/designs/November2019//2207b6dd7d972775b210c03ab9bd3d91.jpg','2019-11-14 12:57:33','2019-11-14 12:57:33'),(44,'storage/fawfafa','2019-11-14 13:13:06','2019-11-14 13:13:06'),(45,'storage/designs/November2019//2207b6dd7d972775b210c03ab9bd3d91.jpgwidth=3000','2019-11-14 13:18:54','2019-11-14 13:18:54'),(46,'storage/logo.png&','2019-11-14 13:19:17','2019-11-14 13:19:17'),(47,'storage/patterns/icon%20(1).png&','2019-11-14 13:19:17','2019-11-14 13:19:17'),(48,'storage/designs/November2019//2207b6dd7d972775b210c03ab9bd3d91.jpg&width=3000','2019-11-14 13:19:25','2019-11-14 13:19:25'),(49,'produkty','2019-11-14 13:29:59','2019-11-14 13:29:59'),(50,'storage/users/default.png','2019-11-14 13:30:48','2019-11-14 13:30:48'),(51,'storage/products/November2019/SEfq6L24RuajZsqDmJKi.png','2019-11-14 13:30:50','2019-11-14 13:30:50'),(52,'admin/products/create','2019-11-14 13:30:51','2019-11-14 13:30:51'),(53,'admin/media/files','2019-11-14 13:30:52','2019-11-14 13:30:52'),(54,'admin/products/undefined','2019-11-14 13:32:39','2019-11-14 13:32:39'),(55,'storage/products/November2019/Ef3u2NxgKkQeikUzrVp4.png','2019-11-14 13:38:33','2019-11-14 13:38:33'),(56,'storage/products/November2019/iHZlIHeM49NY3ntCKKGf.png','2019-11-14 13:38:33','2019-11-14 13:38:33'),(57,'storage/products/November2019/l6WGet2wi2fF8GKs8yJn.jpg','2019-11-14 13:38:33','2019-11-14 13:38:33'),(58,'storage/products/November2019/zE2QLROvO9zhmB31oBBz.png','2019-11-14 13:38:33','2019-11-14 13:38:33'),(59,'admin/media/upload','2019-11-14 13:39:19','2019-11-14 13:39:19'),(60,'storage/products/November2019/czapka%20z%20daszkiem%202.jpg','2019-11-14 13:39:19','2019-11-14 13:39:19'),(61,'storage/products/November2019/VJkKQM8ZekyfGzcwcwGo.jpg','2019-11-14 13:40:16','2019-11-14 13:40:16'),(62,'admin/products/47/settings','2019-11-14 13:44:09','2019-11-14 13:44:09'),(63,'admin/products/3','2019-11-14 13:44:15','2019-11-14 13:44:15'),(64,'admin/products/3/settings','2019-11-14 13:45:30','2019-11-14 13:45:30'),(65,'products/3/bounds','2019-11-14 13:51:13','2019-11-14 13:51:13'),(66,'admin/products/2/settings','2019-11-14 13:53:37','2019-11-14 13:53:37'),(67,'products/2/bounds','2019-11-14 13:53:40','2019-11-14 13:53:40'),(68,'cart/add','2019-11-15 08:28:31','2019-11-15 08:28:31'),(69,'upload/designs_previews','2019-11-15 08:37:51','2019-11-15 08:37:51'),(70,'storage/designs_previews/November2019//2ad7f98dcfb71eef753ec2f914e466d7','2019-11-15 08:40:21','2019-11-15 08:40:21'),(71,'storage/designs_previews/November2019//2ad7f98dcfb71eef753ec2f914e466d7.jpg','2019-11-15 08:41:52','2019-11-15 08:41:52'),(72,'storage/designs_previews/November2019//d9646b78f5179d7095afc99552a2a738.jpg','2019-11-15 08:42:30','2019-11-15 08:42:30'),(73,'cart','2019-11-15 09:23:14','2019-11-15 09:23:14'),(74,'storage/designs/November2019//b00abfea90823219bddda89935cae204.jpg','2019-11-15 09:52:58','2019-11-15 09:52:58'),(75,'storage/designs_previews/November2019//2abba08e1e64bea6147dd5d96cf006f0.jpg','2019-11-15 10:20:37','2019-11-15 10:20:37'),(76,'storage/designs_previews/November2019//9808641d418607e0e5fd3b6323bea1fb.jpg','2019-11-15 10:20:38','2019-11-15 10:20:38'),(77,'cart/0','2019-11-15 10:52:54','2019-11-15 10:52:54'),(78,'cart/1','2019-11-15 10:57:15','2019-11-15 10:57:15'),(79,'storage/designs_previews/November2019//eb8702eb60c87f2bcfb4cfa11f02a3d7.jpg','2019-11-15 11:02:14','2019-11-15 11:02:14'),(80,'storage/designs_previews/November2019//812c640f2e93229aff0c840d87a1f661.jpg','2019-11-15 11:07:02','2019-11-15 11:07:02'),(81,'storage/designs_previews/November2019//b683f27a98c9371af6b374f94185da99.jpg','2019-11-15 11:19:21','2019-11-15 11:19:21'),(82,'storage/designs_previews/November2019//09c7931783443d81dc6bff672e86f6fa.jpg','2019-11-15 11:20:30','2019-11-15 11:20:30'),(83,'storage/designs_previews/November2019//2d992348fe6fb4efc86ea067bbbca78a.jpg','2019-11-15 11:22:06','2019-11-15 11:22:06'),(84,'zamawiam','2019-11-15 11:27:54','2019-11-15 11:27:54'),(85,'storage/designs_previews/November2019//8998f23a3c1c8c3531b72bf803953d95.jpg','2019-11-15 11:34:01','2019-11-15 11:34:01'),(86,'order/notify','2019-11-15 12:31:34','2019-11-15 12:31:34'),(87,'orders/1','2019-11-15 12:42:34','2019-11-15 12:42:34'),(88,'admin/bread','2019-11-18 09:27:30','2019-11-18 09:27:30'),(89,'admin/bread/shipments/create','2019-11-18 09:27:57','2019-11-18 09:27:57'),(90,'admin/shipments','2019-11-18 09:28:58','2019-11-18 09:28:58'),(91,'admin/shipments/create','2019-11-18 09:29:00','2019-11-18 09:29:00'),(92,'shipments','2019-11-18 09:37:31','2019-11-18 09:37:31'),(93,'admin/bread/shipments/edit','2019-11-18 09:45:57','2019-11-18 09:45:57'),(94,'admin/database/addresses','2019-11-18 09:45:57','2019-11-18 09:45:57'),(95,'admin/bread/7','2019-11-18 09:46:06','2019-11-18 09:46:06'),(96,'admin/shipments/1/edit','2019-11-18 09:46:11','2019-11-18 09:46:11'),(97,'admin/shipments/1','2019-11-18 09:46:49','2019-11-18 09:46:49'),(98,'storage/null','2019-11-18 10:21:13','2019-11-18 10:21:13'),(99,'admin/shipments/2/edit','2019-11-18 10:21:38','2019-11-18 10:21:38'),(100,'admin/shipments/2','2019-11-18 10:21:46','2019-11-18 10:21:46'),(101,'orders','2019-11-18 11:46:22','2019-11-18 11:46:22'),(102,'order/8dfa888993edbedf9e9c797e14f78d54','2019-11-18 13:00:12','2019-11-18 13:00:12'),(103,'order/d6b7ce778b2e51e7dc8d8c7716b42c58','2019-11-18 13:11:49','2019-11-18 13:11:49'),(104,'order/a89b3a1926c8f4c4edef8b76d9820abf','2019-11-18 13:13:37','2019-11-18 13:13:37'),(105,'order/4bf81344c2fffca08549713a6d7fb54f','2019-11-18 13:31:05','2019-11-18 13:31:05'),(106,'order/691819ec927fc4b368fc88707d989833','2019-11-18 13:34:42','2019-11-18 13:34:42'),(107,'orders/691819ec927fc4b368fc88707d989833','2019-11-18 13:36:59','2019-11-18 13:36:59'),(108,'orders/fwaf','2019-11-18 13:38:20','2019-11-18 13:38:20'),(109,'order/fawfaf','2019-11-18 13:38:26','2019-11-18 13:38:26'),(110,'storage/designs/November2019//03c8a389c08d382fdcf996e4f27e6643.jpg','2019-11-18 13:49:34','2019-11-18 13:49:34'),(111,'storage/designs/November2019//720fee24be0aedfe7414855bef4c2f47.jpg','2019-11-18 13:49:34','2019-11-18 13:49:34'),(112,'designs/4/db','2019-11-18 13:49:36','2019-11-18 13:49:36'),(113,'designs/5/db','2019-11-18 13:49:37','2019-11-18 13:49:37'),(114,'designs/6/db','2019-11-18 13:49:37','2019-11-18 13:49:37'),(115,'admin/bread/payu_payments/create','2019-11-18 14:23:02','2019-11-18 14:23:02'),(116,'admin/payu-payments','2019-11-18 14:23:56','2019-11-18 14:23:56'),(117,'admin/bread/payu_payments/edit','2019-11-18 14:24:09','2019-11-18 14:24:09'),(118,'admin/database/orders','2019-11-18 14:24:29','2019-11-18 14:24:29'),(119,'admin/bread/relationship','2019-11-18 14:24:44','2019-11-18 14:24:44'),(120,'admin/payu-payments/3/edit','2019-11-18 14:24:54','2019-11-18 14:24:54'),(121,'admin/payu-payments/3','2019-11-18 14:25:00','2019-11-18 14:25:00'),(122,'admin/patterns','2019-11-19 06:34:42','2019-11-19 06:34:42'),(123,'admin/patterns/2/edit','2019-11-19 06:34:48','2019-11-19 06:34:48'),(124,'admin/patterns/2','2019-11-19 06:35:01','2019-11-19 06:35:01'),(125,'orders/4b0420df566070e3d80ef8fa36a96143','2019-11-19 07:01:31','2019-11-19 07:01:31'),(126,'admin/payu-payments/4/edit','2019-11-19 07:02:39','2019-11-19 07:02:39'),(127,'admin/payu-payments/4','2019-11-19 07:02:44','2019-11-19 07:02:44'),(128,'admin/bread/orders/create','2019-11-19 07:06:03','2019-11-19 07:06:03'),(129,'admin/orders','2019-11-19 07:18:55','2019-11-19 07:18:55'),(130,'admin/orders/create','2019-11-19 07:18:57','2019-11-19 07:18:57'),(131,'admin/bread/orders/edit','2019-11-19 07:19:10','2019-11-19 07:19:10'),(132,'admin/database/users','2019-11-19 07:19:22','2019-11-19 07:19:22'),(133,'admin/database/shipments','2019-11-19 07:20:24','2019-11-19 07:20:24'),(134,'admin/orders/relation','2019-11-19 07:20:42','2019-11-19 07:20:42'),(135,'admin/bread/10','2019-11-19 07:21:40','2019-11-19 07:21:40'),(136,'home','2019-11-20 14:15:18','2019-11-20 14:15:18'),(137,'contact','2019-11-20 14:15:18','2019-11-20 14:15:18'),(138,'cap','2019-11-20 14:15:19','2019-11-20 14:15:19'),(139,'edit','2019-11-20 14:15:19','2019-11-20 14:15:19'),(140,'icons/home','2019-11-20 14:15:37','2019-11-20 14:15:37'),(141,'icons/cap','2019-11-20 14:15:37','2019-11-20 14:15:37'),(142,'icons/contact','2019-11-20 14:15:37','2019-11-20 14:15:37'),(143,'icons/edit','2019-11-20 14:15:37','2019-11-20 14:15:37'),(144,'kontakt','2019-11-20 14:19:14','2019-11-20 14:19:14'),(145,'broadcasting/auth','2019-11-20 15:04:59','2019-11-20 15:04:59'),(146,'icons/center-align.svg','2019-11-21 15:58:06','2019-11-21 15:58:06'),(147,'icons/right-align.svg','2019-11-21 15:58:06','2019-11-21 15:58:06'),(148,'icons/middle-allign.svg','2019-11-21 16:11:05','2019-11-21 16:11:05'),(149,'icons/bottom%20align.svg','2019-11-21 16:11:05','2019-11-21 16:11:05'),(150,'admin/settings','2019-11-25 07:09:17','2019-11-25 07:09:17'),(151,'settings','2019-11-25 07:14:48','2019-11-25 07:14:48'),(152,'cart/3','2019-11-25 07:37:17','2019-11-25 07:37:17'),(153,'cart/2','2019-11-25 07:37:18','2019-11-25 07:37:18'),(154,'products','2019-11-25 07:56:49','2019-11-25 07:56:49'),(155,'admin/bread/attributes/create','2019-11-25 09:15:28','2019-11-25 09:15:28'),(156,'admin/attributes','2019-11-25 09:15:41','2019-11-25 09:15:41'),(157,'admin/attributes/create','2019-11-25 09:15:43','2019-11-25 09:15:43'),(158,'admin/bread/attributes/edit','2019-11-25 09:21:29','2019-11-25 09:21:29'),(159,'admin/bread/11','2019-11-25 09:22:48','2019-11-25 09:22:48'),(160,'admin/attributes/2/edit','2019-11-25 09:23:53','2019-11-25 09:23:53'),(161,'admin/attributes/2','2019-11-25 09:24:02','2019-11-25 09:24:02'),(162,'admin/attributes/1/edit','2019-11-25 09:24:14','2019-11-25 09:24:14'),(163,'admin/attributes/1','2019-11-25 09:24:21','2019-11-25 09:24:21'),(164,'admin/products/3/edit','2019-11-25 09:31:15','2019-11-25 09:31:15'),(165,'admin/products/4/edit','2019-11-25 11:40:30','2019-11-25 11:40:30'),(166,'kreator','2019-11-25 11:54:26','2019-11-25 11:54:26'),(167,'designs/22/db','2019-11-25 14:29:45','2019-11-25 14:29:45'),(168,'designs/23/db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(169,'designs/24/db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(170,'designs/25/db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(171,'designs/26/db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(172,'designs/28/db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(173,'designs/29/db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(174,'designs/30/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(175,'designs/31/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(176,'designs/32/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(177,'designs/33/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(178,'designs/34/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(179,'designs/35/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(180,'designs/36/db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(181,'designs/37/db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(182,'designs/38/db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(183,'designs/39/db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(184,'designs/40/db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(185,'designs/3/db','2019-11-25 14:29:49','2019-11-25 14:29:49'),(186,'creator','2019-11-26 14:21:42','2019-11-26 14:21:42'),(187,'admin/products/4/settings','2019-11-26 14:31:34','2019-11-26 14:31:34'),(188,'products/4/bounds','2019-11-26 14:31:49','2019-11-26 14:31:49'),(189,'admin/products/4/products/November2019/EvZRKxIyCt7H635Ad3b1.jpg','2019-11-28 09:42:03','2019-11-28 09:42:03'),(190,'product/1/nazwa-produktu-2','2019-11-28 10:35:36','2019-11-28 10:35:36'),(191,'produkty/1/nazwa-produktu-2','2019-11-28 10:36:09','2019-11-28 10:36:09'),(192,'produkty/nazwa-produktu-2','2019-11-28 10:37:54','2019-11-28 10:37:54'),(193,'produkty/4/czapka-czerwona','2019-11-28 10:48:18','2019-11-28 10:48:18'),(194,'produkty/czapka-czerwona','2019-11-28 10:48:58','2019-11-28 10:48:58'),(195,'admin/bread/categories/create','2019-11-28 11:09:01','2019-11-28 11:09:01'),(196,'admin/bread/categories/edit','2019-11-28 11:10:55','2019-11-28 11:10:55'),(197,'admin/database/categories','2019-11-28 11:11:03','2019-11-28 11:11:03'),(198,'admin/bread/12','2019-11-28 11:11:28','2019-11-28 11:11:28'),(199,'admin/categories','2019-11-28 11:11:32','2019-11-28 11:11:32'),(200,'admin/categories/create','2019-11-28 11:11:33','2019-11-28 11:11:33'),(201,'admin/media/delete_file_folder','2019-11-28 11:18:10','2019-11-28 11:18:10'),(202,'admin/bread/products/edit','2019-11-28 11:20:58','2019-11-28 11:20:58'),(203,'admin/bread/4','2019-11-28 11:23:23','2019-11-28 11:23:23'),(204,'admin/products/relation','2019-11-28 11:23:50','2019-11-28 11:23:50'),(205,'admin/products/4','2019-11-28 11:23:53','2019-11-28 11:23:53'),(206,'admin/products/2/edit','2019-11-28 11:24:28','2019-11-28 11:24:28'),(207,'admin/products/2','2019-11-28 11:24:34','2019-11-28 11:24:34'),(208,'admin/products/1/edit','2019-11-28 11:24:38','2019-11-28 11:24:38'),(209,'admin/products/1','2019-11-28 11:24:45','2019-11-28 11:24:45'),(210,'produkty/lol','2019-11-28 13:42:57','2019-11-28 13:42:57'),(211,'produkty/czapka-z-daszkiem-2','2019-11-28 13:46:09','2019-11-28 13:46:09'),(212,'fontss','2019-11-29 06:54:02','2019-11-29 06:54:02'),(213,'orders/96c1fee999dbf69fe3da1e8dcefc750c','2019-11-29 07:25:02','2019-11-29 07:25:02'),(214,'orders/65b593ca0ae4e17c4e5e5b606154d719','2019-11-29 07:26:38','2019-11-29 07:26:38'),(215,'orders/c6b1af245e74a30ae4ad08194aa0fb91','2019-11-29 07:55:41','2019-11-29 07:55:41'),(216,'designs/2/session','2019-11-29 08:16:23','2019-11-29 08:16:23'),(217,'admin/settings/3/delete_value','2019-11-29 09:23:19','2019-11-29 09:23:19'),(218,'storage/bag-colors/torba%20czerw.png','2019-12-03 07:39:10','2019-12-03 07:39:10'),(219,'storage/bag-colors/torba%20czarna.png','2019-12-03 07:39:13','2019-12-03 07:39:13'),(220,'storage/bag-colors/torba%20biala.png','2019-12-03 07:39:17','2019-12-03 07:39:17'),(221,'storage/bag-colors/torba%20nat.png','2019-12-03 07:39:21','2019-12-03 07:39:21'),(222,'storage/bag-colors/torba%20granat.png','2019-12-03 07:39:25','2019-12-03 07:39:25'),(223,'contact/send','2019-12-03 14:00:26','2019-12-03 14:00:26'),(224,'kontakt/wyslij','2019-12-03 14:04:44','2019-12-03 14:04:44'),(225,'storage/websites/July2019/f59315b9a89addb9cfd6a23f2c803f86.png','2019-12-03 14:17:12','2019-12-03 14:17:12'),(226,'images/email5/154008-OV4USS-709.jpg','2019-12-03 14:17:12','2019-12-03 14:17:12'),(227,'settings/November2019/agWUXn8lGIy7tKJYf6ug.','2019-12-03 14:31:33','2019-12-03 14:31:33'),(228,'kreator/product_id=2','2019-12-04 12:54:45','2019-12-04 12:54:45'),(229,'admin/menus','2019-12-04 15:14:11','2019-12-04 15:14:11'),(230,'admin/menus/create','2019-12-04 15:14:13','2019-12-04 15:14:13'),(231,'admin/menus/2/builder','2019-12-04 15:14:19','2019-12-04 15:14:19'),(232,'admin/menus/2/item','2019-12-04 15:14:34','2019-12-04 15:14:34'),(233,'newsletter','2019-12-04 16:01:18','2019-12-04 16:01:18'),(234,'orders/8ced6208077d7a2f112b6cda62982819','2019-12-04 16:29:52','2019-12-04 16:29:52'),(235,'strona/torby-12','2019-12-05 13:07:03','2019-12-05 13:07:03'),(236,'admin/bread/pos/create','2019-12-05 13:37:09','2019-12-05 13:37:09'),(237,'admin/pos','2019-12-05 13:40:01','2019-12-05 13:40:01'),(238,'admin/pos/create','2019-12-05 13:40:02','2019-12-05 13:40:02'),(239,'admin/bread/pos/edit','2019-12-05 13:40:23','2019-12-05 13:40:23'),(240,'admin/bread/14','2019-12-05 13:40:30','2019-12-05 13:40:30'),(241,'admin/pos/1/edit','2019-12-05 13:41:41','2019-12-05 13:41:41'),(242,'admin/pos/1','2019-12-05 13:41:45','2019-12-05 13:41:45'),(243,'en','2019-12-05 14:18:58','2019-12-05 14:18:58'),(244,'de','2019-12-05 14:21:16','2019-12-05 14:21:16'),(245,'pl','2019-12-05 14:21:21','2019-12-05 14:21:21'),(246,'en/settings','2019-12-06 07:27:31','2019-12-06 07:27:31'),(247,'en/cart','2019-12-06 07:27:31','2019-12-06 07:27:31'),(248,'en/icons/bookmarks.svg','2019-12-06 07:27:32','2019-12-06 07:27:32'),(249,'en/icons/contact.svg','2019-12-06 07:27:32','2019-12-06 07:27:32'),(250,'en/icons/search.svg','2019-12-06 07:27:32','2019-12-06 07:27:32'),(251,'en/icons/home.svg','2019-12-06 07:27:32','2019-12-06 07:27:32'),(252,'en/icons/cap.svg','2019-12-06 07:27:32','2019-12-06 07:27:32'),(253,'en/icons/edit.svg','2019-12-06 07:27:32','2019-12-06 07:27:32'),(254,'en/icons/cart.svg','2019-12-06 07:27:32','2019-12-06 07:27:32'),(255,'en/storage/logo.png','2019-12-06 07:27:32','2019-12-06 07:27:32'),(256,'en/produkty','2019-12-06 07:46:28','2019-12-06 07:46:28'),(257,'en/produkty/czapka-czerwona','2019-12-06 07:50:41','2019-12-06 07:50:41'),(258,'de/settings','2019-12-06 08:07:49','2019-12-06 08:07:49'),(259,'undefined/cart','2019-12-06 08:16:49','2019-12-06 08:16:49'),(260,'undefined/icons/home.svg','2019-12-06 08:16:49','2019-12-06 08:16:49'),(261,'undefined/icons/contact.svg','2019-12-06 08:16:49','2019-12-06 08:16:49'),(262,'undefined/icons/cap.svg','2019-12-06 08:16:49','2019-12-06 08:16:49'),(263,'undefined/icons/edit.svg','2019-12-06 08:16:49','2019-12-06 08:16:49'),(264,'undefined/icons/bookmarks.svg','2019-12-06 08:16:49','2019-12-06 08:16:49'),(265,'undefined/icons/search.svg','2019-12-06 08:16:49','2019-12-06 08:16:49'),(266,'undefined/storage/logo.png','2019-12-06 08:16:49','2019-12-06 08:16:49'),(267,'en/kontakt','2019-12-06 08:23:34','2019-12-06 08:23:34'),(268,'en/kreator','2019-12-06 08:55:53','2019-12-06 08:55:53'),(269,'de/produkty','2019-12-06 08:56:42','2019-12-06 08:56:42'),(270,'de/kreator','2019-12-06 09:00:18','2019-12-06 09:00:18'),(271,'admin/attributes/3/edit','2019-12-06 10:33:21','2019-12-06 10:33:21'),(272,'de/produkty/czapka-z-daszkiem-2','2019-12-06 11:26:20','2019-12-06 11:26:20'),(273,'de/produkty/nazwa-produktu-2','2019-12-06 11:37:20','2019-12-06 11:37:20'),(274,'de/produkty/lol','2019-12-06 11:42:47','2019-12-06 11:42:47');
/*!40000 ALTER TABLE `tracker_paths` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_queries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `query` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_queries_created_at_index` (`created_at`),
  KEY `tracker_queries_updated_at_index` (`updated_at`),
  KEY `tracker_queries_query_index` (`query`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_queries` WRITE;
/*!40000 ALTER TABLE `tracker_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_queries` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_query_arguments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_query_arguments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `query_id` bigint(20) unsigned NOT NULL,
  `argument` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_query_arguments_created_at_index` (`created_at`),
  KEY `tracker_query_arguments_updated_at_index` (`updated_at`),
  KEY `tracker_query_arguments_query_id_index` (`query_id`),
  KEY `tracker_query_arguments_argument_index` (`argument`),
  KEY `tracker_query_arguments_value_index` (`value`),
  CONSTRAINT `tracker_query_arguments_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_query_arguments` WRITE;
/*!40000 ALTER TABLE `tracker_query_arguments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_query_arguments` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_referers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_referers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` bigint(20) unsigned NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_terms_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_referers_created_at_index` (`created_at`),
  KEY `tracker_referers_updated_at_index` (`updated_at`),
  KEY `tracker_referers_domain_id_index` (`domain_id`),
  KEY `tracker_referers_url_index` (`url`),
  KEY `tracker_referers_medium_index` (`medium`),
  KEY `tracker_referers_source_index` (`source`),
  KEY `tracker_referers_search_terms_hash_index` (`search_terms_hash`),
  CONSTRAINT `tracker_referers_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `tracker_domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_referers` WRITE;
/*!40000 ALTER TABLE `tracker_referers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_referers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_referers_search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_referers_search_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `referer_id` bigint(20) unsigned NOT NULL,
  `search_term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_referers_search_terms_created_at_index` (`created_at`),
  KEY `tracker_referers_search_terms_updated_at_index` (`updated_at`),
  KEY `tracker_referers_search_terms_referer_id_index` (`referer_id`),
  KEY `tracker_referers_search_terms_search_term_index` (`search_term`),
  CONSTRAINT `tracker_referers_referer_id_fk` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_referers_search_terms` WRITE;
/*!40000 ALTER TABLE `tracker_referers_search_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_referers_search_terms` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_route_path_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_route_path_parameters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `route_path_id` bigint(20) unsigned NOT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_route_path_parameters_created_at_index` (`created_at`),
  KEY `tracker_route_path_parameters_updated_at_index` (`updated_at`),
  KEY `tracker_route_path_parameters_route_path_id_index` (`route_path_id`),
  KEY `tracker_route_path_parameters_parameter_index` (`parameter`),
  KEY `tracker_route_path_parameters_value_index` (`value`),
  CONSTRAINT `tracker_route_path_parameters_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_route_path_parameters` WRITE;
/*!40000 ALTER TABLE `tracker_route_path_parameters` DISABLE KEYS */;
INSERT INTO `tracker_route_path_parameters` VALUES (1,6,'product','2','2019-11-14 09:07:20','2019-11-14 09:07:20'),(2,7,'product','1','2019-11-14 09:07:22','2019-11-14 09:07:22'),(3,8,'product','2132','2019-11-14 09:07:32','2019-11-14 09:07:32'),(4,10,'product','213','2019-11-14 09:08:04','2019-11-14 09:08:04'),(5,11,'product','23131','2019-11-14 09:08:39','2019-11-14 09:08:39'),(6,12,'product','32131','2019-11-14 09:09:58','2019-11-14 09:09:58'),(7,13,'path','designs','2019-11-14 10:44:51','2019-11-14 10:44:51'),(8,19,'id','1','2019-11-14 12:09:53','2019-11-14 12:09:53'),(9,19,'storage','db','2019-11-14 12:09:53','2019-11-14 12:09:53'),(10,20,'id','1','2019-11-14 12:14:20','2019-11-14 12:14:20'),(11,20,'storage','session','2019-11-14 12:14:20','2019-11-14 12:14:20'),(12,22,'id','2','2019-11-14 12:28:41','2019-11-14 12:28:41'),(13,22,'storage','db','2019-11-14 12:28:41','2019-11-14 12:28:41'),(14,23,'filePath','faw','2019-11-14 12:54:02','2019-11-14 12:54:02'),(15,24,'filePath','faw.jpg','2019-11-14 12:54:06','2019-11-14 12:54:06'),(16,25,'filePath','designs/November2019//2207b6dd7d972775b210c03ab9bd3d91','2019-11-14 12:54:43','2019-11-14 12:54:43'),(17,26,'filePath','fawf','2019-11-14 12:55:44','2019-11-14 12:55:44'),(18,27,'filePath','fonts/BebasNeue-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(19,28,'filePath','fonts/McLaren-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(20,29,'filePath','fonts/YeonSung-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(21,30,'filePath','fonts/Aladin-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(22,31,'filePath','fonts/BerkshireSwash-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(23,32,'filePath','fonts/Courgette-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(24,33,'filePath','fonts/MeriendaOne-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(25,34,'filePath','fonts/Parisienne-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(26,35,'filePath','fonts/PermanentMarker-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(27,36,'filePath','fonts/Sriracha-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(28,37,'filePath','products/November2019/u74qNfIGnlautUVLWcrG.jpg','2019-11-14 12:57:31','2019-11-14 12:57:31'),(29,38,'filePath','logo.png','2019-11-14 12:57:31','2019-11-14 12:57:31'),(30,39,'filePath','patterns/icon (1).png','2019-11-14 12:57:31','2019-11-14 12:57:31'),(31,40,'filePath','designs/November2019//2207b6dd7d972775b210c03ab9bd3d91.jpg','2019-11-14 12:57:34','2019-11-14 12:57:34'),(32,41,'filePath','designs/November2019//2207b6dd7d972775b210c03ab9bd3d91.jpg','2019-11-14 12:59:02','2019-11-14 12:59:02'),(33,42,'filePath','designs/November2019//2207b6dd7d972775b210c03ab9bd3d91','2019-11-14 13:00:42','2019-11-14 13:00:42'),(34,43,'filePath','fawf','2019-11-14 13:12:03','2019-11-14 13:12:03'),(35,44,'filePath','fawfafa','2019-11-14 13:13:06','2019-11-14 13:13:06'),(36,45,'filePath','fonts/BebasNeue-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(37,46,'filePath','fonts/McLaren-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(38,47,'filePath','fonts/YeonSung-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(39,48,'filePath','fonts/Aladin-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(40,49,'filePath','fonts/BerkshireSwash-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(41,50,'filePath','fonts/Courgette-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(42,51,'filePath','fonts/MeriendaOne-Regular.ttf','2019-11-14 13:13:20','2019-11-14 13:13:20'),(43,52,'filePath','fonts/Parisienne-Regular.ttf','2019-11-14 13:13:20','2019-11-14 13:13:20'),(44,53,'filePath','fonts/PermanentMarker-Regular.ttf','2019-11-14 13:13:20','2019-11-14 13:13:20'),(45,54,'filePath','fonts/Sriracha-Regular.ttf','2019-11-14 13:13:20','2019-11-14 13:13:20'),(46,55,'filePath','products/November2019/u74qNfIGnlautUVLWcrG.jpg','2019-11-14 13:13:20','2019-11-14 13:13:20'),(47,56,'filePath','logo.png','2019-11-14 13:13:20','2019-11-14 13:13:20'),(48,57,'filePath','patterns/icon (1).png','2019-11-14 13:13:20','2019-11-14 13:13:20'),(49,58,'filePath','designs/November2019//2207b6dd7d972775b210c03ab9bd3d91.jpgwidth=3000','2019-11-14 13:18:54','2019-11-14 13:18:54'),(50,59,'filePath','logo.png&','2019-11-14 13:19:17','2019-11-14 13:19:17'),(51,60,'filePath','patterns/icon (1).png&','2019-11-14 13:19:17','2019-11-14 13:19:17'),(52,61,'filePath','designs/November2019//2207b6dd7d972775b210c03ab9bd3d91.jpg&width=3000','2019-11-14 13:19:25','2019-11-14 13:19:25'),(53,62,'filePath','users/default.png','2019-11-14 13:30:48','2019-11-14 13:30:48'),(54,63,'filePath','products/November2019/SEfq6L24RuajZsqDmJKi.png','2019-11-14 13:30:50','2019-11-14 13:30:50'),(55,66,'product','undefined','2019-11-14 13:32:39','2019-11-14 13:32:39'),(56,67,'filePath','products/November2019/Ef3u2NxgKkQeikUzrVp4.png','2019-11-14 13:38:33','2019-11-14 13:38:33'),(57,68,'filePath','products/November2019/iHZlIHeM49NY3ntCKKGf.png','2019-11-14 13:38:33','2019-11-14 13:38:33'),(58,69,'filePath','products/November2019/l6WGet2wi2fF8GKs8yJn.jpg','2019-11-14 13:38:33','2019-11-14 13:38:33'),(59,70,'filePath','products/November2019/zE2QLROvO9zhmB31oBBz.png','2019-11-14 13:38:33','2019-11-14 13:38:33'),(60,72,'filePath','products/November2019/czapka z daszkiem 2.jpg','2019-11-14 13:39:19','2019-11-14 13:39:19'),(61,74,'filePath','products/November2019/VJkKQM8ZekyfGzcwcwGo.jpg','2019-11-14 13:40:16','2019-11-14 13:40:16'),(62,75,'product','3','2019-11-14 13:44:15','2019-11-14 13:44:15'),(63,76,'id','3','2019-11-14 13:47:43','2019-11-14 13:47:43'),(64,77,'id','3','2019-11-14 13:51:13','2019-11-14 13:51:13'),(65,78,'id','2','2019-11-14 13:53:37','2019-11-14 13:53:37'),(66,79,'id','2','2019-11-14 13:53:40','2019-11-14 13:53:40'),(67,81,'path','designs_previews','2019-11-15 08:37:51','2019-11-15 08:37:51'),(68,82,'filePath','designs_previews/November2019//2ad7f98dcfb71eef753ec2f914e466d7','2019-11-15 08:40:21','2019-11-15 08:40:21'),(69,83,'filePath','designs_previews/November2019//2ad7f98dcfb71eef753ec2f914e466d7.jpg','2019-11-15 08:41:52','2019-11-15 08:41:52'),(70,84,'filePath','designs_previews/November2019//d9646b78f5179d7095afc99552a2a738.jpg','2019-11-15 08:42:30','2019-11-15 08:42:30'),(71,86,'filePath','designs/November2019//b00abfea90823219bddda89935cae204.jpg','2019-11-15 09:52:58','2019-11-15 09:52:58'),(72,87,'filePath','designs_previews/November2019//2abba08e1e64bea6147dd5d96cf006f0.jpg','2019-11-15 10:20:38','2019-11-15 10:20:38'),(73,88,'filePath','designs_previews/November2019//9808641d418607e0e5fd3b6323bea1fb.jpg','2019-11-15 10:20:38','2019-11-15 10:20:38'),(74,90,'id','1','2019-11-15 10:57:15','2019-11-15 10:57:15'),(75,91,'filePath','designs_previews/November2019//eb8702eb60c87f2bcfb4cfa11f02a3d7.jpg','2019-11-15 11:02:14','2019-11-15 11:02:14'),(76,92,'filePath','designs_previews/November2019//812c640f2e93229aff0c840d87a1f661.jpg','2019-11-15 11:07:02','2019-11-15 11:07:02'),(77,94,'filePath','designs_previews/November2019//b683f27a98c9371af6b374f94185da99.jpg','2019-11-15 11:19:21','2019-11-15 11:19:21'),(78,95,'filePath','designs_previews/November2019//09c7931783443d81dc6bff672e86f6fa.jpg','2019-11-15 11:20:30','2019-11-15 11:20:30'),(79,96,'filePath','designs_previews/November2019//2d992348fe6fb4efc86ea067bbbca78a.jpg','2019-11-15 11:22:06','2019-11-15 11:22:06'),(80,97,'filePath','designs_previews/November2019//8998f23a3c1c8c3531b72bf803953d95.jpg','2019-11-15 11:34:01','2019-11-15 11:34:01'),(81,100,'id','1','2019-11-15 12:42:39','2019-11-15 12:42:39'),(82,102,'table','shipments','2019-11-18 09:27:57','2019-11-18 09:27:57'),(83,108,'table','shipments','2019-11-18 09:45:57','2019-11-18 09:45:57'),(84,109,'database','addresses','2019-11-18 09:45:58','2019-11-18 09:45:58'),(85,110,'id','7','2019-11-18 09:46:06','2019-11-18 09:46:06'),(86,111,'shipment','1','2019-11-18 09:46:11','2019-11-18 09:46:11'),(87,112,'shipment','1','2019-11-18 09:46:49','2019-11-18 09:46:49'),(88,113,'shipment','2','2019-11-18 10:21:38','2019-11-18 10:21:38'),(89,114,'shipment','2','2019-11-18 10:21:46','2019-11-18 10:21:46'),(90,116,'id','691819ec927fc4b368fc88707d989833','2019-11-18 13:36:59','2019-11-18 13:36:59'),(91,117,'id','fwaf','2019-11-18 13:38:20','2019-11-18 13:38:20'),(92,118,'id','4','2019-11-18 13:49:36','2019-11-18 13:49:36'),(93,118,'storage','db','2019-11-18 13:49:36','2019-11-18 13:49:36'),(94,119,'id','5','2019-11-18 13:49:37','2019-11-18 13:49:37'),(95,119,'storage','db','2019-11-18 13:49:37','2019-11-18 13:49:37'),(96,120,'id','6','2019-11-18 13:49:37','2019-11-18 13:49:37'),(97,120,'storage','db','2019-11-18 13:49:37','2019-11-18 13:49:37'),(98,121,'table','payu_payments','2019-11-18 14:23:02','2019-11-18 14:23:02'),(99,123,'table','payu_payments','2019-11-18 14:24:09','2019-11-18 14:24:09'),(100,124,'database','orders','2019-11-18 14:24:29','2019-11-18 14:24:29'),(101,126,'payu_payment','3','2019-11-18 14:24:54','2019-11-18 14:24:54'),(102,127,'payu_payment','3','2019-11-18 14:25:00','2019-11-18 14:25:00'),(103,129,'pattern','2','2019-11-19 06:34:48','2019-11-19 06:34:48'),(104,130,'pattern','2','2019-11-19 06:35:01','2019-11-19 06:35:01'),(105,131,'id','4b0420df566070e3d80ef8fa36a96143','2019-11-19 07:01:31','2019-11-19 07:01:31'),(106,132,'payu_payment','4','2019-11-19 07:02:39','2019-11-19 07:02:39'),(107,133,'payu_payment','4','2019-11-19 07:02:44','2019-11-19 07:02:44'),(108,134,'table','orders','2019-11-19 07:06:03','2019-11-19 07:06:03'),(109,137,'table','orders','2019-11-19 07:19:10','2019-11-19 07:19:10'),(110,138,'database','users','2019-11-19 07:19:22','2019-11-19 07:19:22'),(111,139,'database','shipments','2019-11-19 07:20:24','2019-11-19 07:20:24'),(112,141,'id','10','2019-11-19 07:21:40','2019-11-19 07:21:40'),(113,146,'id','3','2019-11-25 07:37:17','2019-11-25 07:37:17'),(114,147,'id','2','2019-11-25 07:37:18','2019-11-25 07:37:18'),(115,148,'id','1','2019-11-25 07:40:34','2019-11-25 07:40:34'),(116,151,'table','attributes','2019-11-25 09:15:28','2019-11-25 09:15:28'),(117,155,'table','attributes','2019-11-25 09:21:30','2019-11-25 09:21:30'),(118,156,'id','11','2019-11-25 09:22:48','2019-11-25 09:22:48'),(119,157,'attribute','2','2019-11-25 09:23:53','2019-11-25 09:23:53'),(120,158,'attribute','2','2019-11-25 09:24:02','2019-11-25 09:24:02'),(121,159,'attribute','1','2019-11-25 09:24:14','2019-11-25 09:24:14'),(122,160,'attribute','1','2019-11-25 09:24:21','2019-11-25 09:24:21'),(123,161,'product','3','2019-11-25 09:31:15','2019-11-25 09:31:15'),(124,162,'product','3','2019-11-25 09:46:17','2019-11-25 09:46:17'),(125,163,'product','4','2019-11-25 11:40:30','2019-11-25 11:40:30'),(126,164,'id','22','2019-11-25 14:29:45','2019-11-25 14:29:45'),(127,164,'storage','db','2019-11-25 14:29:45','2019-11-25 14:29:45'),(128,165,'id','23','2019-11-25 14:29:46','2019-11-25 14:29:46'),(129,165,'storage','db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(130,166,'id','24','2019-11-25 14:29:46','2019-11-25 14:29:46'),(131,166,'storage','db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(132,167,'id','25','2019-11-25 14:29:46','2019-11-25 14:29:46'),(133,167,'storage','db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(134,168,'id','26','2019-11-25 14:29:46','2019-11-25 14:29:46'),(135,168,'storage','db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(136,169,'id','28','2019-11-25 14:29:46','2019-11-25 14:29:46'),(137,169,'storage','db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(138,170,'id','29','2019-11-25 14:29:47','2019-11-25 14:29:47'),(139,170,'storage','db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(140,171,'id','30','2019-11-25 14:29:47','2019-11-25 14:29:47'),(141,171,'storage','db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(142,172,'id','31','2019-11-25 14:29:47','2019-11-25 14:29:47'),(143,172,'storage','db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(144,173,'id','32','2019-11-25 14:29:47','2019-11-25 14:29:47'),(145,173,'storage','db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(146,174,'id','33','2019-11-25 14:29:47','2019-11-25 14:29:47'),(147,174,'storage','db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(148,175,'id','34','2019-11-25 14:29:47','2019-11-25 14:29:47'),(149,175,'storage','db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(150,176,'id','35','2019-11-25 14:29:47','2019-11-25 14:29:47'),(151,176,'storage','db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(152,177,'id','36','2019-11-25 14:29:48','2019-11-25 14:29:48'),(153,177,'storage','db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(154,178,'id','37','2019-11-25 14:29:48','2019-11-25 14:29:48'),(155,178,'storage','db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(156,179,'id','38','2019-11-25 14:29:48','2019-11-25 14:29:48'),(157,179,'storage','db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(158,180,'id','39','2019-11-25 14:29:48','2019-11-25 14:29:48'),(159,180,'storage','db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(160,181,'id','40','2019-11-25 14:29:48','2019-11-25 14:29:48'),(161,181,'storage','db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(162,182,'id','3','2019-11-25 14:29:49','2019-11-25 14:29:49'),(163,182,'storage','db','2019-11-25 14:29:49','2019-11-25 14:29:49'),(164,183,'id','4','2019-11-26 14:31:34','2019-11-26 14:31:34'),(165,184,'id','4','2019-11-26 14:31:49','2019-11-26 14:31:49'),(166,185,'id','1','2019-11-28 10:36:41','2019-11-28 10:36:41'),(167,185,'slug','nazwa-produktu-2','2019-11-28 10:36:41','2019-11-28 10:36:41'),(168,186,'produkty','nazwa-produktu-2','2019-11-28 10:37:54','2019-11-28 10:37:54'),(169,187,'produkty','czapka-czerwona','2019-11-28 10:48:59','2019-11-28 10:48:59'),(170,188,'table','categories','2019-11-28 11:09:01','2019-11-28 11:09:01'),(171,189,'table','categories','2019-11-28 11:10:55','2019-11-28 11:10:55'),(172,190,'database','categories','2019-11-28 11:11:03','2019-11-28 11:11:03'),(173,191,'id','12','2019-11-28 11:11:28','2019-11-28 11:11:28'),(174,196,'table','products','2019-11-28 11:20:58','2019-11-28 11:20:58'),(175,197,'id','4','2019-11-28 11:23:23','2019-11-28 11:23:23'),(176,199,'product','4','2019-11-28 11:23:53','2019-11-28 11:23:53'),(177,200,'product','2','2019-11-28 11:24:28','2019-11-28 11:24:28'),(178,201,'product','2','2019-11-28 11:24:34','2019-11-28 11:24:34'),(179,202,'product','1','2019-11-28 11:24:38','2019-11-28 11:24:38'),(180,203,'product','1','2019-11-28 11:24:45','2019-11-28 11:24:45'),(181,204,'produkty','lol','2019-11-28 13:42:57','2019-11-28 13:42:57'),(182,205,'produkty','czapka-z-daszkiem-2','2019-11-28 13:46:09','2019-11-28 13:46:09'),(183,208,'id','96c1fee999dbf69fe3da1e8dcefc750c','2019-11-29 07:25:02','2019-11-29 07:25:02'),(184,209,'id','65b593ca0ae4e17c4e5e5b606154d719','2019-11-29 07:26:38','2019-11-29 07:26:38'),(185,211,'id','c6b1af245e74a30ae4ad08194aa0fb91','2019-11-29 07:55:41','2019-11-29 07:55:41'),(186,212,'id','2','2019-11-29 08:16:23','2019-11-29 08:16:23'),(187,212,'storage','session','2019-11-29 08:16:23','2019-11-29 08:16:23'),(188,213,'id','3','2019-11-29 09:23:19','2019-11-29 09:23:19'),(189,219,'menu','2','2019-12-04 15:14:19','2019-12-04 15:14:19'),(190,220,'menu','2','2019-12-04 15:14:34','2019-12-04 15:14:34'),(191,222,'id','8ced6208077d7a2f112b6cda62982819','2019-12-04 16:29:52','2019-12-04 16:29:52'),(192,223,'table','pos','2019-12-05 13:37:09','2019-12-05 13:37:09'),(193,226,'table','pos','2019-12-05 13:40:23','2019-12-05 13:40:23'),(194,227,'id','14','2019-12-05 13:40:30','2019-12-05 13:40:30'),(195,229,'po','1','2019-12-05 13:41:41','2019-12-05 13:41:41'),(196,230,'po','1','2019-12-05 13:41:45','2019-12-05 13:41:45'),(197,236,'produkty','czapka-czerwona','2019-12-06 07:50:41','2019-12-06 07:50:41'),(198,239,'menu','2','2019-12-06 08:41:51','2019-12-06 08:41:51'),(199,245,'attribute','3','2019-12-06 10:33:21','2019-12-06 10:33:21'),(200,246,'produkty','czapka-z-daszkiem-2','2019-12-06 11:26:20','2019-12-06 11:26:20'),(201,247,'produkty','nazwa-produktu-2','2019-12-06 11:37:20','2019-12-06 11:37:20'),(202,248,'produkty','lol','2019-12-06 11:42:47','2019-12-06 11:42:47');
/*!40000 ALTER TABLE `tracker_route_path_parameters` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_route_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_route_paths` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `route_id` bigint(20) unsigned NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_route_paths_created_at_index` (`created_at`),
  KEY `tracker_route_paths_updated_at_index` (`updated_at`),
  KEY `tracker_route_paths_route_id_index` (`route_id`),
  KEY `tracker_route_paths_path_index` (`path`),
  CONSTRAINT `tracker_route_paths_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `tracker_routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_route_paths` WRITE;
/*!40000 ALTER TABLE `tracker_route_paths` DISABLE KEYS */;
INSERT INTO `tracker_route_paths` VALUES (1,1,'/','2019-11-14 09:01:21','2019-11-14 09:01:21'),(2,2,'patterns','2019-11-14 09:01:22','2019-11-14 09:01:22'),(3,3,'fonts','2019-11-14 09:01:22','2019-11-14 09:01:22'),(4,4,'admin','2019-11-14 09:02:42','2019-11-14 09:02:42'),(5,5,'admin/voyager-assets','2019-11-14 09:02:43','2019-11-14 09:02:43'),(6,6,'products/2','2019-11-14 09:07:20','2019-11-14 09:07:20'),(7,6,'products/1','2019-11-14 09:07:22','2019-11-14 09:07:22'),(8,6,'products/2132','2019-11-14 09:07:32','2019-11-14 09:07:32'),(9,7,'_ignition/health-check','2019-11-14 09:07:32','2019-11-14 09:07:32'),(10,6,'products/213','2019-11-14 09:08:04','2019-11-14 09:08:04'),(11,6,'products/23131','2019-11-14 09:08:39','2019-11-14 09:08:39'),(12,6,'products/32131','2019-11-14 09:09:58','2019-11-14 09:09:58'),(13,8,'upload/designs','2019-11-14 10:44:51','2019-11-14 10:44:51'),(14,9,'saveProject','2019-11-14 10:44:51','2019-11-14 10:44:51'),(15,10,'designs','2019-11-14 10:44:55','2019-11-14 10:44:55'),(16,11,'admin/products','2019-11-14 11:00:43','2019-11-14 11:00:43'),(17,12,'admin/logout','2019-11-14 12:04:09','2019-11-14 12:04:09'),(18,13,'admin/login','2019-11-14 12:04:09','2019-11-14 12:04:09'),(19,14,'designs/1/db','2019-11-14 12:09:53','2019-11-14 12:09:53'),(20,14,'designs/1/session','2019-11-14 12:14:20','2019-11-14 12:14:20'),(21,15,'admin/login','2019-11-14 12:16:21','2019-11-14 12:16:21'),(22,14,'designs/2/db','2019-11-14 12:28:41','2019-11-14 12:28:41'),(23,16,'storage/faw','2019-11-14 12:54:02','2019-11-14 12:54:02'),(24,16,'storage/faw.jpg','2019-11-14 12:54:06','2019-11-14 12:54:06'),(25,16,'storage/designs/November2019//2207b6dd7d972775b210c03ab9bd3d91','2019-11-14 12:54:43','2019-11-14 12:54:43'),(26,16,'storage/fawf','2019-11-14 12:55:44','2019-11-14 12:55:44'),(27,16,'storage/fonts/BebasNeue-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(28,16,'storage/fonts/McLaren-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(29,16,'storage/fonts/YeonSung-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(30,16,'storage/fonts/Aladin-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(31,16,'storage/fonts/BerkshireSwash-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(32,16,'storage/fonts/Courgette-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(33,16,'storage/fonts/MeriendaOne-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(34,16,'storage/fonts/Parisienne-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(35,16,'storage/fonts/PermanentMarker-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(36,16,'storage/fonts/Sriracha-Regular.ttf','2019-11-14 12:57:30','2019-11-14 12:57:30'),(37,16,'storage/products/November2019/u74qNfIGnlautUVLWcrG.jpg','2019-11-14 12:57:31','2019-11-14 12:57:31'),(38,16,'storage/logo.png','2019-11-14 12:57:31','2019-11-14 12:57:31'),(39,16,'storage/patterns/icon%20(1).png','2019-11-14 12:57:31','2019-11-14 12:57:31'),(40,16,'storage/designs/November2019//2207b6dd7d972775b210c03ab9bd3d91.jpg','2019-11-14 12:57:34','2019-11-14 12:57:34'),(41,17,'storage/designs/November2019//2207b6dd7d972775b210c03ab9bd3d91.jpg','2019-11-14 12:59:02','2019-11-14 12:59:02'),(42,17,'storage/designs/November2019//2207b6dd7d972775b210c03ab9bd3d91','2019-11-14 13:00:42','2019-11-14 13:00:42'),(43,17,'storage/fawf','2019-11-14 13:12:03','2019-11-14 13:12:03'),(44,17,'storage/fawfafa','2019-11-14 13:13:06','2019-11-14 13:13:06'),(45,17,'storage/fonts/BebasNeue-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(46,17,'storage/fonts/McLaren-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(47,17,'storage/fonts/YeonSung-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(48,17,'storage/fonts/Aladin-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(49,17,'storage/fonts/BerkshireSwash-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(50,17,'storage/fonts/Courgette-Regular.ttf','2019-11-14 13:13:19','2019-11-14 13:13:19'),(51,17,'storage/fonts/MeriendaOne-Regular.ttf','2019-11-14 13:13:20','2019-11-14 13:13:20'),(52,17,'storage/fonts/Parisienne-Regular.ttf','2019-11-14 13:13:20','2019-11-14 13:13:20'),(53,17,'storage/fonts/PermanentMarker-Regular.ttf','2019-11-14 13:13:20','2019-11-14 13:13:20'),(54,17,'storage/fonts/Sriracha-Regular.ttf','2019-11-14 13:13:20','2019-11-14 13:13:20'),(55,17,'storage/products/November2019/u74qNfIGnlautUVLWcrG.jpg','2019-11-14 13:13:20','2019-11-14 13:13:20'),(56,17,'storage/logo.png','2019-11-14 13:13:20','2019-11-14 13:13:20'),(57,17,'storage/patterns/icon%20(1).png','2019-11-14 13:13:20','2019-11-14 13:13:20'),(58,17,'storage/designs/November2019//2207b6dd7d972775b210c03ab9bd3d91.jpgwidth=3000','2019-11-14 13:18:54','2019-11-14 13:18:54'),(59,17,'storage/logo.png&','2019-11-14 13:19:17','2019-11-14 13:19:17'),(60,17,'storage/patterns/icon%20(1).png&','2019-11-14 13:19:17','2019-11-14 13:19:17'),(61,17,'storage/designs/November2019//2207b6dd7d972775b210c03ab9bd3d91.jpg&width=3000','2019-11-14 13:19:25','2019-11-14 13:19:25'),(62,17,'storage/users/default.png','2019-11-14 13:30:48','2019-11-14 13:30:48'),(63,17,'storage/products/November2019/SEfq6L24RuajZsqDmJKi.png','2019-11-14 13:30:50','2019-11-14 13:30:50'),(64,18,'admin/products/create','2019-11-14 13:30:51','2019-11-14 13:30:51'),(65,19,'admin/media/files','2019-11-14 13:30:52','2019-11-14 13:30:52'),(66,20,'admin/products/undefined','2019-11-14 13:32:39','2019-11-14 13:32:39'),(67,17,'storage/products/November2019/Ef3u2NxgKkQeikUzrVp4.png','2019-11-14 13:38:33','2019-11-14 13:38:33'),(68,17,'storage/products/November2019/iHZlIHeM49NY3ntCKKGf.png','2019-11-14 13:38:33','2019-11-14 13:38:33'),(69,17,'storage/products/November2019/l6WGet2wi2fF8GKs8yJn.jpg','2019-11-14 13:38:33','2019-11-14 13:38:33'),(70,17,'storage/products/November2019/zE2QLROvO9zhmB31oBBz.png','2019-11-14 13:38:33','2019-11-14 13:38:33'),(71,21,'admin/media/upload','2019-11-14 13:39:19','2019-11-14 13:39:19'),(72,17,'storage/products/November2019/czapka%20z%20daszkiem%202.jpg','2019-11-14 13:39:19','2019-11-14 13:39:19'),(73,22,'admin/products','2019-11-14 13:40:15','2019-11-14 13:40:15'),(74,17,'storage/products/November2019/VJkKQM8ZekyfGzcwcwGo.jpg','2019-11-14 13:40:16','2019-11-14 13:40:16'),(75,20,'admin/products/3','2019-11-14 13:44:15','2019-11-14 13:44:15'),(76,23,'admin/products/3/settings','2019-11-14 13:47:43','2019-11-14 13:47:43'),(77,24,'products/3/bounds','2019-11-14 13:51:13','2019-11-14 13:51:13'),(78,23,'admin/products/2/settings','2019-11-14 13:53:37','2019-11-14 13:53:37'),(79,24,'products/2/bounds','2019-11-14 13:53:40','2019-11-14 13:53:40'),(80,25,'cart/add','2019-11-15 08:32:58','2019-11-15 08:32:58'),(81,8,'upload/designs_previews','2019-11-15 08:37:51','2019-11-15 08:37:51'),(82,17,'storage/designs_previews/November2019//2ad7f98dcfb71eef753ec2f914e466d7','2019-11-15 08:40:21','2019-11-15 08:40:21'),(83,17,'storage/designs_previews/November2019//2ad7f98dcfb71eef753ec2f914e466d7.jpg','2019-11-15 08:41:52','2019-11-15 08:41:52'),(84,17,'storage/designs_previews/November2019//d9646b78f5179d7095afc99552a2a738.jpg','2019-11-15 08:42:30','2019-11-15 08:42:30'),(85,26,'cart','2019-11-15 09:23:21','2019-11-15 09:23:21'),(86,17,'storage/designs/November2019//b00abfea90823219bddda89935cae204.jpg','2019-11-15 09:52:58','2019-11-15 09:52:58'),(87,17,'storage/designs_previews/November2019//2abba08e1e64bea6147dd5d96cf006f0.jpg','2019-11-15 10:20:38','2019-11-15 10:20:38'),(88,17,'storage/designs_previews/November2019//9808641d418607e0e5fd3b6323bea1fb.jpg','2019-11-15 10:20:38','2019-11-15 10:20:38'),(89,27,'cart/0','2019-11-15 10:54:12','2019-11-15 10:54:12'),(90,27,'cart/1','2019-11-15 10:57:15','2019-11-15 10:57:15'),(91,17,'storage/designs_previews/November2019//eb8702eb60c87f2bcfb4cfa11f02a3d7.jpg','2019-11-15 11:02:14','2019-11-15 11:02:14'),(92,17,'storage/designs_previews/November2019//812c640f2e93229aff0c840d87a1f661.jpg','2019-11-15 11:07:02','2019-11-15 11:07:02'),(93,28,'cart/0','2019-11-15 11:16:37','2019-11-15 11:16:37'),(94,17,'storage/designs_previews/November2019//b683f27a98c9371af6b374f94185da99.jpg','2019-11-15 11:19:21','2019-11-15 11:19:21'),(95,17,'storage/designs_previews/November2019//09c7931783443d81dc6bff672e86f6fa.jpg','2019-11-15 11:20:30','2019-11-15 11:20:30'),(96,17,'storage/designs_previews/November2019//2d992348fe6fb4efc86ea067bbbca78a.jpg','2019-11-15 11:22:06','2019-11-15 11:22:06'),(97,17,'storage/designs_previews/November2019//8998f23a3c1c8c3531b72bf803953d95.jpg','2019-11-15 11:34:01','2019-11-15 11:34:01'),(98,29,'zamawiam','2019-11-15 11:48:56','2019-11-15 11:48:56'),(99,30,'order/notify','2019-11-15 12:32:51','2019-11-15 12:32:51'),(100,31,'orders/1','2019-11-15 12:42:39','2019-11-15 12:42:39'),(101,32,'admin/bread','2019-11-18 09:27:30','2019-11-18 09:27:30'),(102,33,'admin/bread/shipments/create','2019-11-18 09:27:57','2019-11-18 09:27:57'),(103,34,'admin/bread','2019-11-18 09:28:56','2019-11-18 09:28:56'),(104,35,'admin/shipments','2019-11-18 09:28:58','2019-11-18 09:28:58'),(105,36,'admin/shipments/create','2019-11-18 09:29:00','2019-11-18 09:29:00'),(106,37,'admin/shipments','2019-11-18 09:29:13','2019-11-18 09:29:13'),(107,38,'shipments','2019-11-18 09:37:31','2019-11-18 09:37:31'),(108,39,'admin/bread/shipments/edit','2019-11-18 09:45:57','2019-11-18 09:45:57'),(109,40,'admin/database/addresses','2019-11-18 09:45:58','2019-11-18 09:45:58'),(110,41,'admin/bread/7','2019-11-18 09:46:06','2019-11-18 09:46:06'),(111,42,'admin/shipments/1/edit','2019-11-18 09:46:11','2019-11-18 09:46:11'),(112,43,'admin/shipments/1','2019-11-18 09:46:49','2019-11-18 09:46:49'),(113,42,'admin/shipments/2/edit','2019-11-18 10:21:38','2019-11-18 10:21:38'),(114,43,'admin/shipments/2','2019-11-18 10:21:46','2019-11-18 10:21:46'),(115,44,'orders','2019-11-18 11:48:40','2019-11-18 11:48:40'),(116,31,'orders/691819ec927fc4b368fc88707d989833','2019-11-18 13:36:59','2019-11-18 13:36:59'),(117,31,'orders/fwaf','2019-11-18 13:38:20','2019-11-18 13:38:20'),(118,14,'designs/4/db','2019-11-18 13:49:36','2019-11-18 13:49:36'),(119,14,'designs/5/db','2019-11-18 13:49:37','2019-11-18 13:49:37'),(120,14,'designs/6/db','2019-11-18 13:49:37','2019-11-18 13:49:37'),(121,33,'admin/bread/payu_payments/create','2019-11-18 14:23:02','2019-11-18 14:23:02'),(122,45,'admin/payu-payments','2019-11-18 14:23:56','2019-11-18 14:23:56'),(123,39,'admin/bread/payu_payments/edit','2019-11-18 14:24:09','2019-11-18 14:24:09'),(124,40,'admin/database/orders','2019-11-18 14:24:29','2019-11-18 14:24:29'),(125,46,'admin/bread/relationship','2019-11-18 14:24:44','2019-11-18 14:24:44'),(126,47,'admin/payu-payments/3/edit','2019-11-18 14:24:54','2019-11-18 14:24:54'),(127,48,'admin/payu-payments/3','2019-11-18 14:25:00','2019-11-18 14:25:00'),(128,49,'admin/patterns','2019-11-19 06:34:42','2019-11-19 06:34:42'),(129,50,'admin/patterns/2/edit','2019-11-19 06:34:48','2019-11-19 06:34:48'),(130,51,'admin/patterns/2','2019-11-19 06:35:01','2019-11-19 06:35:01'),(131,31,'orders/4b0420df566070e3d80ef8fa36a96143','2019-11-19 07:01:31','2019-11-19 07:01:31'),(132,47,'admin/payu-payments/4/edit','2019-11-19 07:02:39','2019-11-19 07:02:39'),(133,48,'admin/payu-payments/4','2019-11-19 07:02:44','2019-11-19 07:02:44'),(134,33,'admin/bread/orders/create','2019-11-19 07:06:03','2019-11-19 07:06:03'),(135,52,'admin/orders','2019-11-19 07:18:55','2019-11-19 07:18:55'),(136,53,'admin/orders/create','2019-11-19 07:18:57','2019-11-19 07:18:57'),(137,39,'admin/bread/orders/edit','2019-11-19 07:19:10','2019-11-19 07:19:10'),(138,40,'admin/database/users','2019-11-19 07:19:22','2019-11-19 07:19:22'),(139,40,'admin/database/shipments','2019-11-19 07:20:24','2019-11-19 07:20:24'),(140,54,'admin/orders/relation','2019-11-19 07:20:42','2019-11-19 07:20:42'),(141,41,'admin/bread/10','2019-11-19 07:21:40','2019-11-19 07:21:40'),(142,55,'admin/settings','2019-11-25 07:09:17','2019-11-25 07:09:17'),(143,56,'admin/settings','2019-11-25 07:10:39','2019-11-25 07:10:39'),(144,57,'admin/settings','2019-11-25 07:12:03','2019-11-25 07:12:03'),(145,58,'settings','2019-11-25 07:14:48','2019-11-25 07:14:48'),(146,28,'cart/3','2019-11-25 07:37:17','2019-11-25 07:37:17'),(147,28,'cart/2','2019-11-25 07:37:18','2019-11-25 07:37:18'),(148,28,'cart/1','2019-11-25 07:40:34','2019-11-25 07:40:34'),(149,59,'products','2019-11-25 07:56:49','2019-11-25 07:56:49'),(150,60,'produkty','2019-11-25 08:42:09','2019-11-25 08:42:09'),(151,33,'admin/bread/attributes/create','2019-11-25 09:15:28','2019-11-25 09:15:28'),(152,61,'admin/attributes','2019-11-25 09:15:41','2019-11-25 09:15:41'),(153,62,'admin/attributes/create','2019-11-25 09:15:43','2019-11-25 09:15:43'),(154,63,'admin/attributes','2019-11-25 09:15:49','2019-11-25 09:15:49'),(155,39,'admin/bread/attributes/edit','2019-11-25 09:21:30','2019-11-25 09:21:30'),(156,41,'admin/bread/11','2019-11-25 09:22:48','2019-11-25 09:22:48'),(157,64,'admin/attributes/2/edit','2019-11-25 09:23:53','2019-11-25 09:23:53'),(158,65,'admin/attributes/2','2019-11-25 09:24:02','2019-11-25 09:24:02'),(159,64,'admin/attributes/1/edit','2019-11-25 09:24:14','2019-11-25 09:24:14'),(160,65,'admin/attributes/1','2019-11-25 09:24:21','2019-11-25 09:24:21'),(161,66,'admin/products/3/edit','2019-11-25 09:31:15','2019-11-25 09:31:15'),(162,67,'admin/products/3','2019-11-25 09:46:17','2019-11-25 09:46:17'),(163,66,'admin/products/4/edit','2019-11-25 11:40:30','2019-11-25 11:40:30'),(164,14,'designs/22/db','2019-11-25 14:29:45','2019-11-25 14:29:45'),(165,14,'designs/23/db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(166,14,'designs/24/db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(167,14,'designs/25/db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(168,14,'designs/26/db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(169,14,'designs/28/db','2019-11-25 14:29:46','2019-11-25 14:29:46'),(170,14,'designs/29/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(171,14,'designs/30/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(172,14,'designs/31/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(173,14,'designs/32/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(174,14,'designs/33/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(175,14,'designs/34/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(176,14,'designs/35/db','2019-11-25 14:29:47','2019-11-25 14:29:47'),(177,14,'designs/36/db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(178,14,'designs/37/db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(179,14,'designs/38/db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(180,14,'designs/39/db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(181,14,'designs/40/db','2019-11-25 14:29:48','2019-11-25 14:29:48'),(182,14,'designs/3/db','2019-11-25 14:29:49','2019-11-25 14:29:49'),(183,23,'admin/products/4/settings','2019-11-26 14:31:34','2019-11-26 14:31:34'),(184,24,'products/4/bounds','2019-11-26 14:31:49','2019-11-26 14:31:49'),(185,68,'produkty/1/nazwa-produktu-2','2019-11-28 10:36:41','2019-11-28 10:36:41'),(186,69,'produkty/nazwa-produktu-2','2019-11-28 10:37:54','2019-11-28 10:37:54'),(187,69,'produkty/czapka-czerwona','2019-11-28 10:48:59','2019-11-28 10:48:59'),(188,33,'admin/bread/categories/create','2019-11-28 11:09:01','2019-11-28 11:09:01'),(189,39,'admin/bread/categories/edit','2019-11-28 11:10:55','2019-11-28 11:10:55'),(190,40,'admin/database/categories','2019-11-28 11:11:03','2019-11-28 11:11:03'),(191,41,'admin/bread/12','2019-11-28 11:11:28','2019-11-28 11:11:28'),(192,70,'admin/categories','2019-11-28 11:11:32','2019-11-28 11:11:32'),(193,71,'admin/categories/create','2019-11-28 11:11:33','2019-11-28 11:11:33'),(194,72,'admin/media/delete_file_folder','2019-11-28 11:18:10','2019-11-28 11:18:10'),(195,73,'admin/categories','2019-11-28 11:18:55','2019-11-28 11:18:55'),(196,39,'admin/bread/products/edit','2019-11-28 11:20:58','2019-11-28 11:20:58'),(197,41,'admin/bread/4','2019-11-28 11:23:23','2019-11-28 11:23:23'),(198,74,'admin/products/relation','2019-11-28 11:23:50','2019-11-28 11:23:50'),(199,67,'admin/products/4','2019-11-28 11:23:53','2019-11-28 11:23:53'),(200,66,'admin/products/2/edit','2019-11-28 11:24:28','2019-11-28 11:24:28'),(201,67,'admin/products/2','2019-11-28 11:24:34','2019-11-28 11:24:34'),(202,66,'admin/products/1/edit','2019-11-28 11:24:38','2019-11-28 11:24:38'),(203,67,'admin/products/1','2019-11-28 11:24:45','2019-11-28 11:24:45'),(204,69,'produkty/lol','2019-11-28 13:42:57','2019-11-28 13:42:57'),(205,69,'produkty/czapka-z-daszkiem-2','2019-11-28 13:46:09','2019-11-28 13:46:09'),(206,75,'fonts','2019-11-29 06:51:53','2019-11-29 06:51:53'),(207,76,'fontss','2019-11-29 06:54:03','2019-11-29 06:54:03'),(208,31,'orders/96c1fee999dbf69fe3da1e8dcefc750c','2019-11-29 07:25:02','2019-11-29 07:25:02'),(209,31,'orders/65b593ca0ae4e17c4e5e5b606154d719','2019-11-29 07:26:38','2019-11-29 07:26:38'),(210,77,'kreator','2019-11-29 07:34:20','2019-11-29 07:34:20'),(211,31,'orders/c6b1af245e74a30ae4ad08194aa0fb91','2019-11-29 07:55:41','2019-11-29 07:55:41'),(212,14,'designs/2/session','2019-11-29 08:16:23','2019-11-29 08:16:23'),(213,78,'admin/settings/3/delete_value','2019-11-29 09:23:19','2019-11-29 09:23:19'),(214,79,'kontakt','2019-12-03 12:53:11','2019-12-03 12:53:11'),(215,80,'kontakt/wyslij','2019-12-03 14:04:44','2019-12-03 14:04:44'),(216,81,'admin/menus','2019-12-04 15:14:11','2019-12-04 15:14:11'),(217,82,'admin/menus/create','2019-12-04 15:14:13','2019-12-04 15:14:13'),(218,83,'admin/menus','2019-12-04 15:14:17','2019-12-04 15:14:17'),(219,84,'admin/menus/2/builder','2019-12-04 15:14:19','2019-12-04 15:14:19'),(220,85,'admin/menus/2/item','2019-12-04 15:14:34','2019-12-04 15:14:34'),(221,86,'newsletter','2019-12-04 16:02:46','2019-12-04 16:02:46'),(222,31,'orders/8ced6208077d7a2f112b6cda62982819','2019-12-04 16:29:52','2019-12-04 16:29:52'),(223,33,'admin/bread/pos/create','2019-12-05 13:37:09','2019-12-05 13:37:09'),(224,87,'admin/pos','2019-12-05 13:40:01','2019-12-05 13:40:01'),(225,88,'admin/pos/create','2019-12-05 13:40:02','2019-12-05 13:40:02'),(226,39,'admin/bread/pos/edit','2019-12-05 13:40:23','2019-12-05 13:40:23'),(227,41,'admin/bread/14','2019-12-05 13:40:30','2019-12-05 13:40:30'),(228,89,'admin/pos','2019-12-05 13:41:37','2019-12-05 13:41:37'),(229,90,'admin/pos/1/edit','2019-12-05 13:41:41','2019-12-05 13:41:41'),(230,91,'admin/pos/1','2019-12-05 13:41:45','2019-12-05 13:41:45'),(231,92,'en','2019-12-05 14:21:13','2019-12-05 14:21:13'),(232,93,'de','2019-12-05 14:21:16','2019-12-05 14:21:16'),(233,94,'en/settings','2019-12-06 07:27:31','2019-12-06 07:27:31'),(234,95,'en/cart','2019-12-06 07:27:32','2019-12-06 07:27:32'),(235,60,'en/produkty','2019-12-06 07:46:28','2019-12-06 07:46:28'),(236,69,'en/produkty/czapka-czerwona','2019-12-06 07:50:41','2019-12-06 07:50:41'),(237,96,'de/settings','2019-12-06 08:07:49','2019-12-06 08:07:49'),(238,97,'en/kontakt','2019-12-06 08:23:34','2019-12-06 08:23:34'),(239,98,'admin/menus/2/item','2019-12-06 08:41:51','2019-12-06 08:41:51'),(240,99,'en/kreator','2019-12-06 08:55:53','2019-12-06 08:55:53'),(241,60,'de/produkty','2019-12-06 08:56:42','2019-12-06 08:56:42'),(242,100,'de/kreator','2019-12-06 09:00:18','2019-12-06 09:00:18'),(243,100,'en/kreator','2019-12-06 09:00:37','2019-12-06 09:00:37'),(244,100,'kreator','2019-12-06 09:01:43','2019-12-06 09:01:43'),(245,64,'admin/attributes/3/edit','2019-12-06 10:33:21','2019-12-06 10:33:21'),(246,69,'de/produkty/czapka-z-daszkiem-2','2019-12-06 11:26:20','2019-12-06 11:26:20'),(247,69,'de/produkty/nazwa-produktu-2','2019-12-06 11:37:20','2019-12-06 11:37:20'),(248,69,'de/produkty/lol','2019-12-06 11:42:47','2019-12-06 11:42:47');
/*!40000 ALTER TABLE `tracker_route_paths` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_routes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_routes_created_at_index` (`created_at`),
  KEY `tracker_routes_updated_at_index` (`updated_at`),
  KEY `tracker_routes_name_index` (`name`),
  KEY `tracker_routes_action_index` (`action`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_routes` WRITE;
/*!40000 ALTER TABLE `tracker_routes` DISABLE KEYS */;
INSERT INTO `tracker_routes` VALUES (1,'//','App\\Http\\Controllers\\HomeController@index','2019-11-14 09:01:21','2019-11-14 09:01:21'),(2,'patterns.index','App\\Http\\Controllers\\PatternController@index','2019-11-14 09:01:22','2019-11-14 09:01:22'),(3,'fonts.index','App\\Http\\Controllers\\FontsController@index','2019-11-14 09:01:22','2019-11-14 09:01:22'),(4,'voyager.dashboard','\\App\\Http\\Controllers\\Voyager\\VoyagerController@index','2019-11-14 09:02:42','2019-11-14 09:02:42'),(5,'voyager.voyager_assets','\\App\\Http\\Controllers\\Voyager\\VoyagerController@assets','2019-11-14 09:02:43','2019-11-14 09:02:43'),(6,'products.show','App\\Http\\Controllers\\ProductController@show','2019-11-14 09:07:20','2019-11-14 09:07:20'),(7,'/_ignition/health-check','Facade\\Ignition\\Http\\Controllers\\HealthCheckController','2019-11-14 09:07:32','2019-11-14 09:07:32'),(8,'/upload/{path}','App\\Http\\Controllers\\UploadController@upload','2019-11-14 10:44:51','2019-11-14 10:44:51'),(9,'/saveProject','App\\Http\\Controllers\\DesignController@save','2019-11-14 10:44:51','2019-11-14 10:44:51'),(10,'designs.index','App\\Http\\Controllers\\DesignController@index','2019-11-14 10:44:55','2019-11-14 10:44:55'),(11,'voyager.products.index','\\App\\Http\\Controllers\\Voyager\\ProductController@index','2019-11-14 11:00:43','2019-11-14 11:00:43'),(12,'voyager.logout','\\App\\Http\\Controllers\\Voyager\\VoyagerController@logout','2019-11-14 12:04:09','2019-11-14 12:04:09'),(13,'voyager.login','\\App\\Http\\Controllers\\Voyager\\VoyagerAuthController@login','2019-11-14 12:04:09','2019-11-14 12:04:09'),(14,'/designs/{id}/{storage}','App\\Http\\Controllers\\DesignController@destroy','2019-11-14 12:09:53','2019-11-14 12:09:53'),(15,'voyager.postlogin','\\App\\Http\\Controllers\\Voyager\\VoyagerAuthController@postLogin','2019-11-14 12:16:21','2019-11-14 12:16:21'),(16,'/storage/{filePath}','closure','2019-11-14 12:54:02','2019-11-14 12:54:02'),(17,'/storage/{filePath}','App\\Http\\Controllers\\StorageController@index','2019-11-14 12:59:02','2019-11-14 12:59:02'),(18,'voyager.products.create','\\App\\Http\\Controllers\\Voyager\\ProductController@create','2019-11-14 13:30:51','2019-11-14 13:30:51'),(19,'voyager.media.files','\\App\\Http\\Controllers\\Voyager\\VoyagerMediaController@files','2019-11-14 13:30:52','2019-11-14 13:30:52'),(20,'voyager.products.show','\\App\\Http\\Controllers\\Voyager\\ProductController@show','2019-11-14 13:32:39','2019-11-14 13:32:39'),(21,'voyager.media.upload','\\App\\Http\\Controllers\\Voyager\\VoyagerMediaController@upload','2019-11-14 13:39:19','2019-11-14 13:39:19'),(22,'voyager.products.store','\\App\\Http\\Controllers\\Voyager\\ProductController@store','2019-11-14 13:40:15','2019-11-14 13:40:15'),(23,'/admin/products/{id}/settings','App\\Http\\Controllers\\Voyager\\ProductController@settings','2019-11-14 13:47:43','2019-11-14 13:47:43'),(24,'/products/{id}/bounds','App\\Http\\Controllers\\ProductController@bounds','2019-11-14 13:51:13','2019-11-14 13:51:13'),(25,'/cart/add','App\\Http\\Controllers\\CartController@add','2019-11-15 08:32:58','2019-11-15 08:32:58'),(26,'/cart','App\\Http\\Controllers\\CartController@show','2019-11-15 09:23:21','2019-11-15 09:23:21'),(27,'/cart/{id}','App\\Http\\Controllers\\CartController@update','2019-11-15 10:54:12','2019-11-15 10:54:12'),(28,'/cart/{id}','App\\Http\\Controllers\\CartController@destroy','2019-11-15 11:16:37','2019-11-15 11:16:37'),(29,'/zamawiam','App\\Http\\Controllers\\OrderController@index','2019-11-15 11:48:56','2019-11-15 11:48:56'),(30,'/order/notify','App\\Http\\Controllers\\OrderController@notify','2019-11-15 12:32:51','2019-11-15 12:32:51'),(31,'/orders/{id}','App\\Http\\Controllers\\OrderController@show','2019-11-15 12:42:39','2019-11-15 12:42:39'),(32,'voyager.bread.index','\\App\\Http\\Controllers\\Voyager\\VoyagerBreadController@index','2019-11-18 09:27:30','2019-11-18 09:27:30'),(33,'voyager.bread.create','\\App\\Http\\Controllers\\Voyager\\VoyagerBreadController@create','2019-11-18 09:27:57','2019-11-18 09:27:57'),(34,'voyager.bread.store','\\App\\Http\\Controllers\\Voyager\\VoyagerBreadController@store','2019-11-18 09:28:56','2019-11-18 09:28:56'),(35,'voyager.shipments.index','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@index','2019-11-18 09:28:58','2019-11-18 09:28:58'),(36,'voyager.shipments.create','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@create','2019-11-18 09:29:00','2019-11-18 09:29:00'),(37,'voyager.shipments.store','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@store','2019-11-18 09:29:13','2019-11-18 09:29:13'),(38,'shipments.index','App\\Http\\Controllers\\ShipmentController@index','2019-11-18 09:37:31','2019-11-18 09:37:31'),(39,'voyager.bread.edit','\\App\\Http\\Controllers\\Voyager\\VoyagerBreadController@edit','2019-11-18 09:45:57','2019-11-18 09:45:57'),(40,'voyager.database.show','\\App\\Http\\Controllers\\Voyager\\VoyagerDatabaseController@show','2019-11-18 09:45:58','2019-11-18 09:45:58'),(41,'voyager.bread.update','\\App\\Http\\Controllers\\Voyager\\VoyagerBreadController@update','2019-11-18 09:46:06','2019-11-18 09:46:06'),(42,'voyager.shipments.edit','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@edit','2019-11-18 09:46:11','2019-11-18 09:46:11'),(43,'voyager.shipments.update','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@update','2019-11-18 09:46:49','2019-11-18 09:46:49'),(44,'orders.store','App\\Http\\Controllers\\OrderController@store','2019-11-18 11:48:40','2019-11-18 11:48:40'),(45,'voyager.payu-payments.index','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@index','2019-11-18 14:23:56','2019-11-18 14:23:56'),(46,'voyager.bread.relationship','\\App\\Http\\Controllers\\Voyager\\VoyagerBreadController@addRelationship','2019-11-18 14:24:44','2019-11-18 14:24:44'),(47,'voyager.payu-payments.edit','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@edit','2019-11-18 14:24:54','2019-11-18 14:24:54'),(48,'voyager.payu-payments.update','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@update','2019-11-18 14:25:00','2019-11-18 14:25:00'),(49,'voyager.patterns.index','\\App\\Http\\Controllers\\Voyager\\PatternController@index','2019-11-19 06:34:42','2019-11-19 06:34:42'),(50,'voyager.patterns.edit','\\App\\Http\\Controllers\\Voyager\\PatternController@edit','2019-11-19 06:34:48','2019-11-19 06:34:48'),(51,'voyager.patterns.update','\\App\\Http\\Controllers\\Voyager\\PatternController@update','2019-11-19 06:35:01','2019-11-19 06:35:01'),(52,'voyager.orders.index','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@index','2019-11-19 07:18:55','2019-11-19 07:18:55'),(53,'voyager.orders.create','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@create','2019-11-19 07:18:57','2019-11-19 07:18:57'),(54,'voyager.orders.relation','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@relation','2019-11-19 07:20:42','2019-11-19 07:20:42'),(55,'voyager.settings.index','\\App\\Http\\Controllers\\Voyager\\VoyagerSettingsController@index','2019-11-25 07:09:17','2019-11-25 07:09:17'),(56,'voyager.settings.store','\\App\\Http\\Controllers\\Voyager\\VoyagerSettingsController@store','2019-11-25 07:10:39','2019-11-25 07:10:39'),(57,'voyager.settings.update','\\App\\Http\\Controllers\\Voyager\\VoyagerSettingsController@update','2019-11-25 07:12:03','2019-11-25 07:12:03'),(58,'/settings','App\\Http\\Controllers\\HomeController@settings','2019-11-25 07:14:48','2019-11-25 07:14:48'),(59,'products.index','App\\Http\\Controllers\\ProductController@index','2019-11-25 07:56:49','2019-11-25 07:56:49'),(60,'produkty.index','App\\Http\\Controllers\\ProductController@index','2019-11-25 08:42:09','2019-11-25 08:42:09'),(61,'voyager.attributes.index','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@index','2019-11-25 09:15:41','2019-11-25 09:15:41'),(62,'voyager.attributes.create','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@create','2019-11-25 09:15:43','2019-11-25 09:15:43'),(63,'voyager.attributes.store','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@store','2019-11-25 09:15:49','2019-11-25 09:15:49'),(64,'voyager.attributes.edit','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@edit','2019-11-25 09:23:53','2019-11-25 09:23:53'),(65,'voyager.attributes.update','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@update','2019-11-25 09:24:02','2019-11-25 09:24:02'),(66,'voyager.products.edit','\\App\\Http\\Controllers\\Voyager\\ProductController@edit','2019-11-25 09:31:15','2019-11-25 09:31:15'),(67,'voyager.products.update','\\App\\Http\\Controllers\\Voyager\\ProductController@update','2019-11-25 09:46:17','2019-11-25 09:46:17'),(68,'{slug}.index','App\\Http\\Controllers\\ProductController@index','2019-11-28 10:36:41','2019-11-28 10:36:41'),(69,'produkty.show','App\\Http\\Controllers\\ProductController@show','2019-11-28 10:37:54','2019-11-28 10:37:54'),(70,'voyager.categories.index','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@index','2019-11-28 11:11:32','2019-11-28 11:11:32'),(71,'voyager.categories.create','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@create','2019-11-28 11:11:33','2019-11-28 11:11:33'),(72,'voyager.media.delete','\\App\\Http\\Controllers\\Voyager\\VoyagerMediaController@delete','2019-11-28 11:18:10','2019-11-28 11:18:10'),(73,'voyager.categories.store','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@store','2019-11-28 11:18:55','2019-11-28 11:18:55'),(74,'voyager.products.relation','\\App\\Http\\Controllers\\Voyager\\ProductController@relation','2019-11-28 11:23:50','2019-11-28 11:23:50'),(75,'/fonts','closure','2019-11-29 06:51:53','2019-11-29 06:51:53'),(76,'fontss.index','App\\Http\\Controllers\\FontsController@index','2019-11-29 06:54:03','2019-11-29 06:54:03'),(77,'/kreator','App\\Http\\Controllers\\DesignController@showKreator','2019-11-29 07:34:20','2019-11-29 07:34:20'),(78,'voyager.settings.delete_value','\\App\\Http\\Controllers\\Voyager\\VoyagerSettingsController@delete_value','2019-11-29 09:23:19','2019-11-29 09:23:19'),(79,'/kontakt','App\\Http\\Controllers\\HomeController@contact','2019-12-03 12:53:11','2019-12-03 12:53:11'),(80,'/kontakt/wyslij','App\\Http\\Controllers\\HomeController@sendMessage','2019-12-03 14:04:44','2019-12-03 14:04:44'),(81,'voyager.menus.index','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@index','2019-12-04 15:14:11','2019-12-04 15:14:11'),(82,'voyager.menus.create','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@create','2019-12-04 15:14:13','2019-12-04 15:14:13'),(83,'voyager.menus.store','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@store','2019-12-04 15:14:17','2019-12-04 15:14:17'),(84,'voyager.menus.builder','\\App\\Http\\Controllers\\Voyager\\VoyagerMenuController@builder','2019-12-04 15:14:19','2019-12-04 15:14:19'),(85,'voyager.menus.item.add','\\App\\Http\\Controllers\\Voyager\\VoyagerMenuController@add_item','2019-12-04 15:14:34','2019-12-04 15:14:34'),(86,'/newsletter','App\\Http\\Controllers\\HomeController@newsletter','2019-12-04 16:02:46','2019-12-04 16:02:46'),(87,'voyager.pos.index','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@index','2019-12-05 13:40:01','2019-12-05 13:40:01'),(88,'voyager.pos.create','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@create','2019-12-05 13:40:02','2019-12-05 13:40:02'),(89,'voyager.pos.store','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@store','2019-12-05 13:41:37','2019-12-05 13:41:37'),(90,'voyager.pos.edit','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@edit','2019-12-05 13:41:41','2019-12-05 13:41:41'),(91,'voyager.pos.update','\\App\\Http\\Controllers\\Voyager\\VoyagerBaseController@update','2019-12-05 13:41:45','2019-12-05 13:41:45'),(92,'/en','App\\Http\\Controllers\\HomeController@index','2019-12-05 14:21:13','2019-12-05 14:21:13'),(93,'/de','App\\Http\\Controllers\\HomeController@index','2019-12-05 14:21:16','2019-12-05 14:21:16'),(94,'/en/settings','App\\Http\\Controllers\\HomeController@settings','2019-12-06 07:27:31','2019-12-06 07:27:31'),(95,'/en/cart','App\\Http\\Controllers\\CartController@show','2019-12-06 07:27:32','2019-12-06 07:27:32'),(96,'/de/settings','App\\Http\\Controllers\\HomeController@settings','2019-12-06 08:07:49','2019-12-06 08:07:49'),(97,'/en/kontakt','App\\Http\\Controllers\\HomeController@contact','2019-12-06 08:23:34','2019-12-06 08:23:34'),(98,'voyager.menus.item.update','\\App\\Http\\Controllers\\Voyager\\VoyagerMenuController@update_item','2019-12-06 08:41:51','2019-12-06 08:41:51'),(99,'/en/kreator','App\\Http\\Controllers\\DesignController@showKreator','2019-12-06 08:55:53','2019-12-06 08:55:53'),(100,'kreator','App\\Http\\Controllers\\DesignController@showKreator','2019-12-06 09:00:18','2019-12-06 09:00:18');
/*!40000 ALTER TABLE `tracker_routes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `device_id` bigint(20) unsigned DEFAULT NULL,
  `agent_id` bigint(20) unsigned DEFAULT NULL,
  `client_ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer_id` bigint(20) unsigned DEFAULT NULL,
  `cookie_id` bigint(20) unsigned DEFAULT NULL,
  `geoip_id` bigint(20) unsigned DEFAULT NULL,
  `is_robot` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_sessions_uuid_unique` (`uuid`),
  KEY `tracker_sessions_created_at_index` (`created_at`),
  KEY `tracker_sessions_updated_at_index` (`updated_at`),
  KEY `tracker_sessions_user_id_index` (`user_id`),
  KEY `tracker_sessions_device_id_index` (`device_id`),
  KEY `tracker_sessions_agent_id_index` (`agent_id`),
  KEY `tracker_sessions_client_ip_index` (`client_ip`),
  KEY `tracker_sessions_referer_id_index` (`referer_id`),
  KEY `tracker_sessions_cookie_id_index` (`cookie_id`),
  KEY `tracker_sessions_geoip_id_index` (`geoip_id`),
  KEY `tracker_sessions_language_id_index` (`language_id`),
  CONSTRAINT `tracker_sessions_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `tracker_agents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_cookie_id_foreign` FOREIGN KEY (`cookie_id`) REFERENCES `tracker_cookies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `tracker_devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_geoip_id_foreign` FOREIGN KEY (`geoip_id`) REFERENCES `tracker_geoip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `tracker_languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_referer_id_foreign` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_sessions` WRITE;
/*!40000 ALTER TABLE `tracker_sessions` DISABLE KEYS */;
INSERT INTO `tracker_sessions` VALUES (1,'0189e65e-3503-44f8-a93c-ab8b6aa2f7a4',NULL,1,1,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-14 09:01:21','2019-11-14 09:01:22',1),(2,'0bf37ee4-5dda-48d3-b460-b5c10f6dfc61',NULL,1,1,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-14 09:01:52','2019-11-15 14:25:02',1),(3,'1d25c5d0-6afe-484f-aad1-460a2ff556c2',NULL,3,3,'127.0.0.1',NULL,NULL,NULL,1,'2019-11-15 12:32:51','2019-11-15 12:35:32',2),(4,'18768b3f-6ea7-4685-89d9-e951322e803e',NULL,1,1,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-18 09:01:41','2019-11-18 10:02:54',1),(5,'78552fd5-c191-4c68-b762-9c0eb5df05f1',NULL,1,1,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-18 10:03:13','2019-11-18 14:31:30',1),(6,'a07ff25e-44b7-4ee0-b5ac-b68eaf9d67d9',NULL,4,4,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-19 06:32:08','2019-11-19 08:28:31',1),(7,'249a3890-8cb8-4db7-89b1-63f0205c9162',NULL,4,4,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-19 09:32:50','2019-11-19 09:35:29',1),(8,'83b75602-4075-4609-b1ce-20acee39c3b5',NULL,4,4,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-19 14:07:04','2019-11-19 14:07:05',1),(9,'cd260711-e728-49d1-98a7-0d21cfda8fe7',NULL,2,2,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-20 13:43:29','2019-11-22 12:54:32',1),(10,'4d912ddf-f34e-4fdb-932f-cb6c92b4fe44',NULL,4,4,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-20 15:04:59','2019-11-20 15:04:59',1),(11,'c38a65ee-74f7-4ddf-8367-b51dae133993',NULL,4,4,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-20 15:04:59','2019-11-21 07:03:19',1),(12,'e4fd020c-f4c8-41bf-b26e-5c5bc013c58a',NULL,4,4,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-22 06:13:27','2019-11-22 06:50:03',1),(13,'d8fe596a-54d4-490a-934c-fa47aaa9b5e8',NULL,5,5,'192.168.0.156',NULL,NULL,NULL,0,'2019-11-22 12:55:25','2019-11-22 13:06:35',3),(14,'5e402430-840f-46ec-b686-799a1f059415',NULL,6,6,'192.168.0.182',NULL,NULL,NULL,0,'2019-11-22 12:55:57','2019-11-22 13:56:44',1),(15,'9b715080-fe7a-411e-836c-0e5abd0d1ca1',NULL,7,7,'192.168.0.167',NULL,NULL,NULL,0,'2019-11-22 13:07:12','2019-11-22 13:07:13',3),(16,'c7f6a49b-38f3-497e-a13c-0ec46c9801e6',NULL,6,9,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-25 06:45:55','2019-11-25 06:46:44',1),(17,'7af9db7f-65c4-4524-839f-e95b0d9afe28',NULL,4,8,'192.168.0.182',NULL,NULL,NULL,0,'2019-11-25 06:47:29','2019-11-26 08:36:54',1),(18,'10c31ee3-f771-4146-be18-d6aad25b1236',NULL,4,8,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-26 08:29:08','2019-11-26 13:53:11',1),(19,'541dadb3-03d8-4683-9ed0-53fd3528ca4a',NULL,8,10,'192.168.0.168',NULL,NULL,NULL,0,'2019-11-26 08:31:43','2019-11-26 08:31:49',4),(20,'29ab7834-21da-42f4-b92c-c88639e766f4',NULL,4,8,'192.168.0.182',NULL,NULL,NULL,0,'2019-11-26 13:54:00','2019-11-27 09:03:20',1),(21,'03db4ba3-d232-4f40-9685-ed07feffd0b3',NULL,4,8,'127.0.0.1',NULL,NULL,NULL,0,'2019-11-28 09:35:24','2019-11-29 10:01:40',1),(22,'74739414-0a03-4eac-9de0-a1fe4fcaf860',NULL,4,8,'192.168.0.182',NULL,NULL,NULL,0,'2019-11-28 09:39:49','2019-11-28 09:56:26',1),(23,'540303fb-923b-4c56-a050-31135832af42',NULL,4,8,'127.0.0.1',NULL,NULL,NULL,0,'2019-12-03 06:43:40','2019-12-04 16:37:10',1),(24,'ff5e4a78-f681-4431-82a0-0f114b1538a6',NULL,4,8,'127.0.0.1',NULL,NULL,NULL,0,'2019-12-04 16:38:20','2019-12-06 12:09:13',1);
/*!40000 ALTER TABLE `tracker_sessions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_sql_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_sql_queries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` double NOT NULL,
  `connection_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_queries_created_at_index` (`created_at`),
  KEY `tracker_sql_queries_updated_at_index` (`updated_at`),
  KEY `tracker_sql_queries_sha1_index` (`sha1`),
  KEY `tracker_sql_queries_time_index` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_sql_queries` WRITE;
/*!40000 ALTER TABLE `tracker_sql_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_queries` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_sql_queries_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_sql_queries_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_id` bigint(20) unsigned NOT NULL,
  `sql_query_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_queries_log_created_at_index` (`created_at`),
  KEY `tracker_sql_queries_log_updated_at_index` (`updated_at`),
  KEY `tracker_sql_queries_log_log_id_index` (`log_id`),
  KEY `tracker_sql_queries_log_sql_query_id_index` (`sql_query_id`),
  CONSTRAINT `tracker_sql_queries_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sql_queries_log_sql_query_id_foreign` FOREIGN KEY (`sql_query_id`) REFERENCES `tracker_sql_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_sql_queries_log` WRITE;
/*!40000 ALTER TABLE `tracker_sql_queries_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_queries_log` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_sql_query_bindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_sql_query_bindings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialized` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_query_bindings_created_at_index` (`created_at`),
  KEY `tracker_sql_query_bindings_updated_at_index` (`updated_at`),
  KEY `tracker_sql_query_bindings_sha1_index` (`sha1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_sql_query_bindings` WRITE;
/*!40000 ALTER TABLE `tracker_sql_query_bindings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_query_bindings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_sql_query_bindings_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_sql_query_bindings_parameters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sql_query_bindings_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_query_bindings_parameters_created_at_index` (`created_at`),
  KEY `tracker_sql_query_bindings_parameters_updated_at_index` (`updated_at`),
  KEY `tracker_sql_query_bindings_parameters_name_index` (`name`),
  KEY `tracker_sqlqb_parameters` (`sql_query_bindings_id`),
  CONSTRAINT `tracker_sqlqb_parameters` FOREIGN KEY (`sql_query_bindings_id`) REFERENCES `tracker_sql_query_bindings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_sql_query_bindings_parameters` WRITE;
/*!40000 ALTER TABLE `tracker_sql_query_bindings_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_query_bindings_parameters` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tracker_system_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_system_classes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_system_classes_created_at_index` (`created_at`),
  KEY `tracker_system_classes_updated_at_index` (`updated_at`),
  KEY `tracker_system_classes_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tracker_system_classes` WRITE;
/*!40000 ALTER TABLE `tracker_system_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_system_classes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'pos','name',1,'en','Cap with own prints','2019-12-05 14:16:52','2019-12-05 14:16:52'),(2,'pos','name',1,'de','CZAPKI Z WŁASNYM HAFTEM?','2019-12-05 14:16:52','2019-12-05 14:16:52'),(3,'pos','name',1,'fr','CZAPKI Z WŁASNYM HAFTEM?','2019-12-05 14:16:52','2019-12-05 14:16:52'),(4,'pos','content',1,'en','<p>It\'s possible at IdeaCap! Choose the model you are interested in and then use our wizard to create a fully personalized product!</p>','2019-12-05 14:16:52','2019-12-05 14:16:52'),(5,'pos','content',1,'de','<p>W IdeaCap to możliwe! Wybierz interesujący Cię model, a następnie przy pomocy naszego kreatora stw&oacute;rz w pełni spersonalizowany produkt!</p>','2019-12-05 14:16:52','2019-12-05 14:16:52'),(6,'pos','content',1,'fr','<p>W IdeaCap to możliwe! Wybierz interesujący Cię model, a następnie przy pomocy naszego kreatora stw&oacute;rz w pełni spersonalizowany produkt!</p>','2019-12-05 14:16:52','2019-12-05 14:16:52'),(7,'products','desc',4,'en','<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\"><strong><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">T-SHIRT BASIC T-SHIRT WITH ANY FULL COLOR DTG PRINT.</span></span></strong></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\"><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">BASIC T-shirt is one of the most frequently chosen products by IdeaShirt customers. It is an ideal compromise between quality and price. It is made of high quality ringspun cotton with a weight of 190g.m2. Thanks to this, the shirt will last for a long time. The classic cut t-shirt suits many everyday stylizations, and our wizard will allow you to adjust the shirt according to your preferences.</span></span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\"><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">Printing technology: DTG Kornit NeoPigment Ink.</span></span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\"><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">Average delivery time: 1-3 business days, in the absence of a T-shirt in stock up to 5 business days</span></span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\"><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">Perfect as:<br /></span></span><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">- promotional t-shirts<br /></span></span><span style=\"font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\">- gift shirts<br /></span><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">- t-shirts for events</span></span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\"><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">Specification:</span></span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\"><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">Material: 100% stabilized cotton, half-combed ring-spun (high quality material)<br /></span></span><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">Weight: 190 g / m2<br /></span></span><span style=\"font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\">Lycra welt<br /></span><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">Double stitching<br /></span></span><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">Shoulder tape<br /></span></span><span style=\"font-family: Montserrat, Helvetica Neue, sans-serif;\"><span style=\"font-size: 16px;\">Seamless sides</span></span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\">&nbsp;</p>\n<div class=\"col-xs-6\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative; min-height: 1px; float: left; width: 317.5px; color: #333333; font-family: Montserrat, \'Helvetica Neue\', sans-serif; font-size: 12px;\">\n<div id=\"editorElementDeliveryPhoto\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">\n<div class=\"richtext\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 1.6;\">\n<h4 style=\"box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.1; color: #666666; margin: 20px 0px 10px; font-size: 14px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-image: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; text-shadow: #ffffff 1px 1px 1px; border-color: initial initial #eeeeee initial; border-style: initial initial solid initial;\">Tylko sprawdzeni dostawcy odzieży</h4>\n</div>\n<img style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; height: auto !important; width: 287.5px;\" title=\"Dostawcy odzieży\" src=\"https://xy.ideashirt.pl/static/img/deliveryphoto/a2fbd77549436ab2d6b9e3e4f87bd9f0/dostawcy-odziezy-1.jpg\" alt=\"Dostawcy odzieży\" /></div>\n</div>\n<div class=\"col-xs-6\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative; min-height: 1px; float: left; width: 317.5px; color: #333333; font-family: Montserrat, \'Helvetica Neue\', sans-serif; font-size: 12px;\">\n<div id=\"editorElementProductionPhoto\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">\n<div class=\"richtext\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 1.6;\">\n<h4 style=\"box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.1; color: #666666; margin: 20px 0px 10px; font-size: 14px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-image: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; text-shadow: #ffffff 1px 1px 1px; border-color: initial initial #eeeeee initial; border-style: initial initial solid initial;\">Profesjonalny nadruk</h4>\n</div>\n<img style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; height: auto !important; width: 287.5px;\" title=\"Profesjonalny nadruk\" src=\"https://xy.ideashirt.pl/static/img/productionphoto/993c88e86f2d52f62a839aa94298a27d/profesjonalny-nadruk-1.jpg\" alt=\"Profesjonalny nadruk\" /></div>\n</div>','2019-12-06 07:24:49','2019-12-06 07:24:49'),(8,'products','desc',4,'de','<h3 style=\"box-sizing: border-box; font-family: Montserrat, \'Helvetica Neue\', sans-serif; line-height: 1.1; color: #047373; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 14px; text-transform: uppercase;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #2e2013; font-size: 12px; text-align: justify;\">KOSZULKA T-SHIRT BASIC Z DOWOLNYM, PEŁNOKOLOROWYM NADRUKIEM DTG.</span></h3>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Montserrat, \'Helvetica Neue\', sans-serif; font-size: 12px;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\">Koszulka BASIC to jeden z najczęściej wybieranych produkt&oacute;w, przez klient&oacute;w IdeaShirt. Jest idealnym kompromisem pomiędzy jakością a ceną. Jest wykonana z wysokogatunkowej bawełny ringspun o gramaturze 190g.m2. Dzięki temu koszulka posłuży przez długi czas. Klasyczny kr&oacute;j t-shirt pasuje do wielu codziennych stylizacji, a nasz kreator pozwoli Ci na dopasowanie koszulki według własnych preferencji.</p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Technologia nadruku</span>: DTG Kornit NeoPigment Ink.</p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Średni czas realizacji:</span>&nbsp;1-3 dni robocze, w przypadku braku koszulki na magazynie do 5 dni roboczych</p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Idealne jako:</span><br style=\"box-sizing: border-box;\" />- koszulki promocyjne<br style=\"box-sizing: border-box;\" />- koszulki na prezent<br style=\"box-sizing: border-box;\" />- koszulki na eventy</p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Specyfikacja:</span></p>\r\nMateriał: 100% bawełna stabilizowana, p&oacute;łczesana ring-spun (wysoka jakość materiału)<br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-align: justify;\">Gramatura: 190 g/m2</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-align: justify;\">Ściągacz z lycrą</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-align: justify;\">Podw&oacute;jne szwy</span><br style=\"box-sizing: border-box;\" />Taśma wzmacniająca na ramionach<br style=\"box-sizing: border-box;\" />Boki bezszwowe</div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\">&nbsp;</p>\r\n<div class=\"col-xs-6\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative; min-height: 1px; float: left; width: 317.5px; color: #333333; font-family: Montserrat, \'Helvetica Neue\', sans-serif; font-size: 12px;\">\r\n<div id=\"editorElementDeliveryPhoto\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">\r\n<div class=\"richtext\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 1.6;\">\r\n<h4 style=\"box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.1; color: #666666; margin: 20px 0px 10px; font-size: 14px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-image: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; text-shadow: #ffffff 1px 1px 1px; border-color: initial initial #eeeeee initial; border-style: initial initial solid initial;\">Tylko sprawdzeni dostawcy odzieży</h4>\r\n</div>\r\n<img style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; height: auto !important; width: 287.5px;\" title=\"Dostawcy odzieży\" src=\"https://xy.ideashirt.pl/static/img/deliveryphoto/a2fbd77549436ab2d6b9e3e4f87bd9f0/dostawcy-odziezy-1.jpg\" alt=\"Dostawcy odzieży\" /></div>\r\n</div>\r\n<div class=\"col-xs-6\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative; min-height: 1px; float: left; width: 317.5px; color: #333333; font-family: Montserrat, \'Helvetica Neue\', sans-serif; font-size: 12px;\">\r\n<div id=\"editorElementProductionPhoto\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">\r\n<div class=\"richtext\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 1.6;\">\r\n<h4 style=\"box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.1; color: #666666; margin: 20px 0px 10px; font-size: 14px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-image: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; text-shadow: #ffffff 1px 1px 1px; border-color: initial initial #eeeeee initial; border-style: initial initial solid initial;\">Profesjonalny nadruk</h4>\r\n</div>\r\n<img style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; height: auto !important; width: 287.5px;\" title=\"Profesjonalny nadruk\" src=\"https://xy.ideashirt.pl/static/img/productionphoto/993c88e86f2d52f62a839aa94298a27d/profesjonalny-nadruk-1.jpg\" alt=\"Profesjonalny nadruk\" /></div>\r\n</div>','2019-12-06 07:24:49','2019-12-06 07:24:49'),(9,'products','desc',4,'fr','<h3 style=\"box-sizing: border-box; font-family: Montserrat, \'Helvetica Neue\', sans-serif; line-height: 1.1; color: #047373; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 14px; text-transform: uppercase;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #2e2013; font-size: 12px; text-align: justify;\">KOSZULKA T-SHIRT BASIC Z DOWOLNYM, PEŁNOKOLOROWYM NADRUKIEM DTG.</span></h3>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Montserrat, \'Helvetica Neue\', sans-serif; font-size: 12px;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\">Koszulka BASIC to jeden z najczęściej wybieranych produkt&oacute;w, przez klient&oacute;w IdeaShirt. Jest idealnym kompromisem pomiędzy jakością a ceną. Jest wykonana z wysokogatunkowej bawełny ringspun o gramaturze 190g.m2. Dzięki temu koszulka posłuży przez długi czas. Klasyczny kr&oacute;j t-shirt pasuje do wielu codziennych stylizacji, a nasz kreator pozwoli Ci na dopasowanie koszulki według własnych preferencji.</p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Technologia nadruku</span>: DTG Kornit NeoPigment Ink.</p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Średni czas realizacji:</span>&nbsp;1-3 dni robocze, w przypadku braku koszulki na magazynie do 5 dni roboczych</p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Idealne jako:</span><br style=\"box-sizing: border-box;\" />- koszulki promocyjne<br style=\"box-sizing: border-box;\" />- koszulki na prezent<br style=\"box-sizing: border-box;\" />- koszulki na eventy</p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #444444; line-height: 1.5; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Specyfikacja:</span></p>\r\nMateriał: 100% bawełna stabilizowana, p&oacute;łczesana ring-spun (wysoka jakość materiału)<br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-align: justify;\">Gramatura: 190 g/m2</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-align: justify;\">Ściągacz z lycrą</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-align: justify;\">Podw&oacute;jne szwy</span><br style=\"box-sizing: border-box;\" />Taśma wzmacniająca na ramionach<br style=\"box-sizing: border-box;\" />Boki bezszwowe</div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; font-size: 16px; font-family: Montserrat, \'Helvetica Neue\', sans-serif;\">&nbsp;</p>\r\n<div class=\"col-xs-6\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative; min-height: 1px; float: left; width: 317.5px; color: #333333; font-family: Montserrat, \'Helvetica Neue\', sans-serif; font-size: 12px;\">\r\n<div id=\"editorElementDeliveryPhoto\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">\r\n<div class=\"richtext\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 1.6;\">\r\n<h4 style=\"box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.1; color: #666666; margin: 20px 0px 10px; font-size: 14px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-image: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; text-shadow: #ffffff 1px 1px 1px; border-color: initial initial #eeeeee initial; border-style: initial initial solid initial;\">Tylko sprawdzeni dostawcy odzieży</h4>\r\n</div>\r\n<img style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; height: auto !important; width: 287.5px;\" title=\"Dostawcy odzieży\" src=\"https://xy.ideashirt.pl/static/img/deliveryphoto/a2fbd77549436ab2d6b9e3e4f87bd9f0/dostawcy-odziezy-1.jpg\" alt=\"Dostawcy odzieży\" /></div>\r\n</div>\r\n<div class=\"col-xs-6\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative; min-height: 1px; float: left; width: 317.5px; color: #333333; font-family: Montserrat, \'Helvetica Neue\', sans-serif; font-size: 12px;\">\r\n<div id=\"editorElementProductionPhoto\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">\r\n<div class=\"richtext\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 1.6;\">\r\n<h4 style=\"box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.1; color: #666666; margin: 20px 0px 10px; font-size: 14px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-image: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; text-shadow: #ffffff 1px 1px 1px; border-color: initial initial #eeeeee initial; border-style: initial initial solid initial;\">Profesjonalny nadruk</h4>\r\n</div>\r\n<img style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; height: auto !important; width: 287.5px;\" title=\"Profesjonalny nadruk\" src=\"https://xy.ideashirt.pl/static/img/productionphoto/993c88e86f2d52f62a839aa94298a27d/profesjonalny-nadruk-1.jpg\" alt=\"Profesjonalny nadruk\" /></div>\r\n</div>','2019-12-06 07:24:49','2019-12-06 07:24:49'),(10,'products','name',4,'en','Red cap','2019-12-06 07:24:49','2019-12-06 07:24:49'),(11,'products','name',4,'de','Czapka czerwona','2019-12-06 07:24:49','2019-12-06 07:24:49'),(12,'products','name',4,'fr','Czapka czerwona','2019-12-06 07:24:49','2019-12-06 07:24:49'),(13,'products','short_desc',4,'en','Red cap','2019-12-06 07:24:49','2019-12-06 07:24:49'),(14,'products','short_desc',4,'de','Czapeczka czerwona','2019-12-06 07:24:49','2019-12-06 07:24:49'),(15,'products','short_desc',4,'fr','Czapeczka czerwona','2019-12-06 07:24:49','2019-12-06 07:24:49'),(16,'products','page_title',4,'en','Red cap','2019-12-06 07:24:49','2019-12-06 07:24:49'),(17,'products','page_title',4,'de','Czapka czerwona','2019-12-06 07:24:49','2019-12-06 07:24:49'),(18,'products','page_title',4,'fr','Czapka czerwona','2019-12-06 07:24:49','2019-12-06 07:24:49'),(19,'products','page_description',4,'en','Red cap','2019-12-06 07:24:49','2019-12-06 07:24:49'),(20,'products','page_description',4,'de','Czapka SUPER CZERWONA','2019-12-06 07:24:49','2019-12-06 07:24:49'),(21,'products','page_description',4,'fr','Czapka SUPER CZERWONA','2019-12-06 07:24:49','2019-12-06 07:24:49'),(22,'menu_items','title',20,'en','Contact','2019-12-06 08:41:51','2019-12-06 08:41:51'),(23,'menu_items','title',20,'de','Kontakt','2019-12-06 08:41:51','2019-12-06 08:41:51'),(24,'menu_items','title',20,'fr','Kontakt','2019-12-06 08:41:51','2019-12-06 08:41:51'),(25,'menu_items','title',21,'en','Products','2019-12-06 08:42:01','2019-12-06 08:42:01'),(26,'menu_items','title',21,'de','Produkty','2019-12-06 08:42:01','2019-12-06 08:42:01'),(27,'menu_items','title',21,'fr','Produkty','2019-12-06 08:42:01','2019-12-06 08:42:01'),(37,'attributes','name',1,'en','Colour','2019-12-06 11:23:05','2019-12-06 11:23:05'),(38,'attributes','name',1,'de','Farbe','2019-12-06 11:23:05','2019-12-06 11:23:05'),(39,'attributes','name',1,'fr','couleur','2019-12-06 11:23:05','2019-12-06 11:23:05'),(40,'attributes','name',2,'en','Sewing Type','2019-12-06 11:23:05','2019-12-06 11:23:05'),(41,'attributes','name',2,'de','Nähtyp','2019-12-06 11:23:05','2019-12-06 11:23:05'),(42,'attributes','name',2,'fr','Type de couture','2019-12-06 11:23:05','2019-12-06 11:23:05'),(43,'attributes','name',3,'en','With a visor','2019-12-06 11:23:06','2019-12-06 11:23:06'),(44,'attributes','name',3,'de','Mit einem Visier','2019-12-06 11:23:06','2019-12-06 11:23:06'),(45,'attributes','name',3,'fr','Avec une visière','2019-12-06 11:23:06','2019-12-06 11:23:06'),(46,'products','desc',1,'en','<p> Product Description fafwagaw </p>','2019-12-06 11:23:51','2019-12-06 11:23:51'),(47,'products','desc',1,'de','<p> Produktbeschreibung fafwagaw </p>','2019-12-06 11:23:51','2019-12-06 11:23:51'),(48,'products','desc',1,'fr','<p> Description du produit fafwagaw </p>','2019-12-06 11:23:52','2019-12-06 11:23:52'),(49,'products','name',1,'en','Product Name 2','2019-12-06 11:23:52','2019-12-06 11:23:52'),(50,'products','name',1,'de','Produktname 2','2019-12-06 11:23:52','2019-12-06 11:23:52'),(51,'products','name',1,'fr','Nom du produit 2','2019-12-06 11:23:52','2019-12-06 11:23:52'),(52,'products','short_desc',1,'en','Short description','2019-12-06 11:23:52','2019-12-06 11:23:52'),(53,'products','short_desc',1,'de','Eine kurze Beschreibung','2019-12-06 11:23:53','2019-12-06 11:23:53'),(54,'products','short_desc',1,'fr','Une brève description','2019-12-06 11:23:53','2019-12-06 11:23:53'),(55,'products','page_title',1,'en','Title','2019-12-06 11:23:53','2019-12-06 11:23:53'),(56,'products','page_title',1,'de','Titel','2019-12-06 11:23:53','2019-12-06 11:23:53'),(57,'products','page_title',1,'fr','titre','2019-12-06 11:23:53','2019-12-06 11:23:53'),(58,'products','page_description',1,'en','Description','2019-12-06 11:23:54','2019-12-06 11:23:54'),(59,'products','page_description',1,'de','Beschreibung','2019-12-06 11:23:54','2019-12-06 11:23:54'),(60,'products','page_description',1,'fr','description','2019-12-06 11:23:54','2019-12-06 11:23:54'),(61,'products','desc',2,'en','<p> Product Name 2 </p>','2019-12-06 11:23:54','2019-12-06 11:23:54'),(62,'products','desc',2,'de','<p> Produktname 2 </p>','2019-12-06 11:23:54','2019-12-06 11:23:54'),(63,'products','desc',2,'fr','<p> Nom du produit 2 </p>','2019-12-06 11:23:54','2019-12-06 11:23:54'),(64,'products','name',2,'en','lol','2019-12-06 11:23:54','2019-12-06 11:23:54'),(65,'products','name',2,'de','lol','2019-12-06 11:23:54','2019-12-06 11:23:54'),(66,'products','name',2,'fr','lol','2019-12-06 11:23:54','2019-12-06 11:23:54'),(67,'products','short_desc',2,'en','Product Name 2','2019-12-06 11:23:55','2019-12-06 11:23:55'),(68,'products','short_desc',2,'de','Produktname 2','2019-12-06 11:23:55','2019-12-06 11:23:55'),(69,'products','short_desc',2,'fr','Nom du produit 2','2019-12-06 11:23:55','2019-12-06 11:23:55'),(70,'products','page_title',2,'en','Product Name 2','2019-12-06 11:23:55','2019-12-06 11:23:55'),(71,'products','page_title',2,'de','Produktname 2','2019-12-06 11:23:55','2019-12-06 11:23:55'),(72,'products','page_title',2,'fr','Nom du produit 2','2019-12-06 11:23:55','2019-12-06 11:23:55'),(73,'products','page_description',2,'en','Product Name 2','2019-12-06 11:23:55','2019-12-06 11:23:55'),(74,'products','page_description',2,'de','Produktname 2','2019-12-06 11:23:55','2019-12-06 11:23:55'),(75,'products','page_description',2,'fr','Nom du produit 2','2019-12-06 11:23:55','2019-12-06 11:23:55'),(76,'products','desc',3,'en','<p> Cap 2 </p>','2019-12-06 11:23:56','2019-12-06 11:23:56'),(77,'products','desc',3,'de','<p> Kappe 2 </p>','2019-12-06 11:23:56','2019-12-06 11:23:56'),(78,'products','desc',3,'fr','<p> Cap 2 </p>','2019-12-06 11:23:56','2019-12-06 11:23:56'),(79,'products','name',3,'en','Cap 2','2019-12-06 11:23:56','2019-12-06 11:23:56'),(80,'products','name',3,'de','Kappe 2','2019-12-06 11:24:01','2019-12-06 11:24:01'),(81,'products','name',3,'fr','Cap 2','2019-12-06 11:24:01','2019-12-06 11:24:01'),(82,'products','short_desc',3,'en','Cap 2','2019-12-06 11:24:02','2019-12-06 11:24:02'),(83,'products','short_desc',3,'de','Kappe 2','2019-12-06 11:24:02','2019-12-06 11:24:02'),(84,'products','short_desc',3,'fr','Cap 2','2019-12-06 11:24:02','2019-12-06 11:24:02'),(85,'products','page_title',3,'en','Cap 2','2019-12-06 11:24:02','2019-12-06 11:24:02'),(86,'products','page_title',3,'de','Kappe 2','2019-12-06 11:24:02','2019-12-06 11:24:02'),(87,'products','page_title',3,'fr','Cap 2','2019-12-06 11:24:02','2019-12-06 11:24:02'),(88,'products','page_description',3,'en','Cap 2','2019-12-06 11:24:02','2019-12-06 11:24:02'),(89,'products','page_description',3,'de','Kappe 2','2019-12-06 11:24:02','2019-12-06 11:24:02'),(90,'products','page_description',3,'fr','Cap 2','2019-12-06 11:24:02','2019-12-06 11:24:02'),(91,'product_attributes','value',33,'en','Black','2019-12-06 11:44:29','2019-12-06 11:44:29'),(92,'product_attributes','value',33,'de','schwarz','2019-12-06 11:44:29','2019-12-06 11:44:29'),(93,'product_attributes','value',33,'fr','noir','2019-12-06 11:44:30','2019-12-06 11:44:30'),(94,'product_attributes','value',34,'en','5 panels','2019-12-06 11:44:30','2019-12-06 11:44:30'),(95,'product_attributes','value',34,'de','5 panel','2019-12-06 11:44:30','2019-12-06 11:44:30'),(96,'product_attributes','value',34,'fr','5 panneaux','2019-12-06 11:44:31','2019-12-06 11:44:31'),(97,'product_attributes','value',35,'en','1','2019-12-06 11:44:31','2019-12-06 11:44:31'),(98,'product_attributes','value',35,'de','1','2019-12-06 11:44:31','2019-12-06 11:44:31'),(99,'product_attributes','value',35,'fr','1','2019-12-06 11:44:31','2019-12-06 11:44:31'),(100,'product_attributes','value',36,'en','Red','2019-12-06 11:44:31','2019-12-06 11:44:31'),(101,'product_attributes','value',36,'de','rot','2019-12-06 11:44:31','2019-12-06 11:44:31'),(102,'product_attributes','value',36,'fr','rouge','2019-12-06 11:44:31','2019-12-06 11:44:31'),(103,'product_attributes','value',37,'en','6 panel','2019-12-06 11:44:32','2019-12-06 11:44:32'),(104,'product_attributes','value',37,'de','6 panel','2019-12-06 11:44:32','2019-12-06 11:44:32'),(105,'product_attributes','value',37,'fr','6 panneaux','2019-12-06 11:44:32','2019-12-06 11:44:32'),(106,'product_attributes','value',38,'en','1','2019-12-06 11:44:32','2019-12-06 11:44:32'),(107,'product_attributes','value',38,'de','1','2019-12-06 11:44:32','2019-12-06 11:44:32'),(108,'product_attributes','value',38,'fr','1','2019-12-06 11:44:32','2019-12-06 11:44:32');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (2,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Mateusz','admin@gmail.com','users/default.png',NULL,'$2y$10$cN84PQvIKMubw2ISCE5SsOfKj.AN/2JEgA9ZkV9BFUmBHOlEpWKyi',NULL,NULL,'2019-11-06 13:47:48','2019-11-06 13:47:48'),(2,2,'Jan kowalski','jankowalski@gmail.com','users/default.png',NULL,'$2y$10$lOuWyplzu36w0jLqA42fv.zK/cGl2Sydb91sW8wZx1qg25luFH0kW',NULL,'{\"locale\":\"en\"}','2019-11-06 13:49:52','2019-11-06 13:49:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

