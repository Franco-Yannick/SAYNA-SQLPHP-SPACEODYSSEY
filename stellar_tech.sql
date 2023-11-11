-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 10 nov. 2023 à 15:59
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `stellar_tech`
--

-- --------------------------------------------------------

--
-- Structure de la table `astronaute`
--

CREATE TABLE `astronaute` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(200) NOT NULL,
  `Prenom` varchar(200) NOT NULL,
  `Date_de_naissance` datetime NOT NULL,
  `Date_service` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Etat` varchar(200) NOT NULL,
  `Taille` int(11) NOT NULL,
  `Poids` double NOT NULL,
  `Nationalite` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mission`
--

CREATE TABLE `mission` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(200) NOT NULL,
  `Objectif` varchar(200) NOT NULL,
  `Date_de_debut` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Date_de_fin` datetime NOT NULL,
  `Status` varchar(200) NOT NULL,
  `Cout` double NOT NULL,
  `Duree` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `planete`
--

CREATE TABLE `planete` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(200) NOT NULL,
  `Distance` double NOT NULL,
  `Taille` int(11) NOT NULL,
  `Type` varchar(200) NOT NULL,
  `Condition_environemental` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vaisseaux`
--

CREATE TABLE `vaisseaux` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(200) NOT NULL,
  `Type` varchar(200) NOT NULL,
  `Capacite` double NOT NULL,
  `Vitesse` int(11) NOT NULL,
  `Autonomie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mission`
--
ALTER TABLE `mission`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `planete`
--
ALTER TABLE `planete`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mission`
--
ALTER TABLE `mission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `planete`
--
ALTER TABLE `planete`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
