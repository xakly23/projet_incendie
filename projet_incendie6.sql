-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 01 juin 2023 à 23:25
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_incendie6`
--

-- --------------------------------------------------------

--
-- Structure de la table `causes`
--

CREATE TABLE `causes` (
  `code_cause` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `code_incendie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom_c` varchar(255) NOT NULL,
  `prenom_c` varchar(255) NOT NULL,
  `email_c` varchar(255) NOT NULL,
  `telephone_c` varchar(255) NOT NULL,
  `message` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `degat`
--

CREATE TABLE `degat` (
  `code_degat` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `degatsconstates`
--

CREATE TABLE `degatsconstates` (
  `date_heure` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_incendie` int(11) DEFAULT NULL,
  `code_degat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `URL` varchar(255) NOT NULL,
  `date_heure` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_incendie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `incendie`
--

CREATE TABLE `incendie` (
  `code_incendie` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `date_heure_debut` datetime DEFAULT NULL,
  `date_heure_fin` datetime DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `code_region` int(11) DEFAULT NULL,
  `code_municipalite` int(11) DEFAULT NULL,
  `code_cause` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `interventions`
--

CREATE TABLE `interventions` (
  `code_intervention` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `interventionseffectuees`
--

CREATE TABLE `interventionseffectuees` (
  `date_heure_debut` datetime DEFAULT NULL,
  `date_heure_fin` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_incendie` int(11) DEFAULT NULL,
  `code_intervention` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mesures`
--

CREATE TABLE `mesures` (
  `code_mesures` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mesuresfaites`
--

