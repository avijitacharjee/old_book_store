-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2021 at 08:10 PM
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
(1, 'Admin', 'admin@mail.com', '01861932523', 1, 1, '$2y$10$nCkUx308DDt6McchailX3eM01pkAF2T4Z7cnWb/0xc/PPWRlHnXr.', NULL, '2021-08-03 12:09:34', '2021-08-03 12:09:34');

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
(1, 20, 'Aracely Oberbrunner', 'Corine O\'Hara', '4th', 'Sabryna Rosenbaum V', 'English', 5, NULL, NULL, NULL, 213, 'aracely-oberbrunner', 'Accusamus totam aspernatur impedit.', 'Dolor enim tenetur voluptatem dolores commodi unde. Et dolor facilis dolorum eveniet officiis quos vel. Facilis aperiam laboriosam tempora error rerum.', 7, 67, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(2, 16, 'Miss Florine Krajcik', 'Judge Waelchi', '6th', 'Zelda Adams', 'English', 18, NULL, NULL, NULL, 243, 'miss-florine-krajcik', 'Dolorem qui veritatis est.', 'Et quibusdam quis minima eos consequatur ratione. Omnis perferendis cumque omnis placeat quasi in aut.', 8, 74, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(3, 17, 'Lesly Zieme', 'Bernhard Hirthe', '3rd', 'Mr. Frankie Tillman II', 'English', 13, NULL, NULL, NULL, 280, 'lesly-zieme', 'Dicta debitis asperiores velit vel suscipit in laudantium.', 'Mollitia reprehenderit sed eum quae unde voluptates. Labore commodi aut aut eligendi alias libero nesciunt. Eum tempore veritatis omnis sapiente. Aliquid dolore modi aut tempora.', 6, 62, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(4, 13, 'Lisandro Lebsack', 'Kristian Wiegand', '4th', 'Mozelle Blick II', 'English', 5, NULL, NULL, NULL, 439, 'lisandro-lebsack', 'Sint sit id dolorum vel nam qui omnis illo.', 'Ad iusto optio et laborum autem aut similique. Non rem omnis voluptas ad aut.', 7, 66, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(5, 11, 'Oda O\'Reilly', 'Prof. Halie McCullough Jr.', '5th', 'Maryse Senger', 'English', 5, NULL, NULL, NULL, 392, 'oda-oreilly', 'Eos ut qui quis quo deleniti et quisquam eos.', 'Quia ut sapiente expedita et a similique. Est repudiandae est doloremque doloribus. Quia aut quo accusantium molestiae rerum error.', 4, 40, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(6, 15, 'Rory Schaefer', 'Janessa Farrell', '3rd', 'Maeve Heathcote', 'English', 7, NULL, NULL, NULL, 377, 'rory-schaefer', 'Ipsa non nobis omnis voluptatem eligendi aspernatur quas voluptatem.', 'Consequatur nisi nesciunt facere labore. Amet aut repellendus aspernatur nihil.', 1, 19, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(7, 11, 'Johnny Connelly', 'Estevan Cassin', '6th', 'Rusty Jerde', 'English', 12, NULL, NULL, NULL, 197, 'johnny-connelly', 'Sit eius impedit aspernatur.', 'Facilis excepturi nemo esse laborum. Provident quia deserunt aut voluptatibus libero qui. Sunt esse molestiae omnis voluptatem molestiae perferendis.', 5, 47, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(8, 23, 'Prof. Gerda Huel', 'Christophe Collins', '4th', 'David Kerluke MD', 'English', 5, NULL, NULL, NULL, 454, 'prof-gerda-huel', 'Quas neque est aperiam est eveniet aut.', 'Consequatur ut voluptatem commodi. Iste qui voluptates deserunt vel. Vero dignissimos veritatis maxime aut est sequi accusantium. Placeat odio quia voluptatem aut.', 7, 65, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(9, 24, 'Madie Kovacek', 'Alycia Boyle', '4th', 'Stephen Howe', 'Bangla', 13, NULL, NULL, NULL, 214, 'madie-kovacek', 'Recusandae labore corporis suscipit.', 'Qui enim et non repellendus. Ut assumenda velit voluptates quis. Eum cupiditate quam consequuntur debitis voluptates et id. Rem ea id quia voluptates amet.', 5, 50, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(10, 21, 'Gerda Simonis', 'Aron Lind', '6th', 'Rosa Heller II', 'English', 13, NULL, NULL, NULL, 469, 'gerda-simonis', 'Non quo et quam reiciendis.', 'Omnis odit ducimus ut sit voluptatem. Culpa tenetur molestiae alias quasi alias sapiente temporibus. Voluptatem deleniti deleniti et libero doloremque ea. Sit dolorum ipsam perferendis est.', 8, 72, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(11, 18, 'Rosalind Sipes', 'Vivian Sanford DVM', '5th', 'Ulices Gottlieb', 'Bangla', 6, NULL, NULL, NULL, 254, 'rosalind-sipes', 'Suscipit sapiente ut atque et quae quam eveniet sapiente.', 'A sit sit nam occaecati. Ducimus et ipsum aut consequatur aut. Dolor beatae in eveniet. Sed nam cumque saepe dolor. Corporis eum rerum est nihil praesentium magnam est.', 4, 40, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(12, 10, 'Kelli Auer', 'Jess Kemmer', '5th', 'Rico Borer', 'English', 9, NULL, NULL, NULL, 324, 'kelli-auer', 'Maiores cumque autem voluptas eum autem quia.', 'Quaerat ratione dolor dolorum quae doloremque aut. Voluptas voluptate expedita in doloribus et deserunt debitis. Voluptatibus consequatur inventore voluptas earum eos.', 4, 45, NULL, 1, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(13, 21, 'Hardy Harber', 'Prof. Barry Vandervort', '3rd', 'Stanley Moen', 'English', 1, NULL, NULL, NULL, 129, 'hardy-harber', 'Et quia et dolor sunt perferendis sint.', 'Pariatur maiores non nihil adipisci. Sint iure sit sed optio veniam. Est quo architecto ut similique qui. Fuga velit aperiam optio reprehenderit in. Sint placeat consequatur molestiae soluta.', 4, 41, NULL, 1, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(14, 13, 'Rebecca Rempel', 'Mr. Marcos Johnston', '4th', 'Mrs. Ilene Wisozk V', 'English', 3, NULL, NULL, NULL, 197, 'rebecca-rempel', 'Cupiditate a consequatur aliquid exercitationem.', 'Ut at et omnis. Deleniti accusamus ipsa error sint. Eum ipsum ea assumenda deleniti.', 5, 50, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(15, 18, 'Jordan Hahn', 'Olin Hudson', '3rd', 'Golda Blanda', 'Bangla', 12, NULL, NULL, NULL, 388, 'jordan-hahn', 'Et sed dignissimos ex est consectetur est earum.', 'Velit consectetur nam totam pariatur quo ex. Ut placeat accusamus eum. Suscipit qui voluptas illum esse sunt ut et. Expedita dolores non autem aut. Quasi ducimus dolorem assumenda voluptates.', 2, 33, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(16, 9, 'Mckayla Cummings', 'Ramon Mann', '4th', 'Oda Mosciski', 'English', 8, NULL, NULL, NULL, 491, 'mckayla-cummings', 'Eos vel aut dolores sunt quaerat odit consequatur.', 'Quasi dolorem facere blanditiis molestias sunt eum similique. Quas quo aspernatur molestiae sed sequi rerum. Ea mollitia commodi laborum consectetur. At rerum quis nulla eveniet mollitia ea dolor.', 1, 14, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(17, 7, 'Dr. Dejuan Schmeler III', 'Esther Nitzsche', '6th', 'Dr. Darrel Huels Jr.', 'Bangla', 18, NULL, NULL, NULL, 105, 'dr-dejuan-schmeler-iii', 'Rerum labore cumque doloribus ullam maiores quo.', 'Impedit officia eveniet aut perspiciatis velit et. Molestiae harum doloribus occaecati. Repellat nesciunt hic voluptas. Est iste voluptatem ut explicabo aut maiores voluptas.', 1, 13, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(18, 21, 'Mr. Connor Fadel II', 'Virgie Jacobson', '6th', 'Raymond Wintheiser', 'English', 18, NULL, NULL, NULL, 149, 'mr-connor-fadel-ii', 'Ut dignissimos enim blanditiis quos aut minima fugiat.', 'Et vero vel expedita rem error assumenda. Iste aut veniam reiciendis nihil possimus eos tenetur. Omnis quibusdam eum aut ex commodi ipsum. Et et qui est.', 5, 49, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(19, 22, 'Gertrude Rippin DDS', 'Prof. Halie Trantow', '4th', 'Brice Kulas', 'English', 2, NULL, NULL, NULL, 156, 'gertrude-rippin-dds', 'Libero cumque dolor possimus recusandae.', 'Nihil quia dolores quo cum. Tenetur ut minima et et. Odit dolore magnam deleniti id voluptas accusamus sit. Soluta odio blanditiis magni blanditiis est dolorem qui.', 6, 61, NULL, 1, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(20, 6, 'Kale Boyle', 'Emma Cruickshank', '5th', 'Dr. Kitty Senger DVM', 'English', 10, NULL, NULL, NULL, 490, 'kale-boyle', 'Labore repellat commodi repudiandae ratione aut.', 'Dolor earum voluptas quae accusantium. Esse atque minima animi aut adipisci praesentium tempora libero. Numquam id quo ad deserunt cumque et alias. Quo ex fugit voluptate.', 2, 33, NULL, 1, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(21, 18, 'Dr. Gardner Orn', 'Ezra Blanda', '3rd', 'Mr. Wilmer Rowe IV', 'English', 6, NULL, NULL, NULL, 483, 'dr-gardner-orn', 'Saepe nobis consequatur mollitia et sit.', 'Esse quis tempore dolor accusamus repudiandae laboriosam. Consequuntur placeat vitae magni ipsa harum recusandae eius ea. Sequi ab eos eum tempora. Possimus et possimus nemo qui.', 4, 44, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(22, 8, 'Hallie Altenwerth I', 'Gladys Cummerata', '4th', 'Marquise Greenholt', 'English', 16, NULL, NULL, NULL, 479, 'hallie-altenwerth-i', 'Voluptates minus voluptas iure vel est nesciunt.', 'Non dignissimos in quidem sapiente voluptatem assumenda. Provident ex est beatae ut. Et est provident dolorem.', 2, 28, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(23, 9, 'Prof. Boyd Hill', 'Dr. Zachariah O\'Reilly', '4th', 'Emory Hodkiewicz', 'English', 12, NULL, NULL, NULL, 161, 'prof-boyd-hill', 'Consequuntur optio ea id voluptates qui quisquam quidem.', 'Minus facere molestiae itaque quis. Unde vero magnam fugiat minima officiis corrupti nulla. Odio eligendi et eaque adipisci consequatur voluptatum non.', 1, 15, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(24, 10, 'Angus Daugherty', 'Dr. Olaf Grady', '6th', 'Wilbert Crooks', 'Bangla', 16, NULL, NULL, NULL, 183, 'angus-daugherty', 'Eos occaecati libero architecto molestiae.', 'Impedit ipsum in quia qui. Porro consequatur expedita natus velit. Sequi quasi hic facere sed veritatis aperiam eaque.', 8, 73, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(25, 9, 'Bernice Witting V', 'Tristian Kreiger', '5th', 'Jarret Schroeder', 'English', 11, NULL, NULL, NULL, 481, 'bernice-witting-v', 'Aut doloribus ab sapiente sapiente.', 'Veritatis et ut qui exercitationem dolores ut libero. Et placeat ipsum architecto fuga. Laborum minima officiis sed voluptates in quae. Eveniet voluptatibus odio voluptatem labore porro ea.', 5, 48, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(26, 22, 'Sherwood Tromp', 'Mr. Justus Moore', '6th', 'Mellie Kutch', 'English', 13, NULL, NULL, NULL, 106, 'sherwood-tromp', 'Quas eos aut non voluptate consectetur vitae animi.', 'A voluptas ut sit aut distinctio cumque. Quo nam ut amet laudantium. Quis repudiandae quis ad reiciendis. Inventore ut excepturi aperiam et a sed nulla. Non itaque est veniam reprehenderit beatae.', 5, 50, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(27, 12, 'Bridie Dach', 'Harry Legros', '6th', 'Leanne Heathcote', 'English', 2, NULL, NULL, NULL, 488, 'bridie-dach', 'Illo quia ad qui eius possimus aliquid id.', 'Ut eius reprehenderit at officia excepturi excepturi ut. Optio qui officia expedita exercitationem deserunt aliquid. Id est dolorem quis molestiae quae sint. Asperiores qui est deleniti eum enim.', 2, 26, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(28, 13, 'Dr. Elliott Gorczany Jr.', 'Maritza Schiller', '5th', 'Clementine Kuhic', 'Bangla', 6, NULL, NULL, NULL, 488, 'dr-elliott-gorczany-jr', 'Dolorem cumque et mollitia quas aspernatur voluptatibus.', 'Explicabo laborum et nemo suscipit cum. Pariatur omnis expedita totam totam est inventore. Velit cum ea voluptatem quibusdam quia dolor.', 6, 58, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(29, 12, 'Troy Kuphal', 'Joy Schmeler DDS', '6th', 'Dr. Tyshawn Thompson MD', 'English', 5, NULL, NULL, NULL, 331, 'troy-kuphal', 'Possimus voluptas voluptatem inventore temporibus corporis magni.', 'Et est dolorem et sit nihil. Dolorum aliquid voluptates natus odit. Fugiat distinctio nisi officiis debitis sed in omnis.', 3, 36, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(30, 14, 'Donnie Wiza', 'Gilda Spinka', '5th', 'Celia Hoeger', 'Bangla', 14, NULL, NULL, NULL, 262, 'donnie-wiza', 'Dolores fuga consequuntur ad illum et quia fugit sed.', 'Voluptatibus ipsum veritatis voluptatibus ducimus. Cumque quia et eos atque. Libero fuga libero et mollitia autem alias molestiae.', 7, 67, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(31, 13, 'Nettie Howell', 'Mortimer Hand', '5th', 'Kurtis Mante', 'English', 15, NULL, NULL, NULL, 319, 'nettie-howell', 'Temporibus voluptatem quia aut ut illum.', 'Ipsa ut consequatur rem vel aliquid nulla hic. Assumenda et ea officia quia corporis. Asperiores sapiente iusto perspiciatis itaque.', 4, 40, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(32, 22, 'Chauncey Eichmann', 'Marcellus Muller', '6th', 'Mrs. Addie Gorczany', 'English', 8, NULL, NULL, NULL, 391, 'chauncey-eichmann', 'Blanditiis placeat ut est maiores.', 'Libero iusto aspernatur nihil enim quia totam est. Voluptas accusantium harum harum sit asperiores architecto minima. Aut dolores est est iusto. Ratione sunt repudiandae reiciendis ipsam suscipit.', 6, 61, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(33, 15, 'Reyes Collier', 'Isabell Lemke Jr.', '3rd', 'Ms. Marianne Kiehn Sr.', 'English', 3, NULL, NULL, NULL, 364, 'reyes-collier', 'Sed hic fuga temporibus sit in tempora ratione.', 'Distinctio molestiae aut recusandae dolores sint eum quod. Voluptatem non sapiente pariatur. Aut qui quia deleniti. Adipisci voluptatibus est cum necessitatibus.', 6, 58, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(34, 15, 'Edmund Johnson', 'Elinor Hauck', '5th', 'Ms. Paige Barton', 'English', 12, NULL, NULL, NULL, 470, 'edmund-johnson', 'Beatae nihil dicta est illo magnam.', 'Mollitia ratione qui esse doloremque dolor qui. Alias voluptatem perspiciatis fugit autem. Blanditiis a voluptate similique a. Quia in omnis temporibus in.', 5, 49, NULL, 1, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(35, 7, 'Sibyl Aufderhar', 'Francesca Halvorson', '3rd', 'Benton Berge', 'English', 1, NULL, NULL, NULL, 299, 'sibyl-aufderhar', 'Eius corrupti alias sit vel dolore explicabo fuga.', 'Nihil aut ea aut praesentium magnam sint accusantium. Est iusto voluptas ducimus facilis in unde.', 6, 55, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(36, 5, 'Adolph Williamson', 'Mr. Brandt Cole', '4th', 'Angeline Streich Sr.', 'English', 15, NULL, NULL, NULL, 266, 'adolph-williamson', 'Repudiandae consequatur recusandae voluptatibus adipisci voluptatem voluptates nemo.', 'Itaque odio dolor aut doloribus excepturi sint. Ad unde assumenda ea blanditiis facere facere. Unde laudantium velit beatae debitis architecto dicta. Molestiae omnis non qui et.', 7, 67, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(37, 17, 'Prof. Reece Deckow I', 'Ms. Eve Lind', '6th', 'Penelope Blanda', 'Bangla', 6, NULL, NULL, NULL, 344, 'prof-reece-deckow-i', 'Voluptates ad quisquam quo nobis nisi.', 'Libero sequi sequi voluptatibus reprehenderit. Saepe pariatur accusantium omnis nesciunt voluptatem.', 5, 47, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(38, 8, 'Kory Wunsch', 'Prof. Lavinia Brown', '5th', 'Maud Metz', 'English', 17, NULL, NULL, NULL, 340, 'kory-wunsch', 'Omnis eius dolorum rerum sit quod molestiae.', 'Dolorum ut qui error enim. Ut similique corrupti officiis blanditiis quis perferendis. Amet eum libero nemo iure praesentium officia.', 7, 68, NULL, 1, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(39, 22, 'Dr. Adah Turcotte Sr.', 'Bertram Mosciski', '4th', 'Ike Waters', 'Bangla', 9, NULL, NULL, NULL, 451, 'dr-adah-turcotte-sr', 'Dolores nobis nam placeat libero.', 'Laborum ipsa impedit dolorum. Sint excepturi recusandae sit. Quaerat iste et enim.', 7, 68, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(40, 11, 'Beau Howell', 'Prof. Ilene Treutel', '5th', 'Sylvia Bartoletti', 'Bangla', 11, NULL, NULL, NULL, 308, 'beau-howell', 'Et nam ut qui.', 'Dolor architecto facilis enim vitae molestiae. Voluptatem dolor dolorem voluptatibus eligendi.', 3, 36, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(41, 6, 'Curt Larkin', 'Norwood Gottlieb', '3rd', 'Kaleigh Greenfelder', 'English', 12, NULL, NULL, NULL, 152, 'curt-larkin', 'Error quod alias possimus perspiciatis voluptatum.', 'Tenetur ea sed enim et quia. Saepe culpa consequatur nesciunt aperiam ad amet ad. Dicta consectetur suscipit aliquid deserunt similique tenetur consectetur.', 4, 43, NULL, 1, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(42, 18, 'Jeff Hettinger', 'Maida Schuster', '3rd', 'Kamryn Schneider DVM', 'English', 4, NULL, NULL, NULL, 418, 'jeff-hettinger', 'Consequuntur molestiae quidem iure amet et ut atque officiis.', 'Itaque cum quod aspernatur ut aut. Saepe blanditiis eos et ab sapiente assumenda pariatur. Neque ut harum aut porro vitae sed aut.', 2, 32, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(43, 17, 'Eugenia Windler', 'Fabiola Hudson', '4th', 'Dr. Concepcion Vandervort PhD', 'Bangla', 13, NULL, NULL, NULL, 169, 'eugenia-windler', 'Dolorem amet alias sed ut recusandae molestiae adipisci.', 'Facilis minima eveniet occaecati dolores ducimus. Commodi incidunt placeat earum alias hic ex. Pariatur voluptatum qui rerum et quam aperiam.', 2, 34, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(44, 10, 'Dr. Bartholome Sauer', 'Chaim Hagenes DDS', '5th', 'Raheem Reinger', 'English', 4, NULL, NULL, NULL, 247, 'dr-bartholome-sauer', 'Eum ex incidunt sit id ex maxime quo.', 'Rerum nemo natus eos voluptas consequatur id. Voluptatem blanditiis eos recusandae quae voluptatum. Commodi possimus et suscipit aut voluptatem.', 3, 37, NULL, 1, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(45, 18, 'Tatum Schmeler', 'Fleta King', '4th', 'Prof. Adeline Collier PhD', 'English', 9, NULL, NULL, NULL, 343, 'tatum-schmeler', 'Molestias quo necessitatibus tenetur accusantium velit dolorum eos.', 'Repellendus vero pariatur dicta atque. Facere est veritatis maxime sit animi sunt dolore molestiae.', 6, 57, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(46, 7, 'Damaris Windler', 'Dedric Ward', '5th', 'Dr. Andres Prosacco I', 'Bangla', 17, NULL, NULL, NULL, 281, 'damaris-windler', 'Cumque ipsam earum in minima ut provident.', 'Ut soluta corrupti sint. Quo mollitia et dignissimos commodi sapiente quia et. Et sit natus earum nulla est sit. Repellendus officiis omnis amet non pariatur non non.', 3, 38, NULL, 1, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(47, 18, 'Prof. Elliot Friesen IV', 'Miss Roselyn Powlowski I', '5th', 'Angelita Torp MD', 'English', 17, NULL, NULL, NULL, 287, 'prof-elliot-friesen-iv', 'Incidunt voluptate doloribus quam aut.', 'A consequuntur eaque officia aut. Et perspiciatis nihil repellendus quia. Asperiores molestiae molestiae aut quaerat est saepe corporis et. Ipsum facere dolor voluptas nam sint eaque.', 6, 56, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(48, 13, 'Fritz Dietrich', 'Simone Baumbach Sr.', '5th', 'Mr. Jessie Greenfelder II', 'English', 13, NULL, NULL, NULL, 140, 'fritz-dietrich', 'Enim eveniet maiores quo.', 'Quo qui et et ab voluptas. Tempore assumenda sapiente voluptatibus sunt quaerat. Ea qui vel qui perferendis totam quia placeat. Odio ut libero ut.', 2, 33, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(49, 6, 'Agustin Labadie PhD', 'Ulises Kozey', '3rd', 'Ms. Arielle Lind V', 'English', 10, NULL, NULL, NULL, 108, 'agustin-labadie-phd', 'Et voluptatem quis dicta laboriosam.', 'Non dolorum dolorem laudantium quia eum. Rem et debitis est harum voluptas. Qui quibusdam qui consequuntur neque iure in iure est. Repudiandae rerum deleniti ipsam velit dolore aut.', 1, 16, NULL, 1, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(50, 19, 'Annie Paucek', 'Fernando McClure', '4th', 'Rhoda Heaney III', 'Bangla', 9, NULL, NULL, NULL, 371, 'annie-paucek', 'Impedit amet labore nemo beatae quam qui.', 'Nesciunt in et odio atque qui quisquam. Sapiente dicta reiciendis et repellendus. Similique tempore ad ipsa excepturi. Quo sequi quam unde voluptates possimus blanditiis.', 3, 36, NULL, 0, 1, NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38');

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
(1, 9, NULL, 'Mrs. Marian Murphy Jr.', 'https://via.placeholder.com/640x480.png/00eeee?text=et', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(2, 31, NULL, 'Ms. Gail Spencer', 'https://via.placeholder.com/640x480.png/00ff11?text=magnam', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(3, 28, NULL, 'Sammie Bins', 'https://via.placeholder.com/640x480.png/0055aa?text=corporis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(4, 20, NULL, 'Eduardo Gulgowski', 'https://via.placeholder.com/640x480.png/00bbdd?text=in', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(5, 47, NULL, 'Pink Schiller', 'https://via.placeholder.com/640x480.png/005555?text=minima', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(6, 48, NULL, 'Therese Yost', 'https://via.placeholder.com/640x480.png/00cc11?text=incidunt', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(7, 10, NULL, 'Kennedi Johnston', 'https://via.placeholder.com/640x480.png/00ccee?text=ab', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(8, 5, NULL, 'Dr. Vita Labadie II', 'https://via.placeholder.com/640x480.png/00ccff?text=iusto', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(9, 23, NULL, 'Vernice Stroman', 'https://via.placeholder.com/640x480.png/00bb44?text=voluptates', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(10, 7, NULL, 'Lilla Deckow', 'https://via.placeholder.com/640x480.png/000011?text=eum', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(11, 38, NULL, 'Felicity Botsford', 'https://via.placeholder.com/640x480.png/002255?text=natus', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(12, 11, NULL, 'Noemie Marquardt V', 'https://via.placeholder.com/640x480.png/003355?text=neque', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(13, 22, NULL, 'Clifford Heathcote PhD', 'https://via.placeholder.com/640x480.png/009911?text=itaque', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(14, 43, NULL, 'Edmond Bosco', 'https://via.placeholder.com/640x480.png/004488?text=enim', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(15, 43, NULL, 'Dr. Valentin Pouros Sr.', 'https://via.placeholder.com/640x480.png/001155?text=aut', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(16, 33, NULL, 'Olga Breitenberg DVM', 'https://via.placeholder.com/640x480.png/0011cc?text=occaecati', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(17, 37, NULL, 'Prof. Jensen Schmidt III', 'https://via.placeholder.com/640x480.png/004488?text=quaerat', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(18, 35, NULL, 'Francisca Fay', 'https://via.placeholder.com/640x480.png/004400?text=distinctio', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(19, 10, NULL, 'Cole Dicki', 'https://via.placeholder.com/640x480.png/00ffbb?text=voluptates', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(20, 41, NULL, 'Mr. Vernon Ebert II', 'https://via.placeholder.com/640x480.png/004466?text=fuga', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(21, 39, NULL, 'Kailey Schowalter', 'https://via.placeholder.com/640x480.png/00aaaa?text=sint', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(22, 44, NULL, 'Jaqueline Schoen', 'https://via.placeholder.com/640x480.png/006699?text=eaque', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(23, 9, NULL, 'Shanie Simonis', 'https://via.placeholder.com/640x480.png/00ee22?text=perspiciatis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(24, 39, NULL, 'Mr. Antwan Ledner', 'https://via.placeholder.com/640x480.png/007766?text=consequuntur', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(25, 36, NULL, 'Mrs. Amelie Windler II', 'https://via.placeholder.com/640x480.png/00ff33?text=id', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(26, 7, NULL, 'Veronica Schmidt', 'https://via.placeholder.com/640x480.png/00ff55?text=vitae', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(27, 22, NULL, 'Kiley Stark', 'https://via.placeholder.com/640x480.png/002266?text=rerum', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(28, 47, NULL, 'Camila Bahringer', 'https://via.placeholder.com/640x480.png/005522?text=dolorem', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(29, 35, NULL, 'Leopold Gutmann', 'https://via.placeholder.com/640x480.png/0011ff?text=id', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(30, 43, NULL, 'Prof. Jacques Upton', 'https://via.placeholder.com/640x480.png/00ddcc?text=officiis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(31, 46, NULL, 'Hermina Shanahan', 'https://via.placeholder.com/640x480.png/009999?text=necessitatibus', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(32, 30, NULL, 'Dr. Trever Wuckert', 'https://via.placeholder.com/640x480.png/0055cc?text=consequatur', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(33, 18, NULL, 'Miss Adriana Strosin', 'https://via.placeholder.com/640x480.png/00bbbb?text=labore', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(34, 14, NULL, 'Enid Spencer', 'https://via.placeholder.com/640x480.png/0066cc?text=qui', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(35, 35, NULL, 'Cornelius Bergnaum', 'https://via.placeholder.com/640x480.png/00aaff?text=iste', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(36, 18, NULL, 'Mr. Hyman Howell', 'https://via.placeholder.com/640x480.png/00aaaa?text=voluptas', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(37, 13, NULL, 'Abigayle Harris', 'https://via.placeholder.com/640x480.png/00bb66?text=doloremque', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(38, 11, NULL, 'Mr. Reagan Larkin Jr.', 'https://via.placeholder.com/640x480.png/008855?text=ex', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(39, 44, NULL, 'Guido Wehner', 'https://via.placeholder.com/640x480.png/003399?text=fuga', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(40, 8, NULL, 'Cletus Nader', 'https://via.placeholder.com/640x480.png/007766?text=excepturi', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(41, 34, NULL, 'Mckenna Wilkinson V', 'https://via.placeholder.com/640x480.png/008866?text=omnis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(42, 9, NULL, 'Antonetta Schamberger', 'https://via.placeholder.com/640x480.png/00ee44?text=ut', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(43, 41, NULL, 'Prof. Laila Feest', 'https://via.placeholder.com/640x480.png/006633?text=amet', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(44, 48, NULL, 'Hope Lesch Sr.', 'https://via.placeholder.com/640x480.png/00aa11?text=asperiores', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(45, 6, NULL, 'Jacklyn Witting', 'https://via.placeholder.com/640x480.png/003322?text=qui', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(46, 19, NULL, 'Prof. Kristofer Hilpert Jr.', 'https://via.placeholder.com/640x480.png/000055?text=voluptatum', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(47, 3, NULL, 'Easton Kling', 'https://via.placeholder.com/640x480.png/00bbff?text=sed', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(48, 15, NULL, 'Prof. Barrett Mosciski', 'https://via.placeholder.com/640x480.png/0011ee?text=voluptas', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(49, 50, NULL, 'Sibyl Jacobi', 'https://via.placeholder.com/640x480.png/00cc99?text=nisi', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(50, 19, NULL, 'Alisa Skiles', 'https://via.placeholder.com/640x480.png/00cc77?text=est', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(51, 2, NULL, 'Dr. Devonte McLaughlin II', 'https://via.placeholder.com/640x480.png/00dd55?text=ipsam', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(52, 28, NULL, 'Mrs. Leonora Quitzon Jr.', 'https://via.placeholder.com/640x480.png/00aacc?text=asperiores', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(53, 4, NULL, 'Mrs. Alize Emmerich Sr.', 'https://via.placeholder.com/640x480.png/009988?text=debitis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(54, 34, NULL, 'Laron Stark', 'https://via.placeholder.com/640x480.png/007733?text=ipsa', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(55, 30, NULL, 'Lera Ondricka', 'https://via.placeholder.com/640x480.png/002277?text=tenetur', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(56, 27, NULL, 'Dr. Nils Gerlach', 'https://via.placeholder.com/640x480.png/0066aa?text=enim', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(57, 5, NULL, 'Maxime Altenwerth', 'https://via.placeholder.com/640x480.png/00ccaa?text=omnis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(58, 6, NULL, 'Cordelia Moen', 'https://via.placeholder.com/640x480.png/00ffcc?text=natus', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(59, 19, NULL, 'Bernadine Kirlin', 'https://via.placeholder.com/640x480.png/0099ee?text=cumque', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(60, 36, NULL, 'Mallie Halvorson', 'https://via.placeholder.com/640x480.png/003311?text=illo', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(61, 17, NULL, 'Alexis Koepp', 'https://via.placeholder.com/640x480.png/0066aa?text=sequi', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(62, 22, NULL, 'Jonatan Spencer', 'https://via.placeholder.com/640x480.png/0044dd?text=quod', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(63, 46, NULL, 'Loraine Yost', 'https://via.placeholder.com/640x480.png/00bb55?text=saepe', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(64, 21, NULL, 'Mrs. Henriette Altenwerth IV', 'https://via.placeholder.com/640x480.png/00dd88?text=sint', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(65, 38, NULL, 'Ms. Lauryn Morar MD', 'https://via.placeholder.com/640x480.png/000033?text=architecto', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(66, 25, NULL, 'Sydney Moen II', 'https://via.placeholder.com/640x480.png/004466?text=iste', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(67, 10, NULL, 'Mrs. Elza Cummerata', 'https://via.placeholder.com/640x480.png/0022aa?text=asperiores', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(68, 12, NULL, 'Prof. Lottie Orn', 'https://via.placeholder.com/640x480.png/0066cc?text=voluptatibus', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(69, 3, NULL, 'Mr. Ransom Hettinger', 'https://via.placeholder.com/640x480.png/002211?text=sed', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(70, 3, NULL, 'Electa Morissette', 'https://via.placeholder.com/640x480.png/0033cc?text=et', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(71, 2, NULL, 'Lance Collins', 'https://via.placeholder.com/640x480.png/00eeff?text=omnis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(72, 39, NULL, 'Tracy Oberbrunner', 'https://via.placeholder.com/640x480.png/00ddee?text=ea', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(73, 26, NULL, 'Prof. Sigrid Dooley', 'https://via.placeholder.com/640x480.png/002277?text=odio', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(74, 4, NULL, 'Mr. Hershel Sanford MD', 'https://via.placeholder.com/640x480.png/00bb11?text=est', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(75, 47, NULL, 'Noemy Hoppe', 'https://via.placeholder.com/640x480.png/001199?text=sequi', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(76, 25, NULL, 'Moshe Barrows', 'https://via.placeholder.com/640x480.png/004422?text=quos', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(77, 33, NULL, 'Osborne Kuhn', 'https://via.placeholder.com/640x480.png/00bb66?text=nobis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(78, 28, NULL, 'Isabel Wuckert', 'https://via.placeholder.com/640x480.png/00ffcc?text=officiis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(79, 25, NULL, 'Prof. Cordelia Hayes II', 'https://via.placeholder.com/640x480.png/005566?text=id', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(80, 16, NULL, 'Eugene Grimes', 'https://via.placeholder.com/640x480.png/00cc66?text=aut', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(81, 42, NULL, 'Josianne Hoppe MD', 'https://via.placeholder.com/640x480.png/00aa66?text=nostrum', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(82, 14, NULL, 'Felipa Homenick', 'https://via.placeholder.com/640x480.png/009933?text=nihil', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(83, 37, NULL, 'Camila Greenfelder III', 'https://via.placeholder.com/640x480.png/00bbbb?text=voluptas', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(84, 37, NULL, 'Janae Kilback', 'https://via.placeholder.com/640x480.png/00dd44?text=quis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(85, 42, NULL, 'Dr. Nya Hansen', 'https://via.placeholder.com/640x480.png/007711?text=voluptatem', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(86, 2, NULL, 'Geraldine Schamberger', 'https://via.placeholder.com/640x480.png/00dd33?text=omnis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(87, 48, NULL, 'Lucile Heidenreich', 'https://via.placeholder.com/640x480.png/00bbee?text=dolores', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(88, 24, NULL, 'Barton Ward', 'https://via.placeholder.com/640x480.png/002211?text=autem', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(89, 39, NULL, 'Dr. Nathan Schoen', 'https://via.placeholder.com/640x480.png/007799?text=vero', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(90, 19, NULL, 'Elian Bogisich', 'https://via.placeholder.com/640x480.png/008877?text=hic', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(91, 15, NULL, 'Blaise Streich IV', 'https://via.placeholder.com/640x480.png/0000aa?text=consequatur', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(92, 31, NULL, 'Lavinia Renner IV', 'https://via.placeholder.com/640x480.png/00cc44?text=repellendus', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(93, 7, NULL, 'Brain Shanahan', 'https://via.placeholder.com/640x480.png/0022ff?text=et', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(94, 42, NULL, 'Jermaine Bogisich I', 'https://via.placeholder.com/640x480.png/00bb88?text=aut', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(95, 3, NULL, 'Andres Wintheiser', 'https://via.placeholder.com/640x480.png/00ee66?text=incidunt', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(96, 2, NULL, 'Ms. Mozell Crooks V', 'https://via.placeholder.com/640x480.png/004433?text=ipsa', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(97, 7, NULL, 'Ms. Maribel McLaughlin', 'https://via.placeholder.com/640x480.png/0000ee?text=eos', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(98, 27, NULL, 'Jarvis McCullough', 'https://via.placeholder.com/640x480.png/0044ee?text=ut', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(99, 5, NULL, 'Fabiola Collins', 'https://via.placeholder.com/640x480.png/0011dd?text=odio', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(100, 48, NULL, 'Clement Mante', 'https://via.placeholder.com/640x480.png/002288?text=dolorem', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(101, 50, NULL, 'Madyson Marvin', 'https://via.placeholder.com/640x480.png/003322?text=esse', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(102, 46, NULL, 'Marshall Graham', 'https://via.placeholder.com/640x480.png/00aa88?text=sit', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(103, 3, NULL, 'Miss Elenora Wiza', 'https://via.placeholder.com/640x480.png/002299?text=rerum', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(104, 5, NULL, 'Dr. Marco Jones IV', 'https://via.placeholder.com/640x480.png/00ff99?text=atque', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(105, 29, NULL, 'Elizabeth Hyatt DVM', 'https://via.placeholder.com/640x480.png/00eecc?text=et', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(106, 4, NULL, 'Lupe Ryan', 'https://via.placeholder.com/640x480.png/000099?text=natus', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(107, 25, NULL, 'Vivien Rice DDS', 'https://via.placeholder.com/640x480.png/0099aa?text=sequi', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(108, 26, NULL, 'Delaney Kutch', 'https://via.placeholder.com/640x480.png/0066bb?text=vel', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(109, 2, NULL, 'Allan Konopelski', 'https://via.placeholder.com/640x480.png/000055?text=quae', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(110, 44, NULL, 'Raven Feil', 'https://via.placeholder.com/640x480.png/00cc11?text=quia', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(111, 3, NULL, 'Sven Bergnaum II', 'https://via.placeholder.com/640x480.png/000088?text=minima', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(112, 19, NULL, 'Cathryn White', 'https://via.placeholder.com/640x480.png/00aacc?text=aliquam', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(113, 35, NULL, 'Miss Sabrina Schoen MD', 'https://via.placeholder.com/640x480.png/007722?text=quia', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(114, 33, NULL, 'Lillian Barrows Jr.', 'https://via.placeholder.com/640x480.png/0055cc?text=possimus', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(115, 15, NULL, 'Alvera Stiedemann', 'https://via.placeholder.com/640x480.png/00aa66?text=velit', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(116, 18, NULL, 'Jordi Cremin', 'https://via.placeholder.com/640x480.png/00dd44?text=aut', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(117, 23, NULL, 'Prof. Giles Wintheiser', 'https://via.placeholder.com/640x480.png/007766?text=voluptas', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(118, 15, NULL, 'Jeff Moore', 'https://via.placeholder.com/640x480.png/004444?text=similique', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(119, 37, NULL, 'Avis Nikolaus', 'https://via.placeholder.com/640x480.png/00aadd?text=quisquam', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(120, 31, NULL, 'Jovany Fay', 'https://via.placeholder.com/640x480.png/0000bb?text=sunt', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(121, 35, NULL, 'Vida Runolfsson', 'https://via.placeholder.com/640x480.png/00dd44?text=minus', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(122, 48, NULL, 'Edward Williamson', 'https://via.placeholder.com/640x480.png/007799?text=libero', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(123, 20, NULL, 'Desmond Lebsack DDS', 'https://via.placeholder.com/640x480.png/00cc88?text=ab', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(124, 43, NULL, 'Jaiden Miller', 'https://via.placeholder.com/640x480.png/0055bb?text=sed', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(125, 7, NULL, 'Dr. King Will', 'https://via.placeholder.com/640x480.png/003388?text=ea', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(126, 39, NULL, 'Mr. Orlando Zemlak', 'https://via.placeholder.com/640x480.png/009944?text=velit', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(127, 3, NULL, 'Miss Annabel Cummings I', 'https://via.placeholder.com/640x480.png/0000dd?text=debitis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(128, 12, NULL, 'Hannah Robel', 'https://via.placeholder.com/640x480.png/0088ff?text=est', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(129, 15, NULL, 'Prof. Efrain Brekke', 'https://via.placeholder.com/640x480.png/006688?text=atque', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(130, 22, NULL, 'Prof. Camilla Eichmann MD', 'https://via.placeholder.com/640x480.png/002299?text=quos', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(131, 44, NULL, 'Sven Brekke Sr.', 'https://via.placeholder.com/640x480.png/00cccc?text=quo', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(132, 33, NULL, 'Miss Angelica Reilly II', 'https://via.placeholder.com/640x480.png/009933?text=rerum', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(133, 4, NULL, 'Vesta Mayer', 'https://via.placeholder.com/640x480.png/00ee00?text=dolorem', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(134, 41, NULL, 'Paige Kovacek', 'https://via.placeholder.com/640x480.png/00ee33?text=repellendus', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(135, 38, NULL, 'Mr. Kristian Kirlin', 'https://via.placeholder.com/640x480.png/0011bb?text=et', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(136, 3, NULL, 'Orin Fadel', 'https://via.placeholder.com/640x480.png/002200?text=nihil', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(137, 25, NULL, 'Mr. Howard Wiza', 'https://via.placeholder.com/640x480.png/000055?text=commodi', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(138, 1, NULL, 'June Lind II', 'https://via.placeholder.com/640x480.png/001199?text=occaecati', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(139, 4, NULL, 'Katelin Lind', 'https://via.placeholder.com/640x480.png/001188?text=nemo', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(140, 19, NULL, 'Ferne Jacobi', 'https://via.placeholder.com/640x480.png/006644?text=inventore', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(141, 42, NULL, 'Demetrius Strosin', 'https://via.placeholder.com/640x480.png/001122?text=neque', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(142, 46, NULL, 'Prof. Richie Sawayn PhD', 'https://via.placeholder.com/640x480.png/00aa00?text=quasi', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(143, 22, NULL, 'Esmeralda Waelchi', 'https://via.placeholder.com/640x480.png/00cc55?text=voluptatum', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(144, 21, NULL, 'Opal Breitenberg', 'https://via.placeholder.com/640x480.png/00dd44?text=officia', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(145, 29, NULL, 'Ms. Misty Effertz', 'https://via.placeholder.com/640x480.png/008800?text=nisi', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(146, 13, NULL, 'Conner Koch PhD', 'https://via.placeholder.com/640x480.png/00cc11?text=rerum', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(147, 49, NULL, 'Heloise Ebert', 'https://via.placeholder.com/640x480.png/002222?text=aut', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(148, 38, NULL, 'Mittie Breitenberg', 'https://via.placeholder.com/640x480.png/009922?text=laborum', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(149, 44, NULL, 'Griffin Schroeder', 'https://via.placeholder.com/640x480.png/0044cc?text=veritatis', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(150, 15, NULL, 'Prof. Geoffrey Herman', 'https://via.placeholder.com/640x480.png/0099cc?text=illum', '2021-08-03 12:09:38', '2021-08-03 12:09:38');

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
(1, 'University Level', NULL, 0, 1, 'university-level', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(2, 'College Level', NULL, 0, 1, 'college-level', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(3, 'School Level', NULL, 0, 1, 'school-level', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(4, 'Art & Architecture', NULL, 0, 1, 'art-architecture', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(5, 'Biography', NULL, 0, 1, 'biography', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(6, 'Business & Economics', NULL, 0, 1, 'business-economics', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(7, 'Dictionary', NULL, 0, 1, 'dictionary', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(8, 'Health & Fitness', NULL, 0, 1, 'health-fitness', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(9, 'History', NULL, 0, 1, 'history', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(10, 'Home & Garden', NULL, 0, 1, 'home-garden', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(11, 'Journal', NULL, 0, 1, 'journal', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(12, 'Mathematics', NULL, 0, 1, 'mathematics', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(13, 'Philosophy', NULL, 0, 1, 'philosophy', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(14, 'Religion', NULL, 0, 1, 'religion', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(15, 'Science & Engineering', NULL, 0, 1, 'science-engineering', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(16, 'Science fiction', NULL, 0, 1, 'science-fiction', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(17, 'Technology', NULL, 0, 1, 'technology', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(18, 'Travel', NULL, 0, 1, 'travel', NULL, '2021-08-03 12:09:38', '2021-08-03 12:09:38');

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
(1, 'Dhaka Division', NULL, 'dhaka-division', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(2, 'Chattogram Division', NULL, 'chattogram-division', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(3, 'Sylhet Division', NULL, 'sylhet-division', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(4, 'Rajshahi Division', NULL, 'rajshahi-division', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(5, 'Rangpur Division', NULL, 'rangpur-division', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(6, 'Khulna Division', NULL, 'khulna-division', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(7, 'Barisal Division', NULL, 'barisal-division', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(8, 'Mymensingh Division', NULL, 'mymensingh-division', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(9, 'Reserved Division1', NULL, 'reserved-division1', 0, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(10, 'Reserved Division2', NULL, 'reserved-division2', 0, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(11, 'Dhaka', 1, 'dhaka', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(12, 'Gazipur', 1, 'gazipur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(13, 'Kishorganj', 1, 'kishorganj', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(14, 'Manikganj', 1, 'manikganj', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(15, 'Munshiganj', 1, 'munshiganj', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(16, 'Narayanganj', 1, 'narayanganj', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(17, 'Narsingdi', 1, 'narsingdi', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(18, 'Tangail', 1, 'tangail', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(19, 'Faridpur', 1, 'faridpur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(20, 'Gopalganj', 1, 'gopalganj', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(21, 'Madaripur', 1, 'madaripur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(22, 'Rajbari', 1, 'rajbari', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(23, 'Shariatpur', 1, 'shariatpur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(24, 'Chattogram', 2, 'chattogram', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(25, 'Brahmanbaria', 2, 'brahmanbaria', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(26, 'Comilla', 2, 'comilla', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(27, 'Chandpur', 2, 'chandpur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(28, 'Lakshmipur', 2, 'lakshmipur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(29, 'Noakhali', 2, 'noakhali', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(30, 'Feni', 2, 'feni', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(31, 'Khagrachari', 2, 'khagrachari', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(32, 'Rangamati', 2, 'rangamati', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(33, 'Bandarban', 2, 'bandarban', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(34, 'Cox\'s Bazar', 2, 'coxs-bazar', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(35, 'Sylhet', 3, 'sylhet', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(36, 'Habiganj', 3, 'habiganj', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(37, 'Moulvibazar', 3, 'moulvibazar', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(38, 'Sunamganj', 3, 'sunamganj', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(39, 'Rajshahi', 4, 'rajshahi', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(40, 'Natore', 4, 'natore', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(41, 'Pabna', 4, 'pabna', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(42, 'Bogura', 4, 'bogura', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(43, 'Chapainawabganj', 4, 'chapainawabganj', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(44, 'Joypurhat', 4, 'joypurhat', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(45, 'Naogaon', 4, 'naogaon', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(46, 'Sirajganj', 4, 'sirajganj', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(47, 'Rangpur', 5, 'rangpur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(48, 'Dinajpur', 5, 'dinajpur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(49, 'Kurigram', 5, 'kurigram', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(50, 'Gaibandha', 5, 'gaibandha', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(51, 'Lalmonirhat', 5, 'lalmonirhat', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(52, 'Nilphamari', 5, 'nilphamari', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(53, 'Panchagarh', 5, 'panchagarh', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(54, 'Thakurganj', 5, 'thakurganj', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(55, 'Khulna', 6, 'khulna', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(56, 'Bagerhat', 6, 'bagerhat', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(57, 'Chuadanga', 6, 'chuadanga', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(58, 'Jashore', 6, 'jashore', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(59, 'Jhenaidah', 6, 'jhenaidah', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(60, 'Kushtia', 6, 'kushtia', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(61, 'Magura', 6, 'magura', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(62, 'Meherpur', 6, 'meherpur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(63, 'Narail', 6, 'narail', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(64, 'Sathkhira', 6, 'sathkhira', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(65, 'Barisal', 7, 'barisal', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(66, 'Barguna', 7, 'barguna', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(67, 'Bhola', 7, 'bhola', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(68, 'Jhalokati', 7, 'jhalokati', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(69, 'Patuakhali', 7, 'patuakhali', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(70, 'Pirojpur', 7, 'pirojpur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(71, 'Mymensingh', 8, 'mymensingh', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(72, 'Netrokona', 8, 'netrokona', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(73, 'Jamalpur', 8, 'jamalpur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(74, 'Sherpur', 8, 'sherpur', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(75, 'Bayazid', 24, 'bayazid-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(76, 'Chandgaon', 24, 'chandgaon-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(77, 'Panchlaish', 24, 'panchlaish-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(78, 'Akbarshah', 24, 'akbarshah-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(79, 'Pahartali', 24, 'pahartali-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(80, 'Khulshi', 24, 'khulshi-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(81, 'Bakoliya', 24, 'bakoliya-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(82, 'Kotwali', 24, 'kotwali-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(83, 'Halishahar', 24, 'halishahar-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(84, 'Double Mooring', 24, 'double-mooring-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(85, 'Bandar', 24, 'bandar-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(86, 'Patenga', 24, 'patenga-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(87, 'Patiya', 24, 'patiya-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(88, 'Hathhazari', 24, 'hathhazari-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(89, 'Anwara', 24, 'anwara-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(90, 'BanshKhali', 24, 'banshkhali-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(91, 'BoalKhali', 24, 'boalkhali-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(92, 'Chandanaish', 24, 'chandanaish-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(93, 'Raozan', 24, 'raozan-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(94, 'Sitakunda', 24, 'sitakunda-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(95, 'Rangunia', 24, 'rangunia-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34'),
(96, 'Satkania', 24, 'satkania-2', 1, '2021-08-03 12:09:34', '2021-08-03 12:09:34');

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
(571, '2014_10_12_100000_create_password_resets_table', 1),
(572, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(573, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(574, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(575, '2016_06_01_000004_create_oauth_clients_table', 1),
(576, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(577, '2019_08_19_000000_create_failed_jobs_table', 1),
(578, '2021_07_24_134039_create_locations_table', 1),
(579, '2021_07_25_174854_create_admins_table', 1),
(580, '2021_07_25_175212_create_users_table', 1),
(581, '2021_07_28_063431_create_categories_table', 1),
(582, '2021_07_28_071411_create_books_table', 1),
(583, '2021_07_28_074929_create_book_images_table', 1),
(584, '2021_07_31_071519_create_wish_lists_table', 1);

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
(1, NULL, 'Laravel Personal Access Client', 'QYktcAERDNgdhXA2Auq0QU19RslSlZPTSQIhteGv', NULL, 'http://localhost', 1, 0, 0, '2021-08-03 12:09:44', '2021-08-03 12:09:44'),
(2, NULL, 'Laravel Password Grant Client', 'LC3YaIUOAu2zMrBfQwAybylPu9xc8PSAadvL0fHw', 'users', 'http://localhost', 0, 1, 0, '2021-08-03 12:09:44', '2021-08-03 12:09:44');

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
(1, 1, '2021-08-03 12:09:44', '2021-08-03 12:09:44');

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
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `institute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_verification_token` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `gender`, `date_of_birth`, `institute`, `division_id`, `district_id`, `upazila_id`, `status`, `password`, `email_verified_at`, `email_verification_token`, `image_path`, `facebook_id`, `google_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Enoch Welch', '01598702796', 'user@mail.com', 'Male', '1973-09-06', 'Premier University', 5, 54, NULL, 1, '$2y$10$MIjR5YcF/lgnCnbmq0kpA.W4y3O/xuQAKnUNPr5eF7w46SfwffoFK', '2021-08-03 12:09:34', NULL, 'https://via.placeholder.com/640x480.png/003399?text=aspernatur', NULL, NULL, 'LXb7KcJCQZ', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(2, 'Laron Conroy', '01550507787', 'nikolaus.miles@example.org', 'Male', '1995-03-01', 'Premier University', 7, 70, NULL, 1, '$2y$10$rv.bfywm9jN5e0GeR.t0j.axVyd1eemDlJR1ZhucDNp38cO9h5xpq', '2021-08-03 12:09:34', NULL, 'https://via.placeholder.com/640x480.png/007755?text=architecto', NULL, NULL, 'rKszcNSH8Q', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(3, 'Prof. Rosalia Turner II', '01681861349', 'towne.garland@example.net', 'Male', '1980-08-24', 'Premier University', 8, 74, NULL, 1, '$2y$10$Ghs7IT/AFsQ4ZFDaHQ3T1u629v.NoeKFohlAgi3GVzWLuFLNTyvKy', '2021-08-03 12:09:34', NULL, 'https://via.placeholder.com/640x480.png/005599?text=iusto', NULL, NULL, 'iANs55Gw03', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(4, 'Jovany Senger', '01676942651', 'yframi@example.org', 'Female', '1996-03-29', 'Premier University', 3, 36, NULL, 1, '$2y$10$k6E71kQSdbzpQXeDK/oMeunqxL3dz8W8mehZ8kZC9aYQVzuqdC9gm', '2021-08-03 12:09:34', NULL, 'https://via.placeholder.com/640x480.png/0066ff?text=sed', NULL, NULL, 'rJnfv9b4C6', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(5, 'Zion Monahan', '01826466048', 'boehm.shyanne@example.net', 'Male', '1984-03-19', 'Premier University', 1, 21, NULL, 1, '$2y$10$mPIwDzipoAshPqoBP6w5OeWewbEcj7FJATnVndfinlXoLa5slUWVu', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/005555?text=quo', NULL, NULL, 'VU4hZ6WuMw', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(6, 'Eda Raynor DDS', '01664973261', 'turner.norwood@example.org', 'Male', '1991-01-09', 'Premier University', 7, 69, NULL, 1, '$2y$10$2OfKnDn6.WxTile2KJ/QoeGIOQSdR7NcYN65Kh5WVMANwDs18V.we', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/00eeff?text=eius', NULL, NULL, '8FRD4wDVsG', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(7, 'Prof. Anthony Blanda', '01556870117', 'gleason.berenice@example.org', 'Female', '1964-02-27', 'Premier University', 2, 30, NULL, 1, '$2y$10$qjG8c736kTe1/wcL3U1IpunMw334x2XwgHUEwsCUMdaa44WiHLCIu', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/006666?text=non', NULL, NULL, 'J0xeOtgBOy', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(8, 'Summer Jerde', '01433309212', 'kareem.schmeler@example.net', 'Male', '1995-03-28', 'Premier University', 8, 71, NULL, 1, '$2y$10$849INKpPw2RNKixxPg.8peN.dOrkyTyIr2ie7uoHXSxu2OlGwV5UW', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/003366?text=et', NULL, NULL, 'BarvNlSggv', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(9, 'Hank Rosenbaum MD', '01701199881', 'madonna67@example.com', 'Male', '1969-12-09', 'Premier University', 2, 29, NULL, 1, '$2y$10$JOax5GEzs5zNAPe2aJ8Hsev9uq.ur5TKGqhc8CI76Uh33FMUIA3R2', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/00ee66?text=a', NULL, NULL, 'q1hQSsLlzo', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(10, 'Sadie Swaniawski', '01774668075', 'mkonopelski@example.net', 'Male', '1994-02-04', 'Premier University', 7, 67, NULL, 1, '$2y$10$pVd0mhyY1p/r82TgmA4dG.8x8oGcsblaDyI6dfYG2Y.hKaqTgrRlW', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/0066dd?text=quod', NULL, NULL, 'LvBrqzO8lT', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(11, 'Michaela Strosin', '01435072812', 'will.marvin@example.net', 'Female', '1967-02-02', 'Premier University', 6, 61, NULL, 1, '$2y$10$jLtYZcoXcXK7DLwwDtO6leNKt6.o2l7N40je7otz/cZOsV0DLF9ni', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/00aa44?text=et', NULL, NULL, 'uvPAHxGNEW', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(12, 'Phoebe Trantow', '01734038078', 'bettye85@example.com', 'Female', '1973-04-30', 'Premier University', 4, 46, NULL, 1, '$2y$10$4BuKHIF6S2v5F.f0KlQtHuPUzh.3V.JBzrgXZP6XiIllVj1ti2REC', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/000077?text=praesentium', NULL, NULL, 'dpNWagsuuK', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(13, 'Dr. Trey Moen Sr.', '01637694573', 'mollie.stokes@example.net', 'Male', '1980-05-10', 'Premier University', 2, 28, NULL, 1, '$2y$10$np0tb4EXlNaqH7p/edT0sOomCXVDyzdujQG03BtK7CZi9JRbCV68S', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/0000ee?text=repudiandae', NULL, NULL, '62S57A0qiP', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(14, 'Prof. Jerome Klein', '01500442854', 'ledner.freeman@example.org', 'Female', '1966-03-24', 'Premier University', 7, 67, NULL, 1, '$2y$10$nqsUo/ZwTXl8jsfMB1N9wORY7H2afQsV.Dh8BsEamEcbu2PLskJFW', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/0055ff?text=similique', NULL, NULL, 'N7mPTueZFE', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(15, 'Corrine Brown', '01886868295', 'batz.nikki@example.com', 'Male', '1973-03-06', 'Premier University', 1, 20, NULL, 1, '$2y$10$l581IBv2TVcp8w1KVlD72.IFtblF6lUYG/Heh9no6U6/epX2q9PiW', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/00dd33?text=repudiandae', NULL, NULL, 'S0nM80Wxne', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(16, 'Lucio Paucek', '01363373476', 'bailey.carolanne@example.org', 'Male', '1997-06-02', 'Premier University', 5, 54, NULL, 1, '$2y$10$wYrABvUMGzYokoE2nbTCFu8liFQo/zdjVmIGdg1E38BLCQNyvagui', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/0077ff?text=non', NULL, NULL, 'QXNUYqLOhD', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(17, 'Octavia Huel V', '01671265639', 'odeckow@example.org', 'Male', '1970-10-03', 'Premier University', 6, 58, NULL, 1, '$2y$10$Cv5R6o0NHd6Zm7UCtp9TSOLW2ebNJ8rnbFepqdQyYJ9w5QHfbFjq6', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/008855?text=minima', NULL, NULL, 'xbONuDRrhj', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(18, 'Mrs. Genesis Prosacco', '01316169296', 'oconner.damon@example.net', 'Male', '1961-12-05', 'Premier University', 8, 74, NULL, 1, '$2y$10$8v0YgyAvEz2DUaAwfXG1aO0HR9hiMfjHJ.atmSKoxH3QJwUxFDxJW', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/008899?text=aliquid', NULL, NULL, 'GTPNX03a3Z', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(19, 'Antwan Predovic', '01445174131', 'armand.toy@example.com', 'Male', '1967-05-10', 'Premier University', 1, 17, NULL, 1, '$2y$10$kCMT2ol.mRBmyt3ZPH5gh.SGv3fs5EP4Vb7/ZPg4KhjXuwKHj1iQO', '2021-08-03 12:09:35', NULL, 'https://via.placeholder.com/640x480.png/00ee00?text=eum', NULL, NULL, 'bG6p4Qfx8f', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(20, 'Abraham Schroeder', '01434855910', 'carissa34@example.org', 'Male', '1988-04-22', 'Premier University', 7, 68, NULL, 1, '$2y$10$gXQhm/3aE5EV3VvpRcXQieRRpngLqdUn1rbCsI8ojNIylb5FJUb9C', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/004422?text=cupiditate', NULL, NULL, 'NVRFt0mXY4', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(21, 'Andreanne Feil', '01430806184', 'maureen46@example.org', 'Female', '2000-01-21', 'Premier University', 6, 56, NULL, 1, '$2y$10$teDThDYpG1sLvSHoSJgj8O/Ki4HcqW.Hj6p/VMM5z/m9Ye8GdvGAK', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/00bbdd?text=assumenda', NULL, NULL, 'Is5veRECUq', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(22, 'Rosalinda Aufderhar', '01679363049', 'torp.opal@example.net', 'Male', '1975-02-08', 'Premier University', 2, 27, NULL, 1, '$2y$10$CD.1z.YR4tv1sodEufkzD.cBAmbLTpEsFGiH.LMhHx1fDh2nlR1vq', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/0000cc?text=in', NULL, NULL, 'nacgzkXyqK', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(23, 'Larissa Cartwright', '01840224487', 'jewel.wisoky@example.org', 'Male', '1982-03-15', 'Premier University', 2, 25, NULL, 1, '$2y$10$F.Yz54BzD5MmW0Oel.kDmuoYY6b3Mz0Bl9bMfL2chBSbAE5UYKD2q', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/00aa33?text=minima', NULL, NULL, 'EdmZjDlgPE', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(24, 'Prof. Alek Labadie DVM', '01697266982', 'jewell.price@example.com', 'Female', '2005-11-30', 'Premier University', 8, 73, NULL, 1, '$2y$10$WVw8I4IIe380JawsWd/WdeG/282c4AavTaczwkgEtwvRCfE6fiFxW', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/006600?text=amet', NULL, NULL, 'rkJJuGiZ7x', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(25, 'Elvie Deckow', '01411064862', 'quitzon.damon@example.com', 'Male', '2004-10-17', 'Premier University', 5, 48, NULL, 1, '$2y$10$.adeRrcq2L1tRPD1fo7wQuTExYfvUpSHOMC22l9AmukF3B9YMBfBe', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/004433?text=officia', NULL, NULL, '61GjhfFSV5', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(26, 'Celestino Ratke', '01788113035', 'ikuvalis@example.net', 'Male', '1986-08-30', 'Premier University', 2, 32, NULL, 1, '$2y$10$I74dVfWdxH6bnegLpMQ/9OokqiTipAMZMAQzypiZV5ItELDqWD3WK', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/0044bb?text=aut', NULL, NULL, 'npOmaJccTf', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(27, 'Dr. Burdette Mills DDS', '01793060164', 'drew.shanahan@example.com', 'Male', '1972-11-14', 'Premier University', 6, 59, NULL, 1, '$2y$10$VfTl4XBzMPg6tWNkL4es4O43Pkz2QJPVpxiAJ.jWgwrq4jOk8KF3.', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/004466?text=sint', NULL, NULL, 'ELEKLA4ZzE', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(28, 'Prof. Anais Kling', '01591268322', 'paige.willms@example.com', 'Male', '1969-05-18', 'Premier University', 4, 41, NULL, 1, '$2y$10$GS2tnUBYQ7O.wTS.tMWcUudXFPwalCcm/iRS6e1C0T03nYv0tXpBa', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/002299?text=eligendi', NULL, NULL, 'IbMDk2dzJX', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(29, 'Percival Morar', '01454778011', 'pboehm@example.org', 'Female', '2006-06-02', 'Premier University', 5, 53, NULL, 1, '$2y$10$w/IzPArkpp7Utr12F4dqiupb2hehxGAvH90CvPBYQCHrgOqWQJKEO', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/00ee55?text=sit', NULL, NULL, 'vTgJxFC3cd', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(30, 'Miss Mabel Volkman', '01307319039', 'kyle.hettinger@example.org', 'Female', '1965-10-16', 'Premier University', 6, 63, NULL, 1, '$2y$10$HetKaZfQ1AQgxDvPmkPPsuNUD2LRvCBEWxv2ha57lkf47F0S9xrFW', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/000011?text=saepe', NULL, NULL, 'nGPtFI70V3', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(31, 'Noah Kautzer', '01534244901', 'jweimann@example.org', 'Male', '1962-02-23', 'Premier University', 1, 16, NULL, 1, '$2y$10$WD9pV3OTJnO6lhj761/sIubdRKtoIvrMZB0jqPtZiOB2V9sA1NPvu', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/0022cc?text=quo', NULL, NULL, 'ta3snUcizm', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(32, 'Christy Marks', '01490570762', 'tmarks@example.com', 'Female', '1983-10-30', 'Premier University', 5, 54, NULL, 1, '$2y$10$yvyHCHM/Yo8X0AbNV0FoFOMXwfPSUsFmaG0x8NW7lRVrMtD4arKHq', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/000044?text=perferendis', NULL, NULL, 'Yx2NjWFTAq', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(33, 'Lila Purdy', '01308307805', 'clare.dicki@example.org', 'Male', '2001-12-07', 'Premier University', 4, 44, NULL, 1, '$2y$10$IwQNVekb532I2ZyNL9ieSulnVkaUodwWYNEnWkqgs9exxYYnVBauC', '2021-08-03 12:09:36', NULL, 'https://via.placeholder.com/640x480.png/001199?text=fuga', NULL, NULL, 'loZeEW5Eg6', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(34, 'Nyah Pfannerstill', '01430116895', 'holden.wisoky@example.net', 'Female', '1968-12-04', 'Premier University', 3, 38, NULL, 1, '$2y$10$9C9pT1hutDkZOysStvEG.ec3PJ5Yz6G1GXJv.eBpLUEFCGv3Fex5e', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/000066?text=aut', NULL, NULL, 'npeqazTHau', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(35, 'Hassie Wilderman', '01623195409', 'cassin.eileen@example.com', 'Female', '1963-08-22', 'Premier University', 3, 37, NULL, 1, '$2y$10$RvVIARadfm0.cCl5UYpVZedak5buFNbHyKT4GebIHd/OOiMZCZO2.', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/0088aa?text=autem', NULL, NULL, 'rtoCmFxrU4', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(36, 'Valerie Marks', '01817991818', 'deven97@example.com', 'Male', '1990-11-21', 'Premier University', 2, 34, NULL, 1, '$2y$10$2dv1zK2vWqoSeHB5qTy2cedAhesNVqhE7aXiBar/vsSvN6Razz.VS', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/00bbaa?text=asperiores', NULL, NULL, 'SYBwSVxCrC', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(37, 'Arianna Mayert', '01586624870', 'darrel77@example.com', 'Male', '1976-08-13', 'Premier University', 6, 64, NULL, 1, '$2y$10$Zc.N6RZK1Zuc0qf4VgmDUOUnrwpNoHPYXZNURiit4MwKt3WNUnLDm', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/005544?text=labore', NULL, NULL, 'ckoc5R5CTt', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(38, 'Lisette Aufderhar', '01589059433', 'bertram.hill@example.org', 'Male', '1967-04-27', 'Premier University', 7, 66, NULL, 1, '$2y$10$zRxLKi2a4PBo5TuStRNPVesyAo/soxXjZfBn.4s7CtLeNdYE9EBKm', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/00aa88?text=et', NULL, NULL, 'jwdJOiFHcm', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(39, 'Kelsie Kautzer III', '01425047180', 'jennyfer.goodwin@example.com', 'Male', '1980-02-15', 'Premier University', 3, 37, NULL, 1, '$2y$10$DbN4X4pENSs2gkXvIz3Uf.Ar.Wz09IQURyxKDzZDe53xyoBRBei3i', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/00ee11?text=ut', NULL, NULL, '0ia1HK78KN', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(40, 'Alford Thiel III', '01456421865', 'evans.hane@example.com', 'Male', '1990-01-18', 'Premier University', 7, 69, NULL, 1, '$2y$10$ccLIBi2N3DrBSaEJtKW18.G4HoSmn332sBwC9H2.mLG1UxhYLMC5.', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/002233?text=et', NULL, NULL, 'tLwFpQjRLw', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(41, 'Emelie Bradtke', '01410943235', 'elody.lebsack@example.net', 'Male', '1967-01-16', 'Premier University', 8, 72, NULL, 1, '$2y$10$j6nKP0OAm//VjwaoyHmfIOhs/kqaThwfYk.icQKzeXKI6gQLfCs3u', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/005533?text=saepe', NULL, NULL, 'hktla4E1sg', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(42, 'Mr. Haleigh Durgan IV', '01495857041', 'emilia.doyle@example.com', 'Female', '1989-06-20', 'Premier University', 7, 69, NULL, 1, '$2y$10$bbdg.80PWB19tzp27kuNvOJ0I80QqH0LqbnliMAsWJQVbKlLMom.6', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/001100?text=illum', NULL, NULL, '3jL5brEfOL', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(43, 'Prof. Lorine Thompson', '01841891867', 'aglover@example.com', 'Female', '1973-02-25', 'Premier University', 8, 72, NULL, 1, '$2y$10$9uVn44qHz1NZdC0QF9Wii.1KIs3yXCIb4.P4V3hjNhjzRZGS4NuUS', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/000099?text=nihil', NULL, NULL, 'VMfuUaR9UA', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(44, 'Savanah Emmerich', '01369108299', 'royal75@example.com', 'Female', '1970-01-13', 'Premier University', 5, 48, NULL, 1, '$2y$10$oUZMZ1EB4xZoakr4V7z1B.iuqnGR/dkVYduStktuBiSDCApniX7hu', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/005599?text=magni', NULL, NULL, 'BUKxsdAC2K', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(45, 'Velda Bruen', '01763710775', 'michaela80@example.org', 'Male', '1994-08-07', 'Premier University', 6, 58, NULL, 1, '$2y$10$xQdcOdlMxBJOFN1g..O3te4iL9.K/bNkgQCaRD77GBz1aZvtr3KaS', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/00dd11?text=expedita', NULL, NULL, 'DSr2BY5Pez', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(46, 'Mrs. Lorna Labadie', '01434515273', 'paris49@example.net', 'Male', '1981-02-19', 'Premier University', 7, 67, NULL, 1, '$2y$10$ZTqSorf4BzY6MKWFwjwfIOPHxN/6CMKbxlU2LWIxeiyM31xxEAY3S', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/00cc44?text=veniam', NULL, NULL, '10HYNbVJQV', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(47, 'Heath Altenwerth', '01748945705', 'olehner@example.com', 'Male', '1990-01-01', 'Premier University', 6, 64, NULL, 1, '$2y$10$ibovCUrQgo8EHIfkeyXEMuFBCbGzZahGTvHij2QI7zJrXOyer.oEi', '2021-08-03 12:09:37', NULL, 'https://via.placeholder.com/640x480.png/00dd66?text=vel', NULL, NULL, '05ji0NBsJX', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(48, 'Stefanie Wunsch', '01636833327', 'schmitt.joana@example.net', 'Male', '2004-08-17', 'Premier University', 7, 68, NULL, 1, '$2y$10$r6Pf5/G62hvWMsSkOXbMTu7B2eBXzMNNSMxX/M06flStJLqUIgk4C', '2021-08-03 12:09:38', NULL, 'https://via.placeholder.com/640x480.png/00ff44?text=ut', NULL, NULL, 'WTsWZqadR3', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(49, 'Beverly Reichert', '01347218162', 'lockman.lyda@example.net', 'Female', '1960-08-28', 'Premier University', 7, 65, NULL, 1, '$2y$10$CrEmNTi4S7eYE24DxvIyPuy/iPjR6jv8AUcHITOHnnsg9eeJl2xWG', '2021-08-03 12:09:38', NULL, 'https://via.placeholder.com/640x480.png/00aa11?text=recusandae', NULL, NULL, 'Ubf6hYqkKF', '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(50, 'Mrs. Burdette Bailey I', '01573920448', 'maeve14@example.com', 'Male', '1977-04-18', 'Premier University', 2, 30, NULL, 1, '$2y$10$qgJzqw2Sqg7L1xuwHEbX6Od0qgKFH8hkynMmb3YnMrdbsYVebjrNa', '2021-08-03 12:09:38', NULL, 'https://via.placeholder.com/640x480.png/0033ff?text=nesciunt', NULL, NULL, 'RPsMpb0sfl', '2021-08-03 12:09:38', '2021-08-03 12:09:38');

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
(1, 10, 32, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(2, 8, 44, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(3, 8, 29, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(4, 10, 25, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(5, 8, 43, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(6, 4, 15, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(7, 2, 32, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(8, 6, 32, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(9, 10, 24, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(10, 2, 50, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(11, 8, 16, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(12, 10, 26, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(13, 7, 25, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(14, 4, 36, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(15, 4, 11, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(16, 6, 38, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(17, 9, 34, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(18, 2, 23, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(19, 3, 12, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38'),
(20, 1, 40, 1, '2021-08-03 12:09:38', '2021-08-03 12:09:38');

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
  ADD UNIQUE KEY `users_facebook_id_unique` (`facebook_id`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;

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
