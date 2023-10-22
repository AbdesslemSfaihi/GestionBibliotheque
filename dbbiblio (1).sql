-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2023 at 01:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbiblio`
--

-- --------------------------------------------------------

--
-- Table structure for table `auteurs`
--

CREATE TABLE `auteurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomauteur` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `numtel` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auteurs`
--

INSERT INTO `auteurs` (`id`, `nomauteur`, `email`, `numtel`, `created_at`, `updated_at`) VALUES
(1, 'Romain Rissouan', 'Romain@yahoo.fr', '29123456', NULL, NULL),
(2, 'Emmanuel Jakobowicz', 'EmmanuelJakobowicz@gmail.com', '98123456', NULL, NULL),
(3, 'Stephan Roth', 'Stephan@gmail.com', '475213456', NULL, NULL),
(4, 'Julien Guillod', 'EmmanuelJakobowicz@gmail.com', '28574528', NULL, NULL),
(5, 'Cavier Chanet', 'Xavier@gmail.com', '28574528', NULL, NULL),
(6, 'Patrick vert', 'Pvert@gmail.com', '48574528', NULL, NULL),
(7, 'Eric Sarrion', 'Eric@gmail.com', '14574528', NULL, NULL),
(8, 'Alexandra Martin', 'Martin@gmail.com', '47854528', NULL, NULL),
(9, 'Stanislas Chaillou', 'Stanislas@gmail.com', '48954528', NULL, NULL),
(10, 'Patrick Wampe', 'patrick@gmail.com', '788954528', NULL, NULL),
(11, 'Jean Philippe', 'Jean@gmail.com', '85442412', NULL, NULL),
(12, 'Hérvé  Le Morvan', 'Morvan@gmail.com', '87442412', NULL, NULL),
(13, 'Olivier Hurtle', 'Olivier@gmail.com', '87542412', NULL, NULL),
(14, 'Ludovic Roland', 'Ludovic@gmail.com', '87442412', NULL, NULL),
(15, 'Yoann GUACHARD', 'Yoann@gmail.com', '2354685', NULL, NULL),
(16, 'Brice Arneaud Guerin', 'Brice@gmail.com', '2754685', NULL, NULL),
(17, 'Hervé Boiscontier', 'Hervé@gmail.com', '27454685', NULL, NULL),
(18, 'Jacque Poureer', 'Jacque@gmail.com', '125685', NULL, NULL),
(19, 'Jenome Gabillaud', 'JenomeGab@gmail.com', '32545874', NULL, NULL),
(20, 'DAVID Chaplin', 'Chaplin@gmail.com', '98745874', NULL, NULL),
(21, 'Bilal AMARNI', 'AMARNI@gmail.com', '212548', NULL, NULL),
(22, 'Etienne  Langlet', 'Langlet@gmail.com', '757575757', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `editeurs`
--

CREATE TABLE `editeurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maisonedit` varchar(50) NOT NULL,
  `siteweb` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `editeurs`
--

INSERT INTO `editeurs` (`id`, `maisonedit`, `siteweb`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Eyrolles', 'https://www.eyrolles.com', 'eyrolles@domain.com', '2023-10-07 00:35:12', NULL),
(2, 'ENI', 'https://www.eni.com', 'eni@domain.com', '2023-10-07 00:36:03', NULL),
(3, 'Apress', 'https://www.apress.com', 'apress@domain.com', '2023-10-25 00:36:32', NULL),
(4, 'DUNOD', 'https://www.dunod.com', 'dunod@domain.com', '2023-10-07 00:37:12', NULL),
(5, 'Le MONITEUR', 'https://www.Moniteur.com', 'Moniteur@domain.com', '2023-10-26 00:37:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livres`
--

CREATE TABLE `livres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `annedition` int(11) NOT NULL,
  `prix` double NOT NULL,
  `qtestock` int(11) NOT NULL,
  `couverture` varchar(255) NOT NULL,
  `specialite` bigint(20) UNSIGNED NOT NULL,
  `maised` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livres`
--

INSERT INTO `livres` (`id`, `isbn`, `titre`, `annedition`, `prix`, `qtestock`, `couverture`, `specialite`, `maised`, `created_at`, `updated_at`) VALUES
(1, '42368756', 'ReactJS', 2021, 33, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624013/YmlibGlvdGhlcXVlLzk3ODIyMTI2Nzc1NjBfaW50ZXJuZXRfdzI5MF9kM2UxNnE=/preview', 1, 1, NULL, NULL),
(2, '123698745', 'WordPress', 2020, 55, 4, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624132/YmlibGlvdGhlcXVlLzk3ODI0MTIwNjg3NjJfaW50ZXJuZXRfdzI5MF9ta29raTg=/preview', 1, 4, '2023-09-25 11:49:00', NULL),
(3, '54894', 'Techniques de Référencement Web', 2020, 65, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624190/YmlibGlvdGhlcXVlLzk3ODIyMTI2Nzk4NjFfaW50ZXJuZXRfdzI5MF9lZmR4ZHI=/preview', 1, 1, NULL, '2023-09-25 11:49:00'),
(4, '5464sf', 'VueJS', 2020, 20, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624227/YmlibGlvdGhlcXVlLzk3ODI0MDkwMjk0MjRfaW50ZXJuZXRfdzI5MF9oajJza2o=/preview', 1, 2, '2023-10-07 13:23:00', NULL),
(5, '65465445', 'JAVA Spring', 2020, 50, 15, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624286/YmlibGlvdGhlcXVlLzk3ODI0MDkwMjg2NDlfaW50ZXJuZXRfdzI5MF9zaTZ6dm0=/preview', 1, 2, '2023-10-07 13:24:17', NULL),
(6, '54656514168', 'TypeScript React', 2019, 60, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624345/YmlibGlvdGhlcXVlL3R5dXBlc2NyaXB0cmVhY3RfamFpbTZ2/preview', 1, 2, '2023-10-07 13:25:24', NULL),
(7, '684984684', 'React', 2018, 40, 15, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624409/YmlibGlvdGhlcXVlL3JlYWN0d2ViX3d2a2gxaw==/preview', 1, 2, '2023-10-07 13:26:29', NULL),
(8, '5646486', 'L\'intelligence artificelle au service de l\'architecture', 2020, 77, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624448/YmlibGlvdGhlcXVlLzk3ODIyODExNDQ4NTdfaW50ZXJuZXRfdzI5MF9tZjhvbzA=/preview', 1, 5, '2023-10-07 13:27:29', NULL),
(9, '123987', 'Stratégie Big Data', 2019, 80, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624507/YmlibGlvdGhlcXVlLzk3ODIxMDA3Nzg5ODBfaW50ZXJuZXRfdzI5MF9hOXJpYW8=/preview', 1, 4, '2023-10-07 13:28:27', NULL),
(10, '78412547', 'Progressive Web App', 2019, 20, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624573/YmlibGlvdGhlcXVlL3dlYmFwcF91andvZmQ=/preview', 1, 2, '2023-10-07 13:29:27', NULL),
(11, '654698494', 'Agilité', 2020, 41, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624610/YmlibGlvdGhlcXVlLzk3ODI4MTA0MzE2OTRfaW50ZXJuZXRfdzI5MF95MWFyZGY=/preview', 1, 3, '2023-10-07 13:30:48', NULL),
(12, '5498484', 'Programmation Python par la pratique', 2020, 30, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624745/YmlibGlvdGhlcXVlLzk3ODIxMDA4MTIyNDBfaW50ZXJuZXRfdzI5MF9jMWdnZWM=/preview', 1, 4, '2023-10-31 14:31:49', NULL),
(13, '42368756', 'Python et Datascience', 2021, 85, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624745/YmlibGlvdGhlcXVlLzk3ODIxMDA4MTIyNDBfaW50ZXJuZXRfdzI5MF9jMWdnZWM=/preview', 1, 4, '2023-10-07 13:33:15', NULL),
(14, '42368756', 'C++', 2021, 20, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624843/YmlibGlvdGhlcXVlLzk3ODI0MDkwMzAyMDhfaW50ZXJuZXRfdzI5MF94YTFndTg=/preview', 1, 2, '2023-10-07 13:34:09', NULL),
(15, '42368756', 'Symfony 4', 2021, 50, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696624892/YmlibGlvdGhlcXVlLzk3ODI0MDkwMzE1ODhfaW50ZXJuZXRfdzI5MF9tZjNyZG0=/preview', 1, 2, '2023-10-07 13:35:05', NULL),
(16, '2458741235411', 'Clean C++', 2021, 50, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625254/YmlibGlvdGhlcXVlLzk3ODE0ODQyNTk0ODFfaW50ZXJuZXRfdzI5MF9odDV5aWs=/preview', 1, 3, '2023-10-07 13:36:16', NULL),
(17, '14458741235411', 'Mathématique pour l\'informatique', 2021, 50, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625254/YmlibGlvdGhlcXVlLzk3ODE0ODQyNTk0ODFfaW50ZXJuZXRfdzI5MF9odDV5aWs=/preview', 1, 2, '2023-10-07 13:37:14', NULL),
(18, '411868756', 'Docker', 2020, 58, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625399/YmlibGlvdGhlcXVlLzk3ODI0MDkwMjg1ODhfaW50ZXJuZXRfdzI5MF9jZHMzYjg=/preview', 2, 2, '2023-10-03 13:39:01', NULL),
(19, '543214894', 'Angular Nodejs', 2023, 69, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625452/YmlibGlvdGhlcXVlLzk3ODI0MDkwMjc4NjRfaW50ZXJuZXRfdzI5MF9zeGx4YXk=/preview', 1, 2, NULL, NULL),
(20, '54231294', 'Kotlin', 2022, 99, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625507/YmlibGlvdGhlcXVlLzk3ODI0MDkwMjkxNThfaW50ZXJuZXRfdzI5MF9vYmRmcWo=/preview', 1, 2, '2023-09-25 11:48:34', NULL),
(21, '42222368756', 'PHP8', 2022, 64, 6, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625571/YmlibGlvdGhlcXVlLzk3ODI0MDkwMzA2MzVfaW50ZXJuZXRfdzI5MF92OXg1cmQ=/preview', 1, 2, '2023-10-07 13:42:13', NULL),
(22, '5345465445', 'SQL Server', 2017, 58, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625626/YmlibGlvdGhlcXVlLzk3ODI0MDkwMzExMzdfaW50ZXJuZXRfdzI5MF9rZ2o3ZmM=/preview', 1, 2, '2023-10-07 15:22:41', NULL),
(23, '5464sf', 'Django', 2023, 55, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625679/YmlibGlvdGhlcXVlLzk3ODI0MDkwMjkxMTBfaW50ZXJuZXRfdzI5MF91eXNveTI=/preview', 1, 2, '2023-10-07 15:23:51', NULL),
(24, '57844894', 'HTML XML CSS', 2019, 68, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625737/YmlibGlvdGhlcXVlLzk3ODI0MTIwNjY4NzRfaW50ZXJuZXRfdzI5MF9qY20waDM=/preview', 1, 2, '2023-10-07 15:25:01', NULL),
(25, '3165465445', 'Oracle 19C', 2022, 128, 6, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625798/YmlibGlvdGhlcXVlLzk3ODI0MDkwMjg5NDZfaW50ZXJuZXRfdzI5MF9kbGJ4aG8=/preview', 1, 2, '2023-10-07 15:26:02', NULL),
(26, '775646486', 'Anabac', 2022, 45, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625856/YmlibGlvdGhlcXVlLzk3ODI0MDEwNjQyMThfMV83NV90a21vdG4=/preview', 1, 2, '2023-10-07 15:26:54', NULL),
(27, '4742368756', 'Conception d\'algorithmes', 2020, 78, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625922/YmlibGlvdGhlcXVlLzk3ODI0MTYwMDEwMzFfaW50ZXJuZXRfdzI5MF9odmtncHo=/preview', 1, 1, '2023-10-07 15:28:04', NULL),
(28, '24587741235411', 'Scrum', 2021, 72, 10, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696625985/YmlibGlvdGhlcXVlLzk3ODI0MDkwMzEzMTFfaW50ZXJuZXRfdzI5MF9keXE2eHA=/preview', 1, 2, '2023-10-07 15:28:55', NULL),
(29, '785454231294', 'Java et IONIC', 2021, 50, 5, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696626052/YmlibGlvdGhlcXVlL2phdmFpb25pY19qeGtwdnc=/preview', 1, 2, '2023-10-07 15:29:48', NULL),
(30, '982895874587', 'Apprendre et développer avec JavaScript', 2020, 47, 12, 'https://res-console.cloudinary.com/esps/thumbnails/v1/image/upload/v1696626116/YmlibGlvdGhlcXVlL2phdmFzY3JpcHRfcWN4cXY4/preview', 1, 2, '2023-10-07 15:30:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `livre_auteur`
--

CREATE TABLE `livre_auteur` (
  `auteur_id` bigint(20) UNSIGNED NOT NULL,
  `livre_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livre_auteur`
--

INSERT INTO `livre_auteur` (`auteur_id`, `livre_id`) VALUES
(7, 1),
(22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_22_103141_create_specialites_table', 1),
(6, '2023_10_22_103242_create_editeurs_table', 1),
(7, '2023_10_22_103257_create_auteurs_table', 1),
(8, '2023_10_22_103310_create_livres_table', 1),
(9, '2023_10_22_104026_create_livre_auteur_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specialites`
--

CREATE TABLE `specialites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomspecialite` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialites`
--

INSERT INTO `specialites` (`id`, `nomspecialite`, `created_at`, `updated_at`) VALUES
(1, 'Informatique', NULL, NULL),
(2, 'Réseaux', NULL, NULL),
(3, 'Psychologies', '2023-10-22 10:26:10', '2023-10-22 10:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editeurs`
--
ALTER TABLE `editeurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livres_specialite_foreign` (`specialite`),
  ADD KEY `livres_maised_foreign` (`maised`);

--
-- Indexes for table `livre_auteur`
--
ALTER TABLE `livre_auteur`
  ADD PRIMARY KEY (`auteur_id`,`livre_id`),
  ADD KEY `livre_auteur_livre_id_foreign` (`livre_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `specialites`
--
ALTER TABLE `specialites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `specialites_nomspecialite_unique` (`nomspecialite`);

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
-- AUTO_INCREMENT for table `auteurs`
--
ALTER TABLE `auteurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `editeurs`
--
ALTER TABLE `editeurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialites`
--
ALTER TABLE `specialites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_maised_foreign` FOREIGN KEY (`maised`) REFERENCES `editeurs` (`id`),
  ADD CONSTRAINT `livres_specialite_foreign` FOREIGN KEY (`specialite`) REFERENCES `specialites` (`id`);

--
-- Constraints for table `livre_auteur`
--
ALTER TABLE `livre_auteur`
  ADD CONSTRAINT `livre_auteur_auteur_id_foreign` FOREIGN KEY (`auteur_id`) REFERENCES `auteurs` (`id`),
  ADD CONSTRAINT `livre_auteur_livre_id_foreign` FOREIGN KEY (`livre_id`) REFERENCES `livres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