CREATE TABLE `mesuresfaites` (
  `date_heure_debut` datetime DEFAULT NULL,
  `date_heure_fin` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_incendie` int(11) DEFAULT NULL,
  `code_mesures` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `municipalite`
--

CREATE TABLE `municipalite` (
  `code_municipalite` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `code_wilaya` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personnelle_administrateur`
--

CREATE TABLE `personnelle_administrateur` (
  `matricule` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `date_de_naissance` date DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `fonction` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personnelle_administrateur`
--

INSERT INTO `personnelle_administrateur` (`matricule`, `nom`, `prenom`, `date_de_naissance`, `adresse`, `email`, `tel`, `fonction`) VALUES
(2, 'Mekersi', 'Ilyes ', NULL, 'Aadl Sidi Achour Annaba', 'mekersiilyes@gmail.com', '+213541981088', 'czacafa');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `code_region` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `couleur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ressources`
--

CREATE TABLE `ressources` (
  `code_ressources` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `type_ressources_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ressourcesinterventions`
--

CREATE TABLE `ressourcesinterventions` (
  `date_heure_debut` datetime DEFAULT NULL,
  `date_heure_fin` datetime DEFAULT NULL,
  `nombre` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_intervention` int(11) DEFAULT NULL,
  `code_ressources` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `typeressources`
--

CREATE TABLE `typeressources` (
  `code` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `date_heure` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `user_name`, `mot_de_passe`, `date_heure`) VALUES
(1, 'xakly', 'ilyes230', '2023-05-31 04:26:43'),
(2, 'xakly23', 'ilyes21', '2023-05-31 07:54:13');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `URL` varchar(255) NOT NULL,
  `date_heure` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_incendie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `code_visiteur` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wilaya`
--

CREATE TABLE `wilaya` (
  `code_wilaya` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `causes`
--
ALTER TABLE `causes`
  ADD PRIMARY KEY (`code_cause`),
  ADD KEY `code_incendie` (`code_incendie`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `degat`
--
ALTER TABLE `degat`
  ADD PRIMARY KEY (`code_degat`);

--
-- Index pour la table `degatsconstates`
--
ALTER TABLE `degatsconstates`
  ADD KEY `fk_degatsconstates_incendie` (`code_incendie`),
  ADD KEY `fk_degatsconstates_degat` (`code_degat`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`URL`),
  ADD KEY `fk_image_incendie` (`code_incendie`);

--
-- Index pour la table `incendie`
--
ALTER TABLE `incendie`
  ADD PRIMARY KEY (`code_incendie`),
  ADD KEY `fk_incendie_region` (`code_region`),
  ADD KEY `fk_incendie_municipalite` (`code_municipalite`),
  ADD KEY `fk_incendie_causes` (`code_cause`);

--
-- Index pour la table `interventions`
--
ALTER TABLE `interventions`
  ADD PRIMARY KEY (`code_intervention`);

--
-- Index pour la table `interventionseffectuees`
--
ALTER TABLE `interventionseffectuees`
  ADD KEY `fk_interventionseffectuees_incendie` (`code_incendie`),
  ADD KEY `fk_interventionseffectuees_intervention` (`code_intervention`);

--
-- Index pour la table `mesures`
--
ALTER TABLE `mesures`
  ADD PRIMARY KEY (`code_mesures`);

--
-- Index pour la table `mesuresfaites`
--
ALTER TABLE `mesuresfaites`
  ADD KEY `fk_mesuresfaites_incendie` (`code_incendie`),
  ADD KEY `fk_mesuresfaites_mesures` (`code_mesures`);

--
-- Index pour la table `municipalite`
--
ALTER TABLE `municipalite`
  ADD PRIMARY KEY (`code_municipalite`),
  ADD KEY `fk_municipalite_wilaya` (`code_wilaya`);

--
-- Index pour la table `personnelle_administrateur`
--
ALTER TABLE `personnelle_administrateur`
  ADD PRIMARY KEY (`matricule`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`code_region`);

--
-- Index pour la table `ressources`
--
ALTER TABLE `ressources`
  ADD PRIMARY KEY (`code_ressources`),
  ADD KEY `fk_ressources_type_ressources` (`type_ressources_code`);

--
-- Index pour la table `ressourcesinterventions`
--
ALTER TABLE `ressourcesinterventions`
  ADD KEY `fk_ressourcesinterventions_intervention` (`code_intervention`),
  ADD KEY `fk_ressourcesinterventions_ressources` (`code_ressources`);

--
-- Index pour la table `typeressources`
--
ALTER TABLE `typeressources`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`URL`),
  ADD KEY `fk_video_incendie` (`code_incendie`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`code_visiteur`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `wilaya`
--
ALTER TABLE `wilaya`
  ADD PRIMARY KEY (`code_wilaya`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `causes`
--
ALTER TABLE `causes`
  MODIFY `code_cause` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `degat`
--
ALTER TABLE `degat`
  MODIFY `code_degat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `incendie`
--
ALTER TABLE `incendie`
  MODIFY `code_incendie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `interventions`
--
ALTER TABLE `interventions`
  MODIFY `code_intervention` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `mesures`
--
ALTER TABLE `mesures`
  MODIFY `code_mesures` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `municipalite`
--
ALTER TABLE `municipalite`
  MODIFY `code_municipalite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `code_region` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `ressources`
--
ALTER TABLE `ressources`
  MODIFY `code_ressources` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `typeressources`
--
ALTER TABLE `typeressources`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wilaya`
--
ALTER TABLE `wilaya`
  MODIFY `code_wilaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `causes`
--
ALTER TABLE `causes`
  ADD CONSTRAINT `causes_ibfk_1` FOREIGN KEY (`code_incendie`) REFERENCES `incendie` (`code_incendie`);

--
-- Contraintes pour la table `degatsconstates`
--
ALTER TABLE `degatsconstates`
  ADD CONSTRAINT `degatsconstates_ibfk_1` FOREIGN KEY (`code_incendie`) REFERENCES `incendie` (`code_incendie`),
  ADD CONSTRAINT `degatsconstates_ibfk_2` FOREIGN KEY (`code_degat`) REFERENCES `degat` (`code_degat`),
  ADD CONSTRAINT `fk_degatsconstates_degat` FOREIGN KEY (`code_degat`) REFERENCES `degat` (`code_degat`),
  ADD CONSTRAINT `fk_degatsconstates_incendie` FOREIGN KEY (`code_incendie`) REFERENCES `incendie` (`code_incendie`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `fk_image_incendie` FOREIGN KEY (`code_incendie`) REFERENCES `incendie` (`code_incendie`),
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`code_incendie`) REFERENCES `incendie` (`code_incendie`);

--
-- Contraintes pour la table `incendie`
--
ALTER TABLE `incendie`
  ADD CONSTRAINT `fk_incendie_cause` FOREIGN KEY (`code_cause`) REFERENCES `causes` (`code_cause`),
  ADD CONSTRAINT `fk_incendie_causes` FOREIGN KEY (`code_cause`) REFERENCES `causes` (`code_cause`),
  ADD CONSTRAINT `fk_incendie_municipalite` FOREIGN KEY (`code_municipalite`) REFERENCES `municipalite` (`code_municipalite`),
  ADD CONSTRAINT `fk_incendie_region` FOREIGN KEY (`code_region`) REFERENCES `region` (`code_region`),
  ADD CONSTRAINT `incendie_ibfk_2` FOREIGN KEY (`code_region`) REFERENCES `region` (`code_region`),
  ADD CONSTRAINT `incendie_ibfk_3` FOREIGN KEY (`code_municipalite`) REFERENCES `municipalite` (`code_municipalite`);

--
-- Contraintes pour la table `interventionseffectuees`
--
ALTER TABLE `interventionseffectuees`
  ADD CONSTRAINT `fk_interventionseffectuees_incendie` FOREIGN KEY (`code_incendie`) REFERENCES `incendie` (`code_incendie`),
  ADD CONSTRAINT `fk_interventionseffectuees_intervention` FOREIGN KEY (`code_intervention`) REFERENCES `interventions` (`code_intervention`),
  ADD CONSTRAINT `interventionseffectuees_ibfk_1` FOREIGN KEY (`code_incendie`) REFERENCES `incendie` (`code_incendie`),
  ADD CONSTRAINT `interventionseffectuees_ibfk_2` FOREIGN KEY (`code_intervention`) REFERENCES `interventions` (`code_intervention`);

--
-- Contraintes pour la table `mesuresfaites`
--
ALTER TABLE `mesuresfaites`
  ADD CONSTRAINT `fk_mesuresfaites_incendie` FOREIGN KEY (`code_incendie`) REFERENCES `incendie` (`code_incendie`),
  ADD CONSTRAINT `fk_mesuresfaites_mesures` FOREIGN KEY (`code_mesures`) REFERENCES `mesures` (`code_mesures`),
  ADD CONSTRAINT `mesuresfaites_ibfk_1` FOREIGN KEY (`code_incendie`) REFERENCES `incendie` (`code_incendie`),
  ADD CONSTRAINT `mesuresfaites_ibfk_2` FOREIGN KEY (`code_mesures`) REFERENCES `mesures` (`code_mesures`);

--
-- Contraintes pour la table `municipalite`
--
ALTER TABLE `municipalite`
  ADD CONSTRAINT `fk_municipalite_wilaya` FOREIGN KEY (`code_wilaya`) REFERENCES `wilaya` (`code_wilaya`),
  ADD CONSTRAINT `municipalite_ibfk_1` FOREIGN KEY (`code_wilaya`) REFERENCES `wilaya` (`code_wilaya`);

--
-- Contraintes pour la table `personnelle_administrateur`
--
ALTER TABLE `personnelle_administrateur`
  ADD CONSTRAINT `personnelle_administrateur_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `ressources`
--
ALTER TABLE `ressources`
  ADD CONSTRAINT `fk_ressources_type_ressources` FOREIGN KEY (`type_ressources_code`) REFERENCES `typeressources` (`code`);

--
-- Contraintes pour la table `ressourcesinterventions`
--
ALTER TABLE `ressourcesinterventions`
  ADD CONSTRAINT `fk_ressourcesinterventions_intervention` FOREIGN KEY (`code_intervention`) REFERENCES `interventions` (`code_intervention`),
  ADD CONSTRAINT `fk_ressourcesinterventions_ressources` FOREIGN KEY (`code_ressources`) REFERENCES `ressources` (`code_ressources`),
  ADD CONSTRAINT `ressourcesinterventions_ibfk_1` FOREIGN KEY (`code_intervention`) REFERENCES `interventions` (`code_intervention`),
  ADD CONSTRAINT `ressourcesinterventions_ibfk_2` FOREIGN KEY (`code_ressources`) REFERENCES `ressources` (`code_ressources`);

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `fk_video_incendie` FOREIGN KEY (`code_incendie`) REFERENCES `incendie` (`code_incendie`),
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`code_incendie`) REFERENCES `incendie` (`code_incendie`);

--
-- Contraintes pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD CONSTRAINT `visiteur_ibfk_1` FOREIGN KEY (`code_visiteur`) REFERENCES `utilisateur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
