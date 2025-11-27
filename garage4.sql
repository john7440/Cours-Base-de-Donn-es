-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 27 nov. 2025 à 14:48
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
-- Base de données : `garage2`
--

-- --------------------------------------------------------

--
-- Structure de la table `g_article`
--

DROP TABLE IF EXISTS `g_article`;
CREATE TABLE IF NOT EXISTS `g_article` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `a_designation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_marque` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_quantite` int DEFAULT NULL,
  `a_prix` decimal(10,2) DEFAULT NULL,
  `a_ref` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_id_categorie` int NOT NULL,
  PRIMARY KEY (`a_id`),
  KEY `a_id_categorie` (`a_id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_article`
--

INSERT INTO `g_article` (`a_id`, `a_designation`, `a_marque`, `a_quantite`, `a_prix`, `a_ref`, `a_id_categorie`) VALUES
(1, 'Plaquettes de frein avant', 'Bosch', 50, 45.99, 'BOS-PF-001', 0),
(2, 'Disque de frein avant', 'Brembo', 30, 89.50, 'BRE-DF-002', 0),
(3, 'Filtre à huile', 'Mann Filter', 100, 12.50, 'MAN-FH-003', 1),
(4, 'Huile moteur 5W30 5L', 'Castrol', 80, 35.00, 'CAS-HM-004', 0),
(5, 'Batterie 12V 70Ah', 'Varta', 25, 120.00, 'VAR-BAT-005', 0),
(6, 'Pneu 205/55R16', 'Michelin', 40, 95.00, 'MIC-PN-006', 0),
(7, 'Balai d\'essuie-glace', 'Valeo', 60, 18.00, 'VAL-BEG-007', 0),
(8, 'Ampoule H7', 'Philips', 150, 8.50, 'PHI-AMP-008', 0),
(9, 'Courroie de distribution', 'Gates', 20, 65.00, 'GAT-CDI-009', 0),
(10, 'Filtre à air', 'Mahle', 70, 22.00, 'MAH-FA-010', 1),
(11, 'Filtre à air', 'MAN FILTER', 50, 22.00, 'MAN-FA-011', 1),
(12, 'Filtre à air', 'Mahle', 70, 22.00, 'MAH-FA-010', 1),
(13, 'Filtre pollen', 'BOSCH', 60, 18.50, 'BOS-FP-012', 1),
(14, 'Filtre à huile', 'MAN FILTER', 80, 15.00, 'MAN-FH-013', 1),
(15, 'Filtre à huile', 'BOSCH', 75, 16.50, 'BOS-FH-014', 1),
(16, 'Filtre à huile', 'Mann Filter', 100, 12.50, 'MAN-FH-003', 1),
(17, 'Filtre à air', 'MAN FILTER', 50, 22.00, 'MAN-FA-011', 1),
(18, 'Filtre à air', 'Mahle', 70, 22.00, 'MAH-FA-010', 1),
(19, 'Filtre à air', 'BOSCH', 65, 24.50, 'BOS-FA-015', 1),
(20, 'Filtre à air', 'Mann Filter', 55, 23.00, 'MAN-FA-016', 1),
(21, 'Filtre à air', 'Purflux', 45, 20.50, 'PUR-FA-017', 1),
(22, 'Filtre à air', 'K&N', 30, 45.00, 'KN-FA-018', 1),
(23, 'Filtre pollen', 'BOSCH', 60, 18.50, 'BOS-FP-012', 1),
(24, 'Filtre pollen', 'Mann Filter', 55, 17.00, 'MAN-FP-019', 1),
(25, 'Filtre pollen', 'Mahle', 50, 19.50, 'MAH-FP-020', 1),
(26, 'Filtre pollen', 'Valeo', 65, 21.00, 'VAL-FP-021', 1),
(27, 'Filtre pollen charbon actif', 'BOSCH', 40, 25.00, 'BOS-FPC-022', 1),
(28, 'Filtre pollen charbon actif', 'Mann Filter', 35, 24.50, 'MAN-FPC-023', 1),
(29, 'Filtre à huile', 'MAN FILTER', 80, 15.00, 'MAN-FH-013', 1),
(30, 'Filtre à huile', 'BOSCH', 75, 16.50, 'BOS-FH-014', 1),
(31, 'Filtre à huile', 'Mann Filter', 100, 12.50, 'MAN-FH-003', 1),
(32, 'Filtre à huile', 'Mahle', 90, 14.00, 'MAH-FH-024', 1),
(33, 'Filtre à huile', 'Purflux', 85, 13.50, 'PUR-FH-025', 1),
(34, 'Filtre à huile', 'Valeo', 70, 15.50, 'VAL-FH-026', 1),
(35, 'Filtre à huile', 'Fram', 60, 14.50, 'FRA-FH-027', 1),
(36, 'Filtre à carburant', 'BOSCH', 50, 28.00, 'BOS-FC-028', 1),
(37, 'Filtre à carburant', 'Mann Filter', 55, 26.50, 'MAN-FC-029', 1),
(38, 'Filtre à carburant', 'Purflux', 45, 25.00, 'PUR-FC-030', 1),
(39, 'Filtre à carburant diesel', 'Mann Filter', 40, 32.00, 'MAN-FCD-031', 1),
(40, 'Filtre à carburant diesel', 'BOSCH', 35, 35.00, 'BOS-FCD-032', 1),
(41, 'Filtre gasoil décanteur', 'Mann Filter', 30, 45.00, 'MAN-FGD-033', 1),
(42, 'Filtre gasoil décanteur', 'Purflux', 25, 42.00, 'PUR-FGD-034', 1);

-- --------------------------------------------------------

--
-- Structure de la table `g_avoir`
--

DROP TABLE IF EXISTS `g_avoir`;
CREATE TABLE IF NOT EXISTS `g_avoir` (
  `a_id` int NOT NULL,
  `ord_id` int NOT NULL,
  `av_quantite` int DEFAULT NULL,
  PRIMARY KEY (`a_id`,`ord_id`),
  KEY `ord_id` (`ord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_avoir`
--

INSERT INTO `g_avoir` (`a_id`, `ord_id`, `av_quantite`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 6, 1),
(2, 2, 2),
(3, 3, 1),
(3, 4, 1),
(3, 6, 1),
(3, 8, 1),
(3, 10, 1),
(4, 3, 1),
(4, 4, 1),
(4, 6, 1),
(4, 8, 1),
(4, 10, 1),
(5, 4, 1),
(6, 5, 4),
(7, 1, 2),
(7, 6, 2),
(7, 7, 2),
(8, 6, 2),
(8, 9, 4),
(9, 8, 1),
(10, 4, 1),
(10, 6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `g_categorie`
--

DROP TABLE IF EXISTS `g_categorie`;
CREATE TABLE IF NOT EXISTS `g_categorie` (
  `id_ca` int NOT NULL AUTO_INCREMENT,
  `ca_libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_ca`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_categorie`
--

INSERT INTO `g_categorie` (`id_ca`, `ca_libelle`) VALUES
(1, 'Filtres'),
(2, 'Essuies_Glaces');

-- --------------------------------------------------------

--
-- Structure de la table `g_client`
--

DROP TABLE IF EXISTS `g_client`;
CREATE TABLE IF NOT EXISTS `g_client` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_adresse` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_client`
--

INSERT INTO `g_client` (`c_id`, `c_nom`, `c_adresse`) VALUES
(1, 'Dupont Jean', '15 rue de la Paix, 75001 Paris'),
(2, 'Martin Sophie', '8 avenue des Champs, 69001 Lyon'),
(3, 'Bernard Pierre', '22 boulevard Victor Hugo, 13001 Marseille'),
(4, 'Dubois Marie', '45 rue du Commerce, 33000 Bordeaux'),
(5, 'Lefebvre Paul', '12 place de la République, 59000 Lille'),
(6, 'Moreau Julie', '30 rue Nationale, 37000 Tours'),
(7, 'Simon Thomas', '7 cours Lafayette, 83000 Toulon'),
(8, 'Laurent Claire', '18 avenue Foch, 54000 Nancy'),
(9, 'Petit Nicolas', '25 rue Gambetta, 14000 Caen'),
(10, 'Roux Isabelle', '9 boulevard Pasteur, 44000 Nantes');

-- --------------------------------------------------------

--
-- Structure de la table `g_facture`
--

DROP TABLE IF EXISTS `g_facture`;
CREATE TABLE IF NOT EXISTS `g_facture` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `f_date` date DEFAULT NULL,
  `f_fk_id_client` int NOT NULL,
  PRIMARY KEY (`f_id`),
  KEY `f_fk_id_client` (`f_fk_id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_facture`
--

INSERT INTO `g_facture` (`f_id`, `f_date`, `f_fk_id_client`) VALUES
(1, '2025-11-01', 1),
(2, '2025-11-05', 2),
(3, '2025-11-10', 3),
(4, '2025-11-12', 4),
(5, '2025-11-15', 5),
(6, '2025-11-18', 6),
(7, '2025-11-20', 7),
(8, '2025-11-22', 8),
(9, '2025-11-27', 1),
(10, '2025-11-24', 1),
(11, '2025-11-04', 9),
(12, '2025-11-17', 10),
(13, '2025-11-18', 1);

-- --------------------------------------------------------

--
-- Structure de la table `g_ordre`
--

DROP TABLE IF EXISTS `g_ordre`;
CREATE TABLE IF NOT EXISTS `g_ordre` (
  `ord_id` int NOT NULL AUTO_INCREMENT,
  `ord_heure` decimal(5,2) DEFAULT NULL,
  `ord_taux_horaire` decimal(10,2) DEFAULT NULL,
  `ord_prix` decimal(10,2) DEFAULT NULL,
  `ord_date` date DEFAULT NULL,
  `ord_fk_id_client` int NOT NULL,
  `ord_fk_id_facture` int DEFAULT NULL,
  PRIMARY KEY (`ord_id`),
  KEY `ord_fk_id_client` (`ord_fk_id_client`),
  KEY `ord_fk_id_facture` (`ord_fk_id_facture`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_ordre`
--

INSERT INTO `g_ordre` (`ord_id`, `ord_heure`, `ord_taux_horaire`, `ord_prix`, `ord_date`, `ord_fk_id_client`, `ord_fk_id_facture`) VALUES
(1, 2.50, 50.00, 125.00, '2025-11-01', 1, 1),
(2, 3.00, 50.00, 150.00, '2025-11-05', 2, 2),
(3, 1.50, 50.00, 75.00, '2025-11-10', 3, 3),
(4, 4.00, 50.00, 200.00, '2025-11-12', 4, 4),
(5, 2.00, 50.00, 100.00, '2025-11-15', 5, 5),
(6, 5.00, 50.00, 250.00, '2025-11-18', 6, 6),
(7, 1.00, 50.00, 50.00, '2025-11-20', 7, 7),
(8, 3.50, 50.00, 175.00, '2025-11-22', 8, 8),
(9, 2.00, 50.00, 100.00, '2025-11-25', 9, 11),
(10, 1.50, 50.00, 75.00, '2025-11-26', 10, 12),
(11, 5.00, 50.00, 250.00, '2025-11-18', 6, 6),
(12, 5.00, 50.00, 250.00, '2025-11-18', 6, 6),
(13, 5.00, 50.00, 250.00, '2025-11-18', 6, 6),
(14, 2.00, 50.00, 100.00, '2025-11-24', 1, 9),
(15, 8.00, 50.00, 400.00, '2025-11-10', 1, 10),
(17, 2.00, 50.00, 100.00, '2025-11-24', 1, 13);

-- --------------------------------------------------------

--
-- Structure de la table `g_voiture`
--

DROP TABLE IF EXISTS `g_voiture`;
CREATE TABLE IF NOT EXISTS `g_voiture` (
  `v_id` int NOT NULL AUTO_INCREMENT,
  `v_marque` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_modele` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_plaque` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_fk_id_client` int NOT NULL,
  PRIMARY KEY (`v_id`),
  KEY `v_fk_id_client` (`v_fk_id_client`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_voiture`
--

INSERT INTO `g_voiture` (`v_id`, `v_marque`, `v_modele`, `v_plaque`, `v_fk_id_client`) VALUES
(1, 'Renault', 'Clio V', 'AB-123-CD', 1),
(2, 'Peugeot', '308', 'EF-456-GH', 2),
(3, 'Citroën', 'C4', 'IJ-789-KL', 3),
(4, 'Volkswagen', 'Golf 8', 'MN-012-OP', 4),
(5, 'Toyota', 'Yaris', 'QR-345-ST', 5),
(6, 'BMW', 'Serie 3', 'UV-678-WX', 6),
(7, 'Audi', 'A4', 'YZ-901-AB', 7),
(8, 'Mercedes', 'Classe A', 'CD-234-EF', 8),
(9, 'Ford', 'Focus', 'GH-567-IJ', 9),
(10, 'Opel', 'Astra', 'KL-890-MN', 10),
(15, 'Renault', 'Megane', 'AB-754-ZN', 1);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `test_confiture`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `test_confiture`;
CREATE TABLE IF NOT EXISTS `test_confiture` (
`Désignation` varchar(50)
,`Quantité` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_facture_detail_articles`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `v_facture_detail_articles`;
CREATE TABLE IF NOT EXISTS `v_facture_detail_articles` (
`N° Facture` int
,`Date` date
,`Client` varchar(50)
,`Véhicule` varchar(50)
,`Heures` decimal(5,2)
,`Main d'œuvre` decimal(10,2)
,`Article` varchar(50)
,`Marque` varchar(50)
,`Qté` int
,`Prix unitaire` decimal(10,2)
,`Prix total article` decimal(20,2)
,`Total OR` decimal(21,2)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_facture_detail_articles_test`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `v_facture_detail_articles_test`;
CREATE TABLE IF NOT EXISTS `v_facture_detail_articles_test` (
`N° Facture` int
,`Date` date
,`Client` varchar(50)
,`Véhicule` varchar(50)
,`Heures` decimal(5,2)
,`Main d'œuvre` decimal(10,2)
,`Article` varchar(50)
,`Marque` varchar(50)
,`Qté` int
,`Prix unitaire` decimal(10,2)
,`Prix total article` decimal(20,2)
,`Prix Total` decimal(21,2)
);

-- --------------------------------------------------------

--
-- Structure de la vue `test_confiture`
--
DROP TABLE IF EXISTS `test_confiture`;

DROP VIEW IF EXISTS `test_confiture`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test_confiture`  AS SELECT `g_article`.`a_designation` AS `Désignation`, sum(`g_article`.`a_quantite`) AS `Quantité` FROM `g_article` WHERE (`g_article`.`a_designation` like '%Filtre%') GROUP BY `g_article`.`a_designation` ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_facture_detail_articles`
--
DROP TABLE IF EXISTS `v_facture_detail_articles`;

DROP VIEW IF EXISTS `v_facture_detail_articles`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_facture_detail_articles`  AS SELECT `f`.`f_id` AS `N° Facture`, `f`.`f_date` AS `Date`, `c`.`c_nom` AS `Client`, `v`.`v_marque` AS `Véhicule`, `o`.`ord_heure` AS `Heures`, `o`.`ord_prix` AS `Main d'œuvre`, `a`.`a_designation` AS `Article`, `a`.`a_marque` AS `Marque`, `av`.`av_quantite` AS `Qté`, `a`.`a_prix` AS `Prix unitaire`, (`av`.`av_quantite` * `a`.`a_prix`) AS `Prix total article`, ((`av`.`av_quantite` * `a`.`a_prix`) + `o`.`ord_prix`) AS `Total OR` FROM (((((`g_facture` `f` join `g_ordre` `o` on((`f`.`f_id` = `o`.`ord_fk_id_facture`))) join `g_client` `c` on((`f`.`f_fk_id_client` = `c`.`c_id`))) left join `g_voiture` `v` on((`c`.`c_id` = `v`.`v_fk_id_client`))) left join `g_avoir` `av` on((`o`.`ord_id` = `av`.`ord_id`))) left join `g_article` `a` on((`av`.`a_id` = `a`.`a_id`))) GROUP BY `o`.`ord_id` ORDER BY `f`.`f_id` ASC, `a`.`a_designation` ASC ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_facture_detail_articles_test`
--
DROP TABLE IF EXISTS `v_facture_detail_articles_test`;

DROP VIEW IF EXISTS `v_facture_detail_articles_test`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_facture_detail_articles_test`  AS SELECT `f`.`f_id` AS `N° Facture`, `f`.`f_date` AS `Date`, `c`.`c_nom` AS `Client`, `v`.`v_marque` AS `Véhicule`, `o`.`ord_heure` AS `Heures`, `o`.`ord_prix` AS `Main d'œuvre`, `a`.`a_designation` AS `Article`, `a`.`a_marque` AS `Marque`, `av`.`av_quantite` AS `Qté`, `a`.`a_prix` AS `Prix unitaire`, (`av`.`av_quantite` * `a`.`a_prix`) AS `Prix total article`, ((`av`.`av_quantite` * `a`.`a_prix`) + `o`.`ord_prix`) AS `Prix Total` FROM (((((`g_facture` `f` join `g_ordre` `o` on((`f`.`f_id` = `o`.`ord_fk_id_facture`))) join `g_client` `c` on((`f`.`f_fk_id_client` = `c`.`c_id`))) left join `g_voiture` `v` on((`c`.`c_id` = `v`.`v_fk_id_client`))) left join `g_avoir` `av` on((`o`.`ord_id` = `av`.`ord_id`))) left join `g_article` `a` on((`av`.`a_id` = `a`.`a_id`))) ORDER BY `f`.`f_id` ASC, `a`.`a_designation` ASC ;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `g_avoir`
--
ALTER TABLE `g_avoir`
  ADD CONSTRAINT `g_avoir_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `g_article` (`a_id`),
  ADD CONSTRAINT `g_avoir_ibfk_2` FOREIGN KEY (`ord_id`) REFERENCES `g_ordre` (`ord_id`);

--
-- Contraintes pour la table `g_facture`
--
ALTER TABLE `g_facture`
  ADD CONSTRAINT `g_facture_ibfk_1` FOREIGN KEY (`f_fk_id_client`) REFERENCES `g_client` (`c_id`);

--
-- Contraintes pour la table `g_ordre`
--
ALTER TABLE `g_ordre`
  ADD CONSTRAINT `g_ordre_ibfk_1` FOREIGN KEY (`ord_fk_id_client`) REFERENCES `g_client` (`c_id`),
  ADD CONSTRAINT `g_ordre_ibfk_2` FOREIGN KEY (`ord_fk_id_facture`) REFERENCES `g_facture` (`f_id`);

--
-- Contraintes pour la table `g_voiture`
--
ALTER TABLE `g_voiture`
  ADD CONSTRAINT `g_voiture_ibfk_1` FOREIGN KEY (`v_fk_id_client`) REFERENCES `g_client` (`c_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
