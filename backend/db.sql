-- Version 1.1

-- Table des groupes (N1, N2, N3, etc.)
CREATE TABLE groupe (
                        id INT PRIMARY KEY AUTO_INCREMENT,
                        nom ENUM('N1', 'N2', 'N3') NOT NULL UNIQUE
);

-- Table des utilisateurs
CREATE TABLE user (
                      id INT PRIMARY KEY AUTO_INCREMENT,
                      nom VARCHAR(255) NOT NULL,
                      email VARCHAR(255) UNIQUE NOT NULL,
                      telephone VARCHAR(20) DEFAULT NULL,
                      groupe_id INT DEFAULT NULL,
                      FOREIGN KEY (groupe_id) REFERENCES groupe(id) ON DELETE SET NULL
);

-- Table des tickets
CREATE TABLE ticket (
                        id INT PRIMARY KEY AUTO_INCREMENT,
                        objet VARCHAR(255) NOT NULL,
                        demandeur_id INT NOT NULL,
                        etat ENUM('Ouvert', 'En cours', 'Résolu', 'Fermé', 'En attente') NOT NULL DEFAULT 'Ouvert',
                        statut ENUM('Nouveau', 'En cours', 'Résolu', 'Fermé') NOT NULL DEFAULT 'Nouveau',
                        priorite ENUM('Basse', 'Moyenne', 'Haute', 'Critique') NOT NULL DEFAULT 'Moyenne',
                        assigne_a INT DEFAULT NULL,
                        groupe_id INT DEFAULT NULL, -- Le groupe affecté au ticket
                        details_statut TEXT DEFAULT NULL,
                        departement VARCHAR(255) DEFAULT NULL,
                        source VARCHAR(255) DEFAULT NULL,
                        date_creation DATETIME DEFAULT CURRENT_TIMESTAMP,
                        date_derniere_modification DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                        echeance DATETIME DEFAULT NULL,
                        date_fermeture DATETIME DEFAULT NULL,
                        statut_approbation ENUM('Approuvé', 'En attente', 'Rejeté') DEFAULT 'En attente',
                        date_debut_planifiee DATETIME DEFAULT NULL,
                        date_fin_planifiee DATETIME DEFAULT NULL,
                        effort_planifie INT DEFAULT NULL,
                        type_association VARCHAR(255) DEFAULT NULL,
                        emplacement_demandeur VARCHAR(255) DEFAULT NULL,
                        demandeur_vip BOOLEAN DEFAULT FALSE,
                        date_resolution DATETIME DEFAULT NULL,
                        impact ENUM('Faible', 'Moyen', 'Élevé', 'Critique') DEFAULT 'Moyen',
                        urgence ENUM('Faible', 'Moyenne', 'Élevée', 'Critique') DEFAULT 'Moyenne',
                        categorie VARCHAR(255) DEFAULT NULL,
                        sous_categorie VARCHAR(255) DEFAULT NULL,
                        element VARCHAR(255) DEFAULT NULL,
                        beneficiaire VARCHAR(255) DEFAULT NULL,
                        telephone VARCHAR(20) DEFAULT NULL,
                        categorisation_client VARCHAR(255) DEFAULT NULL,
                        beneficiaire_incident VARCHAR(255) DEFAULT NULL,
                        major_incident_type VARCHAR(255) DEFAULT NULL,
                        impacted_locations TEXT DEFAULT NULL,
                        no_of_customers_impacted INT DEFAULT NULL,
                        composants TEXT DEFAULT NULL,
                        services_concernes TEXT DEFAULT NULL,
                        FOREIGN KEY (demandeur_id) REFERENCES user(id) ON DELETE CASCADE,
                        FOREIGN KEY (assigne_a) REFERENCES user(id) ON DELETE SET NULL,
                        FOREIGN KEY (groupe_id) REFERENCES groupe(id) ON DELETE SET NULL
);

-- Indexes pour optimiser les requêtes
CREATE INDEX idx_demandeur ON ticket (demandeur_id);
CREATE INDEX idx_statut ON ticket (statut);
CREATE INDEX idx_priorite ON ticket (priorite);
CREATE INDEX idx_date_creation ON ticket (date_creation);
CREATE INDEX idx_groupe ON ticket (groupe_id);

-- Insérer les groupes de support
INSERT INTO groupe (nom) VALUES ('N1'), ('N2'), ('N3');

