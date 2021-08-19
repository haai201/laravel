/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.20-MariaDB : Database - laravel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `laravel`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (1,'Laptop Asus',0,'Laptop Asus','2021-08-13 23:01:23','2021-08-13 23:01:23',NULL),(2,'Laptop Asus TUF Gaming',1,'Laptop Asus TUF Gaming','2021-08-13 23:01:32','2021-08-13 23:01:38',NULL),(3,'Laptop MSI',0,'Laptop MSI','2021-08-17 22:30:41','2021-08-17 22:30:41',NULL),(4,'Laptop MSI GE Series',3,'Laptop MSI GE Series','2021-08-17 22:32:04','2021-08-17 22:32:04',NULL),(5,'Laptop Dell',0,'Laptop Dell','2021-08-17 22:35:04','2021-08-17 22:35:04',NULL),(6,'Laptop MSI GF Series',3,'Laptop MSI GF Series','2021-08-17 23:18:23','2021-08-17 23:18:58','2021-08-17 23:18:58'),(7,'Laptop MSI GF Series',3,'Laptop MSI GF Series','2021-08-17 23:18:38','2021-08-17 23:20:21','2021-08-17 23:20:21'),(8,'Laptop MSI GF Series',3,'Laptop MSI GF Series','2021-08-17 23:20:54','2021-08-17 23:58:31',NULL),(9,'Laptop Asus TUF Gaming FX506KH',2,'Laptop Asus TUF Gaming FX506KH','2021-08-18 00:01:21','2021-08-18 00:01:55',NULL),(10,'Laptop Lenovo',0,'Laptop Lenovo','2021-08-18 00:03:58','2021-08-18 20:40:27','2021-08-18 20:40:27');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menus` */

insert  into `menus`(`id`,`name`,`parent_id`,`created_at`,`updated_at`,`slug`,`deleted_at`) values (1,'demo',0,'2021-08-18 00:31:26','2021-08-18 00:31:29','demo','2021-08-18 00:31:29'),(2,'dev',0,'2021-08-18 00:34:21','2021-08-18 00:34:21','dev',NULL),(3,'dev2',0,'2021-08-18 00:37:36','2021-08-18 00:37:36','dev2',NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_07_18_153305_create_categories_table',1),(5,'2021_07_23_174835_add_columm_deleted_at_table_category',1),(6,'2021_07_23_213425_create_menus_table',1),(7,'2021_07_24_161002_add_columm_slug_to_menus_table',1),(8,'2021_07_24_175353_add_soft_slug_to_menus_table',1),(9,'2021_07_25_163716_create_products_table',1),(10,'2021_07_25_163958_create_product_images_table',1),(11,'2021_07_25_164118_create_tags_table',1),(12,'2021_07_25_164156_create_product_tags_table',1),(13,'2021_07_26_203635_add_column_fueature_image_name',1),(14,'2021_07_27_120551_add_column_image_name_to_table_product_image',1),(15,'2021_07_28_085743_add_column_deletet_at_to_product_table',1),(16,'2021_07_29_205144_create_sliders_table',1),(17,'2021_07_30_182052_add_column_deletet_at_to_slider_table',1),(18,'2021_07_30_184257_create_settings_table',1),(19,'2021_07_30_231445_add_column_type_settings_table',1),(20,'2021_07_30_233236_add_column_deletet_at_to_setting_table',1),(21,'2021_08_14_165142_create_roles_table',2),(22,'2021_08_14_165244_create_permissions_table',2),(23,'2021_08_14_165427_create_table_user_role',2),(24,'2021_08_14_165534_create_table_permission_role',2),(25,'2021_08_15_102713_add_column_deteted_at_table_users',3),(26,'2021_08_15_155014_add_column_parent_id_permission',4),(27,'2021_08_15_170901_add_column_key_permission',5),(28,'2021_08_15_175242_add_column_deteted_at_table_permissions',6),(29,'2021_08_15_175522_add_column_deteted_at_table_permissions',7),(30,'2021_08_15_213851_add_column_deteted_at_table_roles',8),(31,'2021_08_15_214749_add_column_deteted_at_table_permission_role',9),(32,'2016_01_04_173148_create_admin_tables',10);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

insert  into `password_resets`(`email`,`token`,`created_at`) values ('nhaduongvan5@gmail.com','$2y$10$vtLF7ZuDqIAcdFM./rw.o.Rx0ldx4qAryOumg8y9ZjFeSt/j2x9s.','2021-08-14 15:45:49');

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permission_role` */

insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`,`deleted_at`) values (1,5,2,NULL,NULL,NULL),(2,5,3,NULL,NULL,NULL),(3,5,4,NULL,NULL,NULL),(4,5,5,NULL,NULL,NULL),(5,5,7,NULL,NULL,NULL),(6,5,8,NULL,NULL,NULL),(7,6,2,NULL,NULL,NULL),(8,6,3,NULL,NULL,NULL),(9,6,4,NULL,NULL,NULL),(10,6,5,NULL,NULL,NULL),(13,7,2,NULL,NULL,NULL),(14,7,3,NULL,NULL,NULL),(15,7,4,NULL,NULL,NULL),(16,7,5,NULL,NULL,NULL),(17,7,7,NULL,NULL,NULL),(18,7,8,NULL,NULL,NULL),(19,8,2,NULL,NULL,NULL),(20,8,3,NULL,NULL,NULL),(21,8,4,NULL,NULL,NULL),(22,8,5,NULL,NULL,NULL),(23,8,7,NULL,NULL,NULL),(24,8,8,NULL,NULL,NULL),(31,1,7,NULL,NULL,NULL),(32,1,8,NULL,NULL,NULL),(33,1,9,NULL,NULL,NULL),(34,1,10,NULL,NULL,NULL),(35,1,12,NULL,NULL,NULL),(36,1,13,NULL,NULL,NULL),(37,1,14,NULL,NULL,NULL),(38,1,15,NULL,NULL,NULL),(39,1,17,NULL,NULL,NULL),(40,1,18,NULL,NULL,NULL),(41,1,19,NULL,NULL,NULL),(42,1,20,NULL,NULL,NULL),(43,1,22,NULL,NULL,NULL),(44,1,23,NULL,NULL,NULL),(45,1,24,NULL,NULL,NULL),(46,1,25,NULL,NULL,NULL),(47,1,27,NULL,NULL,NULL),(48,1,28,NULL,NULL,NULL),(49,1,29,NULL,NULL,NULL),(50,1,30,NULL,NULL,NULL),(51,1,32,NULL,NULL,NULL),(52,1,33,NULL,NULL,NULL),(53,1,34,NULL,NULL,NULL),(54,1,35,NULL,NULL,NULL),(55,6,12,NULL,NULL,NULL),(56,6,13,NULL,NULL,NULL),(57,6,14,NULL,NULL,NULL),(58,6,15,NULL,NULL,NULL),(59,1,2,NULL,NULL,NULL),(60,1,3,NULL,NULL,NULL),(61,1,4,NULL,NULL,NULL),(62,1,5,NULL,NULL,NULL),(66,1,37,NULL,NULL,NULL),(67,1,38,NULL,NULL,NULL),(68,1,39,NULL,NULL,NULL),(69,1,40,NULL,NULL,NULL),(72,2,12,NULL,NULL,NULL),(73,2,2,NULL,NULL,NULL),(78,2,7,NULL,NULL,NULL),(79,2,17,NULL,NULL,NULL),(80,1,47,NULL,NULL,NULL),(81,1,48,NULL,NULL,NULL),(82,1,49,NULL,NULL,NULL),(83,1,50,NULL,NULL,NULL),(84,2,22,NULL,NULL,NULL),(85,2,27,NULL,NULL,NULL),(86,2,32,NULL,NULL,NULL);

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (1,'Category','Category','2021-08-17 18:13:37','2021-08-17 18:13:37',0,NULL,NULL),(2,'List','List','2021-08-17 18:13:37','2021-08-17 18:13:37',1,'Category_List',NULL),(3,'Add','Add','2021-08-17 18:13:37','2021-08-17 18:13:37',1,'Category_Add',NULL),(4,'Edit','Edit','2021-08-17 18:13:37','2021-08-17 18:13:37',1,'Category_Edit',NULL),(5,'Delete','Delete','2021-08-17 18:13:37','2021-08-17 18:13:37',1,'Category_Delete',NULL),(6,'Slider','Slider','2021-08-17 21:15:55','2021-08-17 21:15:55',0,NULL,NULL),(7,'List','List','2021-08-17 21:15:55','2021-08-17 21:15:55',6,'Slider_List',NULL),(8,'Add','Add','2021-08-17 21:15:55','2021-08-17 21:15:55',6,'Slider_Add',NULL),(9,'Edit','Edit','2021-08-17 21:15:55','2021-08-17 21:15:55',6,'Slider_Edit',NULL),(10,'Delete','Delete','2021-08-17 21:15:55','2021-08-17 21:15:55',6,'Slider_Delete',NULL),(11,'Menu','Menu','2021-08-17 21:28:57','2021-08-17 21:28:57',0,NULL,NULL),(12,'List','List','2021-08-17 21:28:57','2021-08-17 21:28:57',11,'Menu_List',NULL),(13,'Add','Add','2021-08-17 21:28:57','2021-08-17 21:28:57',11,'Menu_Add',NULL),(14,'Edit','Edit','2021-08-17 21:28:57','2021-08-17 21:28:57',11,'Menu_Edit',NULL),(15,'Delete','Delete','2021-08-17 21:28:57','2021-08-17 21:28:57',11,'Menu_Delete',NULL),(16,'Product','Product','2021-08-17 21:40:05','2021-08-17 21:40:05',0,NULL,NULL),(17,'List','List','2021-08-17 21:40:05','2021-08-17 21:40:05',16,'Product_List',NULL),(18,'Add','Add','2021-08-17 21:40:05','2021-08-17 21:40:05',16,'Product_Add',NULL),(19,'Edit','Edit','2021-08-17 21:40:05','2021-08-17 21:40:05',16,'Product_Edit',NULL),(20,'Delete','Delete','2021-08-17 21:40:05','2021-08-17 21:40:05',16,'Product_Delete',NULL),(21,'Setting','Setting','2021-08-17 21:49:07','2021-08-17 21:49:07',0,NULL,NULL),(22,'List','List','2021-08-17 21:49:07','2021-08-17 21:49:07',21,'Setting_List',NULL),(23,'Add','Add','2021-08-17 21:49:07','2021-08-17 21:49:07',21,'Setting_Add',NULL),(24,'Edit','Edit','2021-08-17 21:49:07','2021-08-17 21:49:07',21,'Setting_Edit',NULL),(25,'Delete','Delete','2021-08-17 21:49:07','2021-08-17 21:49:07',21,'Setting_Delete',NULL),(26,'User','User','2021-08-17 22:17:26','2021-08-17 22:17:26',0,NULL,NULL),(27,'List','List','2021-08-17 22:17:26','2021-08-17 22:17:26',26,'User_List',NULL),(28,'Add','Add','2021-08-17 22:17:26','2021-08-17 22:17:26',26,'User_Add',NULL),(29,'Edit','Edit','2021-08-17 22:17:26','2021-08-17 22:17:26',26,'User_Edit',NULL),(30,'Delete','Delete','2021-08-17 22:17:26','2021-08-17 22:17:26',26,'User_Delete',NULL),(31,'Role','Role','2021-08-17 22:17:32','2021-08-17 22:17:32',0,NULL,NULL),(32,'List','List','2021-08-17 22:17:32','2021-08-17 22:17:32',31,'Role_List',NULL),(33,'Add','Add','2021-08-17 22:17:32','2021-08-17 22:17:32',31,'Role_Add',NULL),(34,'Edit','Edit','2021-08-17 22:17:32','2021-08-17 22:17:32',31,'Role_Edit',NULL),(35,'Delete','Delete','2021-08-17 22:17:32','2021-08-17 22:17:32',31,'Role_Delete',NULL),(36,'Test','Test','2021-08-17 22:17:35','2021-08-17 22:17:35',0,NULL,NULL),(37,'List','List','2021-08-17 22:17:35','2021-08-17 22:17:35',36,'Test_List',NULL),(38,'Add','Add','2021-08-17 22:17:35','2021-08-17 22:17:35',36,'Test_Add',NULL),(39,'Edit','Edit','2021-08-17 22:17:35','2021-08-17 22:17:35',36,'Test_Edit',NULL),(40,'Delete','Delete','2021-08-17 22:17:35','2021-08-17 22:17:35',36,'Test_Delete',NULL),(46,'Demo','Demo','2021-08-17 23:30:34','2021-08-17 23:30:34',0,NULL,NULL),(47,'List','List','2021-08-17 23:30:34','2021-08-17 23:30:34',46,'Demo_List',NULL),(48,'Add','Add','2021-08-17 23:30:34','2021-08-17 23:30:34',46,'Demo_Add',NULL),(49,'Edit','Edit','2021-08-17 23:30:34','2021-08-17 23:30:34',46,'Demo_Edit',NULL),(50,'Delete','Delete','2021-08-17 23:30:34','2021-08-17 23:30:34',46,'Demo_Delete',NULL);

/*Table structure for table `product_images` */

DROP TABLE IF EXISTS `product_images`;

CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_images` */

insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (1,'/storage/product/2/2.jpg',1,'2021-08-13 23:02:09','2021-08-13 23:02:09','giấy.jpg'),(2,'/storage/product/2/10.jpg',1,'2021-08-13 23:02:09','2021-08-13 23:02:09','nguoc sang.jpg'),(3,'/storage/product/2/20.jpg',2,'2021-08-14 21:13:12','2021-08-14 21:13:12','bai2.jpg');

/*Table structure for table `product_tags` */

DROP TABLE IF EXISTS `product_tags`;

CREATE TABLE `product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_tags` */

insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (1,1,1,'2021-08-13 23:02:09','2021-08-13 23:02:09'),(2,1,2,'2021-08-14 15:46:40','2021-08-14 15:46:40'),(3,1,2,'2021-08-14 15:47:01','2021-08-14 15:47:01'),(4,1,3,'2021-08-14 15:47:01','2021-08-14 15:47:01'),(5,2,4,'2021-08-14 21:13:12','2021-08-14 21:13:12'),(6,1,2,'2021-08-18 00:34:57','2021-08-18 00:34:57'),(7,1,3,'2021-08-18 00:34:57','2021-08-18 00:34:57'),(8,1,3,'2021-08-18 00:34:57','2021-08-18 00:34:57'),(9,1,5,'2021-08-18 00:34:57','2021-08-18 00:34:57'),(10,1,2,'2021-08-18 00:35:33','2021-08-18 00:35:33'),(11,1,3,'2021-08-18 00:35:33','2021-08-18 00:35:33'),(12,1,3,'2021-08-18 00:35:33','2021-08-18 00:35:33'),(13,1,5,'2021-08-18 00:35:33','2021-08-18 00:35:33'),(14,1,3,'2021-08-18 00:35:33','2021-08-18 00:35:33'),(15,1,5,'2021-08-18 00:35:33','2021-08-18 00:35:33'),(16,1,5,'2021-08-18 00:35:33','2021-08-18 00:35:33'),(17,1,6,'2021-08-18 00:35:33','2021-08-18 00:35:33'),(18,1,2,'2021-08-18 00:38:22','2021-08-18 00:38:22'),(19,1,3,'2021-08-18 00:38:22','2021-08-18 00:38:22'),(20,1,5,'2021-08-18 00:38:22','2021-08-18 00:38:22'),(21,1,5,'2021-08-18 00:38:22','2021-08-18 00:38:22'),(22,1,6,'2021-08-18 00:38:22','2021-08-18 00:38:22'),(23,1,5,'2021-08-18 00:38:22','2021-08-18 00:38:22'),(24,1,6,'2021-08-18 00:38:22','2021-08-18 00:38:22'),(25,1,6,'2021-08-18 00:38:22','2021-08-18 00:38:22'),(26,1,7,'2021-08-18 00:38:22','2021-08-18 00:38:22');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`price`,`feature_image_path`,`content`,`user_id`,`category_id`,`created_at`,`updated_at`,`feature_image_name`,`deleted_at`) values (1,'Laptop Asus TUF Gaming FX506KT','20000001','/storage/product/2/5.jpg','<p>&aacute;dasd</p>',2,2,'2021-08-13 23:02:09','2021-08-14 15:46:40','giấy.jpg',NULL),(2,'Laptop Asus TUF Gaming FX506KY','15289000','/storage/product/2/20.jpg','<p>asdasdasd</p>',2,2,'2021-08-14 21:13:12','2021-08-14 21:14:02','sang tao.jpg','2021-08-14 21:14:02');

