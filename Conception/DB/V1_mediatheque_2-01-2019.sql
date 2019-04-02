-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 02 avr. 2019 à 14:05
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mediatheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `adress`
--

CREATE TABLE `adress` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(80) NOT NULL,
  `road` varchar(80) NOT NULL,
  `postal_code` varchar(80) NOT NULL,
  `town` varchar(80) NOT NULL,
  `country` varchar(80) NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `adress`
--

INSERT INTO `adress` (`id`, `number`, `road`, `postal_code`, `town`, `country`, `id_user`) VALUES
(1, '221b', 'Backer Street', 'NW1 6XE', 'Londre', 'Royaume-Uni', 1),
(2, '1938', 'Clinton Street', '62960', 'Metropolis', 'New Troy', 2),
(3, '32b', 'Bld des Âmes charitables', 'NG11 0JN', 'Gotham City', 'New York', 3),
(4, '2066', 'Crist Drive', '94022', 'Los Altos', 'Californie', 4);

-- --------------------------------------------------------

--
-- Structure de la table `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_adress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Livres'),
(2, 'DVD'),
(3, 'CD');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `description` text NOT NULL,
  `id_categorie` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `id_categorie`) VALUES
(1, 'Harry Potter Tome 1 - Harry Potter à l\'école des sorciers', 'Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l\'emmener à Poudlard, une école de sorcellerie ! Voler en balai, jeter des sorts, combattre les trolls : Harry se révèle un sorcier doué. Mais un mystère entoure sa naissance et l\'effroyable V., le mage dont personne n\'ose prononcer le nom. ', 1),
(2, 'Harry Potter Tome 2 - Harry potter et la chambre des secrets', 'Une rentrée fracassante en voiture volante, une étrange malédiction qui s\'abat sur les élèves, cette deuxième année à l\'école des sorciers ne s\'annonce pas de tout repos ! Entre les cours de potions magiques, les matches de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets ? ', 1),
(3, 'Harry Potter Tome 3 - Harry Potter et le prisonnier d\'Azkaban', ' Sirius Black, le dangereux criminel qui s\'est échappé de la forteresse d\'Azkaban, recherche Harry Potter. C\'est donc sous bonne garde que l\'apprenti sorcier fait sa troisième rentrée. Au programme : des cours de divination, la fabrication d\'une potion de Ratatinage, le dressage des hippogriffes... Mais Harry est-il vraiment à l\'abri du danger qui le menace ? ', 1),
(4, 'Harry Potter Tome 4 - Harry Potter et la Coupe de Feu', 'Harry Potter a quatorze ans et entre en quatrième année au collège de Poudlard. Une grande nouvelle attend Harry, Ron et Hermione à leur arrivée : la tenue d\'un tournoi de magie exceptionnel entre les plus célèbres écoles de sorcellerie. Déjà les délégations étrangères font leur entrée. Harry se réjouit... Trop vite. Il va se trouver plongé au coeur des événements les plus dramatiques qu\'il ait jamais eu à affronter. ', 1),
(5, 'Harry Potter Tome 5 - Harry Potter et l\'Ordre du Phénix', 'J. K. Rowling est l\'auteur des sept romans de la saga Harry Potter. Traduite en 79 langues, vendue à des millions d\'exemplaires et adaptée en 8 films à succès par Warner Bros, cette saga est aujourd\'hui un véritable phénomène littéraire et l\'une des oeuvres les plus lues au monde. J. K Rowling a également signé trois ouvrages de la Bibliothèque de Poudlard publiés au profit d\'organisations caritatives : \"Les Contes de Beedle le Barde\" pour sa propre association d\'aide aux enfants, Lumos ; \"Le Quidditch à travers les âges\" et \"Les Animaux fantastiques\" pour les associations Comic Relief et Lumos. Elle a imaginé, avec l\'auteur Jack Thorne et le metteur en scène John Tiffany, la pièce \"Harry Potter et l\'enfant maudit\", dont les premières représentations ont eu lieu à Londres durant l\'été 2016. On lui doit aussi des romans pour adultes : \"Une place à prendre\" et, sous le pseudonyme de Robert Galbraith, trois enquêtes du détective Cormoran Strike. En 2017, elle publie son premier scénario, \"Les Animaux fantastiques\" : le texte du film. La même année, J. K. Rowling a été nommée Companion of Honour par la reine d\'Angleterre. Elle est la plus jeune personnalité à avoir reçu cette distinction, la plus haute du royaume. Son site et éditeur numérique, Pottermore, est la plateforme numérique du \"Monde des Sorciers\". ', 1),
(6, 'Harry Potter Tome 6 - Harry Potter et le prince de Sang-Mêlé', ' Dans un monde de plus en plus inquiétant, Harry se prépare à retrouver Ron et Hermione. Bientôt, ce sera la rentrée à Poudlard, avec les autres étudiants de sixième année. Mais pourquoi Dumbledore vient-il en personne chercher Harry chez les Dursley ? Dans quels extraordinaires voyages au coeur de la mémoire va-t-il l\'entraîner ? ', 1),
(7, 'Harry Potter Tome 7 - Harry Potter et les Reliques de la Mort', ' Cette année, Harry a dix-sept ans et ne retourne pas à Poudlard. Avec Ron et Hermione, il se consacre à la dernière mission confiée par Dumbledore. Mais le Seigneur des Ténèbres règne en maître. Traqués, les trois fidèles amis sont contraints à la clandestinité. D\'épreuves en révélations, le courage, les choix et les sacrifices de Harry seront déterminants dans la lutte contre les forces du Mal. ', 1),
(8, 'Deadpool', 'De son vrai nom Wade Wilson, cet ancien militaire des Forces Spéciales devenu mercenaire a subi une expérience hors norme qui a accéléré ses pouvoirs de guérison. Armé de nouvelles capacités et d’un humour noir survolté, celui qui est désormais Deadpool va traquer l’homme qui a bien failli anéantir sa vie... ', 2),
(9, 'Deadpool 2', 'Plus grand, plus-mieux, et occasionnellement les fesses à l’air, il devra affronter un Super-Soldat dressé pour tuer, repenser l’amitié, la famille, et ce que signifie l’héroïsme – tout en bottant cinquante nuances de culs, car comme chacun sait, pour faire le Bien, il faut parfois se salir les doigts. ', 2),
(10, 'Dragons', 'L\'histoire d\'Harold, jeune Viking peu à son aise dans sa tribu où combattre les dragons est le sport national. Sa vie va être bouleversée par sa rencontre avec un dragon qui va peu à peu amener Harold et les siens à voir le monde d\'un point de vue totalement différent. ', 2),
(11, 'Lucy', 'À la suite de circonstances indépendantes de sa volonté, une jeune étudiante voit ses capacités intellectuelles se développer à l’infini. La dernière livraison de Luc Besson, avec Scarlett Johansson en super-héroïne futuriste, est l’un des plus gros succès français de l’année. ', 2),
(12, 'Les Animaux fantastiques : Les crimes de Grindelwald', 'À la fin du premier film, le puissant mage noir Gellert Grindelwald (Johnny Depp) a été mis hors d\'état de nuire par le MACUSA (Congrès Magique des États-Unis) avec l\'aide de Norbert Dragonneau (Eddie Redmayne). Cependant, comme il en avait fait le serment, Grindelwald s\'est enfui de manière spectaculaire et a rallié à sa cause de plus en plus de fidèles, faisant des sorciers des êtres supérieurs à tous les autres.\r\nCherchant à déjouer les plans de Grindelwald, Albus Dumbledore (Jude Law) sollicite son ancien élève Norbert Dragonneau qui accepte de lui venir en aide, sans se douter des dangers qui le guettent. ', 2),
(13, 'RETURN TO THE SAUCE', 'Infected Mushroom', 3),
(18, 'Y A PAS D\'AMOUR ', 'Les Sales Majestés', 3),
(19, 'MEZZANINE ', 'Massive Attack', 3),
(20, 'TRENCH', 'Twenty One Pilot', 3),
(21, 'Back in Black', 'AC-DC', 3);

-- --------------------------------------------------------

--
-- Structure de la table `relation_ad_bi`
--

CREATE TABLE `relation_ad_bi` (
  `id_adress` int(11) UNSIGNED NOT NULL,
  `id_bill` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `relation_pr_bi`
--

CREATE TABLE `relation_pr_bi` (
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_bill` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `relation_us_bi`
--

