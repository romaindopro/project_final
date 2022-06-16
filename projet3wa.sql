-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 16 juin 2022 à 09:50
-- Version du serveur : 10.7.3-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet3wa`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_date` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E66A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `user_id`, `title`, `content`, `published_date`, `image`) VALUES
(4, 1, 'vietnam', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', '2022-04-13', 'rond-GV-6256cdcba9b3e.png'),
(5, 1, 'test', 'Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu\'il n\'y a rien d\'embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d\'humour.\r\nPlusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu\'il n\'y a rien d\'embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d\'humour.', '2022-04-13', 'rond-PL-6256d18acded3.png'),
(6, 1, 'tesst2', 'Contrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est intéressé à un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du \"De Finibus Bonorum et Malorum\" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l\'éthique. Les premières lignes du Lorem Ipsum, \"Lorem i', '2022-04-14', 'acceuil-6258076a27322.jpg'),
(7, 1, 'test3', 'Contrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est intéressé à un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du \"De Finibus Bonorum et Malorum\" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l\'éthique. Les premières lignes du Lorem Ipsum, \"Lorem i', '2022-04-14', 'IMG-20200119-204952-066-625808ab64374.jpg'),
(8, 1, 'testdate', 'Contrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est intéressé à un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du \"De Finibus Bonorum et Malorum\" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l\'éthique. Les premières lignes du Lorem Ipsum, \"Lorem i', '2022-04-14', '11-62580f74a4da9.jpg'),
(9, 1, 'vietnam', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,', '2022-04-18', '6-gf-625d8026340eb.jpg'),
(10, 1, 'les filles', 'Les filles en vacances à Soulac 2022', '2022-05-10', 'image000005-627a13a07589b.jpg'),
(11, 1, 'mariage', 'ceci est un mariage', '2022-06-10', 'img094-62a3339885f6d.jpg'),
(12, 1, 'demo', 'imgkojaokvorajvokraeojvaeorpjvpo', '2022-06-16', 'deodato-keller-wedding-photographer-dordogne-bordeaux-bergerac-301-62aaf00235dac.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'test', 'do-romain@hotmail.fr', 'gzragrar', '2022-06-15 11:46:10'),
(2, 'test', 'do-romain@hotmail.fr', 'gzragrar', '2022-06-15 11:49:16'),
(3, 'test', 'do-romain@hotmail.fr', 'gzragrar', '2022-06-15 11:49:35'),
(4, 'test', 'do-romain@hotmail.fr', 'gzragrar', '2022-06-15 11:50:48'),
(5, 'Do Romain', 'do-romain@hotmail.fr', '2eme essai de message', '2022-06-15 11:51:12'),
(6, 'Do Romain', 'do-romain@hotmail.fr', '2eme essai de message', '2022-06-15 11:57:41'),
(7, 'jules', 'ihefihfe@hzaifhfh.fr', 'qvrrbbb', '2022-06-15 11:58:12'),
(8, 'jules', 'ihefihfe@hzaifhfh.fr', 'qvrrbbb', '2022-06-15 12:00:03'),
(9, 'jules', 'ihefihfe@hzaifhfh.fr', 'qvrrbbb', '2022-06-15 12:01:11'),
(10, 'jules', 'ihefihfe@hzaifhfh.fr', 'qvrrbbb', '2022-06-15 12:01:31'),
(11, 'jules', 'ihefihfe@hzaifhfh.fr', 'qvrrbbb', '2022-06-15 12:02:16'),
(12, 'jules', 'ihefihfe@hzaifhfh.fr', 'qvrrbbb', '2022-06-15 12:02:34'),
(13, 'jules', 'ihefihfe@hzaifhfh.fr', 'qvrrbbb', '2022-06-15 12:03:17'),
(14, 'jules', 'ihefihfe@hzaifhfh.fr', 'qvrrbbb', '2022-06-15 12:03:36'),
(15, 'jules', 'ihefihfe@hzaifhfh.fr', 'qvrrbbb', '2022-06-15 12:05:42'),
(16, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:12:35'),
(17, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:13:26'),
(18, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:16:45'),
(19, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:17:38'),
(20, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:24:28'),
(21, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:24:39'),
(22, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:25:31'),
(23, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:26:44'),
(24, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:28:44'),
(25, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:29:12'),
(26, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:29:46'),
(27, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:31:27'),
(28, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:32:40'),
(29, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:34:33'),
(30, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:39:05'),
(31, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 14:41:26'),
(32, 'test', 'do-romain@hotmail.fr', 'qgrhah', '2022-06-15 15:03:14'),
(33, 'test mail', 'do-romain@hotmail.fr', 'Ceci est un test', '2022-06-15 15:06:06'),
(34, 'retest mail', 'do-romain@hotmail.fr', 'Ceci est un retest', '2022-06-15 15:07:46'),
(35, 'retest mail', 'do-romain@hotmail.fr', 'ancore un test', '2022-06-15 15:49:06'),
(36, 'test', 'romaindo.pro@gmail.com', 'hzuehfhfoie', '2022-06-16 08:09:50'),
(37, 'test', 'do-romain@hotmail.fr', 'qerhqrqhjtjt', '2022-06-16 08:52:13');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220411113913', '2022-04-11 11:39:24', 51),
('DoctrineMigrations\\Version20220411122741', '2022-04-11 12:27:50', 87),
('DoctrineMigrations\\Version20220412081947', '2022-04-12 08:20:03', 81),
('DoctrineMigrations\\Version20220614195805', '2022-06-14 19:58:38', 250),
('DoctrineMigrations\\Version20220614212032', '2022-06-14 21:20:39', 48),
('DoctrineMigrations\\Version20220615072601', '2022-06-15 07:26:10', 52);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D6498D93D649` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `user`, `roles`, `password`) VALUES
(1, 'admin', '[\"ROLE_ADMIN\"]', '$2y$13$Ln6l.gJODo.iLJMDUmXydeRv5nfnHBkwboILdCEPavjsUTCV9k6Zu');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