/*Table structure for table `role_user` */

DROP TABLE IF EXISTS `role_user`;

CREATE TABLE `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role_user` */

insert  into `role_user`(`id`,`user_id`,`role_id`,`created_at`,`updated_at`) values (1,4,1,NULL,NULL),(2,4,2,NULL,NULL),(3,6,3,NULL,NULL),(7,22,3,NULL,NULL),(9,22,2,NULL,NULL),(10,2,1,NULL,NULL),(11,2,2,NULL,NULL),(12,2,3,NULL,NULL),(13,21,2,NULL,NULL),(14,2,4,NULL,NULL),(15,2,5,NULL,NULL);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`deleted_at`) values (1,'admin','Quản trị hệ thống',NULL,NULL,NULL),(2,'guest','Khách hàng',NULL,NULL,NULL),(3,'developer','Phát triển hệ thống',NULL,NULL,NULL),(4,'content','Chỉnh sửa nội dung',NULL,NULL,NULL),(5,'editor','Người soạn thảo văn bản','2021-08-15 17:53:19','2021-08-15 17:53:19',NULL),(6,'editor1','Người soạn thảo văn bản1','2021-08-15 17:54:10','2021-08-15 21:44:27','2021-08-15 21:44:27'),(7,'dev','dev','2021-08-15 17:57:28','2021-08-15 17:57:28',NULL),(8,'dev','dev','2021-08-15 17:58:45','2021-08-15 23:12:45','2021-08-15 23:12:45'),(9,'dev1','đây là mô tả','2021-08-15 18:05:52','2021-08-15 21:49:03','2021-08-15 21:49:03');

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

