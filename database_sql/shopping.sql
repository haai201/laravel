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
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laravel` /*!40100 DEFAULT CHARACTER SET utf8 */;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`parent_id`,`slug`,`created_at`,`updated_at`,`deleted_at`) values (1,'Laptop Asus',0,'Laptop Asus','2021-07-23 17:31:38','2021-07-23 17:31:38',NULL),(2,'Laptop Dell',0,'Laptop Dell','2021-07-23 17:31:49','2021-07-23 17:31:49',NULL),(3,'Laptop MSI',0,'Laptop MSI','2021-07-23 17:32:01','2021-07-23 17:32:01',NULL),(4,'Laptop Asus TUF Gaming',1,'Laptop Asus TUF Gaming','2021-07-23 17:32:14','2021-07-23 17:32:14',NULL),(5,'Laptop Asus ZenBook',1,'Laptop Asus ZenBook','2021-07-23 17:32:36','2021-07-23 17:32:36',NULL),(7,'Laptop MSI Prestige Series',3,'Laptop MSI Prestige Series','2021-07-23 17:34:02','2021-07-23 17:34:02',NULL),(8,'Laptop Dell Inspiron',2,'Laptop Dell Inspiron','2021-07-23 17:34:29','2021-07-24 16:50:43',NULL),(11,'NhaDuongtest',0,'NhaDuongtest','2021-07-23 21:32:48','2021-07-23 21:32:50','2021-07-23 21:32:50'),(12,'Laptop Dell Inspiron',3,'Laptop Dell Inspiron','2021-07-24 16:35:17','2021-07-24 16:35:33','2021-07-24 16:35:33');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menus` */

insert  into `menus`(`id`,`name`,`parent_id`,`created_at`,`updated_at`,`slug`,`deleted_at`) values (1,'C1',0,NULL,'2021-07-24 17:55:20','C1',NULL),(2,'C2',0,NULL,NULL,'',NULL),(3,'C3',0,NULL,NULL,'',NULL),(4,'C1.1',1,NULL,NULL,'',NULL),(5,'C2.1',2,NULL,NULL,'',NULL),(6,'C3.1',2,NULL,'2021-07-24 16:51:50','C3.1',NULL),(11,'NhaDuong',0,'2021-07-24 17:58:01','2021-07-24 17:59:16','NhaDuong','2021-07-24 17:59:16');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_07_18_153305_create_categories_table',1),(5,'2021_07_23_174835_add_columm_deleted_at_table_category',2),(6,'2021_07_23_213425_create_menus_table',3),(7,'2021_07_24_161002_add_columm_slug_to_menus_table',4),(8,'2021_07_24_175353_add_soft_slug_to_menus_table',5),(9,'2021_07_25_163716_create_products_table',6),(10,'2021_07_25_163958_create_product_images_table',6),(11,'2021_07_25_164118_create_tags_table',6),(12,'2021_07_25_164156_create_product_tags_table',6),(13,'2021_07_26_203635_add_column_fueature_image_name',7),(14,'2021_07_27_120551_add_column_image_name_to_table_product_image',8);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `product_images` */

DROP TABLE IF EXISTS `product_images`;

CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_images` */

insert  into `product_images`(`id`,`image_path`,`product_id`,`created_at`,`updated_at`,`image_name`) values (59,'/storage/product/1/20.jpg',1,'2021-07-27 17:55:20','2021-07-27 17:55:20','120_52384_laptop_asus_gaming_tuf_fa706iu_h7133t_r7_4800h_7.jpg'),(60,'/storage/product/1/13.jpg',1,'2021-07-27 17:55:20','2021-07-27 17:55:20','tuf1.jpg'),(61,'/storage/product/1/9.jpg',1,'2021-07-27 17:55:20','2021-07-27 17:55:20','tuf.jpg'),(62,'/storage/product/1/6.png',2,'2021-07-27 17:57:52','2021-07-27 17:57:52','58450_laptop_msi_gaming_gf65_thin_10ue_241vn_den_ba_lo_6.png'),(63,'/storage/product/1/4.png',2,'2021-07-27 17:57:52','2021-07-27 17:57:52','58450_laptop_msi_gaming_gf65_thin_10ue_241vn_den_ba_lo_7.png'),(64,'/storage/product/1/1.png',2,'2021-07-27 17:57:52','2021-07-27 17:57:52','58450_laptop_msi_gaming_gf65_thin_10ue_241vn_den_ba_lo_8.png'),(65,'/storage/product/1/5.jpg',3,'2021-07-27 17:59:26','2021-07-27 17:59:26','55876_dsc05440_1.jpg'),(66,'/storage/product/1/8.jpg',3,'2021-07-27 17:59:26','2021-07-27 17:59:26','55876_dsc05361_1.jpg'),(67,'/storage/product/1/8.png',3,'2021-07-27 17:59:26','2021-07-27 17:59:26','55876_prestige15__4_.png'),(68,'/storage/product/1/1.jpg',4,'2021-07-27 18:00:35','2021-07-27 18:00:35','54230_msi_modern_14__4_.jpg'),(69,'/storage/product/1/14.jpg',4,'2021-07-27 18:00:35','2021-07-27 18:00:35','54230_msi_modern_14__3_.jpg'),(70,'/storage/product/1/6.jpg',4,'2021-07-27 18:00:35','2021-07-27 18:00:35','54230_msi_modern_14__1_.jpg'),(71,'/storage/product/1/18.jpg',5,'2021-07-27 18:02:03','2021-07-27 18:02:03','120_60185_laptop_asus_gaming_tuf_fx506hc_13.jpg'),(72,'/storage/product/1/8.jpg',5,'2021-07-27 18:02:03','2021-07-27 18:02:03','60185_laptop_asus_gaming_tuf_fx506hc_11.jpg'),(73,'/storage/product/1/10.png',5,'2021-07-27 18:02:03','2021-07-27 18:02:03','60185_laptop_asus_gaming_tuf_fx506hc_26.png'),(74,'/storage/product/1/19.png',6,'2021-07-27 18:03:07','2021-07-27 18:03:07','120_57224_ux363__3_.png'),(75,'/storage/product/1/20.png',6,'2021-07-27 18:03:07','2021-07-27 18:03:07','57224_ux363__2_.png'),(76,'/storage/product/1/7.png',6,'2021-07-27 18:03:07','2021-07-27 18:03:07','57224_ux363__5_.png'),(77,'/storage/product/1/16.jpg',7,'2021-07-27 18:04:39','2021-07-27 18:04:39','120_56381_inspiron_5490__5_.jpg'),(78,'/storage/product/1/10.jpg',7,'2021-07-27 18:04:39','2021-07-27 18:04:39','120_56381_inspiron_5490__3_.jpg'),(79,'/storage/product/1/11.jpg',7,'2021-07-27 18:04:39','2021-07-27 18:04:39','56381_inspiron_5490__6_.jpg');

/*Table structure for table `product_tags` */

DROP TABLE IF EXISTS `product_tags`;

CREATE TABLE `product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_tags` */

insert  into `product_tags`(`id`,`product_id`,`tag_id`,`created_at`,`updated_at`) values (9,1,7,'2021-07-27 17:55:20','2021-07-27 17:55:20'),(10,2,8,'2021-07-27 17:57:52','2021-07-27 17:57:52'),(11,3,9,'2021-07-27 17:59:26','2021-07-27 17:59:26'),(12,4,10,'2021-07-27 18:00:35','2021-07-27 18:00:35'),(13,5,11,'2021-07-27 18:02:03','2021-07-27 18:02:03'),(14,6,12,'2021-07-27 18:03:07','2021-07-27 18:03:07'),(15,7,13,'2021-07-27 18:04:39','2021-07-27 18:04:39');

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
  `feature_image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`price`,`feature_image_path`,`content`,`user_id`,`category_id`,`created_at`,`updated_at`,`feature_image_name`) values (1,'Laptop Asus Gaming TUF FA706IU-H7133T','25999000','/storage/product/1/15.jpg','<ul id=\"js-tskt-item\" class=\"product-summary-item-ul d-flex flex-wrap mb-0\">\r\n<li>CPU: AMD Ryzen 7 4800H</li>\r\n<li>RAM: 8GB</li>\r\n<li>Ổ cứng: 512GB SSD</li>\r\n<li>VGA: NVIDIA GTX 1660Ti 6GB</li>\r\n<li>M&agrave;n h&igrave;nh: 17.3 FHD 120Hz</li>\r\n<li>HĐH: Win 10</li>\r\n<li>M&agrave;u: X&aacute;m</li>\r\n</ul>',1,4,'2021-07-27 17:55:20','2021-07-27 17:55:20','52384_laptop_asus_gaming_tuf_fa706iu_h7133t_r7_4800h_10.jpg'),(2,'Laptop MSI Gaming GF65 Thin (10UE-241VN)','27999000','/storage/product/1/6.png','<ul id=\"js-tskt-item\" class=\"product-summary-item-ul d-flex flex-wrap mb-0\">\r\n<li>CPU: Intel i5 10300H</li>\r\n<li>RAM: 16GB</li>\r\n<li>Ổ cứng: 512GB SSD</li>\r\n<li>VGA: NVIDIA RTX 3060 6GB</li>\r\n<li>M&agrave;n h&igrave;nh: 15.6 inch FHD 144Hz</li>\r\n<li>Tấm nền: IPS level</li>\r\n<li>Ph&iacute;m: c&oacute; đ&egrave;n led</li>\r\n<li>HĐH: Win 10</li>\r\n<li>M&agrave;u: Đen</li>\r\n</ul>',1,3,'2021-07-27 17:57:52','2021-07-27 17:57:52','58450_laptop_msi_gaming_gf65_thin_10ue_241vn_den_ba_lo_8.png'),(3,'Laptop MSI Prestige 15 A11SCX (209VN)','33989000','/storage/product/1/19.jpg','<ul id=\"js-tskt-item\" class=\"product-summary-item-ul d-flex flex-wrap mb-0\">\r\n<li>CPU: Intel Core i7 1185G7</li>\r\n<li>RAM: 16GB</li>\r\n<li>Ổ cứng: 512GB SSD</li>\r\n<li>VGA: NVIDIA GTX 1650 Max Q 4GB</li>\r\n<li>M&agrave;n h&igrave;nh: 15.6 inch FHD</li>\r\n<li>B&agrave;n ph&iacute;m: c&oacute; đ&egrave;n led</li>\r\n<li>HĐH: Win 10</li>\r\n<li>M&agrave;u: X&aacute;m</li>\r\n</ul>',1,7,'2021-07-27 17:59:26','2021-07-27 17:59:26','55876_dsc05440_1.jpg'),(4,'Laptop MSI Prestige 14 A10RAS 220VN','27289000','/storage/product/1/7.jpg','<ul id=\"js-tskt-item\" class=\"product-summary-item-ul d-flex flex-wrap mb-0\">\r\n<li>CPU: Intel Core i7 10510U</li>\r\n<li>RAM: 16GB RAM</li>\r\n<li>VGA: Nvidia MX 330 2G</li>\r\n<li>Ổ cứng: 512GB SSD</li>\r\n<li>M&agrave;n h&igrave;nh: 14\" FHD</li>\r\n<li>Hệ điều h&agrave;nh: Win 10</li>\r\n<li>M&agrave;u sắc: X&aacute;m</li>\r\n</ul>',1,7,'2021-07-27 18:00:35','2021-07-27 18:00:35','54230_msi_modern_14__1_.jpg'),(5,'Laptop Asus Gaming TUF FX506HM-HN018T','29999000','/storage/product/1/1.png','<ul id=\"js-tskt-item\" class=\"product-summary-item-ul d-flex flex-wrap mb-0\">\r\n<li>CPU: Intel Core i5 11400H</li>\r\n<li>RAM: 8GB</li>\r\n<li>Ổ cứng: 512GB SSD</li>\r\n<li>VGA: NVIDIA RTX 3060 6GB</li>\r\n<li>M&agrave;n h&igrave;nh: 15.6 FHD 144hz</li>\r\n<li>B&agrave;n ph&iacute;m: c&oacute; đ&egrave;n led</li>\r\n<li>HĐH: Win 10</li>\r\n<li>M&agrave;u: X&aacute;m</li>\r\n</ul>',1,4,'2021-07-27 18:02:03','2021-07-27 18:02:03','60185_laptop_asus_gaming_tuf_fx506hc_26.png'),(6,'Laptop Asus ZenBook UX363EA-HP130T','27899000','/storage/product/1/5.png','<ul id=\"js-tskt-item\" class=\"product-summary-item-ul d-flex flex-wrap mb-0\">\r\n<li>CPU: Intel Core i5 1135G7</li>\r\n<li>RAM: 8GB</li>\r\n<li>Ổ cứng: 512GB SSD</li>\r\n<li>VGA: Onboard</li>\r\n<li>M&agrave;n h&igrave;nh: 13.3 FHD Cảm ứng</li>\r\n<li>HĐH: Win 10</li>\r\n<li>M&agrave;u: X&aacute;m</li>\r\n</ul>',1,5,'2021-07-27 18:03:07','2021-07-27 18:03:07','57224_ux363__5_.png'),(7,'Laptop Dell Inspiron 5490 (FMKJV11)','20689000','/storage/product/1/9.jpg','<ul id=\"js-tskt-item\" class=\"product-summary-item-ul d-flex flex-wrap mb-0\">\r\n<li>CPU: Intel core i5 10210u</li>\r\n<li>GPU: NVIDIA GeForce MX230 2GB</li>\r\n<li>RAM: 8GB DDR4</li>\r\n<li>SSD: 512GB M.2</li>\r\n<li>M&Agrave;N H&Igrave;NH: 14\" FHD</li>\r\n<li>HĐH: Windows 10</li>\r\n<li>M&agrave;u: Bạc</li>\r\n</ul>',1,8,'2021-07-27 18:04:39','2021-07-27 18:04:39','56381_inspiron_5490__6_.jpg');

