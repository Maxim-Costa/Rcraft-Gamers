-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 16 juin 2017 à 17:02
-- Version du serveur :  10.1.22-MariaDB
-- Version de PHP :  7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `scopains`
--

-- --------------------------------------------------------

--
-- Structure de la table `mxm_articles`
--

CREATE TABLE `mxm_articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_time_publication` datetime NOT NULL,
  `id_auteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mxm_articles`
--

INSERT INTO `mxm_articles` (`id`, `titre`, `contenu`, `date_time_publication`, `id_auteur`) VALUES
(16, 'maxim', 'test test test', '2016-11-05 22:46:05', 1),
(17, 'discution', 'salut sofia ', '2016-11-06 09:04:38', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mxm_commentaires`
--

CREATE TABLE `mxm_commentaires` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `commentaire` text NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mxm_commentaires`
--

INSERT INTO `mxm_commentaires` (`id`, `pseudo`, `commentaire`, `id_article`) VALUES
(29, 'sofia', 'xcwfdgzrxj  jjhhhgàiegufyzjbdeyzhehrhhuuruureuruerhuerueh', 17),
(30, 'admin', 'file:///home/maxim/Bureau/chi-the-evel-twin.png\r\n', 17),
(31, 'admin', 'file:///home/maxim/Bureau/chi-the-evel-twin.png\r\n', 17),
(32, 'admin', 'm', 17),
(33, 'admin', 'm', 17),
(34, 'admin', 'sdf', 17),
(35, 'admin', 'sdf', 17),
(36, 'admin', 'sdf', 17),
(37, 'admin', 'sdf', 17),
(38, 'admin', 'sdf', 17),
(39, 'admin', 'sdf', 17);

-- --------------------------------------------------------

--
-- Structure de la table `mxm_dislikes`
--

CREATE TABLE `mxm_dislikes` (
  `id` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mxm_dislikes`
--

INSERT INTO `mxm_dislikes` (`id`, `id_article`, `id_membre`) VALUES
(1, 16, 5);

-- --------------------------------------------------------

--
-- Structure de la table `mxm_likes`
--

CREATE TABLE `mxm_likes` (
  `id` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mxm_likes`
--

INSERT INTO `mxm_likes` (`id`, `id_article`, `id_membre`) VALUES
(4, 14, 5),
(7, 17, 5);

-- --------------------------------------------------------

--
-- Structure de la table `mxm_membres`
--

CREATE TABLE `mxm_membres` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `motdepasse` text NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mxm_membres`
--

INSERT INTO `mxm_membres` (`id`, `pseudo`, `mail`, `motdepasse`, `avatar`, `type`) VALUES
(1, 'admin', 'mxmcosta@gmail.com', 'b7faf34d20c75735a96de1e9ba84bc86ea9cb689', '1.png', 'admin'),
(5, 'killer-craft', 'they.killer.crafteur@gmail.com', '12bb351909ab05e56eeedd990309711a4bee6570', NULL, ''),
(6, 'rcraft_gamers', 'rcraft.gamers@gmail.com', 'ca8ea5bc1b24cd5670a32eb11da503faefb8931d', '6.jpg', ''),
(8, 'xX_TgUiS_Xx', 'dj.mixesa@gmail.com', '2d588fa48200030b0ab75c4bd576078a84e959db', NULL, '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mxm_articles`
--
ALTER TABLE `mxm_articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mxm_commentaires`
--
ALTER TABLE `mxm_commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mxm_dislikes`
--
ALTER TABLE `mxm_dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mxm_likes`
--
ALTER TABLE `mxm_likes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mxm_membres`
--
ALTER TABLE `mxm_membres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mxm_articles`
--
ALTER TABLE `mxm_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `mxm_commentaires`
--
ALTER TABLE `mxm_commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT pour la table `mxm_dislikes`
--
ALTER TABLE `mxm_dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `mxm_likes`
--
ALTER TABLE `mxm_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `mxm_membres`
--
ALTER TABLE `mxm_membres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
