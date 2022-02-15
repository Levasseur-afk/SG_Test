-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 16 fév. 2022 à 00:24
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sg`
--

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `n` int(11) NOT NULL,
  `nom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`n`, `nom`) VALUES
(1, 'Ain'),
(2, 'Loire');

-- --------------------------------------------------------

--
-- Structure de la table `dep_ecole`
--

CREATE TABLE `dep_ecole` (
  `n_Departement` int(11) NOT NULL,
  `n_Ecole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `dep_ecole`
--

INSERT INTO `dep_ecole` (`n_Departement`, `n_Ecole`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `n` int(11) NOT NULL,
  `nom` text NOT NULL,
  `Type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ecole`
--

INSERT INTO `ecole` (`n`, `nom`, `Type_ID`) VALUES
(1, 'Collège Théophile', 1),
(2, 'Collège Garde', 1),
(3, 'Lycée Sébastien', 2),
(4, 'Lycée Rémieux', 2),
(5, 'Collège Louis', 1);

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `n_Ecole` int(11) NOT NULL,
  `CodeEleve` text NOT NULL,
  `Argent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`n_Ecole`, `CodeEleve`, `Argent`) VALUES
(1, 'TO', 10),
(1, 'MA', 20),
(1, 'BI', 30),
(1, 'FE', 40),
(1, 'AT', 50),
(1, 'CE', 60),
(2, 'MI', 80),
(2, 'ME', 90);

-- --------------------------------------------------------

--
-- Structure de la table `type_ecole`
--

CREATE TABLE `type_ecole` (
  `Type_ID` int(11) NOT NULL,
  `Nom_Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `type_ecole`
--

INSERT INTO `type_ecole` (`Type_ID`, `Nom_Type`) VALUES
(1, 'Collège'),
(2, 'Lycée'),
(3, 'Maternelle');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
