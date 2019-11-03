-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 03 Novembre 2019 à 23:52
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `projet-php`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'PHP'),
(14, 'Management'),
(15, 'Management'),
(16, 'Applications'),
(17, 'Management');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `idPost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idPost` (`idPost`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagePath` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `idCategory` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idCategory` (`idCategory`),
  KEY `idUser` (`idUser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `imagePath`, `title`, `content`, `idCategory`, `idUser`) VALUES
(10, NULL, 'Nouvelle version ', 'Daoud Ryan ', 1, 1),
(11, NULL, 'Application pour gÃ©rer les ressources humaines ', 'Douglas Costa', 1, 1),
(12, NULL, 'errerere', 'ererer', 1, 1),
(13, NULL, 'erererer', 'ererererere', 15, 1),
(14, NULL, 'cxcxcxc', 'xcxcxcc', 16, 1),
(15, NULL, 'dfdf', 'fdfdfd', 17, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Ryan', 'Daoud'),
(5, 'Hamza', '389b969c67a2a8f5a58a7f54c3303d30'),
(6, 'Hamza', '389b969c67a2a8f5a58a7f54c3303d30'),
(7, 'Monsieur ', 'c595023da4af3611f67de16a3fd5dca6'),
(8, 'Monsieur ', 'c595023da4af3611f67de16a3fd5dca6'),
(9, 'Monsieur ', 'c595023da4af3611f67de16a3fd5dca6'),
(10, 'Hamza', '5d7eb0528bcfc9aad9b2158c343142e4'),
(11, 'Hamza', '5d7eb0528bcfc9aad9b2158c343142e4'),
(12, 'Ryan', '9fb9922c4d1a3df8578db83fafb56b95'),
(13, 'Ryan', '9fb9922c4d1a3df8578db83fafb56b95'),
(14, 'Ryan', '9fb9922c4d1a3df8578db83fafb56b95'),
(15, 'efefefdfdf', '75587c27e41fbdc145da82037767619d'),
(16, 'efefefdfdf', '75587c27e41fbdc145da82037767619d'),
(17, 'dfddfdfdfdff', '819004c9422f2a5c54555c5a1d7bb634'),
(18, 'dfddfdfdfdff', '819004c9422f2a5c54555c5a1d7bb634'),
(19, 'dfddfdfdfdff', '819004c9422f2a5c54555c5a1d7bb634'),
(20, 'dfddfdfdfdff', '819004c9422f2a5c54555c5a1d7bb634'),
(21, 'Ryan', '904d1e43369006d800fb0e74f72a478c'),
(22, 'Ryan', '904d1e43369006d800fb0e74f72a478c'),
(23, 'Hamza', 'f37e922d01c9e6cee2e0ac9d313fc588'),
(24, 'dfddfdfdfdff', 'cafb87ea145773662b059e989e2c5070'),
(25, 'dfddfdfdfdff', 'cafb87ea145773662b059e989e2c5070'),
(26, 'ererereerererr', 'b7140ef7aec4c389f41cf9c0bfe284c2'),
(27, 'ererereerererr', 'b7140ef7aec4c389f41cf9c0bfe284c2'),
(28, 'dfdfd', 'ee414358bf749cd6024be377351e688c');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`idPost`) REFERENCES `posts` (`id`);

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
