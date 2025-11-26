-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 26 nov. 2025 à 12:26
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
  `a_ref` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_marque` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_quantite` int NOT NULL DEFAULT '0',
  `a_prix` decimal(10,2) NOT NULL,
  PRIMARY KEY (`a_id`),
  UNIQUE KEY `a_ref` (`a_ref`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_article`
--

INSERT INTO `g_article` (`a_id`, `a_ref`, `a_type`, `a_marque`, `a_quantite`, `a_prix`) VALUES
(1, 'JANTE-18P', 'Jante', 'SportMax', 50, 150.00),
(2, 'KIT-GPS', 'Électronique', 'NavTech', 20, 350.00),
(3, 'PNEU-17H', 'Pneu', 'Michelin', 100, 120.00),
(4, 'BAT-12V', 'Batterie', 'PowerCell', 40, 95.00),
(5, 'HUILE-5W30', 'Lubrifiant', 'Total', 200, 35.00),
(6, 'FILT-AIR', 'Filtre', 'Bosch', 150, 25.00),
(7, 'FILT-HUILE', 'Filtre', 'MecaPro', 180, 18.00),
(8, 'FILT-CARB', 'Filtre', 'Valeo', 120, 22.00),
(9, 'LAMPE-H7', 'Éclairage', 'Philips', 300, 12.00),
(10, 'LAMPE-LED', 'Éclairage', 'Osram', 250, 20.00),
(11, 'RETRO-GAUCHE', 'Carrosserie', 'CarLux', 60, 75.00),
(12, 'RETRO-DROIT', 'Carrosserie', 'CarLux', 60, 75.00),
(13, 'PARE-CHOC-AV', 'Carrosserie', 'AutoStyle', 30, 220.00),
(14, 'PARE-CHOC-AR', 'Carrosserie', 'AutoStyle', 25, 210.00),
(15, 'VOLANT-SPORT', 'Accessoire', 'RacingLine', 15, 180.00),
(16, 'PEDALE-ALU', 'Accessoire', 'RaceTech', 40, 65.00),
(17, 'RADIO-2DIN', 'Électronique', 'Pioneer', 35, 280.00),
(18, 'AMPLI-SON', 'Électronique', 'Kenwood', 20, 320.00),
(19, 'HP-BOSE', 'Électronique', 'Bose', 50, 150.00),
(20, 'GPS-TOUCH', 'Électronique', 'Garmin', 25, 400.00),
(21, 'CAM-RECUL', 'Électronique', 'SafeDrive', 45, 130.00),
(22, 'CABLE-USB', 'Électronique', 'NavTech', 100, 15.00),
(23, 'CHARGEUR-VOIT', 'Électronique', 'PowerMax', 80, 25.00),
(24, 'KIT-SECUR', 'Sécurité', 'SafeKit', 60, 90.00),
(25, 'EXTINCTEUR', 'Sécurité', 'FireStop', 70, 55.00),
(26, 'TRIANGLE', 'Sécurité', 'RoadSafe', 90, 20.00),
(27, 'GILET-JAUNE', 'Sécurité', 'RoadSafe', 120, 10.00),
(28, 'CABLE-DEMAR', 'Accessoire', 'BoostLine', 50, 45.00),
(29, 'COMPRESSEUR', 'Accessoire', 'AirPro', 30, 110.00),
(30, 'CRIC-HYDRAU', 'Outil', 'LiftMax', 25, 95.00),
(31, 'CLE-DYNAMO', 'Outil', 'MecaPro', 40, 70.00),
(32, 'KIT-OUTIL', 'Outil', 'ToolBox', 35, 150.00),
(33, 'BALAI-ESSUIE', 'Accessoire', 'Valeo', 200, 18.00),
(34, 'ANTIGEL', 'Liquide', 'Total', 150, 28.00),
(35, 'LIQ-FREIN', 'Liquide', 'Motul', 100, 22.00),
(36, 'LIQ-REFROID', 'Liquide', 'Castrol', 120, 30.00),
(37, 'KIT-COURROIE', 'Moteur', 'Dayco', 40, 180.00),
(38, 'POMPE-EAU', 'Moteur', 'Bosch', 35, 160.00),
(39, 'ALTERNATEUR', 'Moteur', 'Valeo', 25, 320.00),
(40, 'DEMARR-MOT', 'Moteur', 'Bosch', 30, 280.00),
(41, 'TURBO-DS', 'Moteur', 'Garrett', 20, 750.00),
(42, 'INJECTEUR', 'Moteur', 'Delphi', 50, 210.00),
(43, 'DISQUE-FREIN', 'Freinage', 'Brembo', 80, 95.00),
(44, 'PLAQUETTE-FREIN', 'Freinage', 'Ferodo', 120, 65.00),
(45, 'ETRIER-FREIN', 'Freinage', 'Bosch', 40, 190.00),
(46, 'KIT-ABS', 'Freinage', 'Continental', 20, 420.00),
(47, 'AMORTISSEUR', 'Suspension', 'Monroe', 60, 140.00),
(48, 'RESSORT-SUSP', 'Suspension', 'KYB', 50, 120.00),
(49, 'BARRE-STAB', 'Suspension', 'TRW', 30, 160.00),
(50, 'ROULEMENT', 'Transmission', 'SKF', 70, 85.00),
(51, 'CARDAN', 'Transmission', 'GKN', 40, 210.00),
(52, 'EMBRAYAGE', 'Transmission', 'Valeo', 35, 320.00);

-- --------------------------------------------------------

--
-- Structure de la table `g_avoir`
--

DROP TABLE IF EXISTS `g_avoir`;
CREATE TABLE IF NOT EXISTS `g_avoir` (
  `ord_id` int NOT NULL AUTO_INCREMENT,
  `a_id` int NOT NULL,
  `av_quantite` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ord_id`,`a_id`),
  KEY `a_id` (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_avoir`
--

INSERT INTO `g_avoir` (`ord_id`, `a_id`, `av_quantite`) VALUES
(1, 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `g_client`
--

DROP TABLE IF EXISTS `g_client`;
CREATE TABLE IF NOT EXISTS `g_client` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_adresse` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_client`
--

INSERT INTO `g_client` (`c_id`, `c_nom`, `c_adresse`, `c_tel`) VALUES
(1, 'Dupont Jean', '15 Rue de la Paix, Paris', '0612345678'),
(2, 'Martin Sophie', '4 Place de l\'Étoile, Lyon', '0789012345'),
(3, 'Bernard Claire', '22 Avenue Victor Hugo, Marseille', '0623456789'),
(4, 'Petit Louis', '8 Boulevard Saint-Michel, Paris', '0634567890'),
(5, 'Robert Julie', '12 Rue des Lilas, Toulouse', '0645678901'),
(6, 'Richard Paul', '5 Rue de la République, Bordeaux', '0656789012'),
(7, 'Durand Emma', '19 Rue Lafayette, Lille', '0667890123'),
(8, 'Moreau Lucas', '27 Rue de Bretagne, Nantes', '0678901234'),
(9, 'Laurent Chloé', '3 Rue du Général Leclerc, Nice', '0689012345'),
(10, 'Simon Hugo', '14 Rue de Verdun, Strasbourg', '0690123456'),
(11, 'Michel Léa', '9 Rue des Fleurs, Montpellier', '0611122233'),
(12, 'Garcia Antoine', '6 Rue du Port, Rennes', '0622233344'),
(13, 'David Manon', '11 Rue des Écoles, Dijon', '0633344455'),
(14, 'Fournier Thomas', '20 Rue de la Gare, Grenoble', '0644455566'),
(15, 'Lambert Sarah', '7 Rue des Jardins, Tours', '0655566677'),
(16, 'Bonnet Mathieu', '18 Rue de l\'Hôtel de Ville, Reims', '0666677788'),
(17, 'Francois Camille', '10 Rue de la Liberté, Clermont-Ferrand', '0677788899'),
(18, 'Leclerc Adrien', '25 Rue du Château, Angers', '0688899900'),
(19, 'Roux Alice', '13 Rue des Arts, Metz', '0699900011'),
(20, 'Fontaine Julien', '16 Rue du Marché, Brest', '0612233445'),
(21, 'Chevalier Marion', '21 Rue des Alpes, Annecy', '0623344556'),
(22, 'Gauthier Nicolas', '30 Rue de Provence, Avignon', '0634455667'),
(23, 'Perrin Laura', '17 Rue des Tuileries, Saint-Étienne', '0645566778');

-- --------------------------------------------------------

--
-- Structure de la table `g_equipe`
--

DROP TABLE IF EXISTS `g_equipe`;
CREATE TABLE IF NOT EXISTS `g_equipe` (
  `v_id` int NOT NULL,
  `a_id` int NOT NULL,
  `e_quantite` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`v_id`,`a_id`),
  KEY `a_id` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_equipe`
--

INSERT INTO `g_equipe` (`v_id`, `a_id`, `e_quantite`) VALUES
(1, 1, 50),
(2, 1, 50),
(2, 6, 36),
(3, 2, 25),
(3, 5, 25),
(3, 18, 56),
(3, 22, 8),
(5, 4, 20),
(7, 1, 50),
(11, 9, 125),
(15, 26, 57),
(15, 45, 7),
(17, 42, 30),
(20, 12, 35),
(20, 45, 7),
(20, 50, 30);

-- --------------------------------------------------------

--
-- Structure de la table `g_facture`
--

DROP TABLE IF EXISTS `g_facture`;
CREATE TABLE IF NOT EXISTS `g_facture` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `ord_id` int NOT NULL,
  `f_date` date NOT NULL,
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `ord_id` (`ord_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_facture`
--

INSERT INTO `g_facture` (`f_id`, `ord_id`, `f_date`) VALUES
(1, 1, '2025-11-25');

-- --------------------------------------------------------

--
-- Structure de la table `g_ordre`
--

DROP TABLE IF EXISTS `g_ordre`;
CREATE TABLE IF NOT EXISTS `g_ordre` (
  `ord_id` int NOT NULL AUTO_INCREMENT,
  `ord_date` date NOT NULL,
  `ord_heure` int DEFAULT NULL,
  `ord_taux_horaire` int NOT NULL DEFAULT '0',
  `ord_fk_id_client` int NOT NULL,
  `ord_prix` decimal(10,2) GENERATED ALWAYS AS ((`ord_heure` * `ord_taux_horaire`)) STORED,
  PRIMARY KEY (`ord_id`),
  KEY `c_id` (`ord_fk_id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_ordre`
--

INSERT INTO `g_ordre` (`ord_id`, `ord_date`, `ord_heure`, `ord_taux_horaire`, `ord_fk_id_client`) VALUES
(1, '2025-11-25', 2, 50, 1),
(2, '2025-11-18', 1, 50, 2),
(3, '2025-11-19', 3, 50, 3),
(4, '2025-11-20', 4, 50, 4),
(5, '2025-11-21', 2, 50, 5),
(6, '2025-11-22', 5, 50, 6),
(7, '2025-11-23', 6, 50, 7),
(8, '2025-11-24', 3, 50, 8),
(9, '2025-11-25', 7, 50, 9),
(10, '2025-11-26', 2, 50, 10),
(11, '2025-11-27', 4, 50, 11),
(12, '2025-11-28', 8, 50, 12),
(13, '2025-11-29', 1, 50, 13),
(14, '2025-11-30', 5, 50, 14),
(15, '2025-12-01', 6, 50, 15),
(16, '2025-12-02', 3, 50, 16),
(17, '2025-12-03', 7, 50, 17),
(18, '2025-12-04', 2, 50, 18),
(19, '2025-12-05', 4, 50, 19),
(20, '2025-12-06', 9, 50, 20),
(21, '2025-12-07', 5, 50, 21),
(22, '2025-12-08', 6, 50, 22);

-- --------------------------------------------------------

--
-- Structure de la table `g_voiture`
--

DROP TABLE IF EXISTS `g_voiture`;
CREATE TABLE IF NOT EXISTS `g_voiture` (
  `v_id` int NOT NULL AUTO_INCREMENT,
  `v_marque` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_energie` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_plaque` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_fk_id_client` int NOT NULL,
  PRIMARY KEY (`v_id`),
  KEY `c_id` (`v_fk_id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_voiture`
--

INSERT INTO `g_voiture` (`v_id`, `v_marque`, `v_type`, `v_energie`, `v_plaque`, `v_fk_id_client`) VALUES
(1, 'Renault', 'Clio', 'Essence', 'AB-123-CD', 1),
(2, 'Peugeot', '308', 'Diesel', 'IJ-789-KL', 2),
(3, 'Citroën', 'C3', 'Essence', 'MN-234-OP', 3),
(4, 'Volkswagen', 'Golf', 'Diesel', 'QR-345-ST', 4),
(5, 'Toyota', 'Yaris', 'Hybride', 'UV-456-WX', 5),
(6, 'Ford', 'Focus', 'Essence', 'YZ-567-AA', 6),
(7, 'BMW', 'Serie 1', 'Diesel', 'BB-678-CC', 7),
(8, 'Audi', 'A3', 'Essence', 'DD-789-EE', 8),
(9, 'Mercedes', 'Classe A', 'Diesel', 'FF-890-GG', 9),
(10, 'Opel', 'Corsa', 'Essence', 'HH-901-II', 10),
(11, 'Fiat', 'Punto', 'Essence', 'JJ-012-KK', 11),
(12, 'Nissan', 'Micra', 'Essence', 'LL-123-MM', 12),
(13, 'Hyundai', 'i20', 'Essence', 'NN-234-OO', 13),
(14, 'Kia', 'Rio', 'Essence', 'PP-345-QQ', 14),
(15, 'Seat', 'Ibiza', 'Diesel', 'RR-456-SS', 15),
(16, 'Skoda', 'Fabia', 'Essence', 'TT-567-UU', 16),
(17, 'Dacia', 'Sandero', 'Essence', 'VV-678-WW', 17),
(18, 'Mazda', '3', 'Essence', 'XX-789-YY', 18),
(19, 'Honda', 'Civic', 'Hybride', 'ZZ-890-AA', 19),
(20, 'Suzuki', 'Swift', 'Essence', 'AB-901-BB', 20),
(21, 'Mini', 'Cooper', 'Essence', 'CD-012-DD', 21),
(22, 'Renault', 'Megane', 'Diesel', 'EF-123-GH', 22);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_factures_detail`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `v_factures_detail`;
CREATE TABLE IF NOT EXISTS `v_factures_detail` (
`f_date` date
,`f_id` int
,`fact_prix_final` decimal(43,2)
,`ord_id` int
,`prix_main_oeuvre` decimal(10,2)
,`prix_pieces` decimal(42,2)
);

-- --------------------------------------------------------

--
-- Structure de la vue `v_factures_detail`
--
DROP TABLE IF EXISTS `v_factures_detail`;

DROP VIEW IF EXISTS `v_factures_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_factures_detail`  AS SELECT `f`.`f_id` AS `f_id`, `f`.`ord_id` AS `ord_id`, `f`.`f_date` AS `f_date`, `o`.`ord_prix` AS `prix_main_oeuvre`, ifnull(sum((`av`.`av_quantite` * `a`.`a_prix`)),0) AS `prix_pieces`, (`o`.`ord_prix` + ifnull(sum((`av`.`av_quantite` * `a`.`a_prix`)),0)) AS `fact_prix_final` FROM (((`g_facture` `f` join `g_ordre` `o` on((`f`.`ord_id` = `o`.`ord_id`))) left join `g_avoir` `av` on((`o`.`ord_id` = `av`.`ord_id`))) left join `g_article` `a` on((`av`.`a_id` = `a`.`a_id`))) GROUP BY `f`.`f_id`, `f`.`ord_id`, `f`.`f_date`, `o`.`ord_prix` ;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `g_avoir`
--
ALTER TABLE `g_avoir`
  ADD CONSTRAINT `g_avoir_ibfk_1` FOREIGN KEY (`ord_id`) REFERENCES `g_ordre` (`ord_id`),
  ADD CONSTRAINT `g_avoir_ibfk_2` FOREIGN KEY (`a_id`) REFERENCES `g_article` (`a_id`);

--
-- Contraintes pour la table `g_equipe`
--
ALTER TABLE `g_equipe`
  ADD CONSTRAINT `g_equipe_ibfk_1` FOREIGN KEY (`v_id`) REFERENCES `g_voiture` (`v_id`),
  ADD CONSTRAINT `g_equipe_ibfk_2` FOREIGN KEY (`a_id`) REFERENCES `g_article` (`a_id`);

--
-- Contraintes pour la table `g_facture`
--
ALTER TABLE `g_facture`
  ADD CONSTRAINT `g_facture_ibfk_1` FOREIGN KEY (`ord_id`) REFERENCES `g_ordre` (`ord_id`);

--
-- Contraintes pour la table `g_ordre`
--
ALTER TABLE `g_ordre`
  ADD CONSTRAINT `g_ordre_ibfk_1` FOREIGN KEY (`ord_fk_id_client`) REFERENCES `g_client` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `g_voiture`
--
ALTER TABLE `g_voiture`
  ADD CONSTRAINT `g_voiture_ibfk_1` FOREIGN KEY (`v_fk_id_client`) REFERENCES `g_client` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
