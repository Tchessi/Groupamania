-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 10 oct. 2022 à 15:09
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `groupomania`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `postId`, `content`, `userId`, `createdAt`, `updatedAt`) VALUES
(2, 3, 'Waouuuu!', 2, '2022-02-01 12:21:03', '2022-02-01 12:23:42'),
(3, 3, 'xfdfjdfj', 2, '2022-02-01 13:05:03', '2022-02-01 13:05:03'),
(7, 3, 'c\'est super coool!!!!', 3, '2022-02-01 13:25:12', '2022-02-02 09:46:39'),
(8, 3, 'Merci!', 3, '2022-02-02 09:46:57', '2022-02-02 09:46:57'),
(13, 5, 'oupssss!!!!!', 3, '2022-02-04 18:22:14', '2022-02-04 18:22:14'),
(17, 11, 'c\'est beau!!!!', 2, '2022-03-17 15:08:20', '2022-03-17 15:08:28'),
(19, 7, 'salut', 2, '2022-03-22 09:50:31', '2022-03-22 09:50:31'),
(21, 12, 'mignon', 12, '2022-03-22 09:55:01', '2022-03-22 09:55:01'),
(23, 13, 'Je t\'observe!', 4, '2022-03-22 16:05:01', '2022-03-22 16:05:01'),
(29, 23, 'djsjfjsjfsj', 16, '2022-10-10 13:01:52', '2022-10-10 13:01:52'),
(30, 22, 'dfdzgded', 16, '2022-10-10 13:02:48', '2022-10-10 13:02:48'),
(31, 22, 'gztzy', 16, '2022-10-10 13:03:00', '2022-10-10 13:03:00'),
(32, 5, 'sdsggdg hhh', 16, '2022-10-10 13:04:23', '2022-10-10 13:04:29');

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `postId`, `userId`, `createdAt`, `updatedAt`) VALUES
(2, 2, 2, '2022-02-01 11:39:17', '2022-02-01 11:39:17'),
(9, 3, 2, '2022-02-01 13:05:18', '2022-02-01 13:05:18'),
(10, 3, 3, '2022-02-01 13:27:03', '2022-02-01 13:27:03'),
(12, 4, 3, '2022-02-02 12:19:54', '2022-02-02 12:19:54'),
(13, 3, 4, '2022-02-02 15:50:03', '2022-02-02 15:50:03'),
(15, 5, 4, '2022-02-03 08:32:58', '2022-02-03 08:32:58'),
(16, 4, 4, '2022-02-03 08:33:12', '2022-02-03 08:33:12'),
(21, 6, 3, '2022-02-04 18:21:44', '2022-02-04 18:21:44'),
(22, 5, 3, '2022-02-04 18:21:55', '2022-02-04 18:21:55'),
(23, 7, 6, '2022-02-05 10:11:32', '2022-02-05 10:11:32'),
(30, 5, 2, '2022-02-11 08:46:39', '2022-02-11 08:46:39'),
(31, 7, 2, '2022-02-12 10:36:31', '2022-02-12 10:36:31'),
(32, 8, 9, '2022-02-12 15:24:49', '2022-02-12 15:24:49'),
(33, 10, 2, '2022-03-01 11:33:40', '2022-03-01 11:33:40'),
(35, 11, 2, '2022-03-17 15:08:02', '2022-03-17 15:08:02'),
(36, 4, 2, '2022-03-17 15:09:21', '2022-03-17 15:09:21'),
(37, 8, 2, '2022-03-18 09:53:03', '2022-03-18 09:53:03'),
(38, 12, 2, '2022-03-22 09:49:45', '2022-03-22 09:49:45'),
(39, 12, 12, '2022-03-22 09:54:50', '2022-03-22 09:54:50'),
(40, 12, 3, '2022-03-22 11:27:35', '2022-03-22 11:27:35'),
(41, 8, 3, '2022-03-22 11:27:38', '2022-03-22 11:27:38'),
(42, 7, 3, '2022-03-22 11:27:40', '2022-03-22 11:27:40'),
(43, 13, 2, '2022-03-22 11:36:23', '2022-03-22 11:36:23'),
(44, 13, 12, '2022-03-22 11:38:19', '2022-03-22 11:38:19'),
(45, 14, 2, '2022-03-22 14:56:59', '2022-03-22 14:56:59'),
(46, 13, 4, '2022-03-22 16:04:22', '2022-03-22 16:04:22'),
(47, 14, 4, '2022-03-22 16:04:25', '2022-03-22 16:04:25'),
(48, 12, 4, '2022-03-22 16:05:15', '2022-03-22 16:05:15'),
(49, 8, 4, '2022-03-22 16:05:17', '2022-03-22 16:05:17'),
(50, 7, 4, '2022-03-22 16:05:20', '2022-03-22 16:05:20'),
(51, 6, 4, '2022-03-22 16:05:22', '2022-03-22 16:05:22'),
(52, 15, 11, '2022-03-22 16:10:43', '2022-03-22 16:10:43'),
(53, 15, 3, '2022-03-22 16:11:53', '2022-03-22 16:11:53'),
(54, 14, 3, '2022-03-22 16:12:22', '2022-03-22 16:12:22'),
(55, 16, 13, '2022-03-23 10:28:30', '2022-03-23 10:28:30'),
(56, 6, 2, '2022-03-23 10:31:21', '2022-03-23 10:31:21'),
(57, 17, 3, '2022-03-23 11:23:57', '2022-03-23 11:23:57'),
(60, 16, 3, '2022-03-23 11:24:41', '2022-03-23 11:24:41'),
(61, 17, 2, '2022-03-23 13:56:02', '2022-03-23 13:56:02'),
(62, 18, 14, '2022-03-23 14:11:45', '2022-03-23 14:11:45'),
(63, 19, 15, '2022-03-23 15:11:43', '2022-03-23 15:11:43'),
(64, 18, 15, '2022-03-23 15:12:16', '2022-03-23 15:12:16'),
(65, 17, 15, '2022-03-23 15:12:56', '2022-03-23 15:12:56'),
(66, 22, 16, '2022-10-10 13:02:42', '2022-10-10 13:02:42'),
(67, 21, 16, '2022-10-10 13:03:07', '2022-10-10 13:03:07'),
(68, 20, 16, '2022-10-10 13:03:11', '2022-10-10 13:03:11'),
(69, 5, 16, '2022-10-10 13:03:36', '2022-10-10 13:03:36');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `recipientUserId` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `senderUserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `recipientUserId`, `content`, `viewed`, `createdAt`, `updatedAt`, `postId`, `senderUserId`) VALUES
(4, 3, '<b>Tissiame Pre</b> a commenté votre publication du 2 février 2022', NULL, '2022-02-02 15:49:17', '2022-02-02 15:49:17', 4, 4),
(6, 3, '<b>Tissiame Pre</b> a aimé votre publication du 2 février 2022', NULL, '2022-02-03 08:33:12', '2022-02-03 08:33:12', 4, 4),
(7, 4, '<b>Tchess Preza</b> a aimé votre publication du 3 février 2022', NULL, '2022-02-03 10:31:20', '2022-02-03 10:31:20', 6, 2),
(8, 4, '<b>Tchess Preza</b> a aimé votre publication du 3 février 2022', NULL, '2022-02-03 10:31:25', '2022-02-03 10:31:25', 6, 2),
(9, 3, '<b>Tchess Preza</b> a aimé votre publication du 2 février 2022', NULL, '2022-02-03 10:56:53', '2022-02-03 10:56:53', 4, 2),
(10, 4, '<b>Tchess Preza</b> a aimé votre publication du 3 février 2022', NULL, '2022-02-03 11:53:43', '2022-02-03 11:53:43', 6, 2),
(11, 3, '<b>Tchess Preza</b> a commenté votre publication du 2 février 2022', NULL, '2022-02-03 11:57:27', '2022-02-03 11:57:27', 4, 2),
(12, 4, '<b>Menela Pre</b> a aimé votre publication du 3 février 2022', NULL, '2022-02-04 18:21:44', '2022-02-04 18:21:44', 6, 3),
(13, 4, '<b>Menela Pre</b> a aimé votre publication du 2 février 2022', NULL, '2022-02-04 18:21:55', '2022-02-04 18:21:55', 5, 3),
(14, 4, '<b>Menela Pre</b> a commenté votre publication du 2 février 2022', NULL, '2022-02-04 18:22:14', '2022-02-04 18:22:14', 5, 3),
(17, 4, '<b>Tchess Preza</b> a aimé votre publication du 2 février 2022', NULL, '2022-02-08 17:07:10', '2022-02-08 17:07:10', 5, 2),
(18, 6, '<b>Tchess Preza</b> a aimé votre publication du 5 février 2022', NULL, '2022-02-08 17:12:40', '2022-02-08 17:12:40', 7, 2),
(19, 6, '<b>Tchess Preza</b> a aimé votre publication du 5 février 2022', NULL, '2022-02-08 17:12:52', '2022-02-08 17:12:52', 7, 2),
(20, 4, '<b>Tchess Preza</b> a aimé votre publication du 2 février 2022', NULL, '2022-02-11 08:46:39', '2022-02-11 08:46:39', 5, 2),
(21, 6, '<b>Tchess Preza</b> a aimé votre publication du 5 février 2022', NULL, '2022-02-12 10:36:31', '2022-02-12 10:36:31', 7, 2),
(23, 3, '<b>Tchess1 Preza</b> a aimé votre publication du 2 février 2022', NULL, '2022-03-17 15:09:21', '2022-03-17 15:09:21', 4, 2),
(24, 6, '<b>Tchess Preza</b> a commenté votre publication du 5 février 2022', NULL, '2022-03-22 09:50:31', '2022-03-22 09:50:31', 7, 2),
(25, 3, '<b>Tchess Preza</b> a commenté votre publication du 2 février 2022', NULL, '2022-03-22 09:51:32', '2022-03-22 09:51:32', 4, 2),
(30, 6, '<b>Menela Pre</b> a aimé votre publication du 5 février 2022', NULL, '2022-03-22 11:27:40', '2022-03-22 11:27:40', 7, 3),
(37, 6, '<b>Tissiame Pre</b> a aimé votre publication du 5 février 2022', NULL, '2022-03-22 16:05:20', '2022-03-22 16:05:20', 7, 4),
(38, 11, '<b>Menela Pre</b> a aimé votre publication du 22 mars 2022', NULL, '2022-03-22 16:11:53', '2022-03-22 16:11:53', 15, 3),
(40, 4, '<b>Tchess Preza</b> a aimé votre publication du 3 février 2022', NULL, '2022-03-23 10:31:21', '2022-03-23 10:31:21', 6, 2),
(41, 13, '<b>Menela Pre</b> a aimé votre publication du 23 mars 2022', NULL, '2022-03-23 11:24:00', '2022-03-23 11:24:00', 16, 3),
(42, 13, '<b>Menela Pre</b> a commenté votre publication du 23 mars 2022', NULL, '2022-03-23 11:24:20', '2022-03-23 11:24:20', 16, 3),
(43, 13, '<b>Menela Pre</b> a aimé votre publication du 23 mars 2022', NULL, '2022-03-23 11:24:34', '2022-03-23 11:24:34', 16, 3),
(44, 13, '<b>Menela Pre</b> a aimé votre publication du 23 mars 2022', NULL, '2022-03-23 11:24:41', '2022-03-23 11:24:41', 16, 3),
(45, 3, '<b>Tchess Preza</b> a aimé votre publication du 23 mars 2022', NULL, '2022-03-23 13:56:02', '2022-03-23 13:56:02', 17, 2),
(46, 14, '<b>Groupo1 Mania</b> a aimé votre publication du 23 mars 2022', NULL, '2022-03-23 15:12:16', '2022-03-23 15:12:16', 18, 15),
(47, 14, '<b>Groupo1 Mania</b> a commenté votre publication du 23 mars 2022', NULL, '2022-03-23 15:12:31', '2022-03-23 15:12:31', 18, 15),
(48, 3, '<b>Groupo1 Mania</b> a aimé votre publication du 23 mars 2022', NULL, '2022-03-23 15:12:56', '2022-03-23 15:12:56', 17, 15),
(49, 3, '<b>Groupo1 Mania</b> a commenté votre publication du 23 mars 2022', NULL, '2022-03-23 15:13:03', '2022-03-23 15:13:03', 17, 15),
(50, 2, '<b>tchess pre</b> a aimé votre publication du 23 mars 2022', NULL, '2022-10-10 13:02:42', '2022-10-10 13:02:42', 22, 16),
(51, 2, '<b>tchess pre</b> a commenté votre publication du 23 mars 2022', NULL, '2022-10-10 13:02:48', '2022-10-10 13:02:48', 22, 16),
(52, 2, '<b>tchess pre</b> a commenté votre publication du 23 mars 2022', NULL, '2022-10-10 13:03:00', '2022-10-10 13:03:00', 22, 16),
(53, 2, '<b>tchess pre</b> a aimé votre publication du 23 mars 2022', NULL, '2022-10-10 13:03:07', '2022-10-10 13:03:07', 21, 16),
(54, 2, '<b>tchess pre</b> a aimé votre publication du 23 mars 2022', NULL, '2022-10-10 13:03:11', '2022-10-10 13:03:11', 20, 16),
(55, 4, '<b>tchess pre</b> a aimé votre publication du 2 février 2022', NULL, '2022-10-10 13:03:36', '2022-10-10 13:03:36', 5, 16),
(56, 4, '<b>tchess pre</b> a commenté votre publication du 2 février 2022', NULL, '2022-10-10 13:04:23', '2022-10-10 13:04:23', 5, 16);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `likesCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `userId`, `content`, `imageUrl`, `createdAt`, `updatedAt`, `likesCount`) VALUES
(3, 2, 'Mon premier test!!!', 'http://localhost:3000/public/image-20170131-13243-1ufs11g.jpg1643716162804.jpg', '2022-02-01 11:49:22', '2022-02-05 13:54:56', 3),
(4, 3, 'L\'amour en vrai!!!', 'http://localhost:3000/public/animauxavecpetits4.jpg1643804908524.jpg', '2022-02-02 12:00:57', '2022-03-17 15:09:21', 3),
(5, 4, 'Roblox\n', 'http://localhost:3000/public/RobloxScreenShot20201212_151007838.png1643817061800.png', '2022-02-02 15:51:01', '2022-10-10 13:03:36', 4),
(6, 4, 'Salut tout le monde!', NULL, '2022-02-03 08:34:10', '2022-03-23 10:31:21', 3),
(8, 2, 'les doigts de Dieu', 'http://localhost:3000/public/guitar-g31108b5e0_640.jpg1646134749334.jpg', '2022-02-08 17:13:11', '2022-03-22 16:05:17', 4),
(12, 2, 'c\'est beau!!!!!', 'http://localhost:3000/public/byrdyak181100070.jpg1647942578525.jpg', '2022-03-22 09:48:48', '2022-03-22 16:05:15', 4),
(13, 2, 'Je suis là!!\n', 'http://localhost:3000/public/bingiart200300033.jpg1647949034236.jpg', '2022-03-22 11:36:19', '2022-03-22 16:04:22', 3),
(14, 2, 'Le Dj red !!!', 'http://localhost:3000/public/musician-g06415acd4_640.jpg1647961007285.jpg', '2022-03-22 14:56:06', '2022-03-22 16:12:22', 3),
(15, 11, 'Hello!', 'http://localhost:3000/public/vladsogodel150900013.jpg1647965436599.jpg', '2022-03-22 16:10:36', '2022-03-22 16:11:53', 2),
(16, 13, 'Bisous!!!!!!', 'http://localhost:3000/public/2647863881755.jpg1648031339355.jpg', '2022-03-23 10:28:26', '2022-03-23 11:24:41', 2),
(17, 3, 'Hello!!!!', 'http://localhost:3000/public/pexels-alex-757239.jpg1648034633186.jpg', '2022-03-23 11:23:36', '2022-03-23 15:12:56', 3),
(18, 14, 'Mon hero!!!!!!', 'http://localhost:3000/public/reamonn190300032.jpg1648044701474.jpg', '2022-03-23 14:11:41', '2022-03-23 15:12:16', 2),
(20, 2, 'Guitar\n', 'http://localhost:3000/public/guitar-g31108b5e0_640.jpg1648049301990.jpg', '2022-03-23 15:28:21', '2022-10-10 13:03:11', 1),
(21, 2, 'ztzz', 'http://localhost:3000/public/image-20170131-13243-1ufs11g.jpg1648050159891.jpg', '2022-03-23 15:42:39', '2022-10-10 13:03:07', 1),
(22, 2, '', 'http://localhost:3000/public/bingiart200300033.jpg1648050261288.jpg', '2022-03-23 15:44:21', '2022-10-10 13:02:42', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20220119171754-create-user.js'),
('20220119172405-create-post.js'),
('20220119173548-create-likes.js'),
('20220119174034-create-notification.js'),
('20220119174538-create-comments.js'),
('20220201101427-add-unique-constraint-on-email.js'),
('20220201101612-change-postId-datatypes.js'),
('20220201101725-modify-likes-add-likesCount.js'),
('20220201101819-add-postId-to-notification.js'),
('20220201101949-alter-table-notifications.js'),
('20220201102122-modify-user-add-deleted.js'),
('20220201102237-modify-user-add-admin.js');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `imageUrl`, `createdAt`, `updatedAt`, `deleted`, `admin`) VALUES
(1, 'John', 'Doe', 'example@example.com', NULL, NULL, '2022-02-01 11:34:21', '2022-02-01 11:34:21', 0, 0),
(2, 'Tchess', 'Preza', 'tchesspreza@yahoo.fr', '$2b$10$N9BiDf0Rao7JXaNElfcZtumO3fdUzY0ojI8B/9LPU3lSCJ7Oc/28u', 'http://localhost:3000/public/bingiart200300033.jpg1647960921786.jpg', '2022-02-01 11:36:09', '2022-03-22 15:34:45', 0, 1),
(3, 'Menela', 'Pre', 'menelavi@yahoo.fr', '$2b$10$UTUSymRMNRS.Zd/w8p6zQOj3LEVS025XnJWqRKTKa62wU1JFj3bAO', 'http://localhost:3000/public/2647863881755.jpg1648034582810.jpg', '2022-02-01 13:24:48', '2022-03-23 11:23:11', 0, 0),
(4, 'Tissiame', 'Pre', 'tissiame@yahoo.fr', '$2b$10$HQRELyhqUjcaPnefA5zoKe/X1H5djttNeDIOFF.zU6s2GFlAKNsyu', 'http://localhost:3000/public/2647863881755.jpg1643816935630.jpg', '2022-02-02 15:48:34', '2022-02-02 15:48:55', 0, 0),
(6, 'Emy', 'Flores', 'Emy@gmail.fr', '$2b$10$MBSUJobPsCDWhla1w/L0O.pjSyqYodC8fGP5RwlqrBFSYQJkM7s5G', 'http://localhost:3000/public/musician-g06415acd4_640.jpg1643999084930.jpg', '2022-02-04 18:24:09', '2022-02-04 18:24:44', 0, 0),
(7, 'Utilisateur', 'Supprimé', 'deleted-user7@groupamania.com', '$2b$10$3/FH5pOEIg.J0ELEdg1ZoeXiWH2bfEbHecYrs2zRP5PGOf8MBa1MG', NULL, '2022-02-11 09:53:37', '2022-02-11 09:59:40', 1, 0),
(8, 'Test', 'Test', 'test@yahoo.fr', '$2b$10$dTOk8Anf2Rhv6/F3hl4D/.iF6F1l6Ea6YC2uEucf3a4Wq1ikjmM3e', NULL, '2022-02-12 14:18:44', '2022-02-12 14:18:44', 0, 0),
(9, 'Tis', 'Pre', 'tissiame2@yahoo.fr', '$2b$10$/OY2EYTNOSRi/grcBEgv/.PLGKS.3q4GlFboXU7nrLpaCK3JfxQbi', NULL, '2022-02-12 14:19:48', '2022-02-12 14:19:48', 0, 0),
(10, 'Test', 'Pre', 'test@test.fr', '$2b$10$WQBtkm3q/XaxtbSyMF0nLuPrtpSSRgcQ7bkzwHtNtCjaBeEt0lbt.', NULL, '2022-02-12 14:23:36', '2022-02-12 14:23:36', 0, 0),
(11, 'Utilisateur', 'Supprimé', 'deleted-user11@groupamania.com', '$2b$10$KR.LJX89JH0E7dKCi2gyneWX2EWH3ZztQtsWcVuPlcy2TbCjMNU9W', NULL, '2022-03-17 15:24:17', '2022-03-22 16:11:05', 1, 0),
(12, 'test3', 'test3', 'test3@test.fr', '$2b$10$dvkY0U1b/Xy1h7/uNs8tMez8dpmEg42g.zKrG2FT6l96L7CRSpbXy', 'http://localhost:3000/public/collins93190100030.jpg1647942879152.jpg', '2022-03-22 09:54:06', '2022-03-22 09:54:39', 0, 0),
(13, 'Utilisateur', 'Supprimé', 'deleted-user13@groupamania.com', '$2b$10$B4HT/C2ptsBN1tzUM55Nt.nMC/hi7gWyHPyfscnIfPeL4/h9xOQXy', NULL, '2022-03-23 10:26:04', '2022-03-23 15:16:06', 1, 0),
(14, 'Test5', 'test', 'test5@test.fr', '$2b$10$QTouCBB39tNBylvC5xVx3OOcSaLXRgboaEWP4cuHBTT.lIr7amTVu', 'http://localhost:3000/public/rebius190100015.jpg1648044639182.jpg', '2022-03-23 14:09:32', '2022-03-23 14:10:39', 0, 0),
(15, 'Groupo1', 'Mania', 'exemple@test.fr', '$2b$10$oKz9ev/rWVqbbs2MU0hNRObZy5UJaPM/wMDznpVzYS7Nk8R/hN/tq', 'http://localhost:3000/public/vladsogodel150900013.jpg1648048241349.jpg', '2022-03-23 15:09:51', '2022-03-23 15:10:59', 0, 0),
(16, 'tchess', 'pre', 'test@test.fra', '$2b$10$ukExUM72N3mj0EZkWv2WtuOkp8SRKIChFE6V1GDfauCMBP5Co.gNi', NULL, '2022-10-10 13:01:11', '2022-10-10 13:01:11', 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likes_post_id_user_id` (`postId`,`userId`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
