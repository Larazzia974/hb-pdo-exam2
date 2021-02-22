-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 22 fév. 2021 à 10:55
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `composer_exam`
--

-- --------------------------------------------------------

--
-- Structure de la table `composer`
--

DROP TABLE IF EXISTS `composer`;
CREATE TABLE IF NOT EXISTS `composer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` text,
  `birth` int(11) DEFAULT NULL,
  `death` int(11) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `composer`
--

INSERT INTO `composer` (`id`, `name`, `description`, `birth`, `death`, `country`) VALUES
(1, 'Wolfgang Amadeus Mozart', 'Wolfgang Amadeus Mozart ou Johannes Chrysostomus Wolfgangus Theophilus Mozart est un compositeur classique né à Salzbourg (Principauté archiépiscopale de Salzbourg) le 27 janvier 1756 et mort à Vienne le 5 décembre 1791. ', 1756, 1791, 'Autriche'),
(2, 'Sergueï Prokofiev', 'Sergueï Prokofiev (généralement appelé Serge Prokofiev en France ; en russe, Сергей Сергеевич Прокофьев et en ukrainien, Сергі́й Сергі́йович Проко́ф\'єв) est un compositeur, un pianiste et un chef d\'orchestre russe, né le 11 avril 1891 (23 avril 1891 dans le calendrier grégorien) à Sontsivka (Empire russe) et mort le 5 mars 1953 à Moscou (URSS). ', 1891, 1953, 'Russie'),
(3, 'Sergueï Rachmaninov', 'Sergueï Vassilievitch Rachmaninov (en russe : Сергей Васильевич Рахманинов, usuellement désigné dans les pays francophones sous le nom de Serge Rachmaninoff), né le 1er avril 1873 à Semionovo (Empire russe) et mort le 28 mars 1943 à Beverly Hills (États-Unis), est un compositeur, pianiste et chef d\'orchestre russe, naturalisé américain. ', 1873, 1943, 'Russie');

-- --------------------------------------------------------

--
-- Structure de la table `music`
--

DROP TABLE IF EXISTS `music`;
CREATE TABLE IF NOT EXISTS `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `composer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `composer_id` (`composer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `music`
--

INSERT INTO `music` (`id`, `name`, `year`, `composer_id`) VALUES
(1, 'Scherzo en ré mineur', 1887, 3),
(2, 'Canon en ré mineur', 1891, 3),
(3, 'Le Joueur', 1928, 2),
(4, 'Ivan le Terrible', 1946, 2),
(5, 'Exsultate, jubilate', 1773, 1),
(6, 'Symphonie no 41 en ut majeur dite « Jupiter »', 1788, 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `music`
--
ALTER TABLE `music`
  ADD CONSTRAINT `music_ibfk_1` FOREIGN KEY (`composer_id`) REFERENCES `composer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
