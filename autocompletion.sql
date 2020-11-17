-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 17 nov. 2020 à 17:30
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `nbaplayer`
--

DROP TABLE IF EXISTS `nbaplayer`;
CREATE TABLE IF NOT EXISTS `nbaplayer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `team` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `photo` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `nbaplayer`
--

INSERT INTO `nbaplayer` (`id`, `nom`, `team`, `photo`) VALUES
(108, 'Kevin Durant', 'brooklyn', 0x4b6576696e20447572616e742e6a7067),
(107, 'Kyrie Irving', 'brooklyn', 0x4b7972696520497276696e672e6a7067),
(109, 'Spencer Dinwiddie', 'brooklyn', 0x5370656e6365722044696e7769646469652e6a7067),
(110, 'Giánnis Antetokoúnmpo', 'bucks', 0x4769c3a16e6e697320416e7465746f6b6fc3ba6e6d706f2e6a7067),
(111, 'Wesley Matthews', 'bucks', 0x5765736c6579204d617474686577732e6a7067),
(112, 'Kyle Korver', 'bucks', 0x4b796c65204b6f727665722e6a7067),
(113, 'Zach LaVine', 'bulls', 0x5a616368204c6156696e652e6a7067),
(114, 'Denzel Valentine', 'bulls', 0x44656e7a656c2056616c656e74696e652e6a7067),
(115, 'Shaquille Harrison', 'bulls', 0x5368617175696c6c65204861727269736f6e2e6a7067),
(116, 'Tacko Fall', 'celtics', 0x5461636b6f2046616c6c2e6a7067),
(117, 'Javonte Green', 'celtics', 0x4a61766f6e746520477265656e2e6a7067),
(118, 'Jayson Tatum', 'celtics', 0x4a6179736f6e20546174756d2e6a7067),
(119, 'Kevin Love', 'cleveland', 0x4b6576696e204c6f76652e6a7067),
(120, 'Tristan Thompson', 'cleveland', 0x5472697374616e2054686f6d70736f6e2e6a7067),
(121, 'Brandon Knight', 'cleveland', 0x4272616e646f6e204b6e696768742e6a7067),
(122, 'Jontay Porter', 'grizzlies', 0x4a6f6e74617920506f727465722e6a7067),
(123, 'Ja Morant', 'grizzlies', 0x4a61204d6f72616e742e6a7067),
(124, 'Trae Young', 'hawks', 0x5472616520596f756e672e6a7067),
(146, 'Russell Westbrook', 'rockets', 0x52757373656c6c205765737462726f6f6b2e6a7067),
(126, 'Charlie Brown', 'hawks', 0x436861726c69652042726f776e2e6a7067),
(127, 'Bruno Fernando', 'hawks', 0x4272756e6f204665726e616e646f2e6a7067),
(128, 'Jimmy Butler', 'heat', 0x4a696d6d79204275746c65722e6a7067),
(129, 'Andre Iguodala', 'heat', 0x416e647265204967756f64616c612e6a7067),
(145, 'James Harden', 'rockets', 0x4a616d65732048617264656e2e6a7067),
(131, 'Michael Kidd-Gilchrist', 'hornets', 0x4d69636861656c204b6964642d47696c6368726973742e6a7067),
(132, 'Dwayne Bacon', 'hornets', 0x447761796e65204261636f6e2e6a7067),
(133, 'Rudy Gobert', 'jazz', 0x5275647920476f626572742e6a7067),
(134, 'Emmanuel Mudiay', 'jazz', 0x456d6d616e75656c204d75646961792e6a7067),
(135, 'Donovan Mitchell', 'jazz', 0x446f6e6f76616e204d69746368656c6c2e6a7067),
(136, 'Dennis Smith Jr.', 'knicks', 0x44656e6e697320536d697468204a722e2e6a7067),
(137, 'Damyean Dotson', 'knicks', 0x44616d7965616e20446f74736f6e2e6a7067),
(138, 'Kevin Knox', 'knicks', 0x4b6576696e204b6e6f782e6a7067),
(139, 'LeBron James', 'lakers', 0x4c6542726f6e204a616d65732e6a7067),
(140, 'Kyle Kuzma', 'lakers', 0x4b796c65204b757a6d612e6a7067),
(141, 'JaVale McGee', 'lakers', 0x4a6156616c65204d634765652e6a7067),
(142, 'Aaron Gordon', 'magic', 0x4161726f6e20476f72646f6e2e6a7067),
(143, 'Mohamed Bamba', 'magic', 0x4d6f68616d65642042616d62612e6a7067),
(144, 'Evan Fournier', 'magic', 0x4576616e20466f75726e6965722e6a7067),
(154, 'Stephen Curry', 'warriors', 0x5374657068656e2043757272792e6a7067),
(148, 'Robert Covington', 'rockets', 0x526f6265727420436f76696e67746f6e2e6a7067),
(149, 'P. J. Tucker', 'rockets', 0x502e204a2e205475636b65722e6a7067),
(150, 'Eric Gordon', 'rockets', 0x4572696320476f72646f6e2e6a7067),
(151, 'Tony Parker', 'spurs', 0x546f6e79205061726b65722e6a7067),
(152, 'Derrick White', 'spurs', 0x4465727269636b2057686974652e6a7067),
(153, 'DeMar DeRozan', 'spurs', 0x44654d6172204465526f7a616e2e6a7067),
(155, 'Klay Thompson', 'warriors', 0x4b6c61792054686f6d70736f6e2e6a7067),
(156, 'Draymond Green', 'warriors', 0x447261796d6f6e6420477265656e2e6a7067);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
