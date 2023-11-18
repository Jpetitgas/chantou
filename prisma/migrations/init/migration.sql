-- CreateTable
CREATE TABLE `activite` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `section_id` INTEGER NOT NULL,
    `saison_id` INTEGER NOT NULL,
    `categorie_id` INTEGER NULL,
    `nom` VARCHAR(255) NOT NULL,
    `sous_condition` BOOLEAN NOT NULL,
    `certificat_obligatoire` BOOLEAN NOT NULL,
    `tarif` INTEGER NOT NULL,
    `nb_de_place` INTEGER NOT NULL,
    `cotisation` INTEGER NULL,
    `duree` VARCHAR(255) NOT NULL,

    INDEX `IDX_B8755515BCF5E72D`(`categorie_id`),
    INDEX `IDX_B8755515D823E37A`(`section_id`),
    INDEX `IDX_B8755515F965414C`(`saison_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `article` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `categorie_id` INTEGER NOT NULL,
    `menu_id` INTEGER NULL,
    `titre` VARCHAR(255) NOT NULL,
    `slug` VARCHAR(255) NOT NULL,
    `created_at` DATETIME(0) NOT NULL,
    `contenu` LONGTEXT NOT NULL,
    `updated_at` DATETIME(0) NOT NULL,
    `file` VARCHAR(255) NOT NULL,
    `en_ligne` BOOLEAN NOT NULL,

    INDEX `IDX_23A0E66BCF5E72D`(`categorie_id`),
    INDEX `IDX_23A0E66CCD7E912`(`menu_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `banque` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(255) NOT NULL,
    `verrouille` BOOLEAN NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `categorie_activite` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `designation` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `categorie_section` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `slug` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `category_article` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `chat` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `expediteur_id` INTEGER NOT NULL,
    `cours_id` INTEGER NOT NULL,
    `saison_id` INTEGER NULL,
    `message` VARCHAR(255) NOT NULL,
    `created_at` DATETIME(0) NOT NULL,

    INDEX `IDX_659DF2AA10335F61`(`expediteur_id`),
    INDEX `IDX_659DF2AA7ECF78B0`(`cours_id`),
    INDEX `IDX_659DF2AAF965414C`(`saison_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `consultation_chat` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `utilisateur_id` INTEGER NOT NULL,
    `cours_id` INTEGER NOT NULL,
    `date_consultation` DATETIME(0) NOT NULL,

    INDEX `IDX_4E5472607ECF78B0`(`cours_id`),
    INDEX `IDX_4E547260FB88E14F`(`utilisateur_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `contact_pratiquant` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `pratiquant_id` INTEGER NOT NULL,
    `nom` VARCHAR(255) NOT NULL,
    `prenom` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `portable` VARCHAR(255) NOT NULL,

    INDEX `IDX_5AE29E6FA5942E30`(`pratiquant_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `container` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `evenement_id` INTEGER NOT NULL,
    `nom` VARCHAR(255) NOT NULL,
    `x` INTEGER NULL,
    `y` INTEGER NULL,
    `angle` INTEGER NULL,
    `largeur` INTEGER NULL,
    `hauteur` INTEGER NULL,
    `nb_ligne` INTEGER NOT NULL,
    `z` INTEGER NULL,
    `price_place` DOUBLE NULL,

    INDEX `IDX_C7A2EC1BFD02F13`(`evenement_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `corp_facture` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cours` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `activite_id` INTEGER NOT NULL,
    `intervenant_id` INTEGER NOT NULL,
    `saison_id` INTEGER NOT NULL,
    `nom` VARCHAR(255) NOT NULL,

    INDEX `IDX_FDCA8C9C9B0F88B1`(`activite_id`),
    INDEX `IDX_FDCA8C9CAB9A1716`(`intervenant_id`),
    INDEX `IDX_FDCA8C9CF965414C`(`saison_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cp` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `doctrine_migration_versions` (
    `version` VARCHAR(191) NOT NULL,
    `executed_at` DATETIME(0) NULL,
    `execution_time` INTEGER NULL,

    PRIMARY KEY (`version`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `document` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `pratiquant_id` INTEGER NOT NULL,
    `type_id` INTEGER NULL,
    `nom` VARCHAR(255) NOT NULL,
    `date_certificat` DATETIME(0) NULL,
    `designation` VARCHAR(255) NOT NULL,

    INDEX `IDX_D8698A76A5942E30`(`pratiquant_id`),
    INDEX `IDX_D8698A76C54C8C93`(`type_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `dossier` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `saison_id` INTEGER NOT NULL,
    `adherent_id` INTEGER NOT NULL,
    `bulletin_valide` BOOLEAN NOT NULL,
    `bulletin_adhesion` VARCHAR(255) NULL,
    `dossier_verrouille` BOOLEAN NOT NULL,
    `remarque` VARCHAR(255) NULL,
    `locked` BOOLEAN NOT NULL,
    `note_lock` VARCHAR(255) NULL,

    INDEX `IDX_3D48E03725F06C53`(`adherent_id`),
    INDEX `IDX_3D48E037F965414C`(`saison_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `evenement` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `saison_id` INTEGER NULL,
    `section_id` INTEGER NULL,
    `nom` VARCHAR(255) NOT NULL,
    `actif` BOOLEAN NOT NULL,
    `description` LONGTEXT NOT NULL,
    `image` VARCHAR(255) NULL,
    `image_b` VARCHAR(255) NULL,
    `updated_at` DATETIME(0) NULL,
    `localisation` VARCHAR(255) NOT NULL,
    `payant` BOOLEAN NOT NULL,
    `plan` BOOLEAN NOT NULL,
    `quota` INTEGER NOT NULL,
    `largeur` INTEGER NULL,
    `hauteur` INTEGER NULL,
    `description_billet` LONGTEXT NULL,

    INDEX `IDX_B26681ED823E37A`(`section_id`),
    INDEX `IDX_B26681EF965414C`(`saison_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `information` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `description_inscription` LONGTEXT NULL,
    `condition_de_vente` LONGTEXT NULL,
    `paiement` LONGTEXT NULL,
    `entete_bulletin` LONGTEXT NULL,
    `nom_structure` VARCHAR(255) NULL,
    `signature` VARCHAR(255) NULL,
    `entete_facture` LONGTEXT NULL,
    `pied_facture` LONGTEXT NULL,
    `corps_facture` LONGTEXT NULL,
    `adresse` VARCHAR(255) NULL,
    `code_postal` INTEGER NULL,
    `ville` VARCHAR(255) NULL,
    `creation_dossier` BOOLEAN NULL,
    `modification_dossier` BOOLEAN NULL,
    `cours_visible` BOOLEAN NULL,
    `description_dossier` LONGTEXT NULL,
    `vitrine` VARCHAR(255) NOT NULL,
    `espace` VARCHAR(255) NOT NULL,
    `nb_sms` INTEGER NULL,
    `stripe` BOOLEAN NOT NULL,
    `boutique_presentation` LONGTEXT NOT NULL,
    `boutique_paiement` LONGTEXT NOT NULL,
    `boutique_livraison` LONGTEXT NOT NULL,
    `boutique_stripe` BOOLEAN NOT NULL,
    `boutique_active` BOOLEAN NOT NULL,
    `boutique_ouvert` BOOLEAN NOT NULL,
    `reservation_presentation` LONGTEXT NOT NULL,
    `reservation_stripe` BOOLEAN NOT NULL,
    `reservation_active` BOOLEAN NOT NULL,
    `mensuration_pratiquant` BOOLEAN NULL,
    `site` BOOLEAN NOT NULL,
    `lien_live` VARCHAR(255) NULL,
    `live` BOOLEAN NOT NULL,
    `info_inscription` VARCHAR(255) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `inscription` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `pratiquant_id` INTEGER NOT NULL,
    `activite_id` INTEGER NOT NULL,
    `dossier_id` INTEGER NOT NULL,
    `document_id` INTEGER NULL,
    `cours_id` INTEGER NULL,
    `certificat_obligatoire` BOOLEAN NOT NULL,
    `certificat_valide` BOOLEAN NOT NULL,
    `statut` VARCHAR(255) NOT NULL,
    `date_changement_statut` DATETIME(0) NOT NULL,
    `remarque` VARCHAR(255) NULL,
    `transmis_assureur` BOOLEAN NOT NULL,
    `demande` VARCHAR(255) NULL,
    `demande_particuliere` VARCHAR(255) NULL,
    `canceled` INTEGER NOT NULL DEFAULT 0,
    `canceled_date` DATE NULL,

    INDEX `IDX_5E90F6D6611C0C56`(`dossier_id`),
    INDEX `IDX_5E90F6D67ECF78B0`(`cours_id`),
    INDEX `IDX_5E90F6D69B0F88B1`(`activite_id`),
    INDEX `IDX_5E90F6D6A5942E30`(`pratiquant_id`),
    INDEX `IDX_5E90F6D6C33F7837`(`document_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mensuration` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `taille` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `menu` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(255) NOT NULL,
    `description` LONGTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `messages` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `expediteur_id` INTEGER NOT NULL,
    `destinataire_id` INTEGER NOT NULL,
    `saison_id` INTEGER NULL,
    `titre` VARCHAR(255) NOT NULL,
    `message` LONGTEXT NOT NULL,
    `created_at` DATETIME(0) NOT NULL,
    `is_read` BOOLEAN NOT NULL,
    `marque` BOOLEAN NULL,

    INDEX `IDX_DB021E9610335F61`(`expediteur_id`),
    INDEX `IDX_DB021E96A4F84F6E`(`destinataire_id`),
    INDEX `IDX_DB021E96F965414C`(`saison_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `messenger_messages` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `body` LONGTEXT NOT NULL,
    `headers` LONGTEXT NOT NULL,
    `queue_name` VARCHAR(190) NOT NULL,
    `created_at` DATETIME(0) NOT NULL,
    `available_at` DATETIME(0) NOT NULL,
    `delivered_at` DATETIME(0) NULL,

    INDEX `IDX_75EA56E016BA31DB`(`delivered_at`),
    INDEX `IDX_75EA56E0E3BD61CE`(`available_at`),
    INDEX `IDX_75EA56E0FB7336F0`(`queue_name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `niveau_tarifaire` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `operateur` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `operateur_niveau_tarifaire` (
    `operateur_id` INTEGER NOT NULL,
    `niveau_tarifaire_id` INTEGER NOT NULL,

    INDEX `IDX_C38F9F8E3F192FC`(`operateur_id`),
    INDEX `IDX_C38F9F8EB764949F`(`niveau_tarifaire_id`),
    PRIMARY KEY (`operateur_id`, `niveau_tarifaire_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `option` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `evenement_id` INTEGER NULL,
    `name` VARCHAR(255) NOT NULL,
    `price` INTEGER NOT NULL,

    INDEX `IDX_5A8600B0FD02F13`(`evenement_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `option_purchase` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `option_evenement_id` INTEGER NULL,
    `utilisateur_id` INTEGER NULL,
    `delivery` BOOLEAN NOT NULL,

    INDEX `IDX_4160A09FC3FA6CDF`(`option_evenement_id`),
    INDEX `IDX_4160A09FFB88E14F`(`utilisateur_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paiement` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `dossier_id` INTEGER NOT NULL,
    `type_de_paiement_id` INTEGER NOT NULL,
    `banque_id` INTEGER NULL,
    `saison_id` INTEGER NOT NULL,
    `montant` DOUBLE NOT NULL,
    `encaissement` VARCHAR(255) NULL,
    `remarque` VARCHAR(255) NULL,
    `reference` VARCHAR(255) NULL,
    `encaisse` BOOLEAN NOT NULL,

    INDEX `IDX_B1DC7A1E37E080D9`(`banque_id`),
    INDEX `IDX_B1DC7A1E611C0C56`(`dossier_id`),
    INDEX `IDX_B1DC7A1EEF109C5`(`type_de_paiement_id`),
    INDEX `IDX_B1DC7A1EF965414C`(`saison_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paiement_boutique` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type_de_paiement_id` INTEGER NOT NULL,
    `banque_id` INTEGER NULL,
    `saison_id` INTEGER NOT NULL,
    `purchase_id` INTEGER NOT NULL,
    `montant` DOUBLE NOT NULL,
    `encaissement` VARCHAR(255) NULL,
    `remarque` VARCHAR(255) NULL,
    `reference` VARCHAR(255) NULL,
    `encaisse` BOOLEAN NOT NULL,

    INDEX `IDX_6B85C46E37E080D9`(`banque_id`),
    INDEX `IDX_6B85C46E558FBEB9`(`purchase_id`),
    INDEX `IDX_6B85C46EEF109C5`(`type_de_paiement_id`),
    INDEX `IDX_6B85C46EF965414C`(`saison_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paiement_evenement` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type_de_paiement_id` INTEGER NOT NULL,
    `banque_id` INTEGER NULL,
    `saison_id` INTEGER NOT NULL,
    `evenement_id` INTEGER NULL,
    `utilisateur_id` INTEGER NOT NULL,
    `montant` DOUBLE NOT NULL,
    `encaissement` VARCHAR(255) NULL,
    `remarque` VARCHAR(255) NULL,
    `reference` VARCHAR(255) NULL,
    `encaisse` BOOLEAN NOT NULL,

    INDEX `IDX_CDE0165437E080D9`(`banque_id`),
    INDEX `IDX_CDE01654EF109C5`(`type_de_paiement_id`),
    INDEX `IDX_CDE01654F965414C`(`saison_id`),
    INDEX `IDX_CDE01654FB88E14F`(`utilisateur_id`),
    INDEX `IDX_CDE01654FD02F13`(`evenement_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `place` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `container_id` INTEGER NOT NULL,
    `utilisateur_id` INTEGER NULL,
    `nom` VARCHAR(255) NOT NULL,
    `verrouiller` BOOLEAN NOT NULL,
    `updated_at` DATETIME(0) NULL,

    INDEX `IDX_741D53CDBC21F742`(`container_id`),
    INDEX `IDX_741D53CDFB88E14F`(`utilisateur_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pratiquant` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `utilisateur_id` INTEGER NOT NULL,
    `taille_haut_id` INTEGER NULL,
    `taille_bas_id` INTEGER NULL,
    `nom` VARCHAR(255) NOT NULL,
    `prenom` VARCHAR(255) NOT NULL,
    `naissance` DATETIME(0) NOT NULL,
    `sexe` VARCHAR(1) NOT NULL,

    INDEX `IDX_9D5BC7F8789F4F70`(`taille_haut_id`),
    INDEX `IDX_9D5BC7F8D0A99A79`(`taille_bas_id`),
    INDEX `IDX_9D5BC7F8FB88E14F`(`utilisateur_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `presence` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `pratiquant_id` INTEGER NOT NULL,
    `cours_id` INTEGER NOT NULL,
    `saison_id` INTEGER NOT NULL,
    `create_at` DATETIME(0) NOT NULL,

    INDEX `IDX_6977C7A57ECF78B0`(`cours_id`),
    INDEX `IDX_6977C7A5A5942E30`(`pratiquant_id`),
    INDEX `IDX_6977C7A5F965414C`(`saison_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `category_id` INTEGER NULL,
    `name` VARCHAR(255) NOT NULL,
    `slug` VARCHAR(255) NOT NULL,
    `created_at` DATETIME(0) NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `updated_at` DATETIME(0) NOT NULL,
    `short_description` LONGTEXT NOT NULL,
    `actif` BOOLEAN NOT NULL,
    `en_avant` BOOLEAN NOT NULL,

    INDEX `IDX_D34A04AD12469DE2`(`category_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `purchase` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `utilisateur_id` INTEGER NULL,
    `saison_id` INTEGER NULL,
    `total` DOUBLE NOT NULL,
    `status` VARCHAR(255) NOT NULL,
    `purchase_at` DATETIME(0) NOT NULL,

    INDEX `IDX_6117D13BF965414C`(`saison_id`),
    INDEX `IDX_6117D13BFB88E14F`(`utilisateur_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `purchase_item` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `taille_id` INTEGER NULL,
    `purchase_id` INTEGER NOT NULL,
    `product_name` VARCHAR(255) NOT NULL,
    `product_price` DOUBLE NOT NULL,
    `quantity` INTEGER NOT NULL,
    `total` DOUBLE NOT NULL,
    `livraison` BOOLEAN NULL,

    INDEX `IDX_6FA8ED7D558FBEB9`(`purchase_id`),
    INDEX `IDX_6FA8ED7DFF25611A`(`taille_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `reduction` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `dossier_id` INTEGER NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `montant` DECIMAL(9, 2) NOT NULL,

    INDEX `IDX_B1E75468611C0C56`(`dossier_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `regle_tarifaire` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `niveau_id` INTEGER NOT NULL,
    `operateur_id` INTEGER NOT NULL,
    `saison_id` INTEGER NOT NULL,
    `montant` INTEGER NOT NULL,
    `nom` VARCHAR(255) NOT NULL,
    `parametre` INTEGER NULL,

    INDEX `IDX_510E52453F192FC`(`operateur_id`),
    INDEX `IDX_510E5245B3E9C81`(`niveau_id`),
    INDEX `IDX_510E5245F965414C`(`saison_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `regle_tarifaire_ville` (
    `regle_tarifaire_id` INTEGER NOT NULL,
    `ville_id` INTEGER NOT NULL,

    INDEX `IDX_591C019F7F25989B`(`regle_tarifaire_id`),
    INDEX `IDX_591C019FA73F0036`(`ville_id`),
    PRIMARY KEY (`regle_tarifaire_id`, `ville_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `reset_password_request` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `selector` VARCHAR(20) NOT NULL,
    `hashed_token` VARCHAR(100) NOT NULL,
    `requested_at` DATETIME(0) NOT NULL,
    `expires_at` DATETIME(0) NOT NULL,

    INDEX `IDX_7CE748AA76ED395`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `saison` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `saison` VARCHAR(255) NOT NULL,
    `debut` DATE NOT NULL,
    `fin` DATE NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `section` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `categorie_section_id` INTEGER NOT NULL,
    `libelle` VARCHAR(255) NOT NULL,
    `ref_assureur` VARCHAR(255) NOT NULL,

    INDEX `IDX_2D737AEF46EA29D6`(`categorie_section_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `site` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `slogan` VARCHAR(255) NOT NULL,
    `description` LONGTEXT NOT NULL,
    `file` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sujet` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `destinataire_id` INTEGER NOT NULL,
    `sujet` VARCHAR(255) NOT NULL,
    `categorie` VARCHAR(255) NOT NULL,
    `verrouille` BOOLEAN NULL,

    INDEX `IDX_2E13599DA4F84F6E`(`destinataire_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `taille` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NULL,
    `name` VARCHAR(255) NOT NULL,
    `price` DOUBLE NOT NULL,

    INDEX `IDX_76508B384584665A`(`product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `todolist` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `utilisateur_id` INTEGER NOT NULL,
    `tache` VARCHAR(255) NOT NULL,
    `done` BOOLEAN NULL,

    INDEX `IDX_DD4DF6DBFB88E14F`(`utilisateur_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `type_de_document` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(255) NOT NULL,
    `verrouille` BOOLEAN NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `type_de_paiement` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `designation` VARCHAR(255) NOT NULL,
    `verrouille` BOOLEAN NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `utilisateur` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `cp_id` INTEGER NULL,
    `town_id` INTEGER NULL,
    `saison_id` INTEGER NULL,
    `email` VARCHAR(180) NOT NULL,
    `roles` JSON NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `adresse` LONGTEXT NOT NULL,
    `portable` VARCHAR(255) NOT NULL,
    `nom` VARCHAR(255) NOT NULL,
    `prenom` VARCHAR(255) NOT NULL,
    `is_verified` BOOLEAN NOT NULL,
    `registered_at` DATETIME(0) NOT NULL,
    `account_must_be_verified_before` DATETIME(0) NOT NULL,
    `registration_token` VARCHAR(255) NULL,
    `account_verified_at` DATETIME(0) NULL,
    `forgot_password_token` VARCHAR(255) NULL,
    `forgot_password_token_requested_at` DATETIME(0) NULL,
    `forgot_password_token_must_be_verified_before` DATETIME(0) NULL,
    `forgot_password_token_verified_at` DATETIME(0) NULL,
    `remarque` VARCHAR(255) NULL,
    `derniere_connexion` DATETIME(0) NULL,
    `avant_derniere_connexion` DATETIME(0) NULL,
    `quota_sms` INTEGER NULL,

    UNIQUE INDEX `UNIQ_1D1C63B3E7927C74`(`email`),
    INDEX `IDX_1D1C63B375E23604`(`town_id`),
    INDEX `IDX_1D1C63B3EA8F463E`(`cp_id`),
    INDEX `IDX_1D1C63B3F965414C`(`saison_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ville` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `cp_id` INTEGER NOT NULL,
    `nom_maj` VARCHAR(255) NOT NULL,
    `nom_min` VARCHAR(255) NOT NULL,

    INDEX `IDX_43C3D9C3EA8F463E`(`cp_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `activite` ADD CONSTRAINT `FK_B8755515BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie_activite`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `activite` ADD CONSTRAINT `FK_B8755515D823E37A` FOREIGN KEY (`section_id`) REFERENCES `section`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `activite` ADD CONSTRAINT `FK_B8755515F965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `article` ADD CONSTRAINT `FK_23A0E66BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `category_article`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `article` ADD CONSTRAINT `FK_23A0E66CCD7E912` FOREIGN KEY (`menu_id`) REFERENCES `menu`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `chat` ADD CONSTRAINT `FK_659DF2AA10335F61` FOREIGN KEY (`expediteur_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `chat` ADD CONSTRAINT `FK_659DF2AA7ECF78B0` FOREIGN KEY (`cours_id`) REFERENCES `cours`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `chat` ADD CONSTRAINT `FK_659DF2AAF965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `consultation_chat` ADD CONSTRAINT `FK_4E5472607ECF78B0` FOREIGN KEY (`cours_id`) REFERENCES `cours`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `consultation_chat` ADD CONSTRAINT `FK_4E547260FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `contact_pratiquant` ADD CONSTRAINT `FK_5AE29E6FA5942E30` FOREIGN KEY (`pratiquant_id`) REFERENCES `pratiquant`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `container` ADD CONSTRAINT `FK_C7A2EC1BFD02F13` FOREIGN KEY (`evenement_id`) REFERENCES `evenement`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `cours` ADD CONSTRAINT `FK_FDCA8C9C9B0F88B1` FOREIGN KEY (`activite_id`) REFERENCES `activite`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `cours` ADD CONSTRAINT `FK_FDCA8C9CAB9A1716` FOREIGN KEY (`intervenant_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `cours` ADD CONSTRAINT `FK_FDCA8C9CF965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `document` ADD CONSTRAINT `FK_D8698A76A5942E30` FOREIGN KEY (`pratiquant_id`) REFERENCES `pratiquant`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `document` ADD CONSTRAINT `FK_D8698A76C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type_de_document`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `dossier` ADD CONSTRAINT `FK_3D48E03725F06C53` FOREIGN KEY (`adherent_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `dossier` ADD CONSTRAINT `FK_3D48E037F965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `evenement` ADD CONSTRAINT `FK_B26681ED823E37A` FOREIGN KEY (`section_id`) REFERENCES `categorie_section`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `evenement` ADD CONSTRAINT `FK_B26681EF965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `inscription` ADD CONSTRAINT `FK_5E90F6D6611C0C56` FOREIGN KEY (`dossier_id`) REFERENCES `dossier`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `inscription` ADD CONSTRAINT `FK_5E90F6D67ECF78B0` FOREIGN KEY (`cours_id`) REFERENCES `cours`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `inscription` ADD CONSTRAINT `FK_5E90F6D69B0F88B1` FOREIGN KEY (`activite_id`) REFERENCES `activite`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `inscription` ADD CONSTRAINT `FK_5E90F6D6A5942E30` FOREIGN KEY (`pratiquant_id`) REFERENCES `pratiquant`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `inscription` ADD CONSTRAINT `FK_5E90F6D6C33F7837` FOREIGN KEY (`document_id`) REFERENCES `document`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `messages` ADD CONSTRAINT `FK_DB021E9610335F61` FOREIGN KEY (`expediteur_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `messages` ADD CONSTRAINT `FK_DB021E96A4F84F6E` FOREIGN KEY (`destinataire_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `messages` ADD CONSTRAINT `FK_DB021E96F965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `operateur_niveau_tarifaire` ADD CONSTRAINT `FK_C38F9F8E3F192FC` FOREIGN KEY (`operateur_id`) REFERENCES `operateur`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `operateur_niveau_tarifaire` ADD CONSTRAINT `FK_C38F9F8EB764949F` FOREIGN KEY (`niveau_tarifaire_id`) REFERENCES `niveau_tarifaire`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `option` ADD CONSTRAINT `FK_5A8600B0FD02F13` FOREIGN KEY (`evenement_id`) REFERENCES `evenement`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `option_purchase` ADD CONSTRAINT `FK_4160A09FC3FA6CDF` FOREIGN KEY (`option_evenement_id`) REFERENCES `option`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `option_purchase` ADD CONSTRAINT `FK_4160A09FFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement` ADD CONSTRAINT `FK_B1DC7A1E37E080D9` FOREIGN KEY (`banque_id`) REFERENCES `banque`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement` ADD CONSTRAINT `FK_B1DC7A1E611C0C56` FOREIGN KEY (`dossier_id`) REFERENCES `dossier`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement` ADD CONSTRAINT `FK_B1DC7A1EEF109C5` FOREIGN KEY (`type_de_paiement_id`) REFERENCES `type_de_paiement`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement` ADD CONSTRAINT `FK_B1DC7A1EF965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement_boutique` ADD CONSTRAINT `FK_6B85C46E37E080D9` FOREIGN KEY (`banque_id`) REFERENCES `banque`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement_boutique` ADD CONSTRAINT `FK_6B85C46E558FBEB9` FOREIGN KEY (`purchase_id`) REFERENCES `purchase`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement_boutique` ADD CONSTRAINT `FK_6B85C46EEF109C5` FOREIGN KEY (`type_de_paiement_id`) REFERENCES `type_de_paiement`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement_boutique` ADD CONSTRAINT `FK_6B85C46EF965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement_evenement` ADD CONSTRAINT `FK_CDE0165437E080D9` FOREIGN KEY (`banque_id`) REFERENCES `banque`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement_evenement` ADD CONSTRAINT `FK_CDE01654EF109C5` FOREIGN KEY (`type_de_paiement_id`) REFERENCES `type_de_paiement`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement_evenement` ADD CONSTRAINT `FK_CDE01654F965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement_evenement` ADD CONSTRAINT `FK_CDE01654FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `paiement_evenement` ADD CONSTRAINT `FK_CDE01654FD02F13` FOREIGN KEY (`evenement_id`) REFERENCES `evenement`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `place` ADD CONSTRAINT `FK_741D53CDBC21F742` FOREIGN KEY (`container_id`) REFERENCES `container`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `place` ADD CONSTRAINT `FK_741D53CDFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `pratiquant` ADD CONSTRAINT `FK_9D5BC7F8789F4F70` FOREIGN KEY (`taille_haut_id`) REFERENCES `mensuration`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `pratiquant` ADD CONSTRAINT `FK_9D5BC7F8D0A99A79` FOREIGN KEY (`taille_bas_id`) REFERENCES `mensuration`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `pratiquant` ADD CONSTRAINT `FK_9D5BC7F8FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `presence` ADD CONSTRAINT `FK_6977C7A57ECF78B0` FOREIGN KEY (`cours_id`) REFERENCES `cours`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `presence` ADD CONSTRAINT `FK_6977C7A5A5942E30` FOREIGN KEY (`pratiquant_id`) REFERENCES `pratiquant`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `presence` ADD CONSTRAINT `FK_6977C7A5F965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `product` ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `purchase` ADD CONSTRAINT `FK_6117D13BF965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `purchase` ADD CONSTRAINT `FK_6117D13BFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `purchase_item` ADD CONSTRAINT `FK_6FA8ED7D558FBEB9` FOREIGN KEY (`purchase_id`) REFERENCES `purchase`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `purchase_item` ADD CONSTRAINT `FK_6FA8ED7DFF25611A` FOREIGN KEY (`taille_id`) REFERENCES `taille`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `reduction` ADD CONSTRAINT `FK_B1E75468611C0C56` FOREIGN KEY (`dossier_id`) REFERENCES `dossier`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `regle_tarifaire` ADD CONSTRAINT `FK_510E52453F192FC` FOREIGN KEY (`operateur_id`) REFERENCES `operateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `regle_tarifaire` ADD CONSTRAINT `FK_510E5245B3E9C81` FOREIGN KEY (`niveau_id`) REFERENCES `niveau_tarifaire`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `regle_tarifaire` ADD CONSTRAINT `FK_510E5245F965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `regle_tarifaire_ville` ADD CONSTRAINT `FK_591C019F7F25989B` FOREIGN KEY (`regle_tarifaire_id`) REFERENCES `regle_tarifaire`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `regle_tarifaire_ville` ADD CONSTRAINT `FK_591C019FA73F0036` FOREIGN KEY (`ville_id`) REFERENCES `ville`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `reset_password_request` ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `section` ADD CONSTRAINT `FK_2D737AEF46EA29D6` FOREIGN KEY (`categorie_section_id`) REFERENCES `categorie_section`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `sujet` ADD CONSTRAINT `FK_2E13599DA4F84F6E` FOREIGN KEY (`destinataire_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `taille` ADD CONSTRAINT `FK_76508B384584665A` FOREIGN KEY (`product_id`) REFERENCES `product`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `todolist` ADD CONSTRAINT `FK_DD4DF6DBFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `utilisateur` ADD CONSTRAINT `FK_1D1C63B375E23604` FOREIGN KEY (`town_id`) REFERENCES `ville`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `utilisateur` ADD CONSTRAINT `FK_1D1C63B3EA8F463E` FOREIGN KEY (`cp_id`) REFERENCES `cp`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `utilisateur` ADD CONSTRAINT `FK_1D1C63B3F965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `ville` ADD CONSTRAINT `FK_43C3D9C3EA8F463E` FOREIGN KEY (`cp_id`) REFERENCES `cp`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

