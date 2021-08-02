-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 02:47 PM
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
(1, 'Admin', 'admin@mail.com', '01861932523', 1, 1, '$2y$10$L9vMGkTqteVuFXddFAEFp.a435t/K0MTDKw8BCb2zCdYnW9A9ZXyi', NULL, '2021-08-02 06:46:34', '2021-08-02 06:46:34');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `seller_id`, `title`, `author`, `edition`, `publication`, `version`, `category_id`, `sub_category1_id`, `sub_category2_id`, `isbn_no`, `price`, `slug`, `short_description`, `description`, `division_id`, `district_id`, `upazila_id`, `is_sold`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Dr. Declan Waters', 'Madaline Hoeger MD', '4th', 'Prof. Chris Farrell DVM', 'Bangla', 9, NULL, NULL, NULL, 429, 'dr-declan-waters', 'Quae adipisci ut minus deserunt amet dolores.', 'Tenetur facilis cupiditate velit qui aliquam nemo et rerum. Voluptate et ut nihil quia vero sed enim. Sed ab quia nihil totam.', 8, 71, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(2, 19, 'Prof. Talia Nitzsche', 'Elisa Nikolaus', '5th', 'Margarita Morar', 'English', 17, NULL, NULL, NULL, 487, 'prof-talia-nitzsche', 'Autem odit qui doloribus voluptate voluptas voluptas laboriosam aspernatur.', 'Saepe est dignissimos dolor id ea provident sed. Voluptatum ad ut repellendus recusandae.', 7, 66, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(3, 15, 'Ahmad Greenholt', 'Prof. Giuseppe Kuhn', '3rd', 'Stanford Littel DDS', 'Bangla', 2, NULL, NULL, NULL, 135, 'ahmad-greenholt', 'Qui maxime molestiae cupiditate aliquam eligendi et occaecati.', 'Eius eos est molestiae quo sit accusamus error. Odio nihil voluptatem cupiditate fuga quia assumenda.', 7, 68, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(4, 11, 'Priscilla Roob', 'Sid Bechtelar', '6th', 'Leanne Balistreri DDS', 'English', 7, NULL, NULL, NULL, 388, 'priscilla-roob', 'Soluta aut in fugiat iure voluptate qui doloremque.', 'Enim quis totam enim temporibus laborum itaque. Voluptas aut reiciendis quia alias.', 2, 28, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(5, 15, 'Mr. Merritt Pouros', 'Melisa Gislason', '4th', 'Richard Bartoletti', 'English', 10, NULL, NULL, NULL, 412, 'mr-merritt-pouros', 'Et quis nihil assumenda dolor eveniet.', 'Perferendis occaecati recusandae dolores expedita sunt aut a. Atque magni sed odit sunt soluta alias. Consequatur id qui non velit.', 7, 69, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(6, 21, 'Prof. Nayeli Wehner IV', 'Obie Bergstrom', '3rd', 'Dr. Norbert Harris', 'Bangla', 8, NULL, NULL, NULL, 493, 'prof-nayeli-wehner-iv', 'Enim nemo dolorem sequi autem asperiores aliquid in corrupti.', 'Officia eos voluptatem quo molestiae quam omnis. Optio nihil a distinctio consequatur vero iure minima. Culpa et sit nesciunt officia et.', 4, 44, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(7, 11, 'Verna Walter', 'Johanna Moen', '6th', 'Lambert Leuschke', 'Bangla', 18, NULL, NULL, NULL, 222, 'verna-walter', 'Officia veritatis et quis eos voluptatem.', 'Enim voluptas sed perspiciatis voluptate tenetur totam sunt. Vel molestiae enim sint. Est omnis consequatur sunt fugiat in.', 3, 37, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(8, 9, 'Hugh Koch II', 'Mr. Eli Morissette', '4th', 'Prof. Meghan Klocko II', 'Bangla', 8, NULL, NULL, NULL, 133, 'hugh-koch-ii', 'Ut omnis dolores modi ad.', 'Vero autem autem tempora ipsam impedit architecto velit. Non amet repellendus corporis nemo nesciunt sit rem facere.', 3, 37, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(9, 8, 'Verona Gorczany', 'Sam Ullrich', '6th', 'Theresa Kozey', 'English', 16, NULL, NULL, NULL, 192, 'verona-gorczany', 'Eos est quis ipsum.', 'Ut omnis magnam qui doloremque autem. Reiciendis sit esse quo dolorum non. Voluptatem cum et enim officia veritatis dolore. Iusto nulla aperiam porro nam iusto.', 3, 38, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(10, 23, 'Shaina McLaughlin', 'Mr. Royal Parker', '5th', 'Joany Steuber I', 'English', 11, NULL, NULL, NULL, 385, 'shaina-mclaughlin', 'Autem tempore ut et eum rerum.', 'Doloribus voluptas tempore nihil ab. Quod earum harum quia. Repudiandae facilis odio hic. Doloremque delectus fuga beatae nulla.', 1, 19, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(11, 10, 'Madonna Stamm', 'Jannie Thompson', '3rd', 'Jarrett Breitenberg II', 'English', 2, NULL, NULL, NULL, 372, 'madonna-stamm', 'Fuga sed animi rerum assumenda hic.', 'Magnam aut aut corrupti eveniet unde eum. Ea id rerum ea aut saepe incidunt officiis. Enim sint et ut maxime laudantium.', 3, 35, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(12, 7, 'Flossie Gerlach', 'Raheem Legros', '3rd', 'Prof. Kathlyn Wisoky PhD', 'English', 13, NULL, NULL, NULL, 122, 'flossie-gerlach', 'Eum facere fugiat tenetur et odit.', 'Culpa ullam ex non doloribus voluptas itaque. Sed ipsam veniam saepe harum placeat. Possimus adipisci enim quas voluptates.', 6, 62, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(13, 24, 'Ms. America Kilback', 'Giovanny McKenzie', '5th', 'Ms. Charity Pfeffer MD', 'Bangla', 6, NULL, NULL, NULL, 307, 'ms-america-kilback', 'Ea eos nostrum commodi eaque qui facilis enim.', 'Deserunt rerum unde rem sint doloribus repudiandae facilis. Quas consequuntur voluptatem esse alias sit. Rem numquam iste eius labore dolorem expedita natus.', 7, 67, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(14, 20, 'Kylie Rohan I', 'Tressa Farrell', '4th', 'Burdette Brown', 'English', 9, NULL, NULL, NULL, 329, 'kylie-rohan-i', 'Qui quis quos magnam.', 'Vel esse est quia voluptas dolore beatae. Sint deleniti debitis inventore deserunt similique. Qui iure numquam ab debitis ut. Eveniet iure qui non a harum.', 8, 74, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(15, 24, 'Joany Huels', 'Dr. Vernon Dare', '4th', 'Katheryn Gorczany MD', 'English', 3, NULL, NULL, NULL, 170, 'joany-huels', 'Perferendis eaque et et ea.', 'Ratione eos perspiciatis accusantium animi aut sunt. Velit labore itaque voluptate perspiciatis odit aspernatur. Eos id asperiores ratione in. Ut rerum repudiandae consectetur alias harum.', 2, 26, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(16, 8, 'Casper Schultz II', 'Bernadine Feest', '6th', 'Sage Krajcik IV', 'English', 6, NULL, NULL, NULL, 291, 'casper-schultz-ii', 'Rerum maiores atque at ut rerum.', 'Velit consequatur ratione similique eaque. Quo pariatur quo suscipit architecto. Deserunt quibusdam at voluptates repellat.', 4, 43, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(17, 10, 'Andres Schimmel', 'Prof. Wilson Jacobs II', '5th', 'Lempi Zboncak', 'English', 17, NULL, NULL, NULL, 262, 'andres-schimmel', 'Delectus neque laborum quasi repellat tempore dolor omnis nostrum.', 'Saepe occaecati aut ut fugit est qui. Dolor et pariatur fuga repellendus corporis autem debitis. Et repudiandae magnam corrupti facilis.', 2, 24, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(18, 21, 'Patience Williamson', 'Tracey Russel IV', '6th', 'Prof. Alessandro Johnson', 'English', 14, NULL, NULL, NULL, 387, 'patience-williamson', 'Ea iste facere quas sint fuga quia optio.', 'Et veniam dignissimos nihil qui et dolore. Quasi iste quasi suscipit deleniti. Eum ut tempore omnis et. Fuga ea qui aspernatur.', 5, 53, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(19, 19, 'Stewart Cruickshank', 'Damaris Waelchi', '4th', 'Annabelle Bruen III', 'English', 3, NULL, NULL, NULL, 176, 'stewart-cruickshank', 'Incidunt deserunt excepturi tempora dolores sit vero voluptatem unde.', 'Repellat sit eveniet quasi suscipit. Sint dolores vel omnis deleniti. Eum voluptatum fugit qui sit. Accusamus eum dignissimos inventore quis eos culpa sint omnis.', 7, 67, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(20, 19, 'Minerva Harber', 'Jonathan Kuphal', '4th', 'Prof. Jewell Larson', 'English', 16, NULL, NULL, NULL, 327, 'minerva-harber', 'Corporis a distinctio reprehenderit voluptatem dolores.', 'Saepe assumenda aut molestias quod consequatur tempore assumenda. Quidem veniam quaerat est aut non. Amet dolores excepturi similique dignissimos doloremque ut ut consequuntur.', 6, 58, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(21, 8, 'Derrick Windler II', 'Marcellus Rolfson', '5th', 'Mr. Lawrence Conroy II', 'English', 7, NULL, NULL, NULL, 336, 'derrick-windler-ii', 'Voluptas pariatur provident ut dolor necessitatibus.', 'In ea incidunt rem hic et rerum hic. Quam sit qui omnis et nostrum. Repellat est exercitationem est animi expedita. Sed rerum dolore velit quibusdam.', 5, 48, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(22, 25, 'Ms. Libby Lockman', 'Caleigh Leffler', '4th', 'Theodora O\'Conner', 'English', 2, NULL, NULL, NULL, 174, 'ms-libby-lockman', 'Aut unde inventore soluta soluta consequatur voluptatum omnis.', 'Id harum aut rerum nemo voluptas. Non omnis eos perspiciatis omnis et temporibus. Corporis id nam debitis vero nobis non qui nostrum. Laudantium eum nam voluptates et et et. Quae accusamus ipsum a.', 5, 54, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(23, 21, 'Dr. Esmeralda Krajcik V', 'Miss Queenie Jacobson', '4th', 'Talon McCullough', 'English', 2, NULL, NULL, NULL, 242, 'dr-esmeralda-krajcik-v', 'Veniam non ratione deleniti adipisci et.', 'Velit non temporibus tenetur maiores. Nostrum rerum ea et voluptas aut nihil architecto. Tempore nemo consequatur porro dolorem optio accusamus. Ea quisquam iste ab a.', 2, 34, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(24, 5, 'Elliot Murazik PhD', 'Arlene Abshire', '4th', 'Arturo Anderson', 'English', 1, NULL, NULL, NULL, 415, 'elliot-murazik-phd', 'Ut vel omnis placeat nihil.', 'Quis in delectus quod quis sed tenetur. Id rem molestias quaerat placeat numquam reiciendis dicta. Perspiciatis aliquam est rerum et a qui.', 8, 73, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(25, 11, 'Magnus Fahey', 'Dr. Marcel Hartmann', '4th', 'Kareem O\'Hara', 'English', 17, NULL, NULL, NULL, 214, 'magnus-fahey', 'Doloribus veniam temporibus et quibusdam odit eligendi voluptas.', 'Sapiente illum incidunt nihil ipsum vel dolorem porro. Doloribus quo cumque et laborum quisquam minima. Modi sit autem quia cum quia. Necessitatibus quam placeat cupiditate quas et aliquid.', 8, 71, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(26, 21, 'Dr. Lorna Lueilwitz', 'Mathew Wolf', '5th', 'Julianne Johns', 'English', 14, NULL, NULL, NULL, 360, 'dr-lorna-lueilwitz', 'Perspiciatis corrupti cum soluta et amet.', 'Rerum non qui in aut earum facere. Enim officia sit officia. Dolor voluptas et dolor dolorum voluptatem omnis.', 6, 55, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(27, 25, 'Dr. Shanna Braun', 'Mrs. Taya Greenholt', '3rd', 'Dr. Lorenzo Morissette', 'English', 15, NULL, NULL, NULL, 495, 'dr-shanna-braun', 'Minima magni veniam est in vel possimus omnis.', 'Sint in cumque ex culpa autem. Rem deleniti ut ipsum est ut. Tempora quibusdam qui enim quia perspiciatis vel.', 3, 38, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(28, 23, 'Mr. Norwood Boehm V', 'Prof. Maryjane Runte', '5th', 'Chance Douglas Jr.', 'English', 11, NULL, NULL, NULL, 158, 'mr-norwood-boehm-v', 'Voluptatem aut fuga debitis officia.', 'Voluptatibus corrupti repudiandae quia rerum et modi. Ratione vero consequatur repudiandae molestias.', 1, 18, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(29, 22, 'Theodore Rippin', 'Cordie O\'Hara', '4th', 'Stephan Herman', 'English', 18, NULL, NULL, NULL, 467, 'theodore-rippin', 'Perferendis doloribus praesentium tempora nihil quia tempora distinctio.', 'Qui aut id doloremque est eaque perspiciatis eos nesciunt. Non excepturi quia aut quis ad delectus. Molestias non ipsa in quam earum.', 6, 64, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(30, 8, 'Imelda Hessel', 'Jana Buckridge', '5th', 'Ulises Schinner', 'Bangla', 15, NULL, NULL, NULL, 294, 'imelda-hessel', 'Nemo repellendus sit amet.', 'Tempora voluptate aliquam odit officia excepturi sapiente. Incidunt quae et excepturi modi quas. Voluptas eos nostrum aliquid in.', 8, 74, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(31, 7, 'Jerrell VonRueden', 'Arlie Koch III', '6th', 'Maia Larkin', 'English', 11, NULL, NULL, NULL, 467, 'jerrell-vonrueden', 'Et adipisci est sed dolor quia nihil.', 'Assumenda laborum saepe quidem velit. Optio recusandae quia velit commodi fuga tenetur. Praesentium earum amet nisi aliquid.', 5, 51, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(32, 21, 'Leonard Aufderhar', 'Dr. Joy Kirlin DDS', '5th', 'Wilbert Treutel', 'English', 14, NULL, NULL, NULL, 338, 'leonard-aufderhar', 'Dolor consectetur qui optio nobis eos molestiae.', 'Voluptatibus necessitatibus similique maxime pariatur. Et maiores maxime architecto est quos. Tempora quia molestias expedita enim. Modi quisquam rerum nam non.', 3, 35, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(33, 18, 'Peter Keeling', 'Gracie Gottlieb', '3rd', 'Skyla Kerluke', 'English', 6, NULL, NULL, NULL, 384, 'peter-keeling', 'Qui voluptate sit distinctio similique veniam.', 'Quis natus deserunt facere veritatis aut. Impedit ipsum nulla ea voluptatem. Illum voluptas sed ducimus distinctio dolorum. Animi temporibus non similique laborum qui hic.', 1, 19, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(34, 16, 'Dannie McDermott', 'Dr. Jean Veum', '6th', 'Angelina Homenick Sr.', 'Bangla', 7, NULL, NULL, NULL, 387, 'dannie-mcdermott', 'Sit ut et tempora voluptas.', 'Reiciendis dolores nam voluptatem explicabo ducimus id minima. Minima amet nihil ad. Omnis inventore quia ut ab est. Et fugit atque non.', 3, 36, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(35, 13, 'Declan Anderson', 'Miss Natalie Jacobson', '3rd', 'Ms. Hettie Miller', 'English', 13, NULL, NULL, NULL, 274, 'declan-anderson', 'Reprehenderit dolorem et hic ratione quae officiis.', 'Qui voluptates voluptatibus error velit. Eos dignissimos hic culpa harum neque voluptatem sint. Necessitatibus et reiciendis hic.', 1, 13, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(36, 19, 'Prof. Aniya Considine', 'Mr. Davion Vandervort I', '4th', 'Jeffery Bergstrom', 'English', 18, NULL, NULL, NULL, 316, 'prof-aniya-considine', 'Laudantium eligendi vero quae eum vel in voluptates.', 'Illum autem asperiores fugiat commodi sit et. Deleniti praesentium et culpa illo enim. Aperiam deleniti assumenda autem a voluptatem voluptas nihil et.', 2, 26, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(37, 23, 'Gust Dach IV', 'Ms. Beverly Metz I', '3rd', 'Miss Anya Daugherty I', 'English', 2, NULL, NULL, NULL, 253, 'gust-dach-iv', 'Esse dignissimos qui earum aliquid assumenda quaerat fugit quo.', 'Harum et tenetur molestiae fuga explicabo possimus sed eum. Ut facere culpa sed. Et dolor sit qui voluptatem aut.', 7, 66, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(38, 23, 'Prof. Curtis Wolf', 'Herminia Kreiger', '3rd', 'Aryanna Stamm', 'Bangla', 2, NULL, NULL, NULL, 178, 'prof-curtis-wolf', 'Magni deserunt cum eum odio optio voluptas omnis.', 'Modi voluptatem blanditiis sit ex. Itaque enim quia eveniet molestiae autem nulla. Et quam nobis quod.', 3, 37, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(39, 21, 'Dr. Issac Langworth DDS', 'Prof. Roy Schiller MD', '3rd', 'Isaias Marquardt', 'English', 10, NULL, NULL, NULL, 479, 'dr-issac-langworth-dds', 'Quis doloribus quisquam minima sint sit repellendus qui ea.', 'Officiis laudantium occaecati tenetur ut voluptatem deserunt cumque. Ea dolor aut dolores fugiat. Id ut dolore est hic ut nesciunt aliquam a.', 8, 74, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(40, 24, 'Herbert Morar', 'Dorcas King', '5th', 'Mr. Jacques Boyer Jr.', 'Bangla', 14, NULL, NULL, NULL, 428, 'herbert-morar', 'In maxime tempore eveniet nam ipsum qui.', 'Eius voluptas aspernatur eum. Debitis doloribus tempore est voluptatem. Voluptas minus laudantium ea enim ad labore ipsum.', 2, 24, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(41, 22, 'Prof. Renee Rippin', 'Glenda Mosciski', '5th', 'Citlalli Hettinger II', 'English', 10, NULL, NULL, NULL, 394, 'prof-renee-rippin', 'Maiores dolorem ab dolorem eos qui.', 'Id aut dolorem modi autem aperiam sit cumque occaecati. Accusantium eos nulla facere qui est. Accusamus quia blanditiis sit vel iste beatae aut. Laborum voluptates nisi repellendus error.', 7, 69, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(42, 9, 'Wellington Ritchie', 'Mrs. Yasmin Kilback PhD', '3rd', 'Florian Raynor', 'English', 10, NULL, NULL, NULL, 166, 'wellington-ritchie', 'Et saepe dolore voluptate debitis sequi incidunt voluptatem.', 'Officia eligendi asperiores explicabo natus hic ex cum. Voluptatem unde suscipit vitae aspernatur possimus dicta quaerat natus. Consequatur aperiam voluptate qui suscipit rerum eligendi.', 3, 38, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(43, 10, 'Dawn McKenzie', 'Alexandrine Hagenes', '4th', 'Domingo Miller', 'English', 8, NULL, NULL, NULL, 327, 'dawn-mckenzie', 'Numquam quia et et inventore voluptate.', 'Ad enim eos veniam nisi optio eius. Tempora quia laboriosam dolorem illo est. Sed libero alias pariatur unde.', 2, 28, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(44, 8, 'Dr. Justice Nolan', 'Albina Bergstrom PhD', '4th', 'Tess Batz', 'English', 11, NULL, NULL, NULL, 294, 'dr-justice-nolan', 'Et dolore dolorem facilis saepe ut.', 'Velit totam voluptatem et qui. Doloremque quam neque deleniti reprehenderit qui itaque illo. Dolorem veniam aut vel facere. Labore impedit hic asperiores numquam.', 2, 33, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(45, 22, 'Tania Waelchi', 'Prof. Joanie Corwin MD', '6th', 'Dr. Tyreek Littel II', 'English', 12, NULL, NULL, NULL, 488, 'tania-waelchi', 'Corrupti laboriosam quo et.', 'Nobis consequuntur sint qui iste laboriosam maiores. Molestias sit aut omnis nihil. Eius enim non corrupti molestiae. Cupiditate sapiente laborum illum nulla vel asperiores qui.', 1, 12, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(46, 6, 'Prof. Talon Corwin', 'Sabryna Kilback', '6th', 'Miss Beulah Thompson Jr.', 'English', 1, NULL, NULL, NULL, 455, 'prof-talon-corwin', 'Consequatur consequatur blanditiis repudiandae deleniti perspiciatis.', 'Incidunt sint ut iste harum adipisci molestias maiores incidunt. Repellendus dolorem quia sapiente rem cupiditate. Qui amet et ex sint. Dolor soluta iure corporis hic consequatur porro voluptatem.', 3, 35, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(47, 12, 'Joesph Wuckert', 'Gaylord Hirthe', '5th', 'Prof. Katrina Parisian', 'Bangla', 12, NULL, NULL, NULL, 469, 'joesph-wuckert', 'Possimus voluptatibus vero error eius laborum in.', 'Quis nesciunt aliquid molestiae est. Odio eum consequuntur facilis incidunt. Ea provident tempora provident dolorem accusantium. Voluptas dicta animi nostrum nulla animi quia vero et.', 4, 43, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(48, 9, 'Caden Ruecker', 'Abner Conroy', '6th', 'Luna Barrows', 'English', 12, NULL, NULL, NULL, 422, 'caden-ruecker', 'Et aut molestias ratione enim odit.', 'Necessitatibus tempore incidunt vel error. Qui quo quia est voluptatem aut atque. Facere a quia nihil molestias blanditiis mollitia et.', 1, 14, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(49, 17, 'Prof. Wilburn McClure', 'Linwood Schaden', '5th', 'Dr. Rafael Dietrich', 'Bangla', 10, NULL, NULL, NULL, 304, 'prof-wilburn-mcclure', 'Vel ipsa unde aliquam corporis dolorem sunt doloribus.', 'Inventore aut quasi aspernatur voluptatem incidunt sapiente dolore. Repellendus dolorum est aliquam sed.', 1, 16, NULL, 1, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(50, 16, 'Dr. Jalon Beatty Sr.', 'Aracely Dickinson', '3rd', 'Prof. Elyssa Friesen DDS', 'English', 17, NULL, NULL, NULL, 264, 'dr-jalon-beatty-sr', 'Provident assumenda et voluptas ea velit tenetur ratione.', 'Quia illo id error aperiam. Totam esse suscipit atque asperiores et illo. Incidunt quia qui ut est atque. Blanditiis enim facilis harum aut.', 5, 50, NULL, 0, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40');

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
(1, 29, NULL, 'Edwin Donnelly', 'https://via.placeholder.com/640x480.png/00aabb?text=ea', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(2, 29, NULL, 'Dr. Kitty Swift', 'https://via.placeholder.com/640x480.png/002233?text=modi', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(3, 50, NULL, 'Frida Hudson', 'https://via.placeholder.com/640x480.png/00cc66?text=modi', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(4, 39, NULL, 'Mr. Carleton Fadel V', 'https://via.placeholder.com/640x480.png/00bb66?text=qui', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(5, 40, NULL, 'Liliana Kris', 'https://via.placeholder.com/640x480.png/0088dd?text=animi', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(6, 26, NULL, 'Ms. Clare Hirthe', 'https://via.placeholder.com/640x480.png/00dd33?text=enim', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(7, 24, NULL, 'Jerald Gorczany', 'https://via.placeholder.com/640x480.png/006677?text=illum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(8, 30, NULL, 'Dr. Ike Franecki', 'https://via.placeholder.com/640x480.png/00aa44?text=quam', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(9, 4, NULL, 'Buck Hintz', 'https://via.placeholder.com/640x480.png/008899?text=in', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(10, 3, NULL, 'Frances Mueller', 'https://via.placeholder.com/640x480.png/00cc99?text=corrupti', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(11, 17, NULL, 'Brennan Jerde', 'https://via.placeholder.com/640x480.png/0022dd?text=ratione', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(12, 8, NULL, 'Emilio Frami', 'https://via.placeholder.com/640x480.png/00ffaa?text=omnis', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(13, 33, NULL, 'Brionna Walker Jr.', 'https://via.placeholder.com/640x480.png/007755?text=facilis', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(14, 2, NULL, 'Mrs. Shanie Gusikowski', 'https://via.placeholder.com/640x480.png/00cc88?text=officiis', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(15, 33, NULL, 'Shany Kunze', 'https://via.placeholder.com/640x480.png/008855?text=placeat', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(16, 6, NULL, 'Dr. Uriel Reinger Jr.', 'https://via.placeholder.com/640x480.png/00ddcc?text=ipsa', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(17, 21, NULL, 'Barbara Corwin', 'https://via.placeholder.com/640x480.png/003300?text=est', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(18, 18, NULL, 'Dr. Carley Lemke', 'https://via.placeholder.com/640x480.png/0077aa?text=et', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(19, 26, NULL, 'Marisol Block', 'https://via.placeholder.com/640x480.png/00ddaa?text=et', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(20, 42, NULL, 'Prof. Ivory Champlin Sr.', 'https://via.placeholder.com/640x480.png/0044ff?text=libero', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(21, 50, NULL, 'Jessie Ernser I', 'https://via.placeholder.com/640x480.png/004411?text=optio', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(22, 28, NULL, 'Nicholaus Schuster Jr.', 'https://via.placeholder.com/640x480.png/005577?text=qui', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(23, 44, NULL, 'Arne Pagac MD', 'https://via.placeholder.com/640x480.png/0066dd?text=cumque', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(24, 26, NULL, 'Hanna Schiller DVM', 'https://via.placeholder.com/640x480.png/00bb44?text=deleniti', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(25, 32, NULL, 'Mrs. Lilyan Hoppe', 'https://via.placeholder.com/640x480.png/00ff77?text=fugit', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(26, 41, NULL, 'George Grimes', 'https://via.placeholder.com/640x480.png/00aa11?text=sed', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(27, 33, NULL, 'Wade Quitzon', 'https://via.placeholder.com/640x480.png/0011aa?text=ea', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(28, 44, NULL, 'Dannie Pfannerstill', 'https://via.placeholder.com/640x480.png/00ddcc?text=asperiores', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(29, 30, NULL, 'Dr. Shane Hegmann', 'https://via.placeholder.com/640x480.png/00ffaa?text=voluptatum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(30, 42, NULL, 'Marcelo Crona', 'https://via.placeholder.com/640x480.png/00ffee?text=unde', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(31, 20, NULL, 'Talon Kreiger', 'https://via.placeholder.com/640x480.png/003355?text=totam', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(32, 16, NULL, 'Norbert Bauch', 'https://via.placeholder.com/640x480.png/00ccee?text=nisi', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(33, 25, NULL, 'Destinee Walter', 'https://via.placeholder.com/640x480.png/005599?text=eum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(34, 15, NULL, 'Wendell Cassin', 'https://via.placeholder.com/640x480.png/0066ee?text=inventore', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(35, 10, NULL, 'Kennith Smitham I', 'https://via.placeholder.com/640x480.png/004488?text=tempora', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(36, 40, NULL, 'Prof. Simeon Okuneva', 'https://via.placeholder.com/640x480.png/00eebb?text=vero', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(37, 8, NULL, 'Prof. Nick Fay', 'https://via.placeholder.com/640x480.png/00ee88?text=fuga', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(38, 37, NULL, 'Matt Bahringer I', 'https://via.placeholder.com/640x480.png/009999?text=enim', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(39, 15, NULL, 'Bonita Davis', 'https://via.placeholder.com/640x480.png/0066cc?text=voluptate', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(40, 18, NULL, 'Mathias Rath III', 'https://via.placeholder.com/640x480.png/00dd00?text=doloremque', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(41, 10, NULL, 'Mr. Arthur Wintheiser', 'https://via.placeholder.com/640x480.png/007766?text=tempora', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(42, 11, NULL, 'Benny Vandervort MD', 'https://via.placeholder.com/640x480.png/0033cc?text=voluptatem', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(43, 48, NULL, 'Prof. Juwan Lebsack DVM', 'https://via.placeholder.com/640x480.png/009900?text=qui', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(44, 26, NULL, 'Mr. Robin Littel', 'https://via.placeholder.com/640x480.png/00ee99?text=sed', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(45, 49, NULL, 'Jarrell Prosacco', 'https://via.placeholder.com/640x480.png/007766?text=quo', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(46, 13, NULL, 'Camille Collier DDS', 'https://via.placeholder.com/640x480.png/00ddaa?text=nesciunt', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(47, 28, NULL, 'Myrtle Wyman', 'https://via.placeholder.com/640x480.png/00bb77?text=nostrum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(48, 34, NULL, 'Tevin Roob', 'https://via.placeholder.com/640x480.png/001177?text=cumque', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(49, 21, NULL, 'Prof. Erick Dare', 'https://via.placeholder.com/640x480.png/0033bb?text=iure', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(50, 19, NULL, 'Mrs. Anabelle Prosacco', 'https://via.placeholder.com/640x480.png/007733?text=aliquam', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(51, 31, NULL, 'Michael O\'Keefe', 'https://via.placeholder.com/640x480.png/009955?text=ratione', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(52, 14, NULL, 'Miss Lyla Denesik', 'https://via.placeholder.com/640x480.png/002244?text=autem', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(53, 16, NULL, 'Mrs. Chelsea Rath', 'https://via.placeholder.com/640x480.png/0044bb?text=sapiente', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(54, 5, NULL, 'Nicole Howell', 'https://via.placeholder.com/640x480.png/0077cc?text=perspiciatis', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(55, 9, NULL, 'Mrs. Amber Kuvalis MD', 'https://via.placeholder.com/640x480.png/007755?text=culpa', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(56, 49, NULL, 'Vernice Wolff', 'https://via.placeholder.com/640x480.png/004477?text=in', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(57, 12, NULL, 'Izabella Pfannerstill', 'https://via.placeholder.com/640x480.png/0011ff?text=recusandae', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(58, 23, NULL, 'Duane Carter', 'https://via.placeholder.com/640x480.png/00ff99?text=voluptate', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(59, 33, NULL, 'Adan Zulauf V', 'https://via.placeholder.com/640x480.png/00dd22?text=quis', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(60, 20, NULL, 'Alyce Bahringer', 'https://via.placeholder.com/640x480.png/005588?text=minus', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(61, 27, NULL, 'Freddie Johnson', 'https://via.placeholder.com/640x480.png/00eecc?text=earum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(62, 32, NULL, 'Aglae Christiansen', 'https://via.placeholder.com/640x480.png/00ee11?text=dolorem', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(63, 6, NULL, 'Mrs. Lauryn Keebler IV', 'https://via.placeholder.com/640x480.png/008899?text=tempore', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(64, 38, NULL, 'Libby Heidenreich', 'https://via.placeholder.com/640x480.png/00bbdd?text=culpa', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(65, 38, NULL, 'Carolina Monahan', 'https://via.placeholder.com/640x480.png/00bbbb?text=ut', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(66, 19, NULL, 'Telly Wehner', 'https://via.placeholder.com/640x480.png/00ffcc?text=ad', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(67, 16, NULL, 'Arturo Hegmann', 'https://via.placeholder.com/640x480.png/00bb99?text=eos', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(68, 26, NULL, 'Dylan Thiel', 'https://via.placeholder.com/640x480.png/00bb33?text=atque', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(69, 48, NULL, 'Carol Lind', 'https://via.placeholder.com/640x480.png/00cc88?text=nisi', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(70, 17, NULL, 'Kathlyn Wilderman', 'https://via.placeholder.com/640x480.png/00ff00?text=eum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(71, 25, NULL, 'Prof. Magdalena Kiehn', 'https://via.placeholder.com/640x480.png/0066cc?text=et', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(72, 19, NULL, 'Prof. Abdiel Crona II', 'https://via.placeholder.com/640x480.png/001166?text=cupiditate', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(73, 24, NULL, 'Abdiel Walker', 'https://via.placeholder.com/640x480.png/0033ff?text=nesciunt', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(74, 19, NULL, 'Eldon Torp', 'https://via.placeholder.com/640x480.png/00ee00?text=vitae', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(75, 46, NULL, 'Mr. Ramon Johnston Jr.', 'https://via.placeholder.com/640x480.png/008855?text=asperiores', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(76, 18, NULL, 'Claudine Borer', 'https://via.placeholder.com/640x480.png/00bb66?text=repudiandae', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(77, 44, NULL, 'Prof. Scot Hahn DVM', 'https://via.placeholder.com/640x480.png/00ee00?text=sunt', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(78, 30, NULL, 'Walker Goyette', 'https://via.placeholder.com/640x480.png/002222?text=voluptas', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(79, 38, NULL, 'Lysanne Abshire', 'https://via.placeholder.com/640x480.png/00aa22?text=quo', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(80, 43, NULL, 'Ronaldo Tromp', 'https://via.placeholder.com/640x480.png/0088ff?text=sed', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(81, 44, NULL, 'Julius Doyle', 'https://via.placeholder.com/640x480.png/004444?text=et', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(82, 13, NULL, 'Mr. Bradly Kris IV', 'https://via.placeholder.com/640x480.png/003377?text=ducimus', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(83, 36, NULL, 'Ramon Lockman', 'https://via.placeholder.com/640x480.png/003366?text=quo', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(84, 1, NULL, 'Dudley Metz', 'https://via.placeholder.com/640x480.png/008822?text=ducimus', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(85, 50, NULL, 'Lydia McClure', 'https://via.placeholder.com/640x480.png/00ee66?text=est', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(86, 11, NULL, 'Mr. Emmanuel Conn', 'https://via.placeholder.com/640x480.png/0011ee?text=ullam', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(87, 40, NULL, 'Loy Dickinson', 'https://via.placeholder.com/640x480.png/00ddbb?text=qui', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(88, 17, NULL, 'Caroline Mueller', 'https://via.placeholder.com/640x480.png/00ee66?text=quis', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(89, 20, NULL, 'Xander Kuhic', 'https://via.placeholder.com/640x480.png/0055ff?text=ut', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(90, 48, NULL, 'Ben Bahringer IV', 'https://via.placeholder.com/640x480.png/0022bb?text=ipsam', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(91, 1, NULL, 'Bert Haley', 'https://via.placeholder.com/640x480.png/0099ff?text=numquam', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(92, 44, NULL, 'Troy Bartoletti IV', 'https://via.placeholder.com/640x480.png/00eebb?text=occaecati', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(93, 31, NULL, 'Daphne Swaniawski', 'https://via.placeholder.com/640x480.png/00cccc?text=eos', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(94, 18, NULL, 'Chet Brekke', 'https://via.placeholder.com/640x480.png/005588?text=sunt', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(95, 1, NULL, 'Dariana Weissnat', 'https://via.placeholder.com/640x480.png/0099aa?text=sint', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(96, 35, NULL, 'Miss Abigale Bartoletti', 'https://via.placeholder.com/640x480.png/007733?text=sequi', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(97, 13, NULL, 'Liliane Schowalter Sr.', 'https://via.placeholder.com/640x480.png/00bb66?text=ut', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(98, 48, NULL, 'Annabel Cummerata', 'https://via.placeholder.com/640x480.png/004477?text=quia', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(99, 39, NULL, 'Dr. Heloise Dach', 'https://via.placeholder.com/640x480.png/008866?text=dignissimos', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(100, 12, NULL, 'Prof. Aron Nitzsche I', 'https://via.placeholder.com/640x480.png/00ff88?text=laboriosam', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(101, 33, NULL, 'Mayra Gleason', 'https://via.placeholder.com/640x480.png/00ccff?text=voluptates', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(102, 23, NULL, 'Mr. Adolphus Upton', 'https://via.placeholder.com/640x480.png/00cc44?text=necessitatibus', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(103, 37, NULL, 'Murray Labadie', 'https://via.placeholder.com/640x480.png/001166?text=commodi', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(104, 13, NULL, 'Prof. Yvonne Heaney', 'https://via.placeholder.com/640x480.png/00dd22?text=qui', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(105, 17, NULL, 'Mr. Isac Batz MD', 'https://via.placeholder.com/640x480.png/007744?text=laudantium', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(106, 21, NULL, 'Gilda Bahringer V', 'https://via.placeholder.com/640x480.png/00aaaa?text=in', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(107, 50, NULL, 'Macie Hudson', 'https://via.placeholder.com/640x480.png/00bbbb?text=sed', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(108, 10, NULL, 'Mr. Joan Fadel IV', 'https://via.placeholder.com/640x480.png/005522?text=error', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(109, 44, NULL, 'Prof. Kip Cronin', 'https://via.placeholder.com/640x480.png/00ee44?text=dolorem', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(110, 26, NULL, 'King Gutmann DDS', 'https://via.placeholder.com/640x480.png/004400?text=nisi', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(111, 50, NULL, 'Chasity Yundt', 'https://via.placeholder.com/640x480.png/00ee44?text=deserunt', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(112, 25, NULL, 'Idella Wunsch', 'https://via.placeholder.com/640x480.png/0077aa?text=ut', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(113, 41, NULL, 'Valentine Beahan', 'https://via.placeholder.com/640x480.png/001155?text=quam', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(114, 12, NULL, 'Earl Mayer', 'https://via.placeholder.com/640x480.png/00ff88?text=facere', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(115, 32, NULL, 'Sabina Wehner', 'https://via.placeholder.com/640x480.png/00ddaa?text=veniam', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(116, 10, NULL, 'Jade Gusikowski', 'https://via.placeholder.com/640x480.png/00aa11?text=omnis', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(117, 23, NULL, 'Anne Legros', 'https://via.placeholder.com/640x480.png/000033?text=earum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(118, 48, NULL, 'Dedrick Senger', 'https://via.placeholder.com/640x480.png/00ddaa?text=beatae', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(119, 40, NULL, 'Green Turcotte DVM', 'https://via.placeholder.com/640x480.png/00bb11?text=quis', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(120, 39, NULL, 'Betsy Erdman Jr.', 'https://via.placeholder.com/640x480.png/00ddee?text=corrupti', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(121, 49, NULL, 'Shaun Stoltenberg', 'https://via.placeholder.com/640x480.png/00bbaa?text=ut', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(122, 14, NULL, 'Mr. Grady Schuppe I', 'https://via.placeholder.com/640x480.png/00eeee?text=voluptates', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(123, 26, NULL, 'Miss Marianna Frami', 'https://via.placeholder.com/640x480.png/00aa66?text=magni', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(124, 30, NULL, 'Sebastian Pfeffer', 'https://via.placeholder.com/640x480.png/00bbcc?text=deleniti', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(125, 49, NULL, 'Brennan Ferry', 'https://via.placeholder.com/640x480.png/0044aa?text=qui', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(126, 48, NULL, 'Sabina Dare', 'https://via.placeholder.com/640x480.png/00bb88?text=dolorum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(127, 22, NULL, 'Cortney Crona V', 'https://via.placeholder.com/640x480.png/0066ee?text=non', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(128, 1, NULL, 'Sandrine Mosciski', 'https://via.placeholder.com/640x480.png/00ee66?text=velit', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(129, 30, NULL, 'Friedrich Hoppe', 'https://via.placeholder.com/640x480.png/005566?text=saepe', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(130, 5, NULL, 'Gaetano Feest', 'https://via.placeholder.com/640x480.png/000011?text=aut', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(131, 23, NULL, 'Dr. Gilberto Carroll Sr.', 'https://via.placeholder.com/640x480.png/007799?text=illum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(132, 41, NULL, 'Garland O\'Reilly', 'https://via.placeholder.com/640x480.png/00ff66?text=harum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(133, 15, NULL, 'Lorenz Breitenberg', 'https://via.placeholder.com/640x480.png/00ddff?text=fuga', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(134, 35, NULL, 'Dr. Pamela Schinner MD', 'https://via.placeholder.com/640x480.png/00bbff?text=sit', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(135, 36, NULL, 'George Kutch', 'https://via.placeholder.com/640x480.png/00aaaa?text=quae', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(136, 50, NULL, 'Prof. Emmanuel Douglas DDS', 'https://via.placeholder.com/640x480.png/00ff55?text=tenetur', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(137, 20, NULL, 'Enos Sanford', 'https://via.placeholder.com/640x480.png/005566?text=qui', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(138, 31, NULL, 'Prof. Ila Von I', 'https://via.placeholder.com/640x480.png/00bb66?text=quos', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(139, 16, NULL, 'Alvena Blick', 'https://via.placeholder.com/640x480.png/0011ff?text=cupiditate', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(140, 22, NULL, 'Alexzander Leuschke', 'https://via.placeholder.com/640x480.png/0099cc?text=delectus', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(141, 11, NULL, 'Verdie Wintheiser', 'https://via.placeholder.com/640x480.png/00dd66?text=perferendis', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(142, 39, NULL, 'Mr. Jarod Bailey IV', 'https://via.placeholder.com/640x480.png/00dd11?text=dolor', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(143, 21, NULL, 'Kiarra Boyle', 'https://via.placeholder.com/640x480.png/00dd99?text=sed', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(144, 17, NULL, 'Tyreek Waelchi', 'https://via.placeholder.com/640x480.png/00ff00?text=rerum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(145, 7, NULL, 'Mrs. Marta Cronin', 'https://via.placeholder.com/640x480.png/00ff99?text=itaque', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(146, 15, NULL, 'Iva Sporer Jr.', 'https://via.placeholder.com/640x480.png/0044ee?text=qui', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(147, 27, NULL, 'Chyna Ernser', 'https://via.placeholder.com/640x480.png/00cc66?text=ipsum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(148, 27, NULL, 'Maeve Tremblay', 'https://via.placeholder.com/640x480.png/00cc66?text=veritatis', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(149, 20, NULL, 'Dr. Dana Fadel PhD', 'https://via.placeholder.com/640x480.png/006688?text=harum', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(150, 21, NULL, 'Berenice Kerluke', 'https://via.placeholder.com/640x480.png/00bb99?text=optio', '2021-08-02 06:46:40', '2021-08-02 06:46:40');

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
(1, 'University Level', NULL, 0, 1, 'university-level-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(2, 'College Level', NULL, 0, 1, 'college-level-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(3, 'School Level', NULL, 0, 1, 'school-level-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(4, 'Art & Architecture', NULL, 0, 1, 'art-architecture-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(5, 'Biography', NULL, 0, 1, 'biography-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(6, 'Business & Economics', NULL, 0, 1, 'business-economics-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(7, 'Dictionary', NULL, 0, 1, 'dictionary-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(8, 'Health & Fitness', NULL, 0, 1, 'health-fitness-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(9, 'History', NULL, 0, 1, 'history-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(10, 'Home & Garden', NULL, 0, 1, 'home-garden-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(11, 'Journal', NULL, 0, 1, 'journal-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(12, 'Mathematics', NULL, 0, 1, 'mathematics-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(13, 'Philosophy', NULL, 0, 1, 'philosophy-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(14, 'Religion', NULL, 0, 1, 'religion-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(15, 'Science & Engineering', NULL, 0, 1, 'science-engineering-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(16, 'Science fiction', NULL, 0, 1, 'science-fiction-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(17, 'Technology', NULL, 0, 1, 'technology-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(18, 'Travel', NULL, 0, 1, 'travel-2', NULL, '2021-08-02 06:46:40', '2021-08-02 06:46:40');

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
(1, 'Dhaka Division', NULL, 'dhaka-division-2', 1, '2021-08-02 06:46:34', '2021-08-02 06:46:34'),
(2, 'Chattogram Division', NULL, 'chattogram-division-2', 1, '2021-08-02 06:46:34', '2021-08-02 06:46:34'),
(3, 'Sylhet Division', NULL, 'sylhet-division-2', 1, '2021-08-02 06:46:34', '2021-08-02 06:46:34'),
(4, 'Rajshahi Division', NULL, 'rajshahi-division-2', 1, '2021-08-02 06:46:34', '2021-08-02 06:46:34'),
(5, 'Rangpur Division', NULL, 'rangpur-division-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(6, 'Khulna Division', NULL, 'khulna-division-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(7, 'Barisal Division', NULL, 'barisal-division-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(8, 'Mymensingh Division', NULL, 'mymensingh-division-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(9, 'Reserved Division1', NULL, 'reserved-division1-2', 0, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(10, 'Reserved Division2', NULL, 'reserved-division2-2', 0, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(11, 'Dhaka', 1, 'dhaka-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(12, 'Gazipur', 1, 'gazipur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(13, 'Kishorganj', 1, 'kishorganj-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(14, 'Manikganj', 1, 'manikganj-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(15, 'Munshiganj', 1, 'munshiganj-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(16, 'Narayanganj', 1, 'narayanganj-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(17, 'Narsingdi', 1, 'narsingdi-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(18, 'Tangail', 1, 'tangail-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(19, 'Faridpur', 1, 'faridpur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(20, 'Gopalganj', 1, 'gopalganj-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(21, 'Madaripur', 1, 'madaripur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(22, 'Rajbari', 1, 'rajbari-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(23, 'Shariatpur', 1, 'shariatpur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(24, 'Chattogram', 2, 'chattogram-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(25, 'Brahmanbaria', 2, 'brahmanbaria-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(26, 'Comilla', 2, 'comilla-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(27, 'Chandpur', 2, 'chandpur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(28, 'Lakshmipur', 2, 'lakshmipur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(29, 'Noakhali', 2, 'noakhali-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(30, 'Feni', 2, 'feni-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(31, 'Khagrachari', 2, 'khagrachari-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(32, 'Rangamati', 2, 'rangamati-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(33, 'Bandarban', 2, 'bandarban-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(34, 'Cox\'s Bazar', 2, 'coxs-bazar-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(35, 'Sylhet', 3, 'sylhet-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(36, 'Habiganj', 3, 'habiganj-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(37, 'Moulvibazar', 3, 'moulvibazar-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(38, 'Sunamganj', 3, 'sunamganj-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(39, 'Rajshahi', 4, 'rajshahi-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(40, 'Natore', 4, 'natore-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(41, 'Pabna', 4, 'pabna-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(42, 'Bogura', 4, 'bogura-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(43, 'Chapainawabganj', 4, 'chapainawabganj-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(44, 'Joypurhat', 4, 'joypurhat-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(45, 'Naogaon', 4, 'naogaon-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(46, 'Sirajganj', 4, 'sirajganj-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(47, 'Rangpur', 5, 'rangpur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(48, 'Dinajpur', 5, 'dinajpur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(49, 'Kurigram', 5, 'kurigram-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(50, 'Gaibandha', 5, 'gaibandha-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(51, 'Lalmonirhat', 5, 'lalmonirhat-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(52, 'Nilphamari', 5, 'nilphamari-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(53, 'Panchagarh', 5, 'panchagarh-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(54, 'Thakurganj', 5, 'thakurganj-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(55, 'Khulna', 6, 'khulna-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(56, 'Bagerhat', 6, 'bagerhat-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(57, 'Chuadanga', 6, 'chuadanga-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(58, 'Jashore', 6, 'jashore-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(59, 'Jhenaidah', 6, 'jhenaidah-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(60, 'Kushtia', 6, 'kushtia-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(61, 'Magura', 6, 'magura-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(62, 'Meherpur', 6, 'meherpur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(63, 'Narail', 6, 'narail-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(64, 'Sathkhira', 6, 'sathkhira-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(65, 'Barisal', 7, 'barisal-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(66, 'Barguna', 7, 'barguna-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(67, 'Bhola', 7, 'bhola-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(68, 'Jhalokati', 7, 'jhalokati-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(69, 'Patuakhali', 7, 'patuakhali-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(70, 'Pirojpur', 7, 'pirojpur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(71, 'Mymensingh', 8, 'mymensingh-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(72, 'Netrokona', 8, 'netrokona-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(73, 'Jamalpur', 8, 'jamalpur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(74, 'Sherpur', 8, 'sherpur-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(75, 'Bayazid', 24, 'bayazid-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(76, 'Chandgaon', 24, 'chandgaon-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(77, 'Panchlaish', 24, 'panchlaish-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(78, 'Akbarshah', 24, 'akbarshah-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(79, 'Pahartali', 24, 'pahartali-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(80, 'Khulshi', 24, 'khulshi-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(81, 'Bakoliya', 24, 'bakoliya-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(82, 'Kotwali', 24, 'kotwali-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(83, 'Halishahar', 24, 'halishahar-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(84, 'Double Mooring', 24, 'double-mooring-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(85, 'Bandar', 24, 'bandar-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(86, 'Patenga', 24, 'patenga-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(87, 'Patiya', 24, 'patiya-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(88, 'Hathhazari', 24, 'hathhazari-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(89, 'Anwara', 24, 'anwara-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(90, 'BanshKhali', 24, 'banshkhali-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(91, 'BoalKhali', 24, 'boalkhali-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(92, 'Chandanaish', 24, 'chandanaish-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(93, 'Raozan', 24, 'raozan-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(94, 'Sitakunda', 24, 'sitakunda-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(95, 'Rangunia', 24, 'rangunia-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35'),
(96, 'Satkania', 24, 'satkania-2', 1, '2021-08-02 06:46:35', '2021-08-02 06:46:35');

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
(403, '2014_10_12_100000_create_password_resets_table', 1),
(404, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(405, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(406, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(407, '2016_06_01_000004_create_oauth_clients_table', 1),
(408, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(409, '2019_08_19_000000_create_failed_jobs_table', 1),
(410, '2021_07_24_134039_create_locations_table', 1),
(411, '2021_07_25_174854_create_admins_table', 1),
(412, '2021_07_25_175212_create_users_table', 1),
(413, '2021_07_28_063431_create_categories_table', 1),
(414, '2021_07_28_071411_create_books_table', 1),
(415, '2021_07_28_074929_create_book_images_table', 1),
(416, '2021_07_31_071519_create_wish_lists_table', 1);

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
(1, NULL, 'Laravel Personal Access Client', 'SbpU2PMDcLKRfY5MAzfFbmQEcDchNxtqcThxKxjw', NULL, 'http://localhost', 1, 0, 0, '2021-08-02 06:46:55', '2021-08-02 06:46:55'),
(2, NULL, 'Laravel Password Grant Client', 'sNPLLMpD5scQpOo5EDmnhMH4T6dzeN0QbfMLHjgf', 'users', 'http://localhost', 0, 1, 0, '2021-08-02 06:46:55', '2021-08-02 06:46:55');

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
(1, 1, '2021-08-02 06:46:55', '2021-08-02 06:46:55');

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
(1, 'Dr. Corrine Goyette', '01889736499', 'user@mail.com', 'Premier University', 4, 45, NULL, 1, '$2y$10$wegog3B06tYUcTNwGu7SNeA56PefDnrOdNiNbhKs/X7VYBo0s0cNy', '2021-08-02 06:46:36', NULL, 'https://via.placeholder.com/640x480.png/004433?text=praesentium', 'MhF9VR7Ub3', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(2, 'Lucio Lueilwitz', '01339611263', 'armand63@example.com', 'Premier University', 8, 73, NULL, 1, '$2y$10$aHosg2QWmUh4akb8oLn/A.v2vDIZSX8JVtHWy2y7q.kfXN/FTcW7e', '2021-08-02 06:46:36', NULL, 'https://via.placeholder.com/640x480.png/00aaaa?text=nesciunt', 'iGdoLiNDTe', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(3, 'Brown Conn', '01331513994', 'gregorio58@example.com', 'Premier University', 7, 66, NULL, 1, '$2y$10$pL/c7dZM4nbjuuaE3mRR1.kd15Pxen9JeulET6j53W4jmlTKcpVhm', '2021-08-02 06:46:36', NULL, 'https://via.placeholder.com/640x480.png/00dd00?text=distinctio', 'vgY8tUA9wP', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(4, 'Monroe Stamm', '01826693444', 'dave14@example.com', 'Premier University', 3, 35, NULL, 1, '$2y$10$VyYXMy/23qUvG5x8WvGDc.5m4lu44.p8pNW.T761PGTNsAQeeH7CK', '2021-08-02 06:46:36', NULL, 'https://via.placeholder.com/640x480.png/00ffee?text=tenetur', 'whb5hg6cl6', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(5, 'Marianne Boyle', '01622311568', 'kolby.kling@example.com', 'Premier University', 3, 35, NULL, 1, '$2y$10$Y5diOYGMF.4em0DaJdzW2Om.sn1sbiviIlQqybkczJ4pAAiAsia2K', '2021-08-02 06:46:36', NULL, 'https://via.placeholder.com/640x480.png/0088ff?text=nostrum', 'RxqfjsbaD7', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(6, 'Prof. Mireille Stehr', '01742998770', 'jaqueline.friesen@example.org', 'Premier University', 5, 51, NULL, 1, '$2y$10$Fw7MtV5.6t8M2UcWN7AXDuDUE6Rf.jXkptagXpGe0rtR61LRGzwze', '2021-08-02 06:46:36', NULL, 'https://via.placeholder.com/640x480.png/000077?text=necessitatibus', 'TliybUPNUE', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(7, 'Agustin Beer II', '01870905197', 'blemke@example.net', 'Premier University', 1, 22, NULL, 1, '$2y$10$2TO2KDzbjo8kbq5mkr/86e2U2pA02aw1uHSh4WNKfLfsubQ6CYIGW', '2021-08-02 06:46:36', NULL, 'https://via.placeholder.com/640x480.png/006688?text=aperiam', 'f3NFdq92Ul', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(8, 'Carmen Von', '01366055346', 'mschultz@example.net', 'Premier University', 3, 35, NULL, 1, '$2y$10$j1JpA/98JZ5MbOr3UedFTurhBzsDRy1lvQENWkxNa9NjvkES8C426', '2021-08-02 06:46:36', NULL, 'https://via.placeholder.com/640x480.png/006666?text=qui', 'JF1ENSIGzo', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(9, 'Prof. Alaina Durgan', '01829867428', 'efren58@example.com', 'Premier University', 8, 72, NULL, 1, '$2y$10$t0KV5jC/TX0EDFllVUPhE.DLINWjtIC5x29tOplWl9bsUEVT7HTnK', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/003388?text=et', '5MLPQ8U0Hm', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(10, 'Kira Tromp', '01846613666', 'kiehn.rasheed@example.net', 'Premier University', 6, 64, NULL, 1, '$2y$10$M/qghrZrrAcWbUy2nmoqG.WzkUiqVEWe0kxUKxESxX7tLF3axyF7G', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/008855?text=ab', '3EqnpEe9t7', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(11, 'Sherwood Metz Sr.', '01858724926', 'vernon.graham@example.org', 'Premier University', 4, 40, NULL, 1, '$2y$10$AzjI8XjNMChysYSlB0a2RO23viq96SFGYaBsOkQHIccXmXvo2nocC', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/00ff00?text=id', 'ZKZDCzs52I', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(12, 'Emelia Gleichner', '01831542524', 'boyer.carey@example.org', 'Premier University', 8, 74, NULL, 1, '$2y$10$s3ssTeKUBL6Qq9L4UYGOhuEmErRyK2cEYk7kqIGgBJhuHUkXDebMK', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/0022bb?text=debitis', 'nFpWxPI7Tf', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(13, 'Dr. Catherine Bode Jr.', '01565110312', 'natasha32@example.com', 'Premier University', 4, 42, NULL, 1, '$2y$10$PDeeyzSTdGxuuugp08jAEehfFJRqtMB4uk2UfPgkH6SjfbJsmfYN.', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/005533?text=qui', 'u8rXtHHqeL', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(14, 'Kevin Senger', '01841600745', 'swaters@example.com', 'Premier University', 3, 38, NULL, 1, '$2y$10$IPxdKvj2FiVov3VBPswgd.hfEyre6Ign95MQ4sxMfVGxt0lRglbO.', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/00ee00?text=soluta', 'BQ5cQH9e1g', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(15, 'America Lubowitz', '01398468727', 'rita62@example.com', 'Premier University', 5, 49, NULL, 1, '$2y$10$FFjOifVrPosT7XBksVsfpu9m3cRhAcroCJwRpfmc.rgK9GFkodESC', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/0088ee?text=in', 'kNriJJLkpu', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(16, 'Hilbert Lang', '01895847476', 'patsy20@example.org', 'Premier University', 6, 60, NULL, 1, '$2y$10$s/Zv27L6/KaJ85xHwYd7Me6G65wbi/Ne4RhDzTbQLJhk8wW92EOjW', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/0099ff?text=maxime', 'SGmzKBwS2J', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(17, 'Aileen Kunze IV', '01423384897', 'nadia.zemlak@example.org', 'Premier University', 1, 21, NULL, 1, '$2y$10$ACHLY8/m9v4cQAcbuf/WCerGOV5eQzCe4ewJSO8QuWSLCPOzkTPC.', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/00cccc?text=quidem', 'pKVz2rA01A', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(18, 'Haley Douglas I', '01499766549', 'whahn@example.com', 'Premier University', 8, 73, NULL, 1, '$2y$10$aA4wWxalHv.h08OH36wsf.myaJLitV11cx1T4grP5FpHkTAbSQX6y', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/00ddcc?text=facilis', '2vj7x2Rdme', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(19, 'Garnet Keeling', '01558598376', 'emily66@example.org', 'Premier University', 8, 71, NULL, 1, '$2y$10$Ugue6SQYVThW/.5xd6W0YuhGeViGYyWUdRMLbB2u4irnBjgXgrdBu', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/0066bb?text=iste', '5e1XdXn1h6', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(20, 'Adalberto Mills', '01885310216', 'edwina.leuschke@example.com', 'Premier University', 2, 25, NULL, 1, '$2y$10$KN2lVxXsLmTq.nm1If19/uCE3EVlv./sqzN5ITLXV3UFr78yyjVvC', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/002211?text=et', 'PH45pELhg7', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(21, 'Alexandre Macejkovic', '01634473790', 'myles.hayes@example.net', 'Premier University', 2, 34, NULL, 1, '$2y$10$sftO6xW61V3EUPf2AL/fJed9LKDD/PT5ZgUkNaum4FYxt6vK9AhP2', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/0022aa?text=sit', 'yMiBpMtNiz', '2021-08-02 06:46:39', '2021-08-02 06:46:40'),
(22, 'Buddy Zieme', '01303194369', 'anabelle51@example.org', 'Premier University', 4, 46, NULL, 1, '$2y$10$3lkhdkoBzEaGi.TUzQ9xwOS95iLLZq0sOSNVSlhmQTlgOSNGeNK.m', '2021-08-02 06:46:37', NULL, 'https://via.placeholder.com/640x480.png/00ee44?text=cumque', 'RnHeCnFIYp', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(23, 'Maia Klocko', '01345336035', 'schmidt.adrien@example.net', 'Premier University', 1, 15, NULL, 1, '$2y$10$4MceuqCoTE4xtx2COqptregBVxLfO0/2oDX5zM3RxXWaVRxvkbdH.', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/007733?text=sit', '66SpecGbTO', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(24, 'Toy Kohler', '01507173011', 'kcollier@example.com', 'Premier University', 4, 42, NULL, 1, '$2y$10$DEEtpxBVLAUE6.W0uO3v5OyDQ60TSHywSV207NHOC87Z..XrGdDn6', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/00aa00?text=amet', 'LfefBYHt6x', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(25, 'Mr. Gerard Kunze DDS', '01427773662', 'vivian34@example.org', 'Premier University', 3, 38, NULL, 1, '$2y$10$dwe1T1qzmKrGYWHT8Bef2eAS15H8SRNNnLFmZ6e.wRSLiTuRy6DLu', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/004400?text=officiis', 'w4k64EdgMb', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(26, 'Cayla Farrell V', '01420812363', 'claire60@example.org', 'Premier University', 7, 68, NULL, 1, '$2y$10$/B2NK/y9gEnE9cLoRAbSi.gnAv95bFXdnZ5fGzrYEIXv4V28l9QOS', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/002299?text=aut', 't4qh59j68f', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(27, 'Laverne Schumm', '01830571672', 'wilkinson.luz@example.com', 'Premier University', 8, 71, NULL, 1, '$2y$10$TA1dIP4Himqcb.1yyJsBJObaCk0hTPlPDPxLuKHu11tPh53zM206O', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/00cc88?text=aperiam', 'WeyJvxEWAV', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(28, 'Karen Schinner V', '01776624973', 'gerda.lemke@example.com', 'Premier University', 1, 16, NULL, 1, '$2y$10$oegcuNaBzAtmf5fejfgnoeINMtn56T0w4frQBvyqYkSv.Rqp2chNa', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/006622?text=similique', '1VCEKibyNT', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(29, 'Gaston O\'Keefe', '01335228408', 'gjones@example.org', 'Premier University', 4, 43, NULL, 1, '$2y$10$N7mcjcP6qeFXaS9zqkKj6.deTEp/maU4amxnfK77EAylrTiMUDHNq', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/00bbcc?text=sed', 'W4J3iV7RyN', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(30, 'Haven Johnston', '01647697196', 'leora.schaden@example.net', 'Premier University', 3, 35, NULL, 1, '$2y$10$aMh0DIdjxewPbqxJFcZi0uvLH.D/6ZMRukg3FOB46.EEPRPImqcyS', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/00ee77?text=nostrum', 'JJeTZjtoMm', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(31, 'Merle Bins', '01390545476', 'friesen.cecil@example.net', 'Premier University', 3, 35, NULL, 1, '$2y$10$31VFEZaZVuwHI0nzhFeq2O6h.lh1SctjPKqrvO.JMKNtFYWzHbP22', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/0066aa?text=recusandae', 'cyx1MxiIt9', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(32, 'Earline Jacobi', '01726825717', 'ledner.tierra@example.org', 'Premier University', 5, 49, NULL, 1, '$2y$10$aOOFSREUDiif19vp6lvoNeGXLcB9gpxELca9hP9Fe8hkEtfsy/fhG', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/00bb88?text=placeat', 'XMDHl6qzr7', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(33, 'Rossie DuBuque', '01477140093', 'tvon@example.com', 'Premier University', 7, 68, NULL, 1, '$2y$10$fR196YvPBO.xDImuVO.kberg9MteGldJpJt75CryhcFnRYiOVpu66', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/00ff44?text=harum', 'D8tscQOJWc', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(34, 'Eve Barton', '01502488285', 'fernando.hammes@example.org', 'Premier University', 1, 21, NULL, 1, '$2y$10$ssOPPSp8wDrerTR.vFH6UuR5oc8ZDMN0iPUzAkLwkTjSl/dGAJ5pC', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/0022cc?text=nemo', '4ep7MMlN18', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(35, 'Name Upton', '01874666208', 'jan.kirlin@example.org', 'Premier University', 3, 37, NULL, 1, '$2y$10$jOZhciGY7zCyLI0XFommKeBCZHZfooOpXm4gX6V/ToitnoUQKwYI.', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/00aabb?text=sit', 'Z7Uqx5u5Vf', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(36, 'Dayna Jerde', '01520104917', 'jakob.huel@example.org', 'Premier University', 2, 27, NULL, 1, '$2y$10$yLT7rzaA5TolfdCFN1ALruo7GsLbWdL.ch3vcM0XfiAxVDVYt71nq', '2021-08-02 06:46:38', NULL, 'https://via.placeholder.com/640x480.png/00aaaa?text=eum', 'r2jIzd5AEj', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(37, 'Kennedi Mante', '01657280406', 'kyleigh43@example.org', 'Premier University', 8, 74, NULL, 1, '$2y$10$t53yTZ/IR698xZyScwhLl.9XEIbKywI/xtCMGjJKlA0smMO.FXjS.', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/0088dd?text=quas', 'izgrUzj2a5', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(38, 'Erin McClure', '01383639138', 'bmraz@example.net', 'Premier University', 2, 26, NULL, 1, '$2y$10$K4CB9HvxUti2HFA8pv3YoOymJUNrtPMXZxWzVl50How9Aoyo8eqQO', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/00dd22?text=aut', 'PnFg1Ddp5c', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(39, 'Nadia Predovic', '01785965218', 'myron.friesen@example.net', 'Premier University', 3, 36, NULL, 1, '$2y$10$/XoigpF8htfUl25nIBnBoOA8Za1J/DGxSuKiGVPrm12oRalOP2Nty', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/007766?text=nisi', 'CslXZsv9St', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(40, 'Pasquale Beier', '01317463552', 'cdach@example.com', 'Premier University', 1, 15, NULL, 1, '$2y$10$RLKrVCFnDx28E7LsNocvUe9bkbb9Ip31mwpDSoYpf/mA77cG6xuBG', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/00aa99?text=qui', 'fOK879r9gK', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(41, 'Rubye Pfeffer', '01755646628', 'santa94@example.net', 'Premier University', 6, 55, NULL, 1, '$2y$10$PiU2KCJcIVdcnFUTNWxB9ue3LLHp7WU6SqutaBnTKMHI5m0iRkvT2', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/00bb44?text=eligendi', '8EdMUODyLx', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(42, 'Jada Kirlin', '01354129243', 'graham.harvey@example.com', 'Premier University', 8, 72, NULL, 1, '$2y$10$f2IROUT716avuKTQ2e4EwO9r35YpKdUOjhG17qUgjg2D61agboI9.', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/00ff55?text=asperiores', 'HHRp2M5fqJ', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(43, 'Dr. Edgardo Wolff II', '01711930771', 'udickinson@example.com', 'Premier University', 7, 65, NULL, 1, '$2y$10$cLGDbF3BwiNP.FThHQ70sO0u2SxnKslQui7A8dNaYmDAfhQXdiMKu', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/003300?text=fugiat', 'MWXTlp0VLV', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(44, 'Christelle Mayert', '01509041888', 'reid10@example.net', 'Premier University', 2, 26, NULL, 1, '$2y$10$rhrrZ6mLmhZomGpKOjLuJeM1aUUL9HxuLomAS32q3Dl76wD8jLnIe', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/00bb44?text=maiores', 'TWb605hfp0', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(45, 'Prof. Georgianna Champlin Sr.', '01375420090', 'damian.bode@example.org', 'Premier University', 6, 63, NULL, 1, '$2y$10$X4Q32Ipz98Gn7sV.CyAJ8OhmPfjfAxGhkbwL0yCjJcvK4tKZXSELC', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/003322?text=tempora', 'XUQ8j1uDSs', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(46, 'Frida Strosin', '01368071914', 'bobbie.towne@example.com', 'Premier University', 1, 21, NULL, 1, '$2y$10$ONhwuNvwDQLHf1OkYS.2zuuJ57qevwf44IdEeciaK/NIdDpb0Cati', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/00bbbb?text=non', 'aiF6MkScFm', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(47, 'Erin Kunde', '01447373902', 'reece.koelpin@example.com', 'Premier University', 5, 47, NULL, 1, '$2y$10$mojchZ3foSBMKdMsMMyx1ujpWYkrT1NAszwgSU0fzwOr2kM/A4vCq', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/0099dd?text=fugiat', 'N3YoinxiOc', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(48, 'Jacques Towne Sr.', '01735945936', 'elsa.runolfsdottir@example.org', 'Premier University', 4, 41, NULL, 1, '$2y$10$xeAFEUW7EzMKuhGNctA9oeTYVM4XCc4f/XpUYnWYYaUdZlYkbrOOG', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/0044ff?text=similique', '1GEERgO3IJ', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(49, 'Ludie Homenick PhD', '01810297126', 'muller.sydney@example.org', 'Premier University', 6, 63, NULL, 1, '$2y$10$mUV3j9PVqfnL9nKveJ0yPefm3nYJpLVB5qgsljnJlW83LZhD06vYG', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/00dd00?text=impedit', 'CDW0a70i0n', '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(50, 'Andres Deckow', '01823772743', 'okon.quinn@example.com', 'Premier University', 5, 50, NULL, 1, '$2y$10$yxEktp/FsvAL.6iBBZN4fOb39p6bY/gfGeGaZIjyjbjiIO/YnruHS', '2021-08-02 06:46:39', NULL, 'https://via.placeholder.com/640x480.png/0066ee?text=rerum', 'WuhUFz2R3J', '2021-08-02 06:46:40', '2021-08-02 06:46:40');

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
(1, 7, 34, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(2, 3, 19, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(3, 9, 38, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(4, 8, 40, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(5, 6, 37, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(6, 1, 27, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(7, 4, 49, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(8, 2, 15, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(9, 2, 30, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(10, 1, 47, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(11, 1, 17, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(12, 3, 50, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(13, 4, 33, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(14, 5, 22, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(15, 4, 4, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(16, 4, 26, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(17, 9, 2, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(18, 5, 5, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(19, 9, 7, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40'),
(20, 7, 49, 1, '2021-08-02 06:46:40', '2021-08-02 06:46:40');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `book_images`
--
ALTER TABLE `book_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

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
