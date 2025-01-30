/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : laravel_filament

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2025-01-30 16:49:14
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO migrations VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO migrations VALUES ('2', '2014_10_12_100000_create_password_reset_tokens_table', '1');
INSERT INTO migrations VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO migrations VALUES ('4', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO migrations VALUES ('5', '2025_01_30_061117_create_students_table', '2');
INSERT INTO migrations VALUES ('6', '2025_01_30_064104_create_sections_table', '3');
INSERT INTO migrations VALUES ('7', '2025_01_30_075802_create_partners_table', '4');
INSERT INTO migrations VALUES ('8', '2025_01_30_080922_create_settings_table', '5');

-- ----------------------------
-- Table structure for `partners`
-- ----------------------------
DROP TABLE IF EXISTS `partners`;
CREATE TABLE `partners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of partners
-- ----------------------------
INSERT INTO partners VALUES ('1', 'Partner 1', 'XFrQA2aCEo74awVFcHxSDEhL1ww4I4-metadW5tdWhfa2VzYWt0aWFuX3BhbmNhc2lsYS5wbmc=-.png', 'link 1', 'www.google.com', '2025-01-30 08:07:59', '2025-01-30 08:07:59');
INSERT INTO partners VALUES ('2', 'partner 2', 'BQgBisrdcxLiBhXqJqVJVIZNbRwTRc-metaTGFtYmFuZ19EUFJEX0JhYmVsLmpwZw==-.jpg', 'dprd prov babel', 'www.google.com', '2025-01-30 09:41:38', '2025-01-30 09:41:38');

-- ----------------------------
-- Table structure for `password_reset_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `personal_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `sections`
-- ----------------------------
DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `post_as` enum('ABOUT','JUMBOTRON') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sections
-- ----------------------------
INSERT INTO sections VALUES ('8', 'photo 1', 'kthoqpL9fpEbAxVARe3m1T4Yf1XYXL-metaYmFubl9zYXJpX3l1bGlhdGkuanBlZw==-.jpeg', '<p>photo 1</p>', 'JUMBOTRON', '2025-01-30 07:50:44', '2025-01-30 07:50:44');
INSERT INTO sections VALUES ('9', 'photo 2', 'o0xo15s7LGzdRsmOQaeqipLgAxNV9N-metaaGFyd2VuZG9famZ4LmpwZWc=-.jpeg', '<p>photo 2</p>', 'JUMBOTRON', '2025-01-30 07:51:04', '2025-01-30 07:51:04');
INSERT INTO sections VALUES ('10', 'About Us', 'azZ9GsR30gOPVWx882rp19uPAPJNVg-metaSFVUIEJBQkVMIDIwMjRCYW5lcndlYi5qcGc=-.jpg', '<p><strong>ABOUT US </strong>:: Freelancer is a free bootstrap theme created by Start Bootstrap. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional SASS stylesheets for easy customization.</p><p>You can create your own custom avatar for the masthead, change the icon in the dividers, and add your email address to the contact form to make it fully functional!</p>', 'ABOUT', '2025-01-30 09:26:15', '2025-01-30 09:26:15');

-- ----------------------------
-- Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO settings VALUES ('1', '_sitename', 'judul web', 'website sederhana coyyy', 'text', '2025-01-30 08:17:54', '2025-01-30 08:28:49');
INSERT INTO settings VALUES ('2', '_location', 'Alamat kantor', 'Pangkalpinang, Kep Babel, Indonesia', 'text', '2025-01-30 08:17:54', '2025-01-30 08:17:54');
INSERT INTO settings VALUES ('3', '_youtube', 'Youtube', 'https://youtube.com', 'text', '2025-01-30 08:17:54', '2025-01-30 08:17:54');
INSERT INTO settings VALUES ('4', '_instagram', 'Instagram', 'https://instagram.com', 'text', '2025-01-30 08:17:54', '2025-01-30 08:17:54');
INSERT INTO settings VALUES ('5', '_twitter', 'Twitter', 'https://x.com', 'text', '2025-01-30 08:17:54', '2025-01-30 08:17:54');
INSERT INTO settings VALUES ('6', '_facebook', 'Facebook', 'https://facebook.com', 'longtext', '2025-01-30 08:17:54', '2025-01-30 08:17:54');
INSERT INTO settings VALUES ('7', '_site_description', 'Site Description', 'Website Sederhana Pakai laravel filament', 'text', '2025-01-30 08:17:54', '2025-01-30 08:17:54');

-- ----------------------------
-- Table structure for `students`
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nim` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `fakultas` enum('MIPA','FEBI','SOSHUM') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_nim_unique` (`nim`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO students VALUES ('1', '230001', 'Dahrul Ulum', 'MIPA', '2025-01-30 06:25:55', '2025-01-30 06:30:14');
INSERT INTO students VALUES ('2', '230002', 'Deri', 'MIPA', '2025-01-30 06:33:28', '2025-01-30 06:33:28');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO users VALUES ('1', 'dahrul', 'dahruloelum@gmail.com', null, '$2y$12$lGrRdSILZODluffpN6Tm2epd/eTzONN54mhOOkye23I6ihB/.E0YG', null, '2025-01-30 06:08:30', '2025-01-30 06:08:30');