/*Table structure for table `tags` */

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tags` */

insert  into `tags`(`id`,`name`,`created_at`,`updated_at`) values (7,'R7 4800H/8GB RAM/512GB SSD/17.3 FHD 120Ghz/GTX 1660Ti 6GB/Win10/Balo/Xám)','2021-07-27 17:55:20','2021-07-27 17:55:20'),(8,'i5 10300H 16GB RAM/512GB SSD/RTX 3060 6G/15.6 inch FHD 144Hz/Win10/Đen','2021-07-27 17:57:52','2021-07-27 17:57:52'),(9,'i7 1185G7/16GB/512GB SSD/1650 Max Q/15.6FHD/Win10/Xám','2021-07-27 17:59:26','2021-07-27 17:59:26'),(10,'i7 10510U/16GB RAM/512GB SSD/14.0 inch FHD/ MX 330 2G//Win10/Xám','2021-07-27 18:00:35','2021-07-27 18:00:35'),(11,'(i5 11400H/8GB RAM/512GB SSD/15.6 FHD 144hz/RTX 3060 6GB/Win10/Xám)','2021-07-27 18:02:03','2021-07-27 18:02:03'),(12,'(i5 1135G7/8GB RAM/512B SSD/13.3 FHD Cảm ứng/Win10/Bút/Túi/Xám)','2021-07-27 18:03:07','2021-07-27 18:03:07'),(13,'(i5 10210U/8GB RAM/512GBSSD/MX230 2G/14.0 inch FHD/Win10/Bạc)','2021-07-27 18:04:39','2021-07-27 18:04:39');

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,'','nhaduongvan5@gmail.com',NULL,'$2y$10$.0D3pMPn1/VYn6nlciHoceevVFlVP1yN6q/2YSn9aRc2hz2vs.1x.',NULL,NULL,NULL),(2,'','nhaduongvan7@gmail.com',NULL,'$2y$10$.0D3pMPn1/VYn6nlciHoceevVFlVP1yN6q/2YSn9aRc2hz2vs.1x.',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
