-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 30 déc. 2023 à 09:08
-- Version du serveur : 10.4.8-MariaDB
-- Version de PHP : 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `commande`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `tel` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `motpass` varchar(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `idpizza` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `datecmd` datetime NOT NULL,
  `qtecmd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pizza`
--

CREATE TABLE `pizza` (
  `idpizza` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `nompizza` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `prix` decimal(6,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `pizza`
--

INSERT INTO `pizza` (`idpizza`, `nompizza`, `details`, `prix`) VALUES
('fmr', 'fruits de mer', 'tomate, mozzarella , fruits de mer ', '18.500'),
('mgh', 'Margherita ', 'Tomate, Mozzarella, Basilic ', '8.000'),
('nap', 'Napolitaine ', 'Tomate, Mozzarella, Thon, Anchois ', '12.000'),
('nep', 'neptune', 'Tomate, Mozzarella, Thon ', '10.500'),
('roy', 'royale', 'Tomate, Mozzarella, Jambon, Champignon', '14.500');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`tel`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`datecmd`,`tel`,`idpizza`),
  ADD KEY `idpizza` (`idpizza`),
  ADD KEY `tel` (`tel`);

--
-- Index pour la table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`idpizza`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `idpizza` FOREIGN KEY (`idpizza`) REFERENCES `pizza` (`idpizza`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tel` FOREIGN KEY (`tel`) REFERENCES `client` (`tel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