/*Table structure for table `sliders` */

DROP TABLE IF EXISTS `sliders`;

CREATE TABLE `sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sliders` */

/*Table structure for table `tags` */

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tags` */

insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (1,'ád','2021-08-13 23:02:09','2021-08-13 23:02:09'),(2,'1','2021-08-14 15:46:40','2021-08-14 15:46:40'),(3,'2','2021-08-14 15:47:01','2021-08-14 15:47:01'),(4,'asfasd','2021-08-14 21:13:12','2021-08-14 21:13:12'),(5,'3','2021-08-18 00:34:57','2021-08-18 00:34:57'),(6,'5','2021-08-18 00:35:33','2021-08-18 00:35:33'),(7,'6','2021-08-18 00:38:22','2021-08-18 00:38:22');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`,`deleted_at`) values (2,'Admin','admin@gmail.com',NULL,'$2y$10$3HGpCgcEd30coq3HCP4WWu9yVVjsLSFBuXqM6ueRn7qpBRiftOgNm',NULL,'2021-08-13 23:01:00','2021-08-17 22:17:50',NULL),(6,'dev','dev2@gmail.com',NULL,'$2y$10$v0tWN0JZOPRicZU4OlwZT.LcTgN9ho7hrpFkxVMtICCz8Y1WJixW2',NULL,'2021-08-14 23:02:38','2021-08-14 23:02:38',NULL),(7,'NhaDuongtest','test@gmail.com',NULL,'$2y$10$N4Oii1jv./waQBi7CQdoBObU5L6Fkhjh8xptbNbqfOBRfpijBzGmu',NULL,'2021-08-14 23:07:54','2021-08-15 10:35:30','2021-08-15 10:35:30'),(19,'test','test1@gmail.com',NULL,'$2y$10$C5iqndpytPg8n9qLHH20susiGLwktmhIkKFMyHcK40fAPf3PUL9bO',NULL,'2021-08-14 23:25:26','2021-08-14 23:25:26',NULL),(21,'Dương Văn Nhã','nhaduongvan5@gmail.com',NULL,'$2y$10$BjtCb9b2AY8TVOO3vqwudunB40pnViTQ.bp93EaNJjA0dPZK.EA1i',NULL,'2021-08-14 23:30:37','2021-08-19 20:52:28',NULL),(22,'demo1','demo1@gmail.com',NULL,'$2y$10$.8VcdZYBvDThaE2HTwp9VecTzpIzTU6JF30MoxnyLaxYxp9GUBBp6',NULL,'2021-08-14 23:31:05','2021-08-15 10:21:09',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
