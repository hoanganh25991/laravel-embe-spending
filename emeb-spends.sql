-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.13-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.5105
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table embe_spending.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table embe_spending.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2014_10_12_000000_create_users_table', 1),
	('2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table embe_spending.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table embe_spending.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table embe_spending.spends
CREATE TABLE IF NOT EXISTS `spends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `money` int(10) unsigned DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spends_user_id_user_id_foreign` (`user_id`),
  CONSTRAINT `spends_user_id_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table embe_spending.spends: ~15 rows (approximately)
/*!40000 ALTER TABLE `spends` DISABLE KEYS */;
INSERT INTO `spends` (`id`, `money`, `description`, `created_at`, `updated_at`, `user_id`) VALUES
	(1, 95, 'Dignissimos delectus quaerat id dicta et. Possimus mollitia dolorem sed quia aut eligendi. Tenetur et voluptas voluptate aperiam maiores quis est. Blanditiis iure pariatur fuga necessitatibus.', '2016-06-17 16:17:04', '2016-07-17 16:17:04', 1),
	(2, 59, 'Eum necessitatibus asperiores qui ducimus et fuga. Harum velit est similique omnis et facere cumque.', '2016-06-17 16:17:04', '2016-07-17 16:17:04', 1),
	(3, 202, 'Incidunt impedit et reiciendis. Est maxime voluptatem sed distinctio accusantium. Blanditiis est quam omnis sed et architecto itaque. Eaque cumque non totam laudantium enim mollitia quia.', '2016-07-17 16:17:04', '2016-07-17 16:17:04', 1),
	(4, 479, 'Fuga quod voluptatem quo facilis voluptatem. Aspernatur voluptatem non omnis natus ducimus neque. Ipsum suscipit vel voluptates eum quia sed hic.', '2016-06-17 16:17:04', '2016-07-17 16:17:04', 1),
	(5, 67, 'Expedita eos vero ipsa minus. Illum dolorem nihil sit repellendus. Blanditiis aperiam quae consequatur voluptatibus quasi quibusdam. Autem ad inventore natus consequatur.', '2016-07-17 16:17:04', '2016-07-17 16:17:04', 1),
	(6, 92, 'Labore enim consectetur ut voluptatem nesciunt placeat. Reiciendis et ut ipsam minus. Non et quia facere nisi deserunt. Iste praesentium saepe consequatur officia tempore ut porro.', '2016-07-17 16:17:04', '2016-07-17 16:17:04', 1),
	(7, 188, 'Ipsam ratione perferendis eum quasi ducimus delectus labore saepe. Quidem perferendis maiores qui et id est fugit. Cumque quis quo deserunt voluptas fugiat accusamus quae non. Omnis reprehenderit et veniam neque.', '2016-07-17 16:17:04', '2016-07-17 16:17:04', 1),
	(8, 194, 'Quasi voluptas itaque reiciendis non. Eaque dolorem qui nemo. Perspiciatis ipsa voluptate sunt illo nulla nostrum. Tenetur labore optio nisi aperiam fugit maiores.', '2016-07-16 16:17:04', '2016-07-17 16:17:04', 1),
	(9, 133, 'Rem quisquam labore voluptates voluptas eius quia a minima. Et non ab enim asperiores quas enim quis. Id ea voluptas velit alias laudantium ut quia. Repudiandae nobis eos aliquam praesentium.', '2016-07-15 16:17:04', '2016-07-17 16:17:04', 1),
	(10, 329, 'Eum veritatis corrupti harum iure odio fugiat. In id impedit reprehenderit minus. A ullam ea velit in consequatur aspernatur eos.', '2016-07-17 16:17:04', '2016-07-17 16:17:04', 1),
	(11, 315, 'Et voluptate aspernatur perspiciatis vel pariatur temporibus deserunt. Id cumque illo beatae dignissimos. Eligendi quo voluptas excepturi aut itaque vero.', '2016-06-14 16:17:04', '2016-07-17 16:17:04', 1),
	(12, 156, 'Nisi nostrum sint quam nihil. Culpa libero commodi quo culpa. Consequuntur corporis ducimus aut voluptatibus non. Voluptatem aut officiis doloremque.', '2016-07-17 16:17:04', '2016-07-17 16:17:04', 1),
	(13, 243, 'Adipisci consequatur voluptatem pariatur. Ut sit optio nostrum soluta quis itaque. Incidunt ut cupiditate vero molestiae consectetur. Reprehenderit deleniti cumque quod et qui nemo exercitationem hic.', '2016-07-17 16:17:04', '2016-07-17 16:17:04', 1),
	(14, 495, 'Recusandae error tenetur ut harum iste. Minima architecto consequuntur quia aut. Omnis ad dolores excepturi sit totam fugit odio. Voluptas veritatis natus et.', '2016-07-13 16:17:04', '2016-07-17 16:17:04', 1),
	(15, 491, 'Sunt facere aperiam porro reiciendis. Eaque dolores sed necessitatibus sunt adipisci. Vero perspiciatis vero quaerat commodi nisi.', '2016-07-17 16:17:04', '2016-07-17 16:17:04', 1);
/*!40000 ALTER TABLE `spends` ENABLE KEYS */;

-- Dumping structure for table embe_spending.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table embe_spending.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Anh Le Hoang', 'lehoanganh25991@gmail.com', '$2y$10$ZZ03/9RzbChd1A7BfRCl0eiPFI5T2mtH0P/j4BmRAhrkb2aSpML5C', 'cYDtbZCSA9K2uSvjCYl81CuAsc2NmX50mIWCLNEO0VlrMlWSu8xWCnyVL9pi', '2016-07-06 02:15:41', '2016-07-06 02:21:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
