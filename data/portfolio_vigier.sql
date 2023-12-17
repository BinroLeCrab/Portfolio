-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 17 déc. 2023 à 18:16
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portfolio_vigier`
--

-- --------------------------------------------------------

--
-- Structure de la table `etiquettes`
--

DROP TABLE IF EXISTS `etiquettes`;
CREATE TABLE IF NOT EXISTS `etiquettes` (
  `id_label` int NOT NULL AUTO_INCREMENT,
  `nom_label` varchar(128) DEFAULT NULL,
  `couleur_label` varchar(128) DEFAULT NULL,
  `couleur_texte` varchar(30) NOT NULL DEFAULT 'var(--Black)',
  PRIMARY KEY (`id_label`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `etiquettes`
--

INSERT INTO `etiquettes` (`id_label`, `nom_label`, `couleur_label`, `couleur_texte`) VALUES
(1, 'Dev Front', '#f2c033e6', 'var(--Black)'),
(2, 'Dev Back', '#288edae6', 'var(--White)'),
(3, 'Base de Données', '#f16529e6', 'var(--Black)'),
(4, 'Graphisme', '#ca1234e6', 'var(--Black)'),
(5, 'Infographie', '#264de4e6', 'var(--Black)'),
(6, 'Affiche', '#0acf83e6', 'var(--Black)'),
(7, 'UI Design', '#5889bae6', 'var(--White)'),
(8, 'Dataviz', '#1a940ae6', 'var(--White)'),
(9, 'Maquette d’interface', '#3ec03be6', 'var(--Black)'),
(10, 'UX Design', '#a259ffe6', 'var(--Black)'),
(11, 'Charte Graphique', '#ff3300e6', 'var(--Black)'),
(12, 'Audiovisuel', '#ca1280e6', 'var(--Black)'),
(13, 'Documentaire', '#288edae6', 'var(--Black)'),
(14, 'Montage Vidéo', '#ab9a64e6', 'var(--Black)');

-- --------------------------------------------------------

--
-- Structure de la table `eti_proj`
--

DROP TABLE IF EXISTS `eti_proj`;
CREATE TABLE IF NOT EXISTS `eti_proj` (
  `id_projet` char(3) NOT NULL,
  `id_label` int NOT NULL,
  PRIMARY KEY (`id_projet`,`id_label`),
  KEY `id_label` (`id_label`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `eti_proj`
--

INSERT INTO `eti_proj` (`id_projet`, `id_label`) VALUES
('AfB', 4),
('AfB', 5),
('AfB', 6),
('AMP', 4),
('AMP', 7),
('AMP', 10),
('DAT', 1),
('DAT', 7),
('DAT', 8),
('IME', 1),
('IME', 2),
('IME', 3),
('MAN', 1),
('MAN', 2),
('PEA', 4),
('PEA', 7),
('SYN', 7),
('SYN', 9);

-- --------------------------------------------------------

--
-- Structure de la table `outils`
--

DROP TABLE IF EXISTS `outils`;
CREATE TABLE IF NOT EXISTS `outils` (
  `id_outil` int NOT NULL AUTO_INCREMENT,
  `nom_outil` varchar(128) DEFAULT NULL,
  `icon` text,
  PRIMARY KEY (`id_outil`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `outils`
--

INSERT INTO `outils` (`id_outil`, `nom_outil`, `icon`) VALUES
(1, 'HTML', 'img/outils/html.svg'),
(2, 'CSS3', 'img/outils/css.svg'),
(3, 'PHP', 'img/outils/php.svg'),
(4, 'JavaScript', 'img/outils/js.svg'),
(5, 'Adobe Illustrator', 'img/outils/ai.svg'),
(6, 'JavaScript', 'img/outils/js.svg'),
(7, 'Figma', 'img/outils/fig.svg');

-- --------------------------------------------------------

--
-- Structure de la table `outil_proj`
--

DROP TABLE IF EXISTS `outil_proj`;
CREATE TABLE IF NOT EXISTS `outil_proj` (
  `id_projet` char(3) NOT NULL,
  `id_outil` int NOT NULL,
  PRIMARY KEY (`id_projet`,`id_outil`),
  KEY `id_outil` (`id_outil`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `outil_proj`
--

INSERT INTO `outil_proj` (`id_projet`, `id_outil`) VALUES
('AfB', 5),
('AMP', 7),
('DAT', 1),
('DAT', 2),
('DAT', 6),
('IME', 1),
('IME', 2),
('IME', 3),
('MAN', 1),
('MAN', 2),
('MAN', 3),
('PEA', 5),
('PEA', 7),
('SYN', 7);

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

DROP TABLE IF EXISTS `projets`;
CREATE TABLE IF NOT EXISTS `projets` (
  `id_projet` char(3) NOT NULL,
  `nom_projet` varchar(128) DEFAULT NULL,
  `date_créa` varchar(30) DEFAULT NULL,
  `accroche` text,
  `visuel` text,
  `cover` text NOT NULL,
  `detail` text,
  `recent` int NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'var(--Blue)',
  PRIMARY KEY (`id_projet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id_projet`, `nom_projet`, `date_créa`, `accroche`, `visuel`, `cover`, `detail`, `recent`, `type`) VALUES
('AfB', 'Affiches Bauhaus', 'Mars 2023', 'Ensemble d\'affiches créées sur Adobe Illustrator à partir d\'une affiche existante sur le thème du Bauhaus.', 'img/projet/AfB/AfB_01.png', 'img/projet/AfB/AfB_cover.png', '<article class=\"ArticleTop\">\n					<div>\n						<p>Ce projet se compose de trois affiches réalisées à partir d\'une affiche préexistante du mouvement allemand Bauhaus. L\'objectif de ce projet était de recréer l\'affiche d\'origine en trois versions : la première restant fidèle à l\'originale, la deuxième adoptant une approche typographique, et enfin la troisième étant une réinterprétation personnelle.</p>\n						<p>Les affiches ont été conçues sur Adobe Illustrator.</p>\n					</div>\n					<a class=\"Btn BtnProj bloc noDeco\" href=\"https://drive.google.com/drive/u/1/folders/1OUIDEKu3BAI7Ge4Mo51ifl_0g50rRWm0\">Voir les affiches</a>\n					<img class=\"Apercu\" src=\"img/projet/AfB/AfB_01.png\" alt=\"affiche au format 16:9\"/>\n				</article>\n\n				<article class=\"art\">\n					<h2>Les Affiches</h2>\n					<div class=\"visuels\" style=\"--nbCol : 3;\">\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/AfB/AfB_03.jpg\" alt=\"Affiche originale/recrée\"/>\n							<figcaption>Affiche originale/recrée.</figcaption>\n						</figure>\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/AfB/AfB_04.jpg\" alt=\"Affiche version typographique\"/>\n							<figcaption>Affiche version typographique.</figcaption>\n						</figure>\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/AfB/AfB_02.jpg\" alt=\"Affiche réinterprétée\"/>\n							<figcaption>Affiche réinterprétée.</figcaption>\n						</figure>\n					</div>\n				</article>\n\n				<article>\n					<h2>L\'Affiche Réinterprétée</h2>\n					<div class=\"asideL\">\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/AfB/AfB_02.jpg\" alt=\"Affiche réinterprétée\"/>\n							<figcaption>Affiche réinterprétée.</figcaption>\n						</figure>\n						<div>\n							<p>Pour la version réinterprétée, j\'ai opté pour quelque chose de plus moderne tout en conservant l\'esthétique du Bauhaus, en utilisant des motifs variés accumulés les uns sur les autres et des couleurs à la fois restreintes et vives.</p>\n							<p>J\'ai veillé à ce que le texte dialogue avec les motifs, de manière à ce qu\'il soit vraiment intégré visuellement, inséparable du visuel et ne pouvant être ni remplacé ni supprimé sans altérer le sens de l\'affiche.</p>\n							<p>Par ailleurs, j\'ai souhaité m\'éloigner des cercles omniprésents dans l\'affiche originale en diversifiant les formes des motifs, incluant des triangles, des carrés et des lignes, éléments caractéristiques du style Bauhaus</p>\n						</div>\n					</div>\n				</article>\n\n				<article class=\"Image\">\n					<img class=\"Apercu\" src=\"img/projet/AfB/AfB_05.jpg\" alt=\"Mockup de l\'affiche\"/>\n				</article>\n\n				<article>\n					<a href=\"projet\" class=\"blue noDeco Animtrans\">Retour à la liste des projets</a>\n				</article>\n\n				<article class=\"Equipe\">\n					<p>Travail réalisé Seul</p>\n				</article>', 4, 'var(--Blue)'),
('IME', 'Site In My Ears', 'Juin 2023', 'Site web de recommandations musicales réalisé grâce à des fichiers PHP et une base de données SQL.', 'img/projet/IME/IME_01.png', 'img/projet/IME/IME_cover.png', '<article class=\"ArticleTop\">\r\n					<div>\r\n						<p>Ce site web a été réalisé lors d\'un projet étudiant. L\'objectif était de créer un site vitrine sur un thème que l\'on aimait, le tout sans avoir de page HTML statique et en utilisant le PHP pour les générer à partir d\'une base de données en SQL.</p>\r\n						<p>Pour ma part, j\'ai donc choisi de réaliser un site sur mes recommandations musicales du moment en présentant à chaque fois le groupe ou l\'artiste, son ou ses genres de musiques, la liste des albums sortis, des liens vers les réseaux sociaux et les plateformes de streaming, des intégrations Spotify et YouTube, etc.</p>\r\n						<p>Le site web est également accompagné d\'un système de compte et de commentaires, et est entièrement responsive sur desktop, tablette et smartphone.</p>\r\n					</div>\r\n					<a class=\"Btn BtnProj bloc noDeco\" href=\"https://inmyears.robinvigier.fr/\">Visiter le site</a>\r\n					<img class=\"Apercu\" src=\"img/projet/IME/IME_02.png\" alt=\"capture d\'écran de la page d\'accueil\"/>\r\n				</article>\r\n\r\n				<article class=\"art\">\r\n					<h2>Visuels</h2>\r\n					<div class=\"visuels\">\r\n						<figure>\r\n							<img class=\"Apercu\" src=\"img/projet/IME/IME_03.png\" alt=\"capture d\'écran de la grille des artistes\"/>\r\n							<figcaption>Capture d\'écran de la grille des artistes.</figcaption>\r\n						</figure>\r\n						<figure>\r\n							<img class=\"Apercu\" src=\"img/projet/IME/IME_04.png\" alt=\"capture d\'écran d\'une page artiste\"/>\r\n							<figcaption>Capture d\'écran d\'une page artiste.</figcaption>\r\n						</figure>\r\n					</div>\r\n				</article>\r\n\r\n				<article>\r\n					<a href=\"projet\" class=\"blue noDeco Animtrans\">Retour à la liste des projets</a>\r\n				</article>\r\n\r\n				<article class=\"Equipe\">\r\n					<p>Travail réalisé Seul</p>\r\n				</article>', 6, 'var(--Blue)'),
('DAT', 'Oscars Dataviz', 'Novembre 2023', 'Site de visualisation de données autour des statistiques liées aux nominations des Oscars.', 'img/projet/DAT/DAT_01.png', 'img/projet/DAT/DAT_cover.png', '<article class=\"ArticleTop\">\n					<div>\n						<p>Oscars dataviz est un site de visualisation de données et de statistiques liés aux nominations des oscars depuis la première édition de 1927 à la dernière de 2023.</p>\n						<p>Le projet à été réalisé en groupe, en utilisant les frameworks JavaScript D3.js, pour la génération des graphiques et le traitement des données json, et GSAP, pour les animations des intéractions et apparitions.</p>\n						<p>Sur ce projet j’ai été UI designer et développeur front-end.</p>\n						\n					</div>\n					<a class=\"Btn BtnProj bloc noDeco\" href=\"https://binrolecrab.github.io/Oscars-DataViz/\">Visiter le site</a>\n					<img class=\"Apercu\" src=\"img/projet/DAT/DAT_02.png\" alt=\"capture d\'écran de la page d\'accueil\"/>\n				</article>\n\n				<article class=\"art\">\n					<h2>Visuels</h2>\n					<div class=\"visuels\">\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/DAT/DAT_03.png\" alt=\"capture d\'écran de la page du graphique par décennie\"/>\n							<figcaption>Capture d\'écran de la page du graphique par décennie.</figcaption>\n						</figure>\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/DAT/DAT_04.png\" alt=\"capture d\'écran de la page des détails par année\"/>\n							<figcaption>Capture d\'écran de la page des détails par année.</figcaption>\n						</figure>\n					</div>\n				</article>\n\n				<article>\n					<a href=\"projet\" class=\"blue noDeco Animtrans\">Retour à la liste des projets</a>\n				</article>\n\n				<article class=\"Equipe\" style=\"--BG: var(--Green);\">\n					<p>Travail réalisé en Equipe :</p>\n					<img class=\"Copains\" src=\"img/copains/arthur.png\" alt=\"Arthur Zachary\" title=\"Arthur Zachary\"/>\n					<img class=\"Copains\" src=\"img/copains/thomas.png\" alt=\"Thomas Bansront\" title=\"Thomas Bansront\"/>\n				</article>', 8, 'var(--Green)'),
('AMP', 'Application Amplified', 'Mai 2023', 'Maquette et logo d\'une application fictive servant de portfolio/réseau social professionnel pour les artistes musicaux.', 'img/projet/AMP/AMP_01.png', 'img/projet/AMP/AMP_cover.png', '<article class=\"ArticleTop\">\n					<div>\n						<p>Amplified est un concept d\'application fictive créé dans le cadre d\'un projet étudiant. L\'objectif de cette application est de permettre à des musiciens de se faire connaître au sein du milieu professionnel grâce à ce réseau social combinant les concepts de portfolio et de réseau social professionnel.</p>\n					</div>\n					<a class=\"Btn BtnProj bloc noDeco\" href=\"https://www.figma.com/file/NuMO95YX6Fsm1ejLQJLbxx/Maquette-Amplified-App?type=design&node-id=0%3A1&mode=design&t=70UfK7AGxJKbdfYh-1\">Voir les maquettes</a>\n					<img class=\"Apercu\" src=\"img/projet/AMP/AMP_01.png\" alt=\"\"/>\n				</article>\n\n				<article>\n					<a href=\"projet\" class=\"blue noDeco Animtrans\">Retour à la liste des projets</a>\n				</article>\n\n				<article class=\"Equipe\" style=\"--BG: var(--Green);\">\n					<p>Travail réalisé en Equipe :</p>\n					<img class=\"Copains\" src=\"img/copains/abdel.jpeg\" alt=\"Abdelkarim Boudali\" title=\"Abdelkarim Boudali\"/>\n					<img class=\"Copains\" src=\"img/copains/lore.jpeg\" alt=\"Lorelei Blazy\" title=\"Lorelei Blazy\"/>\n					<img class=\"Copains\" src=\"img/copains/cass.jpeg\" alt=\"Cassandra Joniaux\" title=\"Cassandra Joniaux\"/>\n					<img class=\"Copains\" src=\"img/copains/Aloi.jpeg\" alt=\"Aloïs Mellan\" title=\"Aloïs Mellan\"/>\n					<img class=\"Copains\" src=\"img/copains/mar.jpeg\" alt=\"Maréva Fansi\" title=\"Maréva Fansi\"/>\n					<img class=\"Copains\" src=\"img/copains/umit.jpeg\" alt=\"Umit Gucenmez\" title=\"Umit Gucenmez\"/>\n					<img class=\"Copains\" src=\"img/copains/jade.jpeg\" alt=\"Jade Rodach\" title=\"Jade Rodach\"/>\n					<img class=\"Copains\" src=\"img/copains/leo.jpeg\" alt=\"Léo Vermaut\" title=\"Léo Vermaut\"/>\n				</article>', 7, 'var(--Green)'),
('SYN', 'Synthover', 'Avril 2023', 'Ensemble de maquettes Mobile et Desktop du site d’une agence de communication fictive.', 'img/projet/SYN/SYN_01.png', 'img/projet/SYN/SYN_cover.png', '<article class=\"ArticleTop\">\n					<div>\n						<p>Synthover est un ensemble de maquettes Mobile et Desktop du site vitrine d’une agence de communication fictive inspirée par le style graphique Synthwave des années 80.</p>\n						<p>Les maquettes ont été entièrement réalisées sur le logiciel Figma. Ce projet, réalisé en groupe, m\'a principalement impliqué dans la partie UI Design ainsi que dans la création des différentes animations et interactions présentes.</p>\n					</div>\n					<a class=\"Btn BtnProj bloc noDeco\" href=\"https://www.figma.com/file/xoAydUOVMPVWbcfEcwEozO/Abdelkarim-et-Robin---Synthover---Ergonomie-S2?type=design&node-id=22%3A2&mode=design&t=beBGgZvtQg6aDOCx-1\">Voir les maquettes</a>\n					<img class=\"Apercu\" src=\"img/projet/SYN/SYN_02.png\" alt=\"capture d\'écran de la maquette\"/>\n				</article>\n\n				<article class=\"art\">\n					<h2>Visuels Desktop</h2>\n					<div class=\"visuels\" style=\"--nbCol : 2;\">\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/SYN/SYN_04.png\" alt=\"capture d\'écran de la page d\'accueil\"/>\n						</figure>\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/SYN/SYN_03.png\" alt=\"capture d\'écran de la page détail sur une série\"/>\n						</figure>\n					</div>\n				</article>\n\n				<article class=\"art\">\n					<h2>Visuels Mobile</h2>\n					<div class=\"visuels\" style=\"--nbCol : 4;\">\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/SYN/SYN_M_01.png\" alt=\"capture d\'écran de la page d\'accueil\"/>\n						</figure>\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/SYN/SYN_M_02.png\" alt=\"capture d\'écran de la page détail sur une série\"/>\n						</figure>\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/SYN/SYN_M_03.png\" alt=\"capture d\'écran de la page d\'accueil\"/>\n						</figure>\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/SYN/SYN_M_04.png\" alt=\"capture d\'écran de la page détail sur une série\"/>\n						</figure>\n					</div>\n				</article>\n\n				<article>\n					<a href=\"projet\" class=\"blue noDeco Animtrans\">Retour à la liste des projets</a>\n				</article>\n\n				<article class=\"Equipe\" style=\"--BG: var(--Green);\">\n					<p>Travail réalisé en Equipe :</p>\n					<img class=\"Copains\" src=\"img/copains/abdel.jpeg\" alt=\"Abdelkarim Boudali\" title=\"Abdelkarim Boudali\"/>\n				</article>', 5, 'var(--Green)'),
('PEA', 'Application Pear', 'Janvier 2023', 'Maquette, logo et charte graphique d\'une application fictive calculant l\'impact carbone de notre alimentation.', 'img/projet/PEA/PEA_01.png', 'img/projet/PEA/PEA_cover.png', '<article class=\"ArticleTop\">\n					<div>\n						<p>Pear est une application fictive imaginée pour un projet étudiant, pour laquelle j\'ai créé des logos, une charte graphique ainsi qu\'une maquette de l\'interface</p>\n						<p>Le principe de l\'application est simple : l\'utilisateur scanne le code-barres des aliments qu\'il achète lors de ses courses, et l\'application lui indique le poids carbone du produit avec des informations sur sa provenance, etc...</p>\n						<p>L\'application comporte également d\'autres fonctionnalités, telles qu\'une page statistique, une page recette, ainsi qu\'une page \"producteurs proches\". Toutes ces pages ont pour objectif de sensibiliser les utilisateurs à des pratiques leur permettant de réduire l\'impact carbone lié à leur alimentation.</p>\n					</div>\n					<a class=\"Btn BtnProj bloc noDeco\" href=\"https://www.figma.com/file/RYCAVM4okrmsS0SpvUdG5K/Maquette-Pear-SAE-102-103?type=design&node-id=0%3A1&t=a3xVPrP2KKdUTGLj-1\">Voir les maquettes</a>\n					<img class=\"Apercu\" src=\"img/projet/PEA/PEA_01.png\" alt=\"\"/>\n				</article>\n\n				<article>\n					<a href=\"projet\" class=\"blue noDeco Animtrans\">Retour à la liste des projets</a>\n				</article>\n\n				<article class=\"Equipe\" style=\"--BG: var(--Green);\">\n					<p>Travail réalisé en Equipe :</p>\n					<img class=\"Copains\" src=\"img/copains/hugo.jpeg\" alt=\"Hugo Lauwers\" title=\"Hugo Lauwers\"/>\n					<img class=\"Copains\" src=\"img/copains/lore.jpeg\" alt=\"Lorelei Blazy\" title=\"Lorelei Blazy\"/>\n					<img class=\"Copains\" src=\"img/copains/tiff.jpeg\" alt=\"Tiffany Devaux\" title=\"Tiffany Devaux\"/>\n					<img class=\"Copains\" src=\"img/copains/helya.jpeg\" alt=\"Helya Ozer\" title=\"Helya Ozer\"/>\n				</article>', 1, 'var(--Green)'),
('MAN', 'Site Mangas Fr', 'Janvier 2023', 'Site web réalisé en HTML5, CSS et PHP, portant sur une sélection de mangas français.', 'img/projet/MAN/MAN_01.png', 'img/projet/MAN/MAN_cover.png', '<article class=\"ArticleTop\">\n					<div>\n						<p>Ce site web a été conçu dans le cadre d\'un projet étudiant. L\'objectif était de créer un site vitrine sur un thème que l\'on aimait, le tout sans avoir de page HTML statique, en utilisant le PHP pour les générer à partir de fichiers de données JSON.</p>\n						<p>Pour ma part, j\'ai donc choisi de réaliser un site présentant 16 mangas français avec différentes informations telles que l\'auteur, le titre, le genre, etc., incluant également les personnages principaux, quelques extraits de planches et des vidéos de présentation/teasing quand il y en a.</p>\n					</div>\n					<a class=\"Btn BtnProj bloc noDeco\" href=\"http://projets.iut-bobigny.univ-paris13.fr/~vigier/manga_francais/\">Visiter le site</a>\n					<img class=\"Apercu\" src=\"img/projet/MAN/MAN_02.png\" alt=\"capture d\'écran de la page d\'accueil\"/>\n				</article>\n\n				<article class=\"art\">\n					<h2>Visuels</h2>\n					<div class=\"visuels\">\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/MAN/MAN_02.png\" alt=\"capture d\'écran de la page d\'accueil\"/>\n							<figcaption>Capture d\'écran de la page d\'accueil.</figcaption>\n						</figure>\n						<figure>\n							<img class=\"Apercu\" src=\"img/projet/MAN/MAN_03.png\" alt=\"capture d\'écran de la page détail sur une série\"/>\n							<figcaption>Capture d\'écran de la page détail sur une série.</figcaption>\n						</figure>\n					</div>\n				</article>\n\n				<article>\n					<a href=\"projet\" class=\"blue noDeco Animtrans\">Retour à la liste des projets</a>\n				</article>\n\n				<article class=\"Equipe\">\n					<p>Travail réalisé Seul</p>\n				</article>', 3, 'var(--Blue)');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
