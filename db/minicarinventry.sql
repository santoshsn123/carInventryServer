-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `inventries`;
CREATE TABLE `inventries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `manufacturer` int(11) NOT NULL,
  `modelName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `inventries` (`id`, `manufacturer`, `modelName`, `color`, `year`, `regNumber`, `note`, `image1`, `image2`, `created_at`, `updated_at`) VALUES
(3,	5,	'jghjghjg',	'ghjghj',	'ghjghj',	'ghjghj',	'ghjghj ghjghj',	'image1_1569701699_.jpg',	'image2_1569701699_.gif',	'2019-09-28 14:44:59',	'2019-09-28 14:44:59');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4,	'2019_09_27_074547_create_users_table',	1),
(5,	'2019_09_28_100915_create_models_table',	2),
(6,	'2019_09_28_101753_create_models_table',	3),
(7,	'2019_09_28_122746_create_inventries_table',	4);

DROP TABLE IF EXISTS `models`;
CREATE TABLE `models` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `modelTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `models` (`id`, `modelTitle`, `created_at`, `updated_at`) VALUES
(3,	'Santosh',	'2019-09-28 05:49:04',	'2019-09-28 05:49:04'),
(5,	'Manish',	'2019-09-28 05:49:14',	'2019-09-28 05:49:14'),
(6,	'Parag',	'2019-09-28 05:49:18',	'2019-09-28 05:49:18'),
(7,	'Saket',	'2019-09-28 05:58:04',	'2019-09-28 05:58:04'),
(8,	'Sakets',	'2019-09-28 05:58:13',	'2019-09-28 05:58:13');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES
(1,	'dfg',	'dfg',	'santosh.narawade1@gmail.com',	'dfg',	'587c57365b54e8283fd6b1ac24acf29d',	NULL,	NULL);

-- 2019-09-29 07:24:53
