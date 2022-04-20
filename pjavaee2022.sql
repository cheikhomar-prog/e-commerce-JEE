-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 10 mars 2022 à 19:17
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pjavaee2022`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(9, 'Jeux videos'),
(10, 'Cuisine'),
(11, 'Alimentation'),
(12, 'Equipement'),
(13, 'Jouet'),
(14, 'Electronique');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `listProduit` varchar(255) NOT NULL,
  `montant` float NOT NULL,
  `client` varchar(50) NOT NULL,
  `livreur` varchar(50) NOT NULL,
  `enCours` tinyint(1) NOT NULL,
  `livrer` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `listProduit`, `montant`, `client`, `livreur`, `enCours`, `livrer`) VALUES
(9, 'Poele Alliage  X1; Poele Alimunium - Alu Congo X2; PCD - Pate d\'arachide Bio - 500g X2; ', 4650, 'Cephass', 'Aucun', 0, 0),
(10, 'Chocola Mambo X2; stylet Scneider - Mark 0336 X1; ', 20300, 'Cephass', 'Aucun', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `categorie`, `image`, `prix`, `quantite`) VALUES
(11, 'Dualshock 3', 'Jeux videos', '3max.jpg', 50000, 250),
(12, 'Joycon Nintendo Switch', 'Jeux videos', '5afb3e90253f195eb09e9b6ee193520a.jpg', 80000, 70),
(13, 'Assiete verres', 'Cuisine', '6pcs-assiettes-a-dessert-16.jpg', 500, 150),
(14, 'Stick Arcade Razer', 'Jeux videos', '61xlui-v-el--sl1500--1024x641.jpg', 150000, 30),
(15, 'Haricot Conserve', 'Alimentation', '81nrddjdetl._sl1500__-2_mini.jpg', 350, 200),
(16, 'Stick Arcade Hori', 'Jeux videos', '81uc3xsnxxl--sl1500--1024x624.jpg', 200000, 40),
(17, 'Chocola Mambo', 'Alimentation', '0017170_chocolat-au-lait-mambo-25g-x-20.jpeg', 150, 998),
(18, 'Tuyau PHR', 'Equipement', '81585C9FEgL._AC_SX425_.jpg', 1000, 40),
(19, 'Dakaroise(Pate d\'arachide)', 'Alimentation', '20200430_115635.jpg', 450, 120),
(20, 'stylet Scneider - Mark 0336', 'Electronique', 'AIG3303547.jpg', 20000, 129),
(21, 'Boite Jadida 250g', 'Alimentation', 'beurre-jadida-5.jpg', 1000, 100),
(22, 'Petit Beurre', 'Alimentation', 'biscuit-lu-petit-refermable.jpg', 750, 1500),
(23, 'Calculatrice Scientifique Casino 5507', 'Electronique', 'calculatrice-en-c.jpg', 1500, 180),
(24, 'Calculatrice Programmable Casino 2203', 'Electronique', 'd8bb9be1472872e4548c80fe7221ee30.jpg', 60000, 50),
(25, 'Figurine Itachi COLLECTOR', 'Jouet', 'figurine-pvc-.jpg', 500000, 1),
(26, 'Cable android', 'Electronique', 'HLB1hwh9Xvc3T1VjSZLe762ZsVXag.png', 1000, 192),
(27, 'Boite Haricot Auchan', 'Alimentation', 'index.jpeg', 1000, 289),
(28, 'Pressea Pomme', 'Alimentation', 'jus-de-fruit-pressea-pomme-1l.jpg', 850, 230),
(29, 'Pressea Nectar', 'Alimentation', 'Nectar.png', 850, 200),
(30, 'PCD - Pate d\'arachide Bio - 500g', 'Alimentation', 'pate-d-arachide-pcd-500g.jpg', 750, 46),
(31, 'Poele Alimunium - Alu Congo', 'Cuisine', 'poele_debuyer_mineral_1.jpg', 825, 1),
(32, 'Poele Alliage ', 'Cuisine', 'poele-anti-adhesive-affinity.jpg', 1500, 45),
(33, 'Veste Bordeau', 'Vetement', 'veste-de-costume-veste-homme-a-col-etroit-veste-de.jpg', 150000, 20);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `username` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `profil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `username`, `adresse`, `telephone`, `profil`) VALUES
(55, 'admin@example.com', 'admin', 'Admin', 'null', 'null', 'ADM'),
(56, 'sora@gmail.com', '0000', 'Sora', 'Ouakam', '78 437 86 56', 'GST'),
(57, 'benAdi@gmail.com', '0000', 'Cephass', 'Ouakam', '78 437 86 56', 'CLT'),
(63, 'riku@gmail.com', '0000', 'Riku', 'Ile du Destion', '78 344 22 19', 'LVR'),
(65, 'beeni@gmail.com', '0000', 'Goro Sensei', 'Lib3', '782243356', 'GST');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
