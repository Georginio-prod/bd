-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 21 juin 2024 à 15:03
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `last`
--

-- --------------------------------------------------------

--
-- Structure de la table `billboard`
--

DROP TABLE IF EXISTS `billboard`;
CREATE TABLE IF NOT EXISTS `billboard` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Billboard_storeId_idx` (`storeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `billboard`
--

INSERT INTO `billboard` (`id`, `storeId`, `label`, `imageUrl`, `createdAt`, `updatedAt`) VALUES
('4ff73b4b-2a3a-43d4-a7a9-87ff9dbdd3d7', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'Pc portable', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718966324/bfksrjkdtpbcapz3igp7.webp', '2024-06-21 10:39:03.547', '2024-06-21 10:39:03.547'),
('5c11d82d-0b55-4401-a0b2-ccbd880c2993', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'Poste', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718961338/npb32b1sujel3ki9kaym.jpg', '2024-06-21 09:16:11.206', '2024-06-21 09:16:11.206');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `billboardId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Category_storeId_idx` (`storeId`),
  KEY `Category_billboardId_idx` (`billboardId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `storeId`, `name`, `createdAt`, `updatedAt`, `billboardId`) VALUES
('0d142ba9-919c-4642-8206-1bcca437857d', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'Ordinateur ', '2024-06-21 10:44:17.155', '2024-06-21 10:44:17.155', '4ff73b4b-2a3a-43d4-a7a9-87ff9dbdd3d7'),
('24defefc-ca7c-4c65-b7fb-97f3307f8e75', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'MOUSE', '2024-06-21 10:21:17.449', '2024-06-21 10:21:17.449', '5c11d82d-0b55-4401-a0b2-ccbd880c2993'),
('ac8ebab1-178c-41b7-8c7d-6cc47caf2061', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'CLAVIER', '2024-06-21 10:20:39.659', '2024-06-21 10:20:39.659', '5c11d82d-0b55-4401-a0b2-ccbd880c2993'),
('7629f72d-20a4-45b4-b2a2-e883fa4513d4', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'SETUP', '2024-06-21 09:16:49.021', '2024-06-21 09:44:19.912', '5c11d82d-0b55-4401-a0b2-ccbd880c2993');

-- --------------------------------------------------------

--
-- Structure de la table `color`
--

DROP TABLE IF EXISTS `color`;
CREATE TABLE IF NOT EXISTS `color` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Color_storeId_idx` (`storeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `color`
--

INSERT INTO `color` (`id`, `storeId`, `name`, `value`, `createdAt`, `updatedAt`) VALUES
('6b60eec6-4206-45a6-917b-1ad47b5c170b', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'Berge', '#ccc', '2024-06-21 10:49:17.461', '2024-06-21 10:49:17.461'),
('45899582-d20a-4afc-ac6d-7a9787b6b61b', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'white ', '#FFF', '2024-06-21 10:26:08.732', '2024-06-21 10:26:08.732'),
('43009362-aeed-48b9-95c4-b4bc0e7aeba3', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'Black', '#000', '2024-06-21 09:46:18.629', '2024-06-21 09:46:18.629');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Image_productId_idx` (`productId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `productId`, `url`, `createdAt`, `updatedAt`) VALUES
('880c6548-0803-42ad-9157-33f35fee695a', '27d6163c-06cc-4009-9d9a-3ca55b301457', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718963445/ycbmqlbvg2tnzqtskogc.webp', '2024-06-21 09:51:18.733', '2024-06-21 09:51:18.733'),
('43890a02-cc8f-4b67-8824-bc3da7732b83', '27d6163c-06cc-4009-9d9a-3ca55b301457', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718963445/d7l1mcrcg0cudbv4wdls.webp', '2024-06-21 09:51:18.733', '2024-06-21 09:51:18.733'),
('ec040814-f336-4290-9f12-e1a701ac0801', '921f9d40-a981-4d0e-8338-429cb11c2665', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718965605/am6dhrr4s2naohgmvtpk.webp', '2024-06-21 10:27:20.304', '2024-06-21 10:27:20.304'),
('00927cd9-1917-46e5-9541-f7753b6838d7', '921f9d40-a981-4d0e-8338-429cb11c2665', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718965606/ullwvvg78cb3urnjsyae.webp', '2024-06-21 10:27:20.304', '2024-06-21 10:27:20.304'),
('9923c247-9fb4-4e31-90bc-a29113a604bf', '921f9d40-a981-4d0e-8338-429cb11c2665', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718965606/ipm7e7jazptlkcfkkh2n.webp', '2024-06-21 10:27:20.304', '2024-06-21 10:27:20.304'),
('758a0202-c9e2-4423-acd0-d1b8054cac8a', '27d6163c-06cc-4009-9d9a-3ca55b301457', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718963445/danbi30dks8tegjx3juq.webp', '2024-06-21 09:51:18.733', '2024-06-21 09:51:18.733'),
('139ae2c3-68e6-44dc-b987-5c0e10a27daa', '921f9d40-a981-4d0e-8338-429cb11c2665', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718965606/z21b83hn2lqw4j391vn1.webp', '2024-06-21 10:27:20.304', '2024-06-21 10:27:20.304'),
('80eedf64-760e-4ce8-9034-d14a815a7995', 'e9288260-f60b-457e-8dbc-e6dbd7301699', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718967077/churuyt1xwujo1gn1spm.webp', '2024-06-21 10:53:01.799', '2024-06-21 10:53:01.799'),
('2fbd0f45-1e4d-418d-8261-6cf1535dff60', 'e9288260-f60b-457e-8dbc-e6dbd7301699', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718967077/u1m5xqx7rwsl1pe0u87d.webp', '2024-06-21 10:53:01.799', '2024-06-21 10:53:01.799'),
('75655e03-93fe-4053-a8c1-1ea7564fb3bf', 'e9288260-f60b-457e-8dbc-e6dbd7301699', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718967077/vmixzgkdt8wei9osj2wi.webp', '2024-06-21 10:53:01.799', '2024-06-21 10:53:01.799'),
('542679c2-9fc0-485b-b7fd-c1790e37d6da', 'e9288260-f60b-457e-8dbc-e6dbd7301699', 'https://res.cloudinary.com/dzdh4na61/image/upload/v1718967102/ig8qkpcurippf4bycgbk.webp', '2024-06-21 10:53:01.799', '2024-06-21 10:53:01.799');

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
CREATE TABLE IF NOT EXISTS `livraison` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime(3) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Livraison_storeId_idx` (`storeId`),
  KEY `Livraison_orderId_idx` (`orderId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isPaid` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Order_storeId_idx` (`storeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id`, `storeId`, `isPaid`, `phone`, `address`, `createdAt`, `updatedAt`) VALUES
('0113115d-a882-4e47-a6f5-5369250aad2f', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 0, '', '', '2024-06-21 11:56:58.747', '2024-06-21 11:56:58.747'),
('442c9f7d-b029-4425-95cc-68dd3826c171', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 0, '', '', '2024-06-21 12:00:05.053', '2024-06-21 12:00:05.053'),
('82f4f164-00cd-4b1f-900a-4825b8d0e82c', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 0, '', '', '2024-06-21 12:02:07.376', '2024-06-21 12:02:07.376'),
('04693a26-7b1b-47bd-8dae-78a5ef7d453e', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 0, '', '', '2024-06-21 12:15:06.866', '2024-06-21 12:15:06.866'),
('0de66e5c-6885-4c90-af1b-8615fe74ebcd', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 0, '', '', '2024-06-21 13:25:22.184', '2024-06-21 13:25:22.184'),
('b917295a-ceb8-49a4-a21d-f8f8864401d8', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 0, '', '', '2024-06-21 11:35:47.400', '2024-06-21 11:35:47.400');

-- --------------------------------------------------------

--
-- Structure de la table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE IF NOT EXISTS `orderitem` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OrderItem_orderId_idx` (`orderId`),
  KEY `OrderItem_productId_idx` (`productId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orderitem`
--

INSERT INTO `orderitem` (`id`, `orderId`, `productId`) VALUES
('8417a8fe-a409-4f28-aa48-592d1f182014', '0de66e5c-6885-4c90-af1b-8615fe74ebcd', '921f9d40-a981-4d0e-8338-429cb11c2665'),
('40f1752f-88ba-459f-b258-967e56c4c2ea', '0de66e5c-6885-4c90-af1b-8615fe74ebcd', '27d6163c-06cc-4009-9d9a-3ca55b301457'),
('64485996-5baa-403b-87c2-65cae17e4247', '04693a26-7b1b-47bd-8dae-78a5ef7d453e', '921f9d40-a981-4d0e-8338-429cb11c2665'),
('9b1edc30-7311-4ba4-9abf-c3b59a3e45ae', '82f4f164-00cd-4b1f-900a-4825b8d0e82c', '921f9d40-a981-4d0e-8338-429cb11c2665'),
('b43b7ec0-685d-4a7e-a939-5f5fa43f58bb', '442c9f7d-b029-4425-95cc-68dd3826c171', '921f9d40-a981-4d0e-8338-429cb11c2665'),
('bae79368-7b34-44c0-8094-8a0103eff2ef', '0113115d-a882-4e47-a6f5-5369250aad2f', '921f9d40-a981-4d0e-8338-429cb11c2665'),
('aaa4b07d-98ea-4803-ac49-f4b16a6860c3', 'b917295a-ceb8-49a4-a21d-f8f8864401d8', '921f9d40-a981-4d0e-8338-429cb11c2665');

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

DROP TABLE IF EXISTS `paiement`;
CREATE TABLE IF NOT EXISTS `paiement` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(65,30) NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Paiement_storeId_idx` (`storeId`),
  KEY `Paiement_orderId_idx` (`orderId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(65,30) NOT NULL,
  `isArchived` tinyint(1) NOT NULL DEFAULT '0',
  `sizeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colorId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `isFeatured` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `Product_storeId_idx` (`storeId`),
  KEY `Product_categoryId_idx` (`categoryId`),
  KEY `Product_sizeId_idx` (`sizeId`),
  KEY `Product_colorId_idx` (`colorId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `storeId`, `categoryId`, `name`, `price`, `isArchived`, `sizeId`, `colorId`, `createdAt`, `updatedAt`, `isFeatured`) VALUES
('27d6163c-06cc-4009-9d9a-3ca55b301457', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', '7629f72d-20a4-45b4-b2a2-e883fa4513d4', 'Moniteur ', '79.000000000000000000000000000000', 0, '8b6946d7-977f-42e6-aaf2-84af87a0cb9b', '43009362-aeed-48b9-95c4-b4bc0e7aeba3', '2024-06-21 09:51:18.733', '2024-06-21 09:51:18.733', 1),
('e9288260-f60b-457e-8dbc-e6dbd7301699', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', '0d142ba9-919c-4642-8206-1bcca437857d', 'Mac book M2', '2000.000000000000000000000000000000', 0, '62203a19-4909-420d-857d-4e14a44e6641', '6b60eec6-4206-45a6-917b-1ad47b5c170b', '2024-06-21 10:53:01.799', '2024-06-21 10:53:01.799', 1),
('921f9d40-a981-4d0e-8338-429cb11c2665', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'ac8ebab1-178c-41b7-8c7d-6cc47caf2061', 'Clavier', '45.000000000000000000000000000000', 0, '132b7398-a14c-4010-89fa-f42f2f711a04', '45899582-d20a-4afc-ac6d-7a9787b6b61b', '2024-06-21 10:27:20.304', '2024-06-21 10:27:20.304', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reduction`
--

DROP TABLE IF EXISTS `reduction`;
CREATE TABLE IF NOT EXISTS `reduction` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(65,30) NOT NULL,
  `expiry` datetime(3) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Reduction_storeId_idx` (`storeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `size`
--

DROP TABLE IF EXISTS `size`;
CREATE TABLE IF NOT EXISTS `size` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Size_storeId_idx` (`storeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `size`
--

INSERT INTO `size` (`id`, `storeId`, `name`, `value`, `createdAt`, `updatedAt`) VALUES
('8b6946d7-977f-42e6-aaf2-84af87a0cb9b', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'Ecran ', 'Ecran 14', '2024-06-21 09:45:02.935', '2024-06-21 09:46:43.861'),
('46d4b44c-96de-437b-a258-0acdbaa3622d', '14eadd9e-4300-424f-afa3-cea1c8e3b302', 'pointure', '42', '2024-06-21 08:52:06.462', '2024-06-21 08:52:06.462'),
('132b7398-a14c-4010-89fa-f42f2f711a04', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'Clavier ', 'gamer', '2024-06-21 10:22:25.344', '2024-06-21 10:22:25.344'),
('62203a19-4909-420d-857d-4e14a44e6641', '27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'Pc portable', 'Ordinateur ', '2024-06-21 10:48:08.439', '2024-06-21 10:48:38.688');

-- --------------------------------------------------------

--
-- Structure de la table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `store`
--

INSERT INTO `store` (`id`, `name`, `userId`, `createdAt`, `updatedAt`) VALUES
('14eadd9e-4300-424f-afa3-cea1c8e3b302', 'chaussure', 'user_2gUDG8uaQoZGMfQg9D4Z6Hh9cy6', '2024-06-21 08:40:10.416', '2024-06-21 08:40:10.416'),
('27d0656b-b11f-4f67-83ea-244dec7c8ca1', 'Bureautique ', 'user_2gUDG8uaQoZGMfQg9D4Z6Hh9cy6', '2024-06-17 09:24:53.807', '2024-06-21 09:05:21.909');

-- --------------------------------------------------------

--
-- Structure de la table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
CREATE TABLE IF NOT EXISTS `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
