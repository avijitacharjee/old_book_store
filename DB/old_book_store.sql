-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2021 at 04:01 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `old_book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role`, `status`, `password`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mail.com', '01861932523', 1, 1, '$2y$10$FzlHSBcHBWLcwXZBPYCcSemBNH6XGPdNiNS8XYNTKY4at98zb.isu', NULL, '2021-08-03 07:55:47', '2021-08-03 07:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edition` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category1_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category2_id` bigint(20) UNSIGNED DEFAULT NULL,
  `isbn_no` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_sold` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `tags` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `seller_id`, `title`, `author`, `edition`, `publication`, `version`, `category_id`, `sub_category1_id`, `sub_category2_id`, `isbn_no`, `price`, `slug`, `short_description`, `description`, `division_id`, `district_id`, `upazila_id`, `is_sold`, `status`, `tags`, `created_at`, `updated_at`) VALUES
(1, 8, 'Miss Gwendolyn Fadel Jr.', 'Nestor Torphy', '3rd', 'Chandler Harris IV', 'English', 17, NULL, NULL, NULL, 113, 'miss-gwendolyn-fadel-jr', 'Quisquam provident deleniti est repudiandae odit necessitatibus blanditiis.', 'Eos doloremque alias eius sint totam. Quam et voluptatibus qui debitis. Omnis et itaque eum quidem perspiciatis et.', 8, 72, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(2, 25, 'Raven Wiegand Jr.', 'Ms. Rita DuBuque', '6th', 'Dwight Roberts', 'Bangla', 13, NULL, NULL, NULL, 219, 'raven-wiegand-jr', 'Nemo ea et fugit rerum voluptatem.', 'Autem voluptates aperiam maiores. Quia est recusandae necessitatibus qui necessitatibus sed ut. Qui sint aspernatur unde aut non. Dolor eveniet vitae minus aperiam veritatis sed culpa quibusdam.', 8, 72, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(3, 20, 'Jaeden McDermott', 'Mavis Kerluke II', '6th', 'Nikki Witting', 'Bangla', 9, NULL, NULL, NULL, 336, 'jaeden-mcdermott', 'Velit dolor sunt vel quo et.', 'Est illo ab repellendus ut facilis est. Exercitationem odio velit tempore dolorum dolor. Sit rem officia libero dolorum qui sit cum.', 1, 16, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(4, 20, 'Darrin Huel PhD', 'Raymundo Cummings', '5th', 'Joesph Jones', 'Bangla', 15, NULL, NULL, NULL, 440, 'darrin-huel-phd', 'Voluptatum tempore consequatur tempora rem.', 'Et sint eveniet molestias aliquid. Sequi nisi qui et rerum. Id reprehenderit aut sit aspernatur. Fuga voluptates tenetur in quasi.', 1, 12, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(5, 23, 'Jayde Nienow', 'Missouri Corkery', '3rd', 'Mr. Eddie Senger', 'English', 16, NULL, NULL, NULL, 240, 'jayde-nienow', 'Aut ipsum est at suscipit voluptatibus itaque dolorem.', 'Officiis dolorum aut error rem voluptatum est aut. Ipsum molestias dolores eum voluptas consectetur ad.', 6, 63, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(6, 19, 'Kaycee Dickens', 'Quinton Rempel DVM', '3rd', 'Cleora Grimes III', 'English', 6, NULL, NULL, NULL, 358, 'kaycee-dickens', 'Non accusamus ex rerum dolorem.', 'Aliquam et quia dolores voluptatem. Dolorem enim quia labore velit aut quisquam quaerat et. Magnam blanditiis magni ea nemo.', 1, 12, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(7, 13, 'Miss Alysson Koepp', 'Mr. Cornell Reilly DVM', '6th', 'Mr. Jonathon Beier II', 'English', 1, NULL, NULL, NULL, 263, 'miss-alysson-koepp', 'Quia quia modi expedita aliquid reprehenderit maxime iure quos.', 'Assumenda ea quia unde odit voluptate optio. Ut unde et accusantium aut et. Sed voluptas et nisi sunt.', 2, 27, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(8, 20, 'Joseph Mosciski', 'Webster Beahan', '4th', 'Mrs. Lenora Hackett Jr.', 'English', 6, NULL, NULL, NULL, 328, 'joseph-mosciski', 'Exercitationem vel nihil ut ut ea eum.', 'Possimus occaecati aut et aut molestiae consequatur et. Cupiditate possimus hic vel. Sed omnis et impedit asperiores nisi minima illum quasi. Rem quia dolorem aperiam neque consequatur velit.', 8, 73, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(9, 9, 'Lesly Kling', 'Miss Amie D\'Amore', '5th', 'Christine O\'Conner IV', 'Bangla', 2, NULL, NULL, NULL, 223, 'lesly-kling', 'Optio perspiciatis vitae sint assumenda et doloremque corporis.', 'Sapiente cumque molestiae quia quidem illum laboriosam. Atque saepe officiis cumque ab repellat voluptatem officiis. Nemo debitis nam est error nihil.', 1, 11, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(10, 6, 'Alexander Frami', 'Sonia Gibson', '6th', 'Carolanne Goyette', 'English', 6, NULL, NULL, NULL, 265, 'alexander-frami', 'Et qui quidem tempore rerum.', 'Beatae dolorum veniam quo rerum molestias. Voluptatem aliquid odit tempore ut atque. Accusamus est nesciunt voluptas dolorem eos nam earum. Ullam sed totam possimus commodi.', 8, 72, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(11, 15, 'Tressa Cruickshank', 'Onie Mitchell', '4th', 'Dena Kautzer', 'English', 12, NULL, NULL, NULL, 260, 'tressa-cruickshank', 'Voluptatem natus qui voluptatem nostrum sed.', 'Illum inventore nesciunt praesentium eveniet. Modi dolore tempora eveniet impedit suscipit perferendis magnam. Vel aut aliquam fugiat magnam dolores eaque.', 6, 55, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(12, 9, 'Regan Muller', 'Donnell Hand', '4th', 'Dr. Monty Walter IV', 'English', 6, NULL, NULL, NULL, 139, 'regan-muller', 'Est ad vero sit possimus praesentium quia.', 'Error dolores inventore ab odit debitis doloremque. Voluptas voluptatibus aut vero ut. Laborum exercitationem corrupti quam amet. Voluptatem eum a non laudantium ut ducimus.', 6, 55, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(13, 10, 'Dr. Cordell Kuhlman', 'Josefa Padberg', '4th', 'Prof. Rosalyn Wintheiser Sr.', 'Bangla', 9, NULL, NULL, NULL, 241, 'dr-cordell-kuhlman', 'Deserunt et tempore sed et.', 'Nemo atque perspiciatis facilis optio facilis. Voluptate sapiente vitae ea quos fuga rerum. Et porro ut consequuntur labore et. Quibusdam numquam nulla error quae sit at.', 6, 64, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(14, 13, 'June Boehm', 'Dr. Armand Boyer', '6th', 'Yadira Bayer', 'English', 18, NULL, NULL, NULL, 128, 'june-boehm', 'Ut voluptatem ipsum sed quod.', 'Qui ea ut ducimus sed. Veniam sit sint ullam est. Occaecati rerum sint delectus ut sequi eos. Fuga nobis animi et qui blanditiis aut qui.', 6, 60, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(15, 15, 'Jake Crona', 'Glen Leuschke', '5th', 'Kyle Bayer', 'English', 14, NULL, NULL, NULL, 202, 'jake-crona', 'Numquam optio quidem voluptate officiis voluptates eaque culpa.', 'Inventore ut eum dolores quasi aut. Nemo quo a hic. Eum omnis culpa qui ducimus. Sed laborum et nostrum atque.', 7, 67, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(16, 10, 'Kristoffer Murray', 'Reese Kertzmann', '5th', 'Stephania Homenick DVM', 'English', 10, NULL, NULL, NULL, 171, 'kristoffer-murray', 'Est sit et repellendus a omnis.', 'Pariatur ea sit ut sed voluptate architecto. Sed nobis aspernatur aliquid voluptatem omnis. Debitis ut eaque qui non aliquam quasi. Magni ut voluptatem earum consectetur.', 8, 71, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(17, 24, 'Samara Kirlin', 'Miss Kathlyn Rohan', '3rd', 'Maximillia Lindgren III', 'English', 18, NULL, NULL, NULL, 235, 'samara-kirlin', 'Sint voluptatem distinctio saepe molestias quis distinctio.', 'Et autem vel culpa voluptate in laborum eos. Doloremque beatae ipsa porro et facilis. Et nostrum aut vel non ut est qui.', 2, 25, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(18, 20, 'Brenden Kihn', 'Liza Monahan', '3rd', 'Verla Cassin', 'English', 13, NULL, NULL, NULL, 351, 'brenden-kihn', 'Pariatur dolorum ut aut possimus.', 'Beatae fugit accusamus ad ea. Alias laborum aut nostrum recusandae dolor corporis nam. Nesciunt sit sed in asperiores recusandae qui.', 8, 72, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(19, 25, 'Mr. Maximo Kassulke', 'Glen Purdy IV', '5th', 'Isai Reilly', 'Bangla', 8, NULL, NULL, NULL, 311, 'mr-maximo-kassulke', 'Dolor iure eveniet sapiente aut et dolor ad.', 'Iste ut qui id dolor vel. Repellat dolor tenetur tempora quae illo et magnam molestiae. Molestiae officia omnis deleniti cumque. Autem aut et veritatis blanditiis fugiat.', 5, 48, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(20, 21, 'Prof. Roderick Schumm Jr.', 'Kaci Dickens', '4th', 'Lupe Auer', 'English', 3, NULL, NULL, NULL, 154, 'prof-roderick-schumm-jr', 'Corrupti et consequatur possimus dignissimos ex distinctio distinctio.', 'Et velit sed natus omnis commodi. Quia voluptates ut voluptas consequatur omnis id. Voluptatibus porro dolor nisi non dicta et quis. Commodi earum nostrum ipsa aut iste.', 6, 62, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(21, 5, 'Annie Bednar', 'Devon Kulas', '5th', 'Ferne Ratke', 'Bangla', 9, NULL, NULL, NULL, 256, 'annie-bednar', 'Nesciunt adipisci similique illum accusamus minus.', 'Ratione adipisci autem eveniet eum quia. Quo doloremque quisquam sit et quos. Est provident quo dolorum quidem consectetur iusto dignissimos iure. Perspiciatis qui maiores consectetur est quaerat.', 3, 36, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(22, 14, 'Ernestine Sipes', 'Kennith Walker', '5th', 'Prof. Zechariah Greenfelder', 'English', 11, NULL, NULL, NULL, 295, 'ernestine-sipes', 'Ut enim ratione quis magnam et sint.', 'Tempore consequuntur ratione ipsum saepe esse doloremque et. Vero ad voluptas sed eum deleniti. Recusandae et quam quisquam. Voluptas aut consectetur quia omnis ipsum dignissimos sunt.', 3, 37, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(23, 14, 'Kianna Cormier', 'Dr. Lee Koch III', '3rd', 'Miss Esmeralda Greenholt', 'English', 10, NULL, NULL, NULL, 439, 'kianna-cormier', 'Corrupti ad odit et ipsam debitis deserunt porro cum.', 'Et fugit odio voluptate praesentium quo. Error voluptas ut quasi libero.', 8, 74, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(24, 21, 'Ezekiel Abernathy', 'Marlene Rosenbaum', '6th', 'Brycen Wintheiser', 'English', 13, NULL, NULL, NULL, 250, 'ezekiel-abernathy', 'Dolore dolor magnam illo tempore at repudiandae unde quasi.', 'Aspernatur quos corporis debitis eveniet eaque. Ut qui distinctio fugiat eum. Ut quis sed tempore dolor praesentium ab quam accusamus.', 2, 33, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(25, 10, 'Chadd Huel', 'Mrs. Catharine Veum DVM', '6th', 'Zelma Emmerich', 'Bangla', 11, NULL, NULL, NULL, 445, 'chadd-huel', 'Sequi voluptatem unde maxime ea.', 'Veritatis ea adipisci distinctio. Ipsam totam aut quae ipsa. Ad sit ullam quia enim placeat.', 6, 55, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(26, 15, 'Regan Mohr', 'Robert Legros I', '3rd', 'Edwardo Ankunding', 'English', 16, NULL, NULL, NULL, 358, 'regan-mohr', 'Libero eius qui et amet eos.', 'Ea sit consequatur pariatur aut. Aut nam minima eum exercitationem repellendus exercitationem et assumenda. Voluptate ducimus reprehenderit illum quasi illum.', 3, 38, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(27, 17, 'Elian Berge', 'Isabel Wuckert', '3rd', 'Mr. Clark Kohler PhD', 'English', 5, NULL, NULL, NULL, 233, 'elian-berge', 'Perferendis non quia vel aliquid corporis odit.', 'Et aut est minima nihil quia. Illum nihil officia incidunt aliquid. Expedita cum laborum accusantium rem amet consectetur id. Explicabo rerum quia ullam numquam et qui.', 6, 55, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(28, 18, 'Marion Okuneva', 'Estefania Bruen', '6th', 'Bertrand Kihn', 'English', 7, NULL, NULL, NULL, 142, 'marion-okuneva', 'Id cupiditate omnis in tempora consequatur ipsum vel.', 'Aut possimus asperiores amet dolores autem reprehenderit cum. Aut et sunt praesentium unde. Excepturi quibusdam alias blanditiis est facere culpa et dolorem.', 5, 48, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(29, 10, 'Ms. Elta Frami', 'Jody Wehner IV', '3rd', 'Karolann Corwin', 'English', 12, NULL, NULL, NULL, 300, 'ms-elta-frami', 'Sit soluta ut delectus natus eum sed ratione aut.', 'At consectetur explicabo unde numquam ducimus. Consequuntur quasi vel quis fuga. Voluptatem et nulla qui architecto.', 7, 65, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(30, 20, 'Mrs. Trisha Kemmer V', 'Cierra Crona', '4th', 'Prof. Emmie Maggio Jr.', 'English', 7, NULL, NULL, NULL, 423, 'mrs-trisha-kemmer-v', 'Illo iste optio molestiae qui et animi.', 'Voluptas quia expedita dicta ratione optio molestiae voluptatem. Commodi in nulla dolor eum magnam quas. Assumenda omnis eius illum hic aspernatur eveniet nihil.', 3, 35, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(31, 7, 'Dr. Vella Stanton II', 'Prof. Vince Walter', '5th', 'Jena Blick', 'English', 15, NULL, NULL, NULL, 396, 'dr-vella-stanton-ii', 'Corporis est labore placeat aut ut enim.', 'Qui earum qui laudantium consequuntur repudiandae atque. Qui voluptatibus fugiat consequatur itaque autem veritatis ea. Aut consequatur accusamus aut nobis ut.', 3, 35, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(32, 11, 'Walker Mertz', 'Dr. Marianne Quitzon', '6th', 'Irwin Waters', 'English', 9, NULL, NULL, NULL, 395, 'walker-mertz', 'Odio quibusdam et atque eos provident.', 'Ea quaerat magnam ipsum porro ab consectetur. Consectetur ipsa quisquam qui occaecati ratione quos iusto. Fuga voluptatibus quaerat et autem odio qui.', 8, 72, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(33, 12, 'Ms. Odie McLaughlin DDS', 'Lamar Bergnaum Sr.', '6th', 'Tomas McKenzie', 'English', 15, NULL, NULL, NULL, 121, 'ms-odie-mclaughlin-dds', 'Enim vitae deleniti eos exercitationem ea.', 'Id eius laudantium omnis reprehenderit adipisci itaque quas. Sed fugiat mollitia quia alias nihil voluptatem animi.', 4, 41, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(34, 25, 'Boris Halvorson', 'Michele Lowe IV', '4th', 'Dereck Konopelski', 'English', 14, NULL, NULL, NULL, 323, 'boris-halvorson', 'Cum voluptatem et eveniet labore voluptatibus.', 'Quia est ex voluptas optio in rerum quia. Qui deleniti asperiores eius error. Laborum inventore qui alias qui molestias eius libero.', 6, 58, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(35, 22, 'Ricardo Hessel', 'Ms. Trinity Mayer', '6th', 'Prof. Chauncey Von', 'English', 11, NULL, NULL, NULL, 289, 'ricardo-hessel', 'Saepe nam hic iste et asperiores architecto.', 'Et molestiae nobis sint eos eligendi. Sed maiores maiores qui adipisci. Corrupti facilis recusandae ab expedita et ut modi.', 1, 19, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(36, 18, 'Thalia McKenzie', 'Prof. Jaiden Hamill', '5th', 'Lillie Becker', 'English', 4, NULL, NULL, NULL, 370, 'thalia-mckenzie', 'Aut blanditiis quia quaerat voluptatibus est voluptas dolore.', 'Laboriosam nobis voluptatem nostrum quos. Inventore qui enim dolor velit iste assumenda. Error sunt esse quo veritatis ipsum molestias.', 4, 44, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(37, 22, 'Coralie Herman', 'Margarette Stokes', '5th', 'Eleanora Dietrich', 'Bangla', 5, NULL, NULL, NULL, 394, 'coralie-herman', 'Sed vel ut ut magni cum officia.', 'Minus nemo maxime aut qui. Perferendis occaecati et reiciendis magni officia. Sint fugiat doloremque aut quas expedita.', 4, 45, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(38, 5, 'Ursula Franecki', 'Lance Mills II', '6th', 'Prof. Agustina O\'Hara', 'English', 17, NULL, NULL, NULL, 357, 'ursula-franecki', 'Exercitationem quo repellendus quis in.', 'Aut praesentium blanditiis autem qui. Fugiat rem non asperiores rerum.', 1, 12, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(39, 12, 'Aisha Braun DVM', 'Shana Wolf PhD', '3rd', 'Grant Bergstrom', 'English', 5, NULL, NULL, NULL, 110, 'aisha-braun-dvm', 'Voluptas vitae recusandae nesciunt necessitatibus.', 'Ut modi debitis quaerat quas qui vitae saepe. Dolor blanditiis quia qui nesciunt sapiente sint eos. Esse aspernatur ipsum aut laboriosam.', 2, 27, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(40, 18, 'Bella Howe', 'Cletus Olson', '5th', 'Eldora Gibson', 'English', 3, NULL, NULL, NULL, 383, 'bella-howe', 'Sit magni culpa eos.', 'Asperiores sunt praesentium aut praesentium. Laborum ab sit quia ab a dignissimos. Et dolorum eos qui. Tempore ducimus deleniti a veritatis fugiat animi ipsa.', 2, 24, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(41, 7, 'Miss Katelyn Kub', 'Zelma Bergnaum', '4th', 'Dianna Heathcote', 'Bangla', 1, NULL, NULL, NULL, 184, 'miss-katelyn-kub', 'Repudiandae rerum voluptatem accusantium repudiandae.', 'Ea molestiae aut et quos quod cum. Quasi asperiores et fugit sit magni dolorum. Quas sequi asperiores fugit quia.', 5, 50, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(42, 20, 'Anita Crona', 'Katlyn Jacobi DDS', '6th', 'Alycia Lockman', 'English', 16, NULL, NULL, NULL, 392, 'anita-crona', 'Laudantium quia repellat omnis praesentium et voluptatibus.', 'Natus et consequatur asperiores. Voluptatem tempora soluta quo laudantium nihil placeat. Explicabo unde dignissimos debitis laudantium incidunt. Suscipit a consequuntur non qui.', 6, 59, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(43, 20, 'Josiane Walsh', 'Palma Schowalter III', '5th', 'Irwin Lang', 'English', 12, NULL, NULL, NULL, 339, 'josiane-walsh', 'Sed accusamus et adipisci corrupti itaque numquam.', 'Similique recusandae ex fugiat aliquid rerum. Accusamus et quam reprehenderit. Ea magni expedita dignissimos occaecati ratione. Et omnis voluptatibus et dolorum sunt libero odio.', 4, 46, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(44, 16, 'Carey Lowe', 'Teagan Jenkins DVM', '5th', 'Ova Blick', 'Bangla', 13, NULL, NULL, NULL, 475, 'carey-lowe', 'Laborum quia ab minus aut.', 'Fugiat quo odio ipsum odio dolor. Nemo molestiae dicta ut recusandae. Voluptas libero expedita tempora perspiciatis hic qui.', 6, 63, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(45, 19, 'Westley Sanford', 'Dr. Audreanne Wolff', '5th', 'Hortense Schamberger', 'Bangla', 10, NULL, NULL, NULL, 429, 'westley-sanford', 'Dolores incidunt officiis qui sit ut praesentium optio.', 'Architecto ut asperiores assumenda doloremque. Et et occaecati quae doloremque. Quia iste assumenda quo cumque molestiae animi assumenda. Quia voluptates est minus quam.', 4, 41, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(46, 19, 'Ciara Kuhn', 'Ms. Kenna Cole', '5th', 'Veda Johnston V', 'English', 4, NULL, NULL, NULL, 274, 'ciara-kuhn', 'Consequatur et accusantium porro.', 'Placeat architecto et voluptate perspiciatis unde porro incidunt. Repudiandae vitae est neque. Quam veritatis laboriosam sequi mollitia.', 2, 33, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(47, 10, 'Dr. Eldred Gorczany IV', 'Ethan Yundt', '6th', 'Myriam Beahan', 'English', 12, NULL, NULL, NULL, 135, 'dr-eldred-gorczany-iv', 'Dolor sunt qui et voluptatem porro modi sit culpa.', 'Eligendi est et est et voluptates aliquid. Ipsam odit alias velit. Dolorum asperiores dolor quidem assumenda earum quo.', 1, 14, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(48, 13, 'Olga Schumm', 'Mr. Oswald Kerluke', '4th', 'Blanche Towne', 'English', 18, NULL, NULL, NULL, 365, 'olga-schumm', 'Est dolores praesentium labore sapiente.', 'Voluptatem aut ullam necessitatibus sed accusamus rem tenetur. Nihil doloremque vel et sint molestiae qui hic. Illo aut alias officiis minima non. Magnam hic aperiam eos est soluta in.', 3, 35, NULL, 0, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(49, 13, 'Queenie Hansen DVM', 'Troy Haag', '3rd', 'Kattie Kulas III', 'English', 9, NULL, NULL, NULL, 159, 'queenie-hansen-dvm', 'Rerum et voluptas sit qui autem at eligendi sed.', 'Maiores adipisci dolor dicta rerum libero. Dolore laudantium necessitatibus unde aut earum. Et neque sunt facilis tenetur maiores inventore eum assumenda. Dolores voluptatem nisi nulla.', 7, 67, NULL, 1, 1, NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:52'),
(50, 21, 'Murray Zieme', 'Jaunita Schuster MD', '3rd', 'Wendell Hettinger Sr.', 'Bangla', 6, NULL, NULL, NULL, 452, 'murray-zieme', 'Distinctio ullam ex vero dolore.', 'Ut vero ipsa incidunt reiciendis dolorem et. Laboriosam incidunt eius sit aspernatur neque ab. Autem dolores illo possimus velit et.', 7, 65, NULL, 0, 1, NULL, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(51, 1, '4Neural Network & Fuzzy Logic', 'meskatul islam', '8th', 'Mc Graw Hill', 'English', 12, 14, NULL, 'hjdfhjdfhdhk', 150, '4neural-network-fuzzy-logic', NULL, 'Neural Network & Fuzzy LogicNeural Network & Fuzzy LogicNeural Network & Fuzzy Logic', 2, 24, 85, 0, 1, 'science, abc', '2021-08-03 07:58:56', '2021-08-03 07:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `book_images`
--

CREATE TABLE `book_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_images`
--

INSERT INTO `book_images` (`id`, `book_id`, `seller_id`, `title`, `path`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 'Christ Bechtelar', 'https://via.placeholder.com/640x480.png/0066ff?text=hic', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(2, 26, NULL, 'Viva Nader', 'https://via.placeholder.com/640x480.png/00aaaa?text=quas', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(3, 37, NULL, 'Akeem Heidenreich III', 'https://via.placeholder.com/640x480.png/00dd44?text=voluptatem', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(4, 43, NULL, 'Joana Thompson MD', 'https://via.placeholder.com/640x480.png/00ddbb?text=ut', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(5, 16, NULL, 'Victoria Heller', 'https://via.placeholder.com/640x480.png/0077dd?text=quo', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(6, 28, NULL, 'Dr. Bridie Von', 'https://via.placeholder.com/640x480.png/00ee66?text=odio', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(7, 25, NULL, 'Matilde Schultz', 'https://via.placeholder.com/640x480.png/0077ff?text=sequi', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(8, 30, NULL, 'Timmy Johnson', 'https://via.placeholder.com/640x480.png/006699?text=iure', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(9, 47, NULL, 'Emilie Kiehn V', 'https://via.placeholder.com/640x480.png/00ee77?text=ipsa', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(10, 5, NULL, 'Giuseppe Kertzmann V', 'https://via.placeholder.com/640x480.png/008811?text=qui', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(11, 40, NULL, 'Dr. Johnny Stiedemann', 'https://via.placeholder.com/640x480.png/002255?text=doloremque', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(12, 47, NULL, 'Chasity Wolf', 'https://via.placeholder.com/640x480.png/005577?text=enim', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(13, 25, NULL, 'Jacklyn O\'Connell', 'https://via.placeholder.com/640x480.png/0033bb?text=quis', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(14, 29, NULL, 'Prof. Deonte Gleason', 'https://via.placeholder.com/640x480.png/00aa66?text=quam', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(15, 13, NULL, 'Barry Boyer', 'https://via.placeholder.com/640x480.png/00bbdd?text=et', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(16, 5, NULL, 'Miss Vivian Dietrich', 'https://via.placeholder.com/640x480.png/001188?text=accusantium', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(17, 7, NULL, 'Matilde Schneider', 'https://via.placeholder.com/640x480.png/002233?text=voluptatibus', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(18, 10, NULL, 'Elinor Schamberger MD', 'https://via.placeholder.com/640x480.png/00ddcc?text=non', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(19, 18, NULL, 'Dr. Dortha Franecki', 'https://via.placeholder.com/640x480.png/0099ff?text=voluptatem', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(20, 41, NULL, 'Mariela Robel PhD', 'https://via.placeholder.com/640x480.png/004455?text=maiores', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(21, 44, NULL, 'Tremayne Kuhlman', 'https://via.placeholder.com/640x480.png/0055cc?text=temporibus', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(22, 1, NULL, 'Jimmy Hansen V', 'https://via.placeholder.com/640x480.png/00ee88?text=odio', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(23, 29, NULL, 'Prof. Odessa Schulist Sr.', 'https://via.placeholder.com/640x480.png/00ff77?text=consequatur', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(24, 3, NULL, 'Britney Krajcik DVM', 'https://via.placeholder.com/640x480.png/0088ff?text=veritatis', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(25, 4, NULL, 'Granville Wilderman', 'https://via.placeholder.com/640x480.png/0099aa?text=aut', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(26, 1, NULL, 'Nigel Hagenes', 'https://via.placeholder.com/640x480.png/005566?text=iste', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(27, 16, NULL, 'Matteo Hodkiewicz', 'https://via.placeholder.com/640x480.png/0033cc?text=omnis', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(28, 3, NULL, 'Magdalena Stroman PhD', 'https://via.placeholder.com/640x480.png/002233?text=tempore', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(29, 42, NULL, 'Dr. Hayden Paucek IV', 'https://via.placeholder.com/640x480.png/00ccee?text=quia', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(30, 18, NULL, 'Dr. Braxton Ledner', 'https://via.placeholder.com/640x480.png/00aa99?text=consequuntur', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(31, 8, NULL, 'Miss Krista Jacobson', 'https://via.placeholder.com/640x480.png/0088cc?text=doloremque', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(32, 26, NULL, 'Alysson Lind', 'https://via.placeholder.com/640x480.png/00eeaa?text=libero', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(33, 36, NULL, 'Karson McDermott', 'https://via.placeholder.com/640x480.png/00ffaa?text=ut', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(34, 18, NULL, 'Mr. Jamir Kunde', 'https://via.placeholder.com/640x480.png/0066dd?text=aliquam', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(35, 26, NULL, 'Destany Marquardt', 'https://via.placeholder.com/640x480.png/0011ee?text=sed', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(36, 18, NULL, 'Watson Hessel', 'https://via.placeholder.com/640x480.png/002233?text=dolore', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(37, 21, NULL, 'Augusta Monahan', 'https://via.placeholder.com/640x480.png/007711?text=voluptatem', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(38, 2, NULL, 'Laverne Friesen DDS', 'https://via.placeholder.com/640x480.png/008855?text=dignissimos', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(39, 24, NULL, 'Dr. Nettie Cummerata Jr.', 'https://via.placeholder.com/640x480.png/00dddd?text=dolore', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(40, 41, NULL, 'Kaitlin Heller', 'https://via.placeholder.com/640x480.png/001199?text=dolor', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(41, 43, NULL, 'Dr. Kathleen Casper I', 'https://via.placeholder.com/640x480.png/00dd66?text=necessitatibus', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(42, 24, NULL, 'Prof. Waino Stracke DDS', 'https://via.placeholder.com/640x480.png/0044ee?text=et', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(43, 10, NULL, 'Josefina Dach', 'https://via.placeholder.com/640x480.png/0011cc?text=optio', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(44, 22, NULL, 'Bettie Corwin', 'https://via.placeholder.com/640x480.png/004411?text=totam', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(45, 21, NULL, 'Dr. Major Christiansen', 'https://via.placeholder.com/640x480.png/00ff77?text=rem', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(46, 37, NULL, 'Araceli Rosenbaum', 'https://via.placeholder.com/640x480.png/002211?text=qui', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(47, 31, NULL, 'Prof. Jazlyn Robel', 'https://via.placeholder.com/640x480.png/008800?text=quo', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(48, 12, NULL, 'Prof. Mac Durgan I', 'https://via.placeholder.com/640x480.png/0044ee?text=quaerat', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(49, 50, NULL, 'Sheridan Turner', 'https://via.placeholder.com/640x480.png/003311?text=commodi', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(50, 42, NULL, 'Rafael Toy', 'https://via.placeholder.com/640x480.png/0011ee?text=asperiores', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(51, 26, NULL, 'Clyde Botsford', 'https://via.placeholder.com/640x480.png/0055aa?text=quae', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(52, 21, NULL, 'Ms. Shyanne Hills', 'https://via.placeholder.com/640x480.png/00ff66?text=quisquam', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(53, 45, NULL, 'Dallin Keeling', 'https://via.placeholder.com/640x480.png/00bbff?text=in', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(54, 40, NULL, 'Piper Abshire', 'https://via.placeholder.com/640x480.png/005588?text=qui', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(55, 38, NULL, 'Ms. Sincere Smith III', 'https://via.placeholder.com/640x480.png/004455?text=nostrum', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(56, 39, NULL, 'Judd Wehner', 'https://via.placeholder.com/640x480.png/0099ee?text=omnis', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(57, 50, NULL, 'Mr. Javonte Hansen MD', 'https://via.placeholder.com/640x480.png/008800?text=nulla', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(58, 6, NULL, 'Javier Hodkiewicz', 'https://via.placeholder.com/640x480.png/0000ee?text=eius', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(59, 6, NULL, 'Caterina Krajcik III', 'https://via.placeholder.com/640x480.png/002222?text=magni', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(60, 20, NULL, 'Arjun Senger', 'https://via.placeholder.com/640x480.png/0000aa?text=voluptas', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(61, 12, NULL, 'Coralie Ziemann', 'https://via.placeholder.com/640x480.png/001155?text=repudiandae', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(62, 1, NULL, 'Reynold Denesik Jr.', 'https://via.placeholder.com/640x480.png/00bbcc?text=exercitationem', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(63, 41, NULL, 'Corrine Shields DDS', 'https://via.placeholder.com/640x480.png/000022?text=et', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(64, 48, NULL, 'Ozella Auer', 'https://via.placeholder.com/640x480.png/00aa22?text=dicta', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(65, 35, NULL, 'Mrs. Amely Koch', 'https://via.placeholder.com/640x480.png/0022ee?text=numquam', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(66, 30, NULL, 'Mr. Linwood Grant PhD', 'https://via.placeholder.com/640x480.png/0066aa?text=dolores', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(67, 30, NULL, 'Bernadette Weber', 'https://via.placeholder.com/640x480.png/001144?text=repellendus', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(68, 15, NULL, 'Alfonso Romaguera', 'https://via.placeholder.com/640x480.png/0033cc?text=voluptatem', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(69, 45, NULL, 'Ms. Lilla Stanton', 'https://via.placeholder.com/640x480.png/0011dd?text=non', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(70, 23, NULL, 'Mikel Legros II', 'https://via.placeholder.com/640x480.png/002266?text=laudantium', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(71, 20, NULL, 'Santina Watsica', 'https://via.placeholder.com/640x480.png/0044aa?text=nihil', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(72, 31, NULL, 'Dr. Ruthie Quitzon Sr.', 'https://via.placeholder.com/640x480.png/00ddff?text=et', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(73, 44, NULL, 'Mozelle Hermann III', 'https://via.placeholder.com/640x480.png/00ddcc?text=ut', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(74, 19, NULL, 'Miss Rosalyn Daniel', 'https://via.placeholder.com/640x480.png/0044ff?text=nobis', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(75, 26, NULL, 'Clare Rempel', 'https://via.placeholder.com/640x480.png/0088ff?text=maxime', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(76, 34, NULL, 'Erin Leffler', 'https://via.placeholder.com/640x480.png/00ff22?text=neque', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(77, 40, NULL, 'Kamille Boyer', 'https://via.placeholder.com/640x480.png/009911?text=et', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(78, 9, NULL, 'Lennie Swaniawski', 'https://via.placeholder.com/640x480.png/004488?text=eum', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(79, 25, NULL, 'Oren Schaefer', 'https://via.placeholder.com/640x480.png/0000aa?text=dolorum', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(80, 47, NULL, 'Tracy Stark', 'https://via.placeholder.com/640x480.png/006611?text=quibusdam', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(81, 1, NULL, 'Stefanie Padberg', 'https://via.placeholder.com/640x480.png/0088bb?text=eius', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(82, 2, NULL, 'Makenzie Macejkovic', 'https://via.placeholder.com/640x480.png/0033dd?text=distinctio', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(83, 6, NULL, 'Nicole Vandervort', 'https://via.placeholder.com/640x480.png/00ffdd?text=ut', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(84, 8, NULL, 'Prof. Margie Mraz Sr.', 'https://via.placeholder.com/640x480.png/002211?text=nihil', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(85, 26, NULL, 'Prof. Erick Dicki I', 'https://via.placeholder.com/640x480.png/00ccdd?text=voluptatem', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(86, 32, NULL, 'Melany Cormier', 'https://via.placeholder.com/640x480.png/002266?text=ut', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(87, 24, NULL, 'Dasia Konopelski', 'https://via.placeholder.com/640x480.png/0033ff?text=rem', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(88, 36, NULL, 'Dr. Krystel Gerhold', 'https://via.placeholder.com/640x480.png/00bb22?text=sit', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(89, 28, NULL, 'Golden Bashirian IV', 'https://via.placeholder.com/640x480.png/0000cc?text=recusandae', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(90, 34, NULL, 'Mr. Ronny Ondricka V', 'https://via.placeholder.com/640x480.png/0055bb?text=a', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(91, 37, NULL, 'Leanne Gerhold IV', 'https://via.placeholder.com/640x480.png/008888?text=et', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(92, 20, NULL, 'Shea Nolan', 'https://via.placeholder.com/640x480.png/000022?text=quos', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(93, 46, NULL, 'Brennon Graham', 'https://via.placeholder.com/640x480.png/0077dd?text=et', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(94, 35, NULL, 'Arnoldo Bauch', 'https://via.placeholder.com/640x480.png/00cc88?text=saepe', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(95, 22, NULL, 'Thalia Sipes III', 'https://via.placeholder.com/640x480.png/0099cc?text=voluptatem', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(96, 9, NULL, 'Claude Kris IV', 'https://via.placeholder.com/640x480.png/000066?text=sequi', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(97, 10, NULL, 'Candida Corkery', 'https://via.placeholder.com/640x480.png/0044cc?text=harum', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(98, 20, NULL, 'Dr. Paolo Rice', 'https://via.placeholder.com/640x480.png/00aa00?text=eligendi', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(99, 47, NULL, 'Nathanial Veum I', 'https://via.placeholder.com/640x480.png/00cc77?text=est', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(100, 42, NULL, 'Angelina Runolfsson', 'https://via.placeholder.com/640x480.png/00bbbb?text=quo', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(101, 23, NULL, 'Adrienne Yundt', 'https://via.placeholder.com/640x480.png/0022bb?text=et', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(102, 40, NULL, 'Dr. Adalberto Mertz', 'https://via.placeholder.com/640x480.png/003344?text=fugit', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(103, 44, NULL, 'Prof. Mavis Wilderman', 'https://via.placeholder.com/640x480.png/00bb11?text=distinctio', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(104, 36, NULL, 'Mac Dach', 'https://via.placeholder.com/640x480.png/004400?text=fuga', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(105, 6, NULL, 'Kathleen Pacocha', 'https://via.placeholder.com/640x480.png/00eebb?text=qui', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(106, 47, NULL, 'Janice Padberg', 'https://via.placeholder.com/640x480.png/00dd33?text=omnis', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(107, 45, NULL, 'Mr. Maxine Hagenes', 'https://via.placeholder.com/640x480.png/008822?text=deserunt', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(108, 35, NULL, 'Frida Abbott', 'https://via.placeholder.com/640x480.png/0055cc?text=saepe', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(109, 21, NULL, 'Dominique Maggio', 'https://via.placeholder.com/640x480.png/00ee99?text=velit', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(110, 31, NULL, 'Tillman Beier', 'https://via.placeholder.com/640x480.png/005588?text=quis', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(111, 46, NULL, 'Prof. Francis Becker', 'https://via.placeholder.com/640x480.png/00cc77?text=accusantium', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(112, 9, NULL, 'Dr. Kale Heathcote II', 'https://via.placeholder.com/640x480.png/0022aa?text=nam', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(113, 9, NULL, 'Deshaun Lockman', 'https://via.placeholder.com/640x480.png/0066ff?text=odio', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(114, 15, NULL, 'Frederick Lind', 'https://via.placeholder.com/640x480.png/00bbff?text=iure', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(115, 46, NULL, 'Jessica Fisher', 'https://via.placeholder.com/640x480.png/0088bb?text=velit', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(116, 26, NULL, 'Roger Deckow', 'https://via.placeholder.com/640x480.png/00cc11?text=id', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(117, 15, NULL, 'Daniella Greenfelder I', 'https://via.placeholder.com/640x480.png/004488?text=quasi', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(118, 5, NULL, 'Demond Will', 'https://via.placeholder.com/640x480.png/0044aa?text=qui', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(119, 46, NULL, 'Wade Batz', 'https://via.placeholder.com/640x480.png/00aaaa?text=culpa', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(120, 4, NULL, 'Mrs. Bernadine Mertz', 'https://via.placeholder.com/640x480.png/00ff88?text=eos', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(121, 47, NULL, 'Emilie Windler Sr.', 'https://via.placeholder.com/640x480.png/00dd77?text=deserunt', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(122, 9, NULL, 'Luz Douglas', 'https://via.placeholder.com/640x480.png/00cc66?text=qui', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(123, 24, NULL, 'Orville Hand', 'https://via.placeholder.com/640x480.png/002266?text=corrupti', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(124, 42, NULL, 'Kody VonRueden', 'https://via.placeholder.com/640x480.png/00ffee?text=asperiores', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(125, 48, NULL, 'Kyler Schmeler', 'https://via.placeholder.com/640x480.png/00dd88?text=consequatur', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(126, 16, NULL, 'Mr. Jarvis Prohaska', 'https://via.placeholder.com/640x480.png/006600?text=qui', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(127, 22, NULL, 'Leone Gleason', 'https://via.placeholder.com/640x480.png/0088ff?text=dolorem', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(128, 49, NULL, 'Maryjane Tremblay', 'https://via.placeholder.com/640x480.png/0099aa?text=aliquid', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(129, 17, NULL, 'Maurine Mitchell', 'https://via.placeholder.com/640x480.png/0066bb?text=odit', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(130, 7, NULL, 'Prof. Arvid Farrell IV', 'https://via.placeholder.com/640x480.png/004400?text=provident', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(131, 21, NULL, 'Tyshawn Schmidt', 'https://via.placeholder.com/640x480.png/00ddbb?text=est', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(132, 9, NULL, 'Brionna Block', 'https://via.placeholder.com/640x480.png/00bb77?text=nisi', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(133, 22, NULL, 'Susan Purdy', 'https://via.placeholder.com/640x480.png/00ddff?text=esse', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(134, 4, NULL, 'Kelli Hayes Sr.', 'https://via.placeholder.com/640x480.png/009966?text=et', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(135, 19, NULL, 'Juvenal Gusikowski', 'https://via.placeholder.com/640x480.png/00bb00?text=quis', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(136, 44, NULL, 'Franco Barton', 'https://via.placeholder.com/640x480.png/002233?text=nulla', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(137, 33, NULL, 'Augusta Hyatt', 'https://via.placeholder.com/640x480.png/005511?text=quia', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(138, 7, NULL, 'Martin Wiza IV', 'https://via.placeholder.com/640x480.png/007711?text=eligendi', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(139, 44, NULL, 'Reba Hamill DDS', 'https://via.placeholder.com/640x480.png/00aa99?text=quaerat', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(140, 21, NULL, 'Karine Schmidt', 'https://via.placeholder.com/640x480.png/0011dd?text=blanditiis', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(141, 17, NULL, 'Savanna Gutkowski DVM', 'https://via.placeholder.com/640x480.png/000044?text=cumque', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(142, 31, NULL, 'Francesca Haley', 'https://via.placeholder.com/640x480.png/00bbbb?text=nisi', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(143, 7, NULL, 'Jonatan Harber', 'https://via.placeholder.com/640x480.png/007755?text=corrupti', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(144, 24, NULL, 'Irving Kuhic IV', 'https://via.placeholder.com/640x480.png/0088dd?text=sed', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(145, 24, NULL, 'Addie Gutkowski', 'https://via.placeholder.com/640x480.png/004400?text=at', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(146, 28, NULL, 'Kayden Kessler', 'https://via.placeholder.com/640x480.png/008866?text=veritatis', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(147, 43, NULL, 'Mr. Tristin Batz DDS', 'https://via.placeholder.com/640x480.png/005588?text=sed', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(148, 8, NULL, 'Prof. Darrel Bashirian PhD', 'https://via.placeholder.com/640x480.png/00ee00?text=ducimus', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(149, 26, NULL, 'Mohammad Brown', 'https://via.placeholder.com/640x480.png/00ee77?text=officia', '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(150, 43, NULL, 'Hertha Zemlak', 'https://via.placeholder.com/640x480.png/00aa66?text=et', '2021-08-03 07:55:52', '2021-08-03 07:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`, `is_featured`, `status`, `slug`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'University Level', NULL, 0, 1, 'university-level', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(2, 'College Level', NULL, 0, 1, 'college-level', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(3, 'School Level', NULL, 0, 1, 'school-level', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(4, 'Art & Architecture', NULL, 0, 1, 'art-architecture', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(5, 'Biography', NULL, 0, 1, 'biography', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(6, 'Business & Economics', NULL, 0, 1, 'business-economics', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(7, 'Dictionary', NULL, 0, 1, 'dictionary', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(8, 'Health & Fitness', NULL, 0, 1, 'health-fitness', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(9, 'History', NULL, 0, 1, 'history', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(10, 'Home & Garden', NULL, 0, 1, 'home-garden', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(11, 'Journal', NULL, 0, 1, 'journal', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(12, 'Mathematics', NULL, 0, 1, 'mathematics', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(13, 'Philosophy', NULL, 0, 1, 'philosophy', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(14, 'Religion', NULL, 0, 1, 'religion', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(15, 'Science & Engineering', NULL, 0, 1, 'science-engineering', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(16, 'Science fiction', NULL, 0, 1, 'science-fiction', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(17, 'Technology', NULL, 0, 1, 'technology', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(18, 'Travel', NULL, 0, 1, 'travel', NULL, '2021-08-03 07:55:51', '2021-08-03 07:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `parent_id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka Division', NULL, 'dhaka-division', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(2, 'Chattogram Division', NULL, 'chattogram-division', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(3, 'Sylhet Division', NULL, 'sylhet-division', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(4, 'Rajshahi Division', NULL, 'rajshahi-division', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(5, 'Rangpur Division', NULL, 'rangpur-division', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(6, 'Khulna Division', NULL, 'khulna-division', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(7, 'Barisal Division', NULL, 'barisal-division', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(8, 'Mymensingh Division', NULL, 'mymensingh-division', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(9, 'Reserved Division1', NULL, 'reserved-division1', 0, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(10, 'Reserved Division2', NULL, 'reserved-division2', 0, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(11, 'Dhaka', 1, 'dhaka', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(12, 'Gazipur', 1, 'gazipur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(13, 'Kishorganj', 1, 'kishorganj', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(14, 'Manikganj', 1, 'manikganj', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(15, 'Munshiganj', 1, 'munshiganj', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(16, 'Narayanganj', 1, 'narayanganj', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(17, 'Narsingdi', 1, 'narsingdi', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(18, 'Tangail', 1, 'tangail', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(19, 'Faridpur', 1, 'faridpur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(20, 'Gopalganj', 1, 'gopalganj', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(21, 'Madaripur', 1, 'madaripur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(22, 'Rajbari', 1, 'rajbari', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(23, 'Shariatpur', 1, 'shariatpur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(24, 'Chattogram', 2, 'chattogram', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(25, 'Brahmanbaria', 2, 'brahmanbaria', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(26, 'Comilla', 2, 'comilla', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(27, 'Chandpur', 2, 'chandpur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(28, 'Lakshmipur', 2, 'lakshmipur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(29, 'Noakhali', 2, 'noakhali', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(30, 'Feni', 2, 'feni', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(31, 'Khagrachari', 2, 'khagrachari', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(32, 'Rangamati', 2, 'rangamati', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(33, 'Bandarban', 2, 'bandarban', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(34, 'Cox\'s Bazar', 2, 'coxs-bazar', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(35, 'Sylhet', 3, 'sylhet', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(36, 'Habiganj', 3, 'habiganj', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(37, 'Moulvibazar', 3, 'moulvibazar', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(38, 'Sunamganj', 3, 'sunamganj', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(39, 'Rajshahi', 4, 'rajshahi', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(40, 'Natore', 4, 'natore', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(41, 'Pabna', 4, 'pabna', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(42, 'Bogura', 4, 'bogura', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(43, 'Chapainawabganj', 4, 'chapainawabganj', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(44, 'Joypurhat', 4, 'joypurhat', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(45, 'Naogaon', 4, 'naogaon', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(46, 'Sirajganj', 4, 'sirajganj', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(47, 'Rangpur', 5, 'rangpur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(48, 'Dinajpur', 5, 'dinajpur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(49, 'Kurigram', 5, 'kurigram', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(50, 'Gaibandha', 5, 'gaibandha', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(51, 'Lalmonirhat', 5, 'lalmonirhat', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(52, 'Nilphamari', 5, 'nilphamari', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(53, 'Panchagarh', 5, 'panchagarh', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(54, 'Thakurganj', 5, 'thakurganj', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(55, 'Khulna', 6, 'khulna', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(56, 'Bagerhat', 6, 'bagerhat', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(57, 'Chuadanga', 6, 'chuadanga', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(58, 'Jashore', 6, 'jashore', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(59, 'Jhenaidah', 6, 'jhenaidah', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(60, 'Kushtia', 6, 'kushtia', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(61, 'Magura', 6, 'magura', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(62, 'Meherpur', 6, 'meherpur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(63, 'Narail', 6, 'narail', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(64, 'Sathkhira', 6, 'sathkhira', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(65, 'Barisal', 7, 'barisal', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(66, 'Barguna', 7, 'barguna', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(67, 'Bhola', 7, 'bhola', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(68, 'Jhalokati', 7, 'jhalokati', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(69, 'Patuakhali', 7, 'patuakhali', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(70, 'Pirojpur', 7, 'pirojpur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(71, 'Mymensingh', 8, 'mymensingh', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(72, 'Netrokona', 8, 'netrokona', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(73, 'Jamalpur', 8, 'jamalpur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(74, 'Sherpur', 8, 'sherpur', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(75, 'Bayazid', 24, 'bayazid-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(76, 'Chandgaon', 24, 'chandgaon-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(77, 'Panchlaish', 24, 'panchlaish-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(78, 'Akbarshah', 24, 'akbarshah-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(79, 'Pahartali', 24, 'pahartali-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(80, 'Khulshi', 24, 'khulshi-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(81, 'Bakoliya', 24, 'bakoliya-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(82, 'Kotwali', 24, 'kotwali-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(83, 'Halishahar', 24, 'halishahar-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(84, 'Double Mooring', 24, 'double-mooring-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(85, 'Bandar', 24, 'bandar-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(86, 'Patenga', 24, 'patenga-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(87, 'Patiya', 24, 'patiya-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(88, 'Hathhazari', 24, 'hathhazari-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(89, 'Anwara', 24, 'anwara-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(90, 'BanshKhali', 24, 'banshkhali-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(91, 'BoalKhali', 24, 'boalkhali-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(92, 'Chandanaish', 24, 'chandanaish-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(93, 'Raozan', 24, 'raozan-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(94, 'Sitakunda', 24, 'sitakunda-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(95, 'Rangunia', 24, 'rangunia-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47'),
(96, 'Satkania', 24, 'satkania-2', 1, '2021-08-03 07:55:47', '2021-08-03 07:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(515, '2014_10_12_100000_create_password_resets_table', 1),
(516, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(517, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(518, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(519, '2016_06_01_000004_create_oauth_clients_table', 1),
(520, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(521, '2019_08_19_000000_create_failed_jobs_table', 1),
(522, '2021_07_24_134039_create_locations_table', 1),
(523, '2021_07_25_174854_create_admins_table', 1),
(524, '2021_07_25_175212_create_users_table', 1),
(525, '2021_07_28_063431_create_categories_table', 1),
(526, '2021_07_28_071411_create_books_table', 1),
(527, '2021_07_28_074929_create_book_images_table', 1),
(528, '2021_07_31_071519_create_wish_lists_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('cabcb0da44ceed9bbff338e62956c52ecb8b21683b6f8ffabb87e390de780467283de9f33294bcdc', 1, 1, 'authToken', '[]', 0, '2021-08-03 07:57:07', '2021-08-03 07:57:07', '2022-08-03 13:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Kkvs9z3BqnWGSFescoTsG3BWvWSFkZtrX6Gfqk8O', NULL, 'http://localhost', 1, 0, 0, '2021-08-03 07:56:14', '2021-08-03 07:56:14'),
(2, NULL, 'Laravel Password Grant Client', 'pGgXzf0QsrpHqHDvpx5HEWZGmm1rClQHBFCMjZ1H', 'users', 'http://localhost', 0, 1, 0, '2021-08-03 07:56:14', '2021-08-03 07:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-03 07:56:14', '2021-08-03 07:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_verification_token` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `institute`, `division_id`, `district_id`, `upazila_id`, `status`, `password`, `email_verified_at`, `email_verification_token`, `image_path`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ashley Schaden', '01823723179', 'user@mail.com', 'Premier University', 4, 40, NULL, 1, '$2y$10$rZehzqCpxYvFGkn5r/AJC.r3KeAt129NTE6cFKw.SoIprHBoP/Tjq', '2021-08-03 07:55:47', NULL, 'https://via.placeholder.com/640x480.png/00ee66?text=ducimus', 'dnd9fHVrTp', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(2, 'Monte Collier III', '01797601946', 'frances.keebler@example.net', 'Premier University', 7, 66, NULL, 1, '$2y$10$qqqkoF61X4STpyhi7jJqKuTX9/RC.xtfrQRB2Xezf9ptMporg5S2S', '2021-08-03 07:55:47', NULL, 'https://via.placeholder.com/640x480.png/006666?text=quis', '7QtSeba6y6', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(3, 'Francisco Batz DVM', '01847754014', 'jakayla82@example.org', 'Premier University', 2, 31, NULL, 1, '$2y$10$8ZZ7rjwdwbNW5upHsZqiqO18mlmRK/Nmk/fXhHUdSaJrqExM.ND/m', '2021-08-03 07:55:47', NULL, 'https://via.placeholder.com/640x480.png/0088cc?text=corrupti', 'GXRfC9shZv', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(4, 'Dr. Anahi Robel', '01484691272', 'adelle.auer@example.com', 'Premier University', 1, 20, NULL, 1, '$2y$10$QIC3xXpZzPMEgWbSRa1j6uxjO7sZwkDQLNTCE1pcs0ofPWd.B/cnG', '2021-08-03 07:55:47', NULL, 'https://via.placeholder.com/640x480.png/002255?text=minima', '8o4mAcsf2d', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(5, 'Tommie Koch', '01516023831', 'oconner.loy@example.com', 'Premier University', 2, 30, NULL, 1, '$2y$10$VemnQZGJ21irj9248Z4Xwe7ilUxL4f8JrJWjSd1oVybx2ikB91.FS', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/005588?text=impedit', 'r47grgIozE', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(6, 'Angus Hermiston', '01649634546', 'tristin27@example.net', 'Premier University', 1, 20, NULL, 1, '$2y$10$gW6kGnJ1pOWygT6ssJ4Tqe3MNX.qfl.D/jseQ5wsi5SY9/.aSCxA2', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/006633?text=nesciunt', 'yI7YkDc0fj', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(7, 'Llewellyn Schmeler', '01592467115', 'abernathy.vicky@example.org', 'Premier University', 6, 59, NULL, 1, '$2y$10$7YTe6U6drqIBpGTqFVu8X.K7dQLboATC9xHivXkIj14O3wrUbZZCS', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/00ee77?text=id', 'c0wPrvvz6m', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(8, 'Romaine Mertz PhD', '01756115561', 'thompson.dahlia@example.com', 'Premier University', 2, 31, NULL, 1, '$2y$10$hA/BXOYZzmnnUaKGaIcy3u7WBREY6G.wx54b8Lrle9vKJ5o12xLUS', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/00cc11?text=est', 'sTUE7bID6Y', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(9, 'Emery West III', '01382347556', 'aheller@example.net', 'Premier University', 6, 56, NULL, 1, '$2y$10$eMbn6.oTfY93AEZIg5WZauTAJAKzHOa7mLR2ynjzOD.I/V07fPpBO', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/0044ff?text=architecto', 'lUJuV6ikQ6', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(10, 'Elliott McClure', '01543970521', 'reinhold.rempel@example.net', 'Premier University', 4, 42, NULL, 1, '$2y$10$906/kYT7MM9cu7ledCUIxuFhMrAbbdjBuAHCyEmtkisCW9LDw.QWS', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/00ee66?text=fugit', 'mWhvEJkUXm', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(11, 'Eda Kris', '01873531847', 'josue.hayes@example.net', 'Premier University', 5, 47, NULL, 1, '$2y$10$dw7wOJvG27OGpqzcpqK80.midk0SYRPNubvf/FkmjnSTmjbrUNHDy', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/004400?text=nostrum', '99MRFVZJxB', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(12, 'Adelia Schaefer', '01447164131', 'haag.justina@example.com', 'Premier University', 8, 71, NULL, 1, '$2y$10$dhrndIU.H0G/.pf5jsr/gO4DKp65Wn7/P1VpkXjS8.5aDVoOBm5kq', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/004499?text=voluptatem', 'mmDF4O3uHi', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(13, 'Delphine Abernathy DVM', '01367254808', 'mohammad06@example.com', 'Premier University', 7, 65, NULL, 1, '$2y$10$IVfRLimD6QlAtVgSZUykEOum48/IsYKYCt3oDagr3bSsNdiqeF8A2', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/00dd00?text=minima', 'ZaVNt7y75p', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(14, 'Isabell Abshire', '01640283957', 'enoch.jaskolski@example.net', 'Premier University', 8, 74, NULL, 1, '$2y$10$VArDPlGizF7z6H3/Wysa5.8yQZsA3yRZzhTMLu5B02R8g5a5sl9Um', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/00ff77?text=aperiam', 'trpyx7Zq0A', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(15, 'Prof. Britney Green', '01675491844', 'tomasa01@example.com', 'Premier University', 4, 45, NULL, 1, '$2y$10$3RzIKJu4z7c//H/ykiXPq.785Dn6.KdTa7NgG/SyvIWAMlFs4bM02', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/00ee11?text=recusandae', 'J5WgIwJo52', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(16, 'Tierra Bartoletti', '01350106813', 'ztillman@example.org', 'Premier University', 8, 72, NULL, 1, '$2y$10$tiuhPEoJlxjQulw3.lB34eC9UYRg9Be7caIbEq8oy.NaHCFrDe7im', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/0000bb?text=error', 'WG7XFCPV3F', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(17, 'Yasmin Wyman', '01852629716', 'daniel.westley@example.org', 'Premier University', 7, 69, NULL, 1, '$2y$10$pPXzOqXegKwQ2LNFkgXm7uyrW0jSD2dezTCzOWk7LV1A0iE2/.85K', '2021-08-03 07:55:48', NULL, 'https://via.placeholder.com/640x480.png/004444?text=aspernatur', 'zjFuJTphnp', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(18, 'Miss Selena Kilback', '01827872884', 'fauer@example.net', 'Premier University', 1, 15, NULL, 1, '$2y$10$OANUXb64q.CgAckyNqACoez/vXh9iazZckzvZ4YyCg/oez3acgl2G', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/00dd77?text=nostrum', 'C7vh5cEI2J', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(19, 'Jaquelin Klocko', '01657465511', 'jaren51@example.com', 'Premier University', 8, 73, NULL, 1, '$2y$10$JpCmv3/nl.UGTR5OztxDOux7wsU0Pk/jQ9z5IWTluJ13c1Zog8/mS', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/00ccdd?text=voluptate', '9oQPHFXKUF', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(20, 'Hayden Beahan III', '01634699227', 'dixie.leannon@example.com', 'Premier University', 2, 24, NULL, 1, '$2y$10$qUSDEJgoGkFtCcIvedSMLeWMNRXuqgMJicXDk2n0gGhcMX3bYGpTi', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/00ffff?text=delectus', 'fkmY7ehkkn', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(21, 'Miss Holly Schmeler III', '01826996196', 'olemke@example.org', 'Premier University', 4, 45, NULL, 1, '$2y$10$MIFNQGuezr.JVFXSRLxeyOCcp2A8MZ1ZYMokgUftETiOdKAI5BHCq', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/0055ee?text=sint', 'S74Oeop1kB', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(22, 'Mr. Cielo Leffler', '01587377199', 'lucious.grant@example.org', 'Premier University', 6, 61, NULL, 1, '$2y$10$.XZO5TLWVYhxUqT4CJXSOOqXl/quPjU9grV.5MgpybBFEoKUKcOiO', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/009966?text=error', 'aJEW3zkmlg', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(23, 'Prof. Marlon Feil', '01621698039', 'joy.bailey@example.org', 'Premier University', 7, 69, NULL, 1, '$2y$10$MgwGMkFGIT3MJawy6JMvWuVhBVKNvAr.wI6IGmQ0R7t1g4ig9CoLO', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/0066ee?text=quas', 'sCDJxRSed7', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(24, 'Kaycee Barrows', '01563716028', 'ankunding.holly@example.net', 'Premier University', 6, 56, NULL, 1, '$2y$10$qcGid3Yt9T6IGXiL8BsCqOC3IWMkOKfBLbh7JE7I3284aFEN9ouIm', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/003300?text=corrupti', 'NyKHjkTbJc', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(25, 'Mrs. Eloisa Marvin PhD', '01723189134', 'afriesen@example.net', 'Premier University', 6, 57, NULL, 1, '$2y$10$xN9IoLxL48bWE0x/FW8Jr.syklLg0IIIgxdCcr8eJ.WB9B2wJHBFW', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/0088cc?text=vel', 'sp9ZKylsSM', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(26, 'Mrs. Ernestina Stanton', '01787696141', 'lebsack.chanel@example.org', 'Premier University', 8, 71, NULL, 1, '$2y$10$RaYFTdp/8hpZSI/95ZIWNOVPP9CVEaGipkZvA2dYBZvvBlE/i06fK', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/001188?text=repellat', 'KcEACUlB3I', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(27, 'Jaydon Harber Jr.', '01598727347', 'dwitting@example.org', 'Premier University', 4, 45, NULL, 1, '$2y$10$9CtIid.symRbJfeHgo5YJ.eOVMpkEhLPbbFkgbk5.eaXN2o68dYku', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/00ffcc?text=voluptatem', 'mtZAucfu5R', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(28, 'Cristian White', '01398004844', 'ricky24@example.com', 'Premier University', 7, 67, NULL, 1, '$2y$10$KbtoChchmcKnQp4RFHicZe3quIWG/RwrJXBBmKeJzLzxlqemKjlQ.', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/0088aa?text=delectus', 'dCPQe0Ih5a', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(29, 'Prof. Orion Gislason Sr.', '01564814806', 'turner57@example.org', 'Premier University', 3, 37, NULL, 1, '$2y$10$PnOarc8LxwpIWlSQsiRyLOgTtQIBWsmbh.P38a0OPTfbghzNVipTS', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/00bb66?text=veniam', 'x4nX71jJ9R', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(30, 'Mr. Alvis Wisoky DDS', '01481969417', 'elody.heaney@example.com', 'Premier University', 2, 24, NULL, 1, '$2y$10$1a915.aA2jh7ipWh0bS6fOKoe1Xf.yrF6GGuDt/Eiq1bYggg/ZY5e', '2021-08-03 07:55:49', NULL, 'https://via.placeholder.com/640x480.png/00ee33?text=distinctio', '3ZJlhvTJuD', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(31, 'Ford Herzog V', '01749410181', 'august23@example.org', 'Premier University', 3, 37, NULL, 1, '$2y$10$xwx.VfkF1r3pBNgMH7MQzeQk7u5uRAMZczyqUtZgZ.SwOa3J4rKUC', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/003366?text=optio', 'pPhJQCA9Gh', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(32, 'Mrs. Reva Abernathy', '01320570534', 'pagac.laury@example.org', 'Premier University', 2, 27, NULL, 1, '$2y$10$KtRTAYNk.jhO8o6.YTEXyOdDaQkaqgy.yjKM4kBPE3FBFAT.Xln0O', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/0011bb?text=qui', 'IiWzCppIah', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(33, 'Monty Dietrich Jr.', '01789797634', 'ilene20@example.org', 'Premier University', 2, 25, NULL, 1, '$2y$10$EyCA417.gAadmqaEJVDlluqmaPd.ZqUL8XQtHA7TPxXS9vvYbmpbi', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/00cc44?text=minus', 'UCYZjSkiTo', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(34, 'Mrs. Emmy Berge I', '01852123890', 'abigail06@example.net', 'Premier University', 2, 25, NULL, 1, '$2y$10$aaSj5uIX4LS5bWN8RGTexu0D.L5wcwHMhHr34.k/w/orkpJmxHo3G', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/00bb44?text=et', 'nlniiJckaJ', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(35, 'Ahmad Satterfield', '01518418253', 'jamal.hill@example.org', 'Premier University', 2, 33, NULL, 1, '$2y$10$SnnLW0Eijfughx2U5BuM6ulLr9MfUBWN9WTvjQpp2i2ZfhPhSO9Va', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/00ff44?text=aut', '9gdILN9EiZ', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(36, 'Prof. Louisa Schulist', '01787310095', 'jammie21@example.net', 'Premier University', 2, 32, NULL, 1, '$2y$10$TK5CS9hKyVVSyoUm8K0pJesQP9Mecps.HiaxR4LrLsz0dXEcVZQsS', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/006677?text=tempore', 'NjHjesUgFq', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(37, 'Nikolas Emmerich', '01317985562', 'teagan73@example.com', 'Premier University', 7, 69, NULL, 1, '$2y$10$VyvTvzt0qEZMBwBasfdo2O4JT/H4ehl6WAU9WeqynROsYzY7U0MW2', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/001144?text=facilis', 'QoUuy3HFZM', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(38, 'Karianne Kshlerin', '01704959000', 'ardith.krajcik@example.org', 'Premier University', 1, 22, NULL, 1, '$2y$10$Ix/7pNsJqnSUMomCE9LmwejqvPz4Zkd9bMMNTMWTavetLrI9eXnw.', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/007799?text=modi', '1K36MBLQID', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(39, 'Adelia Stiedemann', '01555297869', 'pheidenreich@example.com', 'Premier University', 1, 12, NULL, 1, '$2y$10$BPoi9dYlhrfD2HhQ6jDEOeM75EcrZPmyr7xhY1PlTjO3cMOe9RlE.', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/0033dd?text=repudiandae', 'Mi0IitGqZ1', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(40, 'Amani Schumm', '01561899627', 'johnathon32@example.net', 'Premier University', 1, 13, NULL, 1, '$2y$10$kdnSUhnosumdn3CQp4wMcuKSpce/80C3fCMrTgKLLkH9Tbz2aHp0.', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/00dd00?text=voluptas', 'Zp8Cj3NtAy', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(41, 'Cassandre O\'Kon', '01569770463', 'rstroman@example.com', 'Premier University', 5, 53, NULL, 1, '$2y$10$uG/a2djg4NABHTSuzaJca.wMIv/HMDotvMJX5TN4c/skwowTpu5/K', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/006677?text=possimus', 'jJhb5iwYpw', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(42, 'Deborah West', '01767839278', 'adrianna81@example.org', 'Premier University', 1, 17, NULL, 1, '$2y$10$TBt1AzD3AS0hug6F6GcPLeBxFbf71KQ3hmmTNXrC6jGSgOild7rDC', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/0088dd?text=qui', 'nrGIj8N8vE', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(43, 'Dr. Jaden Leannon I', '01724538368', 'catherine19@example.net', 'Premier University', 4, 41, NULL, 1, '$2y$10$Ip43.RGYp9o3JQF5xXzKk..vSJ2DxgPSodv.LggmzbvQ4qE6tXKCC', '2021-08-03 07:55:50', NULL, 'https://via.placeholder.com/640x480.png/008811?text=vel', 'ynCRvZs9kp', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(44, 'Dr. Vella Hand', '01713272174', 'crystel.donnelly@example.com', 'Premier University', 6, 57, NULL, 1, '$2y$10$kSc7Swdy8RVmrAKDV1uH0.xGHoKyeldA8/L0HFafJXZfiWJ4gFEe.', '2021-08-03 07:55:51', NULL, 'https://via.placeholder.com/640x480.png/003377?text=labore', '4BdFULPlw5', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(45, 'Randal Schimmel', '01792208386', 'vesta69@example.org', 'Premier University', 4, 43, NULL, 1, '$2y$10$tXlIZBHwAfsclH1/QqBmX.OGLX07Na1crtogpjpj8SLIbKVxHr.jC', '2021-08-03 07:55:51', NULL, 'https://via.placeholder.com/640x480.png/00dd22?text=culpa', 'yX5Sc238Tu', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(46, 'Khalid Kautzer', '01893162062', 'gwillms@example.org', 'Premier University', 5, 50, NULL, 1, '$2y$10$13W8Mpv1I15jcVQlVtIi..hCiZB2wawqb9STtYagOM5u5A3YsxaeS', '2021-08-03 07:55:51', NULL, 'https://via.placeholder.com/640x480.png/00ccee?text=ex', 'BXi3cSGMHH', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(47, 'Ms. Jazlyn Waters', '01612486541', 'zspinka@example.org', 'Premier University', 3, 36, NULL, 1, '$2y$10$ZnAdv9kxuBnyBhIAj1abT.XynmQIDog/jF38bjx6cwUK.PWxCZCt2', '2021-08-03 07:55:51', NULL, 'https://via.placeholder.com/640x480.png/00cccc?text=unde', 'fCwpzV5pTg', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(48, 'Carson Spinka', '01661952232', 'tmayert@example.com', 'Premier University', 4, 39, NULL, 1, '$2y$10$jdJ05pLMPIxnWQnVmETbeOFXqfSCF8J3ECUxlynVniHvC7jrftzqC', '2021-08-03 07:55:51', NULL, 'https://via.placeholder.com/640x480.png/0022bb?text=suscipit', 'kJsVT8eha6', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(49, 'Mrs. Kariane Upton Jr.', '01865605600', 'murazik.jarret@example.com', 'Premier University', 3, 38, NULL, 1, '$2y$10$Ea.YxEh6wKN/Zzo0snpX0Orpr.Q57vSB0JQ2TEWUACrDLmSBwEB9q', '2021-08-03 07:55:51', NULL, 'https://via.placeholder.com/640x480.png/008888?text=molestias', 'YxTSnZvTu5', '2021-08-03 07:55:51', '2021-08-03 07:55:51'),
(50, 'Alex Leannon', '01589390419', 'knicolas@example.net', 'Premier University', 3, 35, NULL, 1, '$2y$10$peG29ctQP72dfHWw8JB5J.RHMgyNGXLx1G/XGpGsoGVgcgCzJWFLW', '2021-08-03 07:55:51', NULL, 'https://via.placeholder.com/640x480.png/0055dd?text=perspiciatis', 'gdBvMtHUoF', '2021-08-03 07:55:51', '2021-08-03 07:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `user_id`, `book_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 34, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(2, 6, 6, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(3, 7, 16, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(4, 10, 46, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(5, 9, 14, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(6, 5, 36, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(7, 1, 21, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(8, 6, 35, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(9, 1, 5, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(10, 4, 11, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(11, 5, 7, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(12, 7, 17, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(13, 4, 11, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(14, 1, 43, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(15, 6, 31, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(16, 1, 22, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(17, 3, 23, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(18, 2, 28, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(19, 7, 33, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52'),
(20, 4, 47, 1, '2021-08-03 07:55:52', '2021-08-03 07:55:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_slug_unique` (`slug`),
  ADD KEY `books_seller_id_foreign` (`seller_id`),
  ADD KEY `books_category_id_foreign` (`category_id`),
  ADD KEY `books_sub_category1_id_foreign` (`sub_category1_id`),
  ADD KEY `books_sub_category2_id_foreign` (`sub_category2_id`),
  ADD KEY `books_division_id_foreign` (`division_id`),
  ADD KEY `books_district_id_foreign` (`district_id`),
  ADD KEY `books_upazila_id_foreign` (`upazila_id`);

--
-- Indexes for table `book_images`
--
ALTER TABLE `book_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_images_book_id_foreign` (`book_id`),
  ADD KEY `book_images_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locations_slug_unique` (`slug`),
  ADD KEY `locations_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_division_id_foreign` (`division_id`),
  ADD KEY `users_district_id_foreign` (`district_id`),
  ADD KEY `users_upazila_id_foreign` (`upazila_id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `book_images`
--
ALTER TABLE `book_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_sub_category1_id_foreign` FOREIGN KEY (`sub_category1_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_sub_category2_id_foreign` FOREIGN KEY (`sub_category2_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_upazila_id_foreign` FOREIGN KEY (`upazila_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_images`
--
ALTER TABLE `book_images`
  ADD CONSTRAINT `book_images_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_images_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_upazila_id_foreign` FOREIGN KEY (`upazila_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