CREATE TABLE `relation_us_bi` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_bill` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `mail`, `password`) VALUES
(1, 'Sherlock', 'Holmes', 's.holmes@detective.net', '12345'),
(2, 'Clark', 'Kent', 'superman@hotmail.fr', '12345'),
(3, 'Bruce', 'Wayne', 'batman@live.fr', '12345'),
(4, 'Steve', 'Job', 'iphone@apple.com', '12345');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Index pour la table `relation_ad_bi`
--
ALTER TABLE `relation_ad_bi`
  ADD PRIMARY KEY (`id_adress`,`id_bill`),
  ADD KEY `id_bill` (`id_bill`);

--
-- Index pour la table `relation_pr_bi`
--
ALTER TABLE `relation_pr_bi`
  ADD PRIMARY KEY (`id_product`,`id_bill`),
  ADD KEY `id_bill` (`id_bill`);

--
-- Index pour la table `relation_us_bi`
--
ALTER TABLE `relation_us_bi`
  ADD PRIMARY KEY (`id_user`,`id_bill`),
  ADD KEY `id_bill` (`id_bill`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adress`
--
ALTER TABLE `adress`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adress`
--
ALTER TABLE `adress`
  ADD CONSTRAINT `adress_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `relation_ad_bi`
--
ALTER TABLE `relation_ad_bi`
  ADD CONSTRAINT `relation_ad_bi_ibfk_1` FOREIGN KEY (`id_adress`) REFERENCES `adress` (`id`),
  ADD CONSTRAINT `relation_ad_bi_ibfk_2` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`);

--
-- Contraintes pour la table `relation_pr_bi`
--
ALTER TABLE `relation_pr_bi`
  ADD CONSTRAINT `relation_pr_bi_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `relation_pr_bi_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `relation_us_bi`
--
ALTER TABLE `relation_us_bi`
  ADD CONSTRAINT `relation_us_bi_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `relation_us_bi_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
