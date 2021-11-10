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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (1,'Laptop MSI GF Series',0,'Laptop MSI GF Series','2021-08-30 21:12:00','2021-08-30 21:12:00',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (2,'Laptop Asus TUF Gaming FX506KT',0,'Laptop Asus TUF Gaming FX506KT','2021-08-30 21:12:55','2021-08-30 21:12:55',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (3,'Laptop MSI GP Series',0,'Laptop MSI GP Series','2021-08-30 21:14:09','2021-08-30 21:14:09',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (4,'dev12',0,'dev12','2021-08-30 21:14:27','2021-08-30 21:34:29','2021-08-30 21:34:29');
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (5,'Admin',0,'Admin','2021-08-30 21:29:17','2021-08-30 21:47:21',NULL);
insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (6,'dev',0,'dev','2021-08-30 21:47:48','2021-08-30 21:47:48',NULL);

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

/*Table structure for table `menus` */

CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menus` */

/*Table structure for table `migrations` */

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

/*Table structure for table `password_resets` */

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (13,1,17,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (14,1,18,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (15,1,19,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (16,1,20,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (17,1,22,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (18,1,23,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (19,1,24,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (20,1,25,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (21,1,27,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (22,1,28,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (23,1,29,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (24,1,30,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (25,1,32,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (26,1,33,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (27,1,34,NULL,NULL);
insert  into `permission_role`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values (28,1,35,NULL,NULL);

/*Table structure for table `permissions` */

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (1,'Category','Category','2021-08-30 20:54:28','2021-08-30 20:54:28',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (2,'List','List','2021-08-30 20:54:28','2021-08-30 20:54:28',1,'Category_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (3,'Add','Add','2021-08-30 20:54:28','2021-08-30 20:54:28',1,'Category_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (4,'Edit','Edit','2021-08-30 20:54:28','2021-08-30 20:54:28',1,'Category_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (5,'Delete','Delete','2021-08-30 20:54:28','2021-08-30 20:54:28',1,'Category_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (6,'Slider','Slider','2021-08-30 21:02:24','2021-08-30 21:02:24',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (7,'List','List','2021-08-30 21:02:24','2021-08-30 21:02:24',6,'Slider_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (8,'Add','Add','2021-08-30 21:02:24','2021-08-30 21:02:24',6,'Slider_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (9,'Edit','Edit','2021-08-30 21:02:24','2021-08-30 21:02:24',6,'Slider_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (10,'Delete','Delete','2021-08-30 21:02:24','2021-08-30 21:02:24',6,'Slider_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (11,'Menu','Menu','2021-08-30 21:02:29','2021-08-30 21:02:29',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (12,'List','List','2021-08-30 21:02:29','2021-08-30 21:02:29',11,'Menu_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (13,'Add','Add','2021-08-30 21:02:29','2021-08-30 21:02:29',11,'Menu_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (14,'Edit','Edit','2021-08-30 21:02:29','2021-08-30 21:02:29',11,'Menu_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (15,'Delete','Delete','2021-08-30 21:02:29','2021-08-30 21:02:29',11,'Menu_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (16,'Product','Product','2021-08-30 21:02:35','2021-08-30 21:02:35',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (17,'List','List','2021-08-30 21:02:35','2021-08-30 21:02:35',16,'Product_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (18,'Add','Add','2021-08-30 21:02:35','2021-08-30 21:02:35',16,'Product_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (19,'Edit','Edit','2021-08-30 21:02:35','2021-08-30 21:02:35',16,'Product_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (20,'Delete','Delete','2021-08-30 21:02:35','2021-08-30 21:02:35',16,'Product_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (21,'Setting','Setting','2021-08-30 21:02:40','2021-08-30 21:02:40',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (22,'List','List','2021-08-30 21:02:40','2021-08-30 21:02:40',21,'Setting_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (23,'Add','Add','2021-08-30 21:02:40','2021-08-30 21:02:40',21,'Setting_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (24,'Edit','Edit','2021-08-30 21:02:40','2021-08-30 21:02:40',21,'Setting_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (25,'Delete','Delete','2021-08-30 21:02:40','2021-08-30 21:02:40',21,'Setting_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (26,'User','User','2021-08-30 21:02:45','2021-08-30 21:02:45',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (27,'List','List','2021-08-30 21:02:45','2021-08-30 21:02:45',26,'User_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (28,'Add','Add','2021-08-30 21:02:45','2021-08-30 21:02:45',26,'User_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (29,'Edit','Edit','2021-08-30 21:02:45','2021-08-30 21:02:45',26,'User_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (30,'Delete','Delete','2021-08-30 21:02:45','2021-08-30 21:02:45',26,'User_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (31,'Role','Role','2021-08-30 21:02:51','2021-08-30 21:02:51',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (32,'List','List','2021-08-30 21:02:51','2021-08-30 21:02:51',31,'Role_List',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (33,'Add','Add','2021-08-30 21:02:51','2021-08-30 21:02:51',31,'Role_Add',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (34,'Edit','Edit','2021-08-30 21:02:51','2021-08-30 21:02:51',31,'Role_Edit',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (35,'Delete','Delete','2021-08-30 21:02:51','2021-08-30 21:02:51',31,'Role_Delete',NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (36,'Test','Test','2021-08-30 21:37:27','2021-08-30 21:37:27',0,NULL,NULL);
insert  into `permissions`(`id`,`name`,`display_name`,`created_at`,`updated_at`,`parent_id`,`key_code`,`deleted_at`) values (37,'Add','Add','2021-08-30 21:37:27','2021-08-30 21:37:27',36,'Test_Add',NULL);

/*Table structure for table `product_images` */

CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_images` */

insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (1,'/storage/product/1/4.jpg',1,'2021-08-30 21:36:39','2021-08-30 21:36:39','xiga-logo.jpg');
insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (2,'/storage/product/1/20.png',2,'2021-08-30 22:41:53','2021-08-30 22:41:53','jordan-ma2-shoe-qw1Z6m (2).png');

/*Table structure for table `product_tags` */

CREATE TABLE `product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_tags` */

insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (1,1,1,'2021-08-30 21:36:39','2021-08-30 21:36:39');
insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (2,2,2,'2021-08-30 22:41:53','2021-08-30 22:41:53');

/*Table structure for table `products` */

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`price`,`feature_image_path`,`content`,`user_id`,`category_id`,`created_at`,`updated_at`,`feature_image_name`,`deleted_at`) values (1,'Laptop MSI GF Series','23499000','/storage/product/1/3.jpg','<p>sdasd</p>',1,2,'2021-08-30 21:36:39','2021-08-30 21:47:37','xiga-logo.jpg','2021-08-30 21:47:37');
insert  into `products`(`id`,`name`,`price`,`feature_image_path`,`content`,`user_id`,`category_id`,`created_at`,`updated_at`,`feature_image_name`,`deleted_at`) values (2,'Laptop Asus TUF Gaming FX506KT','23499000','/storage/product/1/15.jpg','<p>&aacute;dasd</p>',1,5,'2021-08-30 22:41:53','2021-08-30 22:41:53','avatar.jpg',NULL);

/*Table structure for table `role_user` */

CREATE TABLE `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role_user` */

insert  into `role_user`(`id`,`user_id`,`role_id`,`created_at`,`updated_at`) values (1,1,1,NULL,NULL);
insert  into `role_user`(`id`,`user_id`,`role_id`,`created_at`,`updated_at`) values (2,2,2,NULL,NULL);

/*Table structure for table `roles` */

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `config_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

/*Table structure for table `sliders` */

CREATE TABLE `sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sliders` */

/*Table structure for table `tags` */

CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tags` */

insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (1,'đâs','2021-08-30 21:36:39','2021-08-30 21:36:39');
insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (2,'ádasd','2021-08-30 22:41:53','2021-08-30 22:41:53');

/*Table structure for table `users` */

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`,`deleted_at`) values (1,'Admin','admin@gmail.com',NULL,'$2y$10$5RtlWMhYEotfl6uCCTpDBuJKJmDqTlV8ePRH5x2EkegVZAXweYE6C',NULL,'2021-08-30 20:46:59','2021-08-30 21:09:42',NULL);
insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`,`deleted_at`) values (2,'Dương Văn Nhã','dev@gmail.com',NULL,'$2y$10$MyRUQ/YEb.nV/uEdIt.TS.v4yjX0LKG3TexDe4iV8d07xFIAF4OMi',NULL,'2021-08-30 22:06:32','2021-08-30 22:06:32',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
