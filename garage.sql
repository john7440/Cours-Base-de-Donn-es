-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 25 nov. 2025 à 10:14
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `garage`
--

-- --------------------------------------------------------

--
-- Structure de la table `a_article`
--

DROP TABLE IF EXISTS `a_article`;
CREATE TABLE IF NOT EXISTS `a_article` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `a_reference` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_designation` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_marque` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_quantite` smallint DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `a_article`
--

INSERT INTO `a_article` (`a_id`, `a_reference`, `a_designation`, `a_marque`, `a_quantite`) VALUES
(1, '1234567', 'filtre a air', 'VALEO', 10),
(2, '1235247', 'filtre habitacle', 'VALEO', 15),
(3, '1268567', 'filtre a huile', 'VALEO', 57),
(4, '1356567', 'pneu', 'MICHELIN', 32),
(5, '1574167', 'essuie glaçe', 'BOSCH', 98),
(6, '1256867', 'filtre a air', 'VALEO', 26);

-- --------------------------------------------------------

--
-- Structure de la table `v_voiture`
--

DROP TABLE IF EXISTS `v_voiture`;
CREATE TABLE IF NOT EXISTS `v_voiture` (
  `v_id` int NOT NULL AUTO_INCREMENT,
  `v_marque` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_energie` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_fk_id_article` int NOT NULL,
  PRIMARY KEY (`v_id`),
  KEY `foreign_article` (`v_fk_id_article`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `v_voiture`
--

INSERT INTO `v_voiture` (`v_id`, `v_marque`, `v_type`, `v_energie`, `v_fk_id_article`) VALUES
(6, 'FIAT', '500', 'Electrique', 1),
(7, 'CITROEN', 'C5', 'Essence', 2),
(8, 'RENAULT', 'Clio', 'Diesel', 3),
(9, 'RENAULT', 'Laguna', 'Diesel', 4),
(10, 'AUDI', 'A3', 'Essence', 5);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `v_voiture`
--
ALTER TABLE `v_voiture`
  ADD CONSTRAINT `foreign_article` FOREIGN KEY (`v_fk_id_article`) REFERENCES `a_article` (`a_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
