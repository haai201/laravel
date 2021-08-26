/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.20-MariaDB : Database - laravel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `categories` */

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (2,'SPORTSWEAR',0,'SPORTSWEAR','2021-08-24 11:58:46','2021-08-24 11:58:46',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (3,'MENS',0,'MENS','2021-08-24 11:59:40','2021-08-24 11:59:40',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (4,'WOMENS',0,'WOMENS','2021-08-24 11:59:48','2021-08-24 11:59:48',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (5,'KIDS',0,'KIDS','2021-08-24 11:59:53','2021-08-24 22:38:04','2021-08-24 22:38:04');
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (6,'FASHION',0,'FASHION','2021-08-24 11:59:59','2021-08-24 11:59:59',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (7,'HOUSEHOLDS',0,'HOUSEHOLDS','2021-08-24 12:00:05','2021-08-24 12:00:05',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (8,'INTERIORS',0,'INTERIORS','2021-08-24 12:00:11','2021-08-24 12:00:11',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (9,'CLOTHING',0,'CLOTHING','2021-08-24 12:00:16','2021-08-24 12:00:16',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (10,'BAGS',0,'BAGS','2021-08-24 12:00:23','2021-08-24 12:00:23',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (11,'SHOES',0,'SHOES','2021-08-24 12:00:33','2021-08-24 12:00:33',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (12,'NIKE',2,'NIKE','2021-08-24 12:00:43','2021-08-24 12:00:43',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (13,'UNDER ARMOUR',2,'UNDER ARMOUR','2021-08-24 12:00:52','2021-08-24 12:00:52',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (14,'ADIDAS',2,'ADIDAS','2021-08-24 12:01:02','2021-08-24 12:01:02',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (15,'PUMA',2,'PUMA','2021-08-24 12:01:10','2021-08-24 12:01:10',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (16,'ASICS',2,'ASICS','2021-08-24 12:01:19','2021-08-24 12:01:19',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (17,'FENDI',3,'FENDI','2021-08-24 12:01:29','2021-08-24 12:01:29',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (18,'DIOR',3,'DIOR','2021-08-24 12:01:39','2021-08-24 12:01:39',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (19,'GUCCI',3,'GUCCI','2021-08-24 12:01:50','2021-08-24 12:01:50',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (20,'CHANEL',3,'CHANEL','2021-08-24 12:02:05','2021-08-24 12:02:05',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (21,'VERSACE',4,'VERSACE','2021-08-24 12:02:17','2021-08-24 12:02:17',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (22,'DIOR',4,'DIOR','2021-08-24 12:02:29','2021-08-24 12:02:29',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (23,'VALENTINO',4,'VALENTINO','2021-08-24 12:02:41','2021-08-24 12:02:41',NULL);

/*Table structure for table `failed_jobs` */

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

/*Table structure for table `media` */

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `media` */

/*Table structure for table `menus` */

CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menus` */

/*Table structure for table `migrations` */

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (2,'2014_10_12_100000_create_password_resets_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (3,'2019_08_19_000000_create_failed_jobs_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (4,'2021_07_18_153305_create_categories_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (5,'2021_07_23_174835_add_columm_deleted_at_table_category',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (6,'2021_07_23_213425_create_menus_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (7,'2021_07_24_161002_add_columm_slug_to_menus_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (8,'2021_07_24_175353_add_soft_slug_to_menus_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (9,'2021_07_25_163716_create_products_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (10,'2021_07_25_163958_create_product_images_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (11,'2021_07_25_164118_create_tags_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (12,'2021_07_25_164156_create_product_tags_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (13,'2021_07_26_203635_add_column_fueature_image_name',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (14,'2021_07_27_120551_add_column_image_name_to_table_product_image',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (15,'2021_07_28_085743_add_column_deletet_at_to_product_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (16,'2021_07_29_205144_create_sliders_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (17,'2021_07_30_182052_add_column_deletet_at_to_slider_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (18,'2021_07_30_184257_create_settings_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (19,'2021_07_30_231445_add_column_type_settings_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (20,'2021_07_30_233236_add_column_deletet_at_to_setting_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (21,'2021_08_14_165142_create_roles_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (22,'2021_08_14_165244_create_permissions_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (23,'2021_08_14_165427_create_table_user_role',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (24,'2021_08_14_165534_create_table_permission_role',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (25,'2021_08_15_102713_add_column_deteted_at_table_users',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (26,'2021_08_15_155014_add_column_parent_id_permission',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (27,'2021_08_15_170901_add_column_key_permission',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (28,'2021_08_15_175522_add_column_deteted_at_table_permissions',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (29,'2021_08_15_213851_add_column_deteted_at_table_roles',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (30,'2021_08_23_112127_create_media_table',2);
insert  into `migrations`(`id`,`migration`,`batch`) values (31,'2021_08_24_134237_add_column_views_products',3);

/*Table structure for table `password_resets` */

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permission_role` */

CREATE TABLE `permission_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permission_role` */

insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (1,1,2,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (2,1,3,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (3,1,4,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (4,1,5,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (5,1,7,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (6,1,8,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (7,1,9,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (8,1,10,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (9,1,12,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (10,1,13,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (11,1,14,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (12,1,15,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (13,1,18,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (14,1,19,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (15,1,20,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (16,1,21,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (17,1,23,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (18,1,24,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (19,1,25,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (20,1,26,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (21,1,28,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (22,1,29,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (23,1,30,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (24,1,31,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (25,1,34,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (26,1,35,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (27,1,36,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (28,1,37,NULL,NULL);

/*Table structure for table `permissions` */

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (1,'Category','Category','2021-08-23 10:26:49','2021-08-23 10:26:49',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (2,'List','List','2021-08-23 10:26:49','2021-08-23 10:26:49',1,'Category_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (3,'Add','Add','2021-08-23 10:26:49','2021-08-23 10:26:49',1,'Category_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (4,'Edit','Edit','2021-08-23 10:26:49','2021-08-23 10:26:49',1,'Category_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (5,'Delete','Delete','2021-08-23 10:26:49','2021-08-23 10:26:49',1,'Category_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (6,'Slider','Slider','2021-08-23 10:45:16','2021-08-23 10:45:16',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (7,'List','List','2021-08-23 10:45:16','2021-08-23 10:45:16',6,'Slider_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (8,'Add','Add','2021-08-23 10:45:16','2021-08-23 10:45:16',6,'Slider_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (9,'Edit','Edit','2021-08-23 10:45:16','2021-08-23 10:45:16',6,'Slider_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (10,'Delete','Delete','2021-08-23 10:45:16','2021-08-23 10:45:16',6,'Slider_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (11,'Menu','Menu','2021-08-23 10:45:20','2021-08-23 10:45:20',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (12,'List','List','2021-08-23 10:45:20','2021-08-23 10:45:20',11,'Menu_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (13,'Add','Add','2021-08-23 10:45:20','2021-08-23 10:45:20',11,'Menu_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (14,'Edit','Edit','2021-08-23 10:45:20','2021-08-23 10:45:20',11,'Menu_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (15,'Delete','Delete','2021-08-23 10:45:20','2021-08-23 10:45:20',11,'Menu_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (17,'Product','Product','2021-08-23 10:46:17','2021-08-23 10:46:17',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (18,'List','List','2021-08-23 10:46:17','2021-08-23 10:46:17',17,'Product_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (19,'Add','Add','2021-08-23 10:46:17','2021-08-23 10:46:17',17,'Product_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (20,'Edit','Edit','2021-08-23 10:46:17','2021-08-23 10:46:17',17,'Product_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (21,'Delete','Delete','2021-08-23 10:46:17','2021-08-23 10:46:17',17,'Product_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (22,'Setting','Setting','2021-08-23 10:46:21','2021-08-23 10:46:21',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (23,'List','List','2021-08-23 10:46:21','2021-08-23 10:46:21',22,'Setting_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (24,'Add','Add','2021-08-23 10:46:21','2021-08-23 10:46:21',22,'Setting_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (25,'Edit','Edit','2021-08-23 10:46:21','2021-08-23 10:46:21',22,'Setting_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (26,'Delete','Delete','2021-08-23 10:46:21','2021-08-23 10:46:21',22,'Setting_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (27,'User','User','2021-08-23 10:46:25','2021-08-23 10:46:25',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (28,'List','List','2021-08-23 10:46:25','2021-08-23 10:46:25',27,'User_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (29,'Add','Add','2021-08-23 10:46:25','2021-08-23 10:46:25',27,'User_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (30,'Edit','Edit','2021-08-23 10:46:25','2021-08-23 10:46:25',27,'User_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (31,'Delete','Delete','2021-08-23 10:46:25','2021-08-23 10:46:25',27,'User_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (33,'Role','Role','2021-08-23 10:46:32','2021-08-23 10:46:32',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (34,'List','List','2021-08-23 10:46:32','2021-08-23 10:46:32',33,'Role_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (35,'Add','Add','2021-08-23 10:46:32','2021-08-23 10:46:32',33,'Role_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (36,'Edit','Edit','2021-08-23 10:46:32','2021-08-23 10:46:32',33,'Role_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (37,'Delete','Delete','2021-08-23 10:46:32','2021-08-23 10:46:32',33,'Role_Delete',NULL);

/*Table structure for table `product_images` */

CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_images` */

insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (1,'/storage/product/1/6.png',2,'2021-08-24 16:52:09','2021-08-24 16:52:09','jordan-ma2-shoe-qw1Z6m (2).png');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (2,'/storage/product/1/19.png',2,'2021-08-24 16:52:09','2021-08-24 16:52:09','jordan-ma2-shoe-qw1Z6m (1).png');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (3,'/storage/product/1/12.png',2,'2021-08-24 16:52:09','2021-08-24 16:52:09','jordan-ma2-shoe-qw1Z6m.png');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (4,'/storage/product/1/10.png',3,'2021-08-24 16:58:21','2021-08-24 16:58:21','rafa-winner-tennis-t-shirt-6p60Kp (2).png');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (5,'/storage/product/1/6.png',3,'2021-08-24 16:58:21','2021-08-24 16:58:21','rafa-winner-tennis-t-shirt-6p60Kp (1).png');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (6,'/storage/product/1/11.png',3,'2021-08-24 16:58:21','2021-08-24 16:58:21','rafa-winner-tennis-t-shirt-6p60Kp.png');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (7,'/storage/product/1/18.jpg',8,'2021-08-24 17:17:02','2021-08-24 17:17:02','Ao_Thun_Ngan_Tay_Logo_Play_Mau_xanh_da_troi_H31320_01_laydown.jpg');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (8,'/storage/product/1/19.jpg',8,'2021-08-24 17:17:02','2021-08-24 17:17:02','Ao_Thun_Ngan_Tay_Logo_Play_Mau_xanh_da_troi_H31320_25_model.jpg');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (9,'/storage/product/1/12.jpg',8,'2021-08-24 17:17:02','2021-08-24 17:17:02','Ao_Thun_Ngan_Tay_Logo_Play_Mau_xanh_da_troi_H31320_23_hover_model.jpg');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (13,'/storage/product/1/20.jpg',10,'2021-08-24 17:19:50','2021-08-24 17:19:50','Giay_Cloudfoam_Pure_2.0_trang_GV7307_03_standard.jpg');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (14,'/storage/product/1/1.jpg',10,'2021-08-24 17:19:50','2021-08-24 17:19:50','Giay_Cloudfoam_Pure_2.0_trang_GV7307_02_standard_hover.jpg');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (15,'/storage/product/1/17.jpg',10,'2021-08-24 17:19:50','2021-08-24 17:19:50','Giay_Cloudfoam_Pure_2.0_trang_GV7307_01_standard.jpg');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (16,'/storage/product/1/20.png',12,'2021-08-24 17:29:43','2021-08-24 17:29:43','air-force-1-07-prm-shoe-DPRVWV (1).png');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (17,'/storage/product/1/18.png',12,'2021-08-24 17:29:43','2021-08-24 17:29:43','air-force-1-07-prm-shoe-DPRVWV.png');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (18,'/storage/product/1/16.jpg',12,'2021-08-24 17:29:43','2021-08-24 17:29:43','air-force-1-07-prm-shoe-DPRVWV.jpg');

/*Table structure for table `product_tags` */

CREATE TABLE `product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_tags` */

insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (1,1,1,'2021-08-23 21:53:42','2021-08-23 21:53:42');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (2,2,2,'2021-08-24 16:52:09','2021-08-24 16:52:09');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (3,2,3,'2021-08-24 16:52:09','2021-08-24 16:52:09');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (4,2,4,'2021-08-24 16:52:09','2021-08-24 16:52:09');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (5,3,5,'2021-08-24 16:58:21','2021-08-24 16:58:21');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (6,3,3,'2021-08-24 16:58:21','2021-08-24 16:58:21');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (7,3,6,'2021-08-24 16:58:21','2021-08-24 16:58:21');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (8,3,7,'2021-08-24 17:13:02','2021-08-24 17:13:02');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (9,3,8,'2021-08-24 17:13:02','2021-08-24 17:13:02');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (10,3,9,'2021-08-24 17:13:02','2021-08-24 17:13:02');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (11,8,5,'2021-08-24 17:17:02','2021-08-24 17:17:02');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (12,8,10,'2021-08-24 17:17:02','2021-08-24 17:17:02');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (13,8,6,'2021-08-24 17:17:02','2021-08-24 17:17:02');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (14,10,11,'2021-08-24 17:19:50','2021-08-24 17:19:50');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (15,11,12,'2021-08-24 17:20:46','2021-08-24 17:20:46');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (16,12,13,'2021-08-24 17:29:43','2021-08-24 17:29:43');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (17,13,13,'2021-08-24 21:43:46','2021-08-24 21:43:46');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (18,12,14,'2021-08-24 21:44:16','2021-08-24 21:44:16');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (19,12,14,'2021-08-24 21:44:43','2021-08-24 21:44:43');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (20,12,15,'2021-08-24 21:44:43','2021-08-24 21:44:43');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (21,13,14,'2021-08-24 21:44:55','2021-08-24 21:44:55');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (22,17,13,'2021-08-24 21:45:19','2021-08-24 21:45:19');

/*Table structure for table `products` */

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
  `view_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`price`,`feature_image_path`,`content`,`user_id`,`category_id`,`created_at`,`updated_at`,`feature_image_name`,`deleted_at`,`view_count`) values (2,'Jordan MA2','3669000','/storage/product/1/1.jpg','<p><img src=\"http://localhost/storage/photos/1/jordan-ma2-shoe-qw1Z6m.jpg\" alt=\"\" /><img src=\"http://localhost/storage/photos/1/jordan-ma2-shoe-qw1Z6m.jpg\" alt=\"\" /></p>',1,12,'2021-08-24 16:52:09','2021-08-24 16:52:09','jordan-ma2-shoe-qw1Z6m.jpg',NULL,0);
insert  into `products`(`id`,`name`,`price`,`feature_image_path`,`content`,`user_id`,`category_id`,`created_at`,`updated_at`,`feature_image_name`,`deleted_at`,`view_count`) values (7,'Rafa Winner','819000','/storage/product/1/2.jpg','<p><img src=\"http://localhost/storage/photos/1/rafa-winner-tennis-t-shirt-6p60Kp.jpg\" alt=\"\" /></p>',1,12,'2021-08-24 16:58:21','2021-08-24 16:58:21','rafa-winner-tennis-t-shirt-6p60Kp.jpg',NULL,7);
insert  into `products`(`id`,`name`,`price`,`feature_image_path`,`content`,`user_id`,`category_id`,`created_at`,`updated_at`,`feature_image_name`,`deleted_at`,`view_count`) values (12,'Nike Air Force 1 \'07 PRM','3829000','/storage/product/1/16.jpg','<h1 id=\"pdp_product_title\" class=\"headline-2 css-zis9ta\" data-test=\"product-title\">Nike Air Force 1 \'07 PRM</h1>',1,4,'2021-08-24 17:29:43','2021-08-24 21:44:43','air-force-1-07-prm-shoe-DPRVWV.jpg',NULL,5);
insert  into `products`(`id`,`name`,`price`,`feature_image_path`,`content`,`user_id`,`category_id`,`created_at`,`updated_at`,`feature_image_name`,`deleted_at`,`view_count`) values (13,'Nike Air Force 1 \'07 PRM','3829000','/storage/product/1/16.jpg','<h1 id=\"pdp_product_title\" class=\"headline-2 css-zis9ta\" data-test=\"product-title\">Nike Air Force 1 \'07 PRM</h1>',1,3,'2021-08-24 17:29:43','2021-08-24 21:44:55','air-force-1-07-prm-shoe-DPRVWV.jpg',NULL,1);
insert  into `products`(`id`,`name`,`price`,`feature_image_path`,`content`,`user_id`,`category_id`,`created_at`,`updated_at`,`feature_image_name`,`deleted_at`,`view_count`) values (15,'Nike Air Force 1 \'07 PRM','3829000','/storage/product/1/16.jpg','<h1 id=\"pdp_product_title\" class=\"headline-2 css-zis9ta\" data-test=\"product-title\">Nike Air Force 1 \'07 PRM</h1>',1,12,'2021-08-24 17:29:43','2021-08-24 17:29:43','air-force-1-07-prm-shoe-DPRVWV.jpg',NULL,8);
insert  into `products`(`id`,`name`,`price`,`feature_image_path`,`content`,`user_id`,`category_id`,`created_at`,`updated_at`,`feature_image_name`,`deleted_at`,`view_count`) values (17,'Nike Air Force 1 \'07 PRM','3829000','/storage/product/1/16.jpg','<h1 id=\"pdp_product_title\" class=\"headline-2 css-zis9ta\" data-test=\"product-title\">Nike Air Force 1 \'07 PRM</h1>',1,11,'2021-08-24 17:29:43','2021-08-24 21:45:19','air-force-1-07-prm-shoe-DPRVWV.jpg',NULL,2);

/*Table structure for table `role_user` */

CREATE TABLE `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role_user` */

insert  into `role_user`(`id`,`user_id`,`role_id`,`created_at`,`updated_at`) values (1,1,1,NULL,NULL);

/*Table structure for table `roles` */

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`deleted_at`) values (1,'admin','Quản trị hệ thống',NULL,NULL,NULL);
insert  into `roles`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`deleted_at`) values (2,'guest','Khách hàng',NULL,NULL,NULL);
insert  into `roles`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`deleted_at`) values (3,'developer','Phát triển hệ thống',NULL,NULL,NULL);
insert  into `roles`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`deleted_at`) values (4,'content','Chỉnh sửa nội dung',NULL,NULL,NULL);

/*Table structure for table `settings` */

CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

insert  into `settings`(`id`,`config_key`,`config_value`,`created_at`,`updated_at`,`type`,`deleted_at`) values (1,'phone_contact','0981124297','2021-08-24 21:53:36','2021-08-24 21:57:08','Text',NULL);
insert  into `settings`(`id`,`config_key`,`config_value`,`created_at`,`updated_at`,`type`,`deleted_at`) values (2,'phone_contact2','12123123','2021-08-24 21:58:50','2021-08-24 21:58:53','Text','2021-08-24 21:58:53');
insert  into `settings`(`id`,`config_key`,`config_value`,`created_at`,`updated_at`,`type`,`deleted_at`) values (3,'phone_contact2','12123123123','2021-08-24 21:59:20','2021-08-24 21:59:25','Text','2021-08-24 21:59:25');
insert  into `settings`(`id`,`config_key`,`config_value`,`created_at`,`updated_at`,`type`,`deleted_at`) values (4,'email','nhaduongvan5@gmail.com','2021-08-24 22:01:18','2021-08-24 22:01:18','Text',NULL);
insert  into `settings`(`id`,`config_key`,`config_value`,`created_at`,`updated_at`,`type`,`deleted_at`) values (5,'facebook_link','https://www.facebook.com/nhaduong2k1','2021-08-24 22:01:56','2021-08-24 22:01:56','Text',NULL);
insert  into `settings`(`id`,`config_key`,`config_value`,`created_at`,`updated_at`,`type`,`deleted_at`) values (6,'linkendin_link','https://www.linkendin.com/nhaduong2k1','2021-08-24 22:02:58','2021-08-24 22:02:58','Text',NULL);
insert  into `settings`(`id`,`config_key`,`config_value`,`created_at`,`updated_at`,`type`,`deleted_at`) values (7,'footer_information','<p class=\"pull-left\">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>\r\n<p class=\"pull-right\">Designed by <span><a target=\"_blank\" href=\"http://www.themeum.com\">Themeum</a></span></p>','2021-08-24 22:05:06','2021-08-24 22:30:42','Textarea',NULL);

/*Table structure for table `sliders` */

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sliders` */

insert  into `sliders`(`id`,`name`,`description`,`image_path`,`image_name`,`created_at`,`updated_at`,`deleted_at`) values (2,'Responsive Design','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','/storage/slider/1/9.jpg','girl3.jpg','2021-08-23 21:59:10','2021-08-23 21:59:10',NULL);
insert  into `sliders`(`id`,`name`,`description`,`image_path`,`image_name`,`created_at`,`updated_at`,`deleted_at`) values (7,'Rafa Winner','Another win for Rafael Nadal.Celebrate his 21st title in the Rafa Winner T-Shirt, a feat that made Rafa the all-time leader of Grand Slams in men\'s tennis history.','/storage/slider/1/12.jpg','avatar.jpg','2021-08-24 17:38:50','2021-08-24 17:38:50',NULL);
insert  into `sliders`(`id`,`name`,`description`,`image_path`,`image_name`,`created_at`,`updated_at`,`deleted_at`) values (8,'100% Responsive Design','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','/storage/slider/1/9.jpg','girl3.jpg','2021-08-23 21:59:10','2021-08-23 21:59:10',NULL);
insert  into `sliders`(`id`,`name`,`description`,`image_path`,`image_name`,`created_at`,`updated_at`,`deleted_at`) values (9,'Rafa Winner','Another win for Rafael Nadal.Celebrate his 21st title in the Rafa Winner T-Shirt, a feat that made Rafa the all-time leader of Grand Slams in men\'s tennis history.','/storage/slider/1/12.jpg','avatar.jpg','2021-08-24 17:38:50','2021-08-24 17:38:50',NULL);
insert  into `sliders`(`id`,`name`,`description`,`image_path`,`image_name`,`created_at`,`updated_at`,`deleted_at`) values (10,'80% Responsive Design','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','/storage/slider/1/9.jpg','girl3.jpg','2021-08-23 21:59:10','2021-08-23 21:59:10',NULL);
insert  into `sliders`(`id`,`name`,`description`,`image_path`,`image_name`,`created_at`,`updated_at`,`deleted_at`) values (11,'Rafa Winner','Another win for Rafael Nadal.Celebrate his 21st title in the Rafa Winner T-Shirt, a feat that made Rafa the all-time leader of Grand Slams in men\'s tennis history.','/storage/slider/1/12.jpg','avatar.jpg','2021-08-24 17:38:50','2021-08-24 17:38:50',NULL);

/*Table structure for table `tags` */

CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tags` */

insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (1,'ádsa','2021-08-23 21:53:42','2021-08-23 21:53:42');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (2,'giay','2021-08-24 16:52:09','2021-08-24 16:52:09');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (3,'nike','2021-08-24 16:52:09','2021-08-24 16:52:09');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (4,'the thao','2021-08-24 16:52:09','2021-08-24 16:52:09');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (5,'áo','2021-08-24 16:58:21','2021-08-24 16:58:21');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (6,'T-Shirt','2021-08-24 16:58:21','2021-08-24 16:58:21');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (7,'5','2021-08-24 17:13:02','2021-08-24 17:13:02');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (8,'3','2021-08-24 17:13:02','2021-08-24 17:13:02');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (9,'6','2021-08-24 17:13:02','2021-08-24 17:13:02');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (10,'adidas','2021-08-24 17:17:02','2021-08-24 17:17:02');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (11,'GIÀY CLOUDFOAM PURE 2.0','2021-08-24 17:19:50','2021-08-24 17:19:50');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (12,'ADILETTE LITE','2021-08-24 17:20:46','2021-08-24 17:20:46');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (13,'Nike Air Force 1 \'07 PRM','2021-08-24 17:29:43','2021-08-24 17:29:43');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (14,'13','2021-08-24 21:44:16','2021-08-24 21:44:16');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (15,'14','2021-08-24 21:44:43','2021-08-24 21:44:43');

/*Table structure for table `users` */

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.jpg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`avatar`,`remember_token`,`created_at`,`updated_at`,`deleted_at`) values (1,'Admin','admin@gmail.com',NULL,'$2y$10$ZXmiYtcCTuPNCYqeN8YwC.4YUde9kCWXqosd/VCIF/HPfqJ5TL..C','user.jpg',NULL,'2021-08-23 10:00:20','2021-08-23 10:03:20',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
