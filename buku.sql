-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29 Mei 2016 pada 08.29
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `created_at`, `updated_at`) VALUES
(1, 'Svetlin Nakov', '2015-08-17 03:37:56', '2015-08-17 03:37:56'),
(2, 'Veselin Kolev', '2015-08-17 03:37:56', '2015-08-17 03:37:56'),
(3, 'David Sklar', '2015-08-17 03:44:49', '2015-08-17 03:44:49'),
(4, 'Adam Trachtenberg', '2015-08-17 03:44:49', '2015-08-17 03:44:49'),
(5, 'Wolfgang Kurt Bock', '2015-08-17 03:46:17', '2015-08-17 03:46:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `author_book`
--

CREATE TABLE `author_book` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `author_book`
--

INSERT INTO `author_book` (`book_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2015-08-17 03:37:56', '2015-08-17 03:37:56'),
(1, 2, '2015-08-17 03:37:56', '2015-08-17 03:37:56'),
(2, 1, '2015-08-17 03:39:27', '2015-08-17 03:39:27'),
(3, 1, '2015-08-17 03:42:29', '2015-08-17 03:42:29'),
(4, 3, '2015-08-17 03:44:49', '2015-08-17 03:44:49'),
(4, 4, '2015-08-17 03:44:49', '2015-08-17 03:44:49'),
(5, 5, '2015-08-17 03:46:17', '2015-08-17 03:46:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `book_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smallImage_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `largeImage_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `user_id`, `price`, `url`, `description`, `book_title`, `smallImage_path`, `largeImage_path`, `created_at`, `updated_at`) VALUES
(1, 2, 9.90, 'www.introprogramming.info/wp-content/uploads/2013/07/Books/CSharpEn/Fundamentals-of-Computer-Programming-with-CSharp-Nakov-eBook-v2013.pdf', 'The book "Fundamentals of Computer Programming with C#" is an excellent manual to guide you through your journey of programming as beginner. It will teach you in algorithmic thinking and programming in the C# language and .NET Framework. The book provides a series of programming lessons: from fundamentals of programming and development environment (Visual Studio), variables, operators, arrays and loops to more complex concepts such as recursion, fundamental data structures and classic algorithms, list structures, trees and tree-like data structures, graphs, hash-tables, algorithm complexity, object-oriented programming principles (OOP), LINQ queries, writing high-quality code and solving problems from programming exams. Additionally, PowerPoint slides based on the book and video lessons of those lectures, some by Svetlin Nakov himself, are available and are perfect for self-teaching C#. The book authors conduct free courses on programming with C# for beginners in Telerik Software Academy. If you''ve searched for "C# book", "programming book", "Nakov book" or "the Bulgarian C# book", you are on the right website.', 'Fundamentals of Computer Programming with C#', 'images/smallImages/2_2015-08-17_-_10_37_56____kidsnapper4.jpg', 'images/largeImages/2_2015-08-17_-_10_37_56____kidsnapper4.jpg', '2015-08-17 03:37:56', '2015-08-17 03:37:56'),
(2, 2, 9.99, 'www.introprogramming.info/wp-content/uploads/2014/04/Introduction-to-Programing-with-Java-Book-v2014.pdf', 'The book Introduction to Programming with Java is fundamental computer programming book that focuses on the concepts of the computer programming, data structures and algorithms. It is the recommended start for junior developers and is entirely free.', 'Introduction to Programming with Java', 'images/smallImages/2_2015-08-17_-_10_39_26____kidsnapper5.jpg', 'images/largeImages/2_2015-08-17_-_10_39_26____kidsnapper5.jpg', '2015-08-17 03:39:27', '2015-08-17 03:39:27'),
(3, 2, 9.99, 'www.devbg.org/dotnetbook/Nakov-Programming-.NET-Framework-Book-Volume-1-ver-1.03.pdf', 'Visit the web site of my book “Programming for .NET Framework“. The book is an unique tutorial for .NET Framework developers with C#. It covers fully the most important topic of the .NET technologies. ', 'Programming for .NET Framework', 'images/smallImages/2_2015-08-17_-_10_42_29____kidsnapper6.jpg', 'images/largeImages/2_2015-08-17_-_10_42_29____kidsnapper6.jpg', '2015-08-17 03:42:29', '2015-08-17 03:42:29'),
(4, 2, 9.99, 'www.books.google.de/books?id=jyWdSfsvza4C&printsec=frontcover&hl=de#v=onepage&q&f=false', 'Fur jede kniffelige Aufgabe gibt es eine Losung - und die ist oft viel einfacher, als zunachst gedacht. Das beliebte PHP 5 Kochbuch zeigt Ihnen, wie Sie typische Probleme und Herausforderungen der PHP-Entwicklung geschickt meistern. Die Rezepte reichen von einfacheren Aufgaben bis hin zu komplexen Programmen. Fur die dritte Auflage wurde der Bestseller von namhaften deutschen PHP-Experten komplett aktualisiert und um zusatzliche Rezepte erganzt. Aktuell zu PHP 5.3: Die Version 5.3 bietet zahlreiche Funktionalitaten, die dem PHP-Programmierer interessante neue Moglichkeiten eroffnen. Diese Auflage des Kochbuchs geht umfassend auf die Neuerungen ein. Dazu gehoren: die Anderungen am Objektmodell von PHP 5 im Zusammenhang mit der Einfuhrung von Namensraumen, das Late Static Binding, die Erstellung von Lambda-Funktionen und Closures, die neue PHAR-Erweiterung, die erweiterte Standard PHP Library (SPL) und vieles mehr. Die ganze Bandbreite: Uber 350 Rezepte machen das PHP 5 Kochbuch zu einer umfangreichen Informations- und Inspirationsquelle fur jeden PHP-Entwickler.', 'PHP 5 Kochbuch ', 'images/smallImages/2_2015-08-17_-_10_44_48____51Rfp.jpg', 'images/largeImages/2_2015-08-17_-_10_44_48____51Rfp.jpg', '2015-08-17 03:44:49', '2015-08-17 03:44:49'),
(5, 2, 9.99, 'www.books.google.de/books?id=Gha22SptQhIC&printsec=frontcover&hl=de&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false', 'Mit PHP objektorientiert programmieren ist das Motto dieses Buchs. Im Vordergrund steht nicht allein die Theorie, sondern vor allem die praktische Anwendung der OOP mit PHP ab Version 5.2. Viele Beispiele mit ausführlich erklärten Listings laden ein zum Mitprogrammieren und Weiterentwickeln. Um den Leser bei der praktischen Arbeit zu unterstützen, sind alle vom Autor benutzten Tools und Programmbeispiele als Download verfügbar.', 'Objektorientiertes Programmieren mit PHP', 'images/smallImages/2_2015-08-17_-_10_46_17____kidsnapper7.jpg', 'images/largeImages/2_2015-08-17_-_10_46_17____kidsnapper7.jpg', '2015-08-17 03:46:17', '2015-08-17 03:46:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_categorie`
--

CREATE TABLE `book_categorie` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `categorie_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `book_categorie`
--

INSERT INTO `book_categorie` (`book_id`, `categorie_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2015-08-17 03:37:56', '2015-08-17 03:37:56'),
(2, 2, '2015-08-17 03:39:27', '2015-08-17 03:39:27'),
(3, 3, '2015-08-17 03:42:29', '2015-08-17 03:42:29'),
(4, 4, '2015-08-17 03:44:49', '2015-08-17 03:44:49'),
(5, 4, '2015-08-17 03:46:17', '2015-08-17 03:46:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'C#', '2015-08-17 03:37:56', '2015-08-17 03:37:56'),
(2, 'Java', '2015-08-17 03:39:27', '2015-08-17 03:39:27'),
(3, '.Net', '2015-08-17 03:42:29', '2015-08-17 03:42:29'),
(4, 'PHP', '2015-08-17 03:44:49', '2015-08-17 03:44:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `message`, `book_id`, `user_id`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 'This is my first comment', 5, 1, '2015-08-18 06:48:48', '2015-08-18 06:48:48', '2015-08-18 06:48:48'),
(2, 'I recommend it', 5, 2, '2015-08-27 03:19:41', '2015-08-27 03:19:41', '2015-08-27 03:19:41'),
(3, 'dssdsd', 5, 4, '2016-05-27 20:50:55', '2016-05-27 20:50:55', '2016-05-27 20:50:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_05_28_155756_create_PayPalLogs_table', 1),
('2016_05_28_155810_create_categories_table', 1),
('2016_05_28_155820_create_authors_table', 1),
('2016_05_28_155831_create_password_resets_table', 1),
('2016_05_28_155843_create_users_table', 1),
('2016_05_28_162412_create_books_table', 1),
('2016_05_28_162524_create_book_categorie_table', 1),
('2016_05_28_162539_create_messages_table', 1),
('2016_05_28_162548_create_books_authors_table', 1),
('2016_05_28_162556_create_ratings_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paypallogs`
--

CREATE TABLE `paypallogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unfinished!',
  `paypal_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8_unicode_ci,
  `item_list` text COLLATE utf8_unicode_ci,
  `total` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `paypallogs`
--

INSERT INTO `paypallogs` (`id`, `payment_id`, `viewed`, `state`, `paypal_id`, `payer_email`, `payer_id`, `payer_first_name`, `payer_last_name`, `shipping_address`, `item_list`, `total`, `created_at`, `updated_at`) VALUES
(1, 'PAY-6M506514DX121293YKXI4BNY', 0, 'approved', 'PAY-6M506514DX121293YKXI4BNY', 'djeiho-buyer@gmail.com', 'T93JBZLMAPQBC', 'test', 'buyer', '{"line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US","recipient_name":"test buyer"}', '{"amount":{"total":"14.99","currency":"EUR","details":{"subtotal":"9.99","shipping":"5.00"}},"description":"Your transaction description","item_list":{"items":[{"name":"Objektorientiertes Programmieren mit PHP","sku":"5","price":"9.99","currency":"EUR","quantity":"1"}],"shipping_address":{"recipient_name":"test buyer","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"84P754093N3280640","create_time":"2015-08-17T11:08:39Z","update_time":"2015-08-17T11:09:01Z","amount":{"total":"14.99","currency":"EUR"},"payment_mode":"INSTANT_TRANSFER","state":"pending","reason_code":"RECEIVING_PREFERENCE_MANDATES_MANUAL_ACTION","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","parent_payment":"PAY-6M506514DX121293YKXI4BNY","transaction_fee":{},"links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/84P754093N3280640","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/84P754093N3280640/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAY-6M506514DX121293YKXI4BNY","rel":"parent_payment","method":"GET"}]}}]}', 14.99, '2015-08-17 04:08:38', '2015-08-17 04:08:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `isAdmin`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Quest', 0, 'Quest@gmail.com', '$2y$10$0d6Cp/oL05/QVver/Ey3f.4if24tGQW7iQvPtt4lTDQ/MW53W.vEm', 'oROcD4S70PiCXUet4yUSS1VSOj9T06sY0WQ3G0HeTVigO8f2rpXk1FLsHhRQ', '2015-08-17 03:06:40', '2015-08-27 03:18:22'),
(2, 'Admin', 1, 'Admin@gmail.com', '$2y$10$Lz93sIvGp1.PyzVP60R5c.1iA5ubMpONSgAtgBSlXOl3kFghlu9zG', 'pLZFML2Yhxs2rDQOwyXtYMA70YRqaDfAuOucyAfbpsmTNCGzIk768Y5PTjoG', '2015-08-17 03:07:05', '2015-08-27 03:31:27'),
(3, 'dzaky', 0, 'd@a.com', '$2y$10$rH.Bz8quG4HkNe1YJistmua.KcKTSLq1pn/mtuC/CHjbVWPUqGiRa', NULL, '2016-05-26 02:19:32', '2016-05-26 02:19:32'),
(4, 'dzakybd', 0, 'dzakybd@gmail.com', '$2y$10$96UnfMj7NE2ddG2PYk0zaO09o46pUsRKQSEAIlQHoxgWsKES6y4.a', 'f7fno3k8jLF4tP1JvZ94FvO3HJbSrfHN7Ttmi8jG8ZBDS7BFqtLCuXktuzJs', '2016-05-27 20:50:36', '2016-05-27 22:37:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author_book`
--
ALTER TABLE `author_book`
  ADD KEY `author_book_book_id_index` (`book_id`),
  ADD KEY `author_book_author_id_index` (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_user_id_foreign` (`user_id`);

--
-- Indexes for table `book_categorie`
--
ALTER TABLE `book_categorie`
  ADD KEY `book_categorie_categorie_id_foreign` (`categorie_id`),
  ADD KEY `book_categorie_book_id_index` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_book_id_index` (`book_id`),
  ADD KEY `messages_user_id_index` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `paypallogs`
--
ALTER TABLE `paypallogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_book_id_index` (`book_id`),
  ADD KEY `ratings_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `paypallogs`
--
ALTER TABLE `paypallogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `author_book_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_book_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `book_categorie`
--
ALTER TABLE `book_categorie`
  ADD CONSTRAINT `book_categorie_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_categorie_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
