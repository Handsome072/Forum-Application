-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 06 mars 2023 à 03:47
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `andsonforum`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `answerId` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `questionId` int(11) NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voter` int(11) NOT NULL DEFAULT 0,
  `devoter` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`answerId`, `content`, `createdAt`, `questionId`, `avatar`, `username`, `voter`, `devoter`) VALUES
(1, 'Bonjour,\r\n\r\nLa vous entrez dans un univers hyper compliqué. Je me rappelle avoir passé des nuits compliquées pour aider mon père à choisir sa télé.\r\nC\'est pourquoi je vous invite à vous rendre plutôt sur le forum spécialisé : https://www.homecinema-fr.com/forum/. Ils sont plus pointus que nous.', '2023-03-06 02:06:59.226', 1, 'IMG-1678068419215.jpg', 'Zoxy', 1, 0),
(3, 'Salut !\r\n\r\nD\'après le rapport speccy c\'est surement ce pc :\r\n\r\nPC Acer Aspire TC-895 DT.BETEF.00F Intel Core i5 8 Go RAM 128 Go SSD + 1 To SATA Noir - Unité Centrale - Achat & prix | fnac\r\n\r\nEt d\'après le rapport speccy c\'est un ssd de 128go au format M2 en sata III qui équipe ce pc :\r\n\r\nSpecifications of KINGSTON RBUSNS8180DS3128GH Drive with SBFK10D7 Firmware (smarthdd.com)\r\n\r\nIl te faut donc un ssd au format M2, l\'idéal serait du pci-e 3.0 et d\'après le forum acer c\'est compatible (voir le troisième lien, j\'ai mis directement la recherche google car le site est en maintenance) :\r\n\r\nAcer Aspire TC-895 upgrade ssd - Recherche Google\r\n\r\nDonc si un ssd pci-e 3.0 est bien compatible alors ce modèle est bien pour moins de 68€ :\r\n\r\nCrucial P3 1To M.2 PCIe Gen3 NVMe SSD interne - Jusqu’à 3500Mo/s - CT1000P3SSD8 : Amazon.fr: Informatique\r\n\r\nIl faudra refaire une clean instal de windows 10 sur celui ci, en UEFI :\r\n\r\nComment créer une clé usb d\'installation de Windows 10 uniquement UEFI. - Forums CNET France\r\n\r\nPour la carte graphique : la GTX 1660 n\'est clairement pas un bon choix pour 300€, c\'est se tirer une balle dans le pied.\r\nPour 280€ la meilleure carte graphique sera la RX 6600 :\r\n\r\nXFX Speedster SWFT 210 Radeon RX 6600 Core Gaming Carte Graphique avec 8GB GDDR6 HDMI 3xDP, AMD RDNA™ 2 (RX-66XL8LFDQ) : Amazon.fr: Informatique\r\n\r\nIl faut une alimentation de qualité de 450w minimum avec les fiches pci-e pour l\'alimenter.\r\nVoir aussi si tu as la place pour accueillir cette carte, car il faut garder en tête que c\'est un pc préfabriqué acer, niveau évolution c\'est pas top (comme presque tout les pc de marque).\r\nA signaler aussi que ton windows 10 n\'est pas à jour, tu es sous la version 21H2 alors que nous en sommes à la 22H2.\r\nMettre à jour le bios ne fera pas de mal non plus :\r\n\r\nAssistance | Acer Belgique', '2023-03-06 02:19:17.175', 4, 'IMG-1678069157159.jpg', 'Sigerno', 3, 0),
(4, 'Salut,\r\n\r\nMerci beaucoup pour le temps passé sur ma demande et pour les conseils.\r\n\r\nConcernant la clean install de W10, en survolant pour le moment les sites, je m\'étais dis que faire un clone ISO du disque C permettrait de gérer le sujet. Tu préconises une nouvelle installation depuis le début de Windows 10 si je comprends bien ?\r\n\r\nPour la carte graphique tu me dis : \"Il faut une alimentation de qualité de 450w minimum avec les fiches pci-e pour l\'alimenter.\", comment puis je m\'assurer que c\'est le cas ?\r\n\r\nJe te confirme ne pas avoir mis les pilotes à jour depuis un moment. Je vais faire ça aussi effectivement.', '2023-03-06 02:20:14.744', 4, 'IMG-1678069214741.jpg', ' Sigerno', 0, 0),
(5, 'bonjour,oui c\'est mieux de refaire une installation clean et en uefi comme john a dit\r\npour l\'alimentation et les fiches pcie il faut ouvrir le pc pas le choix pour voir l\'alim qu\'il y a et s\'il y a des cables pcie pour alimenter', '2023-03-06 02:21:24.043', 4, 'IMG-1678069284041.png', 'nico638', 1, 0),
(6, 'À ce que je sache, il n’y a pas d’âge pour faire de la Gym ! Je pense que 14 ans, c’est l’âge idéal pour commencer et surtout si tu as l’intention de partir en compétition après. À mon avis, plus tu commences tôt mieux c’est ! Alors, vas-y, fonce et surtout n’hésite pas !', '2023-03-06 02:26:55.547', 5, 'IMG-1678069615535.jpg', 'anais0841', 4, 1),
(7, 'Bonjour jai 15ans et je reve d\'en faire aussi et de faire de la compétition je sais je reve trop je sais que je n\'ais aucune chance et je regrette de ne pas en avoir fais avant je vois que Des commentaires negatives pour moi mais je voulais avoir d\'autre Avis pensez-vous que cella est toujours possible pour moi? ????( je ne sais malheuresement rien faire poirier grand ecart salto je reve sa ) apart que Le grand ecart je savais le faire jusqua mes 8ans comme sa oui je sais sa remonte a loin donc je ne l\'ais plus mais je vous le dit juste ????', '2023-03-06 02:28:45.062', 5, 'IMG-1678069725059.jpg', 'Aurelie L', 0, 0),
(8, 'sincèrement je te dirais de foncer , au pire tu n’as qu’une vie et si ça ne fonctionne pas tu arrêteras mais au moins si ça te plaît tu te seras lancé dans quelque chose que tu aimes et si tu n’apprécies pas au moins tu auras tenté et rien perdue.', '2023-03-06 02:30:10.016', 5, 'IMG-1678069810014.jpg', 'Saya', 1, 0),
(9, 'Bonjour,\r\nUne tablette pour la prise de notes, c\'est peut-être pas ce qu\'il y a de plus confortable ? De plus si tu dois télécharger des cours, attention au format de ces cours, pas sûr que tu puisses les ouvrir sur une tablette ! si c\'est des pdf, pas de souci, mais si c\'est créé avec une application bien précise...\r\n\r\nSi tu souhaites un clavier tu pourrais t\'orienter du côté d\'un chromebook avec écran tactile. Tu aurais un véritable ordinateur bien plus confortable qu\'une tablette pour prendre des notes et la possibilité d\'utiliser toutes les applications qu\'on trouve sur une tablette android. De plus ces appareils ont une autonomie d\'au moins une dizaine d\'heures effectives (parfois annoncé jusqu\'à 12 heures) avec une véritable suite bureautique, tu pourras acquérir un stylet pour pas très cher.Tu pourras toujours ajouter une carte micro sd si tu trouves que le stockage est insuffisant. Note que l\'achat d\'un chromebook te donne accès à un stockage supplémentaire de 100 Go gratuitement pendant un an sur Google drive (en plus des 15 Go liés à ton compte gmail). Du fait qu\'il y a des ports USB-C, tu pourras au besoin connecter un écran ou un vidéoprojecteur avec un adaptateur.\r\n\r\nPar exemple une assez bonne affaire ici :\r\nhttps://www.cdiscount.com/informatiq...57nf.html#desc\r\n\r\nCe n\'est que mon avis...', '2023-03-06 02:33:35.873', 6, 'IMG-1678070015872.jpg', 'jns55', 0, 1),
(10, 'Salut,\r\n\r\nTes besoins sont pas si simples car il y a un certaine compatibilité dont il faut s\'assurer.\r\nPar exemple, une tablette sous Android, je ne sais pas comment cela peut gérer un vidéoprojecteur, peut-être sans fil.\r\nOn ne sait pas si ton vidéoprojecteur propose une liaison sans fil (wifi ou bluetooth) pour partager l\'image de la tablette.\r\nPour les cours en lignes, lorsque tu les télécharges, ils ont quelles extensions, avec quel programmes les lis-tu, word ?\r\nA cela il faut qu\'il soit rapide et avec du stockage.\r\n\r\n\r\n\r\nLe Chromebook est une bonne idée mais si tu te diriges vers une tablette c\'est sans doute pour un gain de place. Il faut aussi bien s\'assurer que tu puisses tout faire dessus.\r\nAs-tu des collègues avec des tablettes ? Si oui, demandes leurs les modèles.', '2023-03-06 02:34:43.134', 6, 'IMG-1678070083126.jpg', 'Zoxy', 2, 0),
(11, 'bjr\r\n\r\nvous voulez faire du sport pour vous, alors ne vous occupez pas des autres, ignorez les et ils en feront de même.\r\n\r\ncommencez dans le club a 20 minutes de chez vous, faites vos preuves et ensuite vous pourrez prétendre a mieux\r\n\r\nbonne chance', '2023-03-06 02:44:12.319', 8, 'IMG-1678070652316.jpg', 'stf_frmu', 2, 0),
(12, 'bonjours\r\nj\'arrive un peu tard\r\nla taille du club n\'a pas d\'importance , un petit club peut parfaitement sortir son épingle du jeu en compétition nationale et internationale voir olympique..\r\net comme dit FRMU , je sais de quoi je parle !\r\n\r\noublies pas tes études !', '2023-03-06 02:45:19.818', 8, 'IMG-1678070719816.jpg', 'xplom ', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `questionId` int(11) NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`questionId`, `question`, `description`, `avatar`, `category`, `createdAt`, `username`) VALUES
(1, 'Besoin d\'aide avant achat !', 'Bonjour, je souhaite acheter plusieurs équipement multimédia, une TV , une barre son , un lecteur blu-ray 4K.\r\nJe me demandais si mes choix était cohérent.\r\nL\'équipement sera dans le salon, une pièce très lumineuse et petite, proche d\'une baie vitrée.\r\nMes attentes : Avoir une très belle image sur des films 4K ainsi qu\'un bon son, le tout dans la pièce familiale.', 'IMG-1678068372062.jpg', 'Technologie', '2023-03-06 02:06:12.068', 'Esky'),
(2, 'Quel type de plafond suspendu adopter ?', 'Bonjour, J\'envisage de faire un plafond suspendu Je n\'arrive pourtant pas à me décider entre un plafond suspendu en plaques de plâtre et un plafond suspendu en plafonnettes. Pouvez-vous m\'aider ?', 'IMG-1678068712914.jpg', 'Generale', '2023-03-06 02:11:52.917', 'zakuzzi'),
(4, 'Achat SSD + carte graphique', 'Bonjour,\r\n\r\nJe souhaite améliorer les performances de mon PC et j\'ai besoin de votre aide pour ne pas me planter.\r\n\r\nCi dessous la config du PC :\r\n\r\nhttp://speccy.piriform.com/results/z...6v3qlWMiAAqEMH\r\n\r\nJe tourne avec un SSD de 128G et je voudrais passer à 1T pour faciliter la gestion de la mémoire et des temps de chargements. Je pensais à ça :Crucial MX 500 1To\r\n\r\nEn ce qui concerne la carte graphique je pensais partir sur la NVIDIA geforce GTX 1660.\r\n\r\nL\'objectif étant de mettre environ 100euros dans le SSD et 300€ environ pour la carte graphique pour jouer à des jeux plus récents sans avoir du tout une bête de concours, car je suis un joueur occasionnel.\r\n\r\nJe suis à votre disposition pour toute vos recommandations et vous remercie pour votre aide.', 'IMG-1678069098242.jpg', 'Technologie', '2023-03-06 02:18:18.259', 'Achat SSD + carte graphique'),
(5, 'Commencer la gym à 14 ans', 'Bonjour, j\'ai 14 ans et demi bientôt 15 et je voudrais savoir si j\'ai encore une chance de faire de la gym si vous vous demandez pk je n\'est pas commencé depuis avant c\'est que financièrement ma mère ne pouvait pas voilà mais je sais faire l\'équilibre le poirrier le grand égard et j\'ai appris sa toute seule et depuis petite je rêve de pouvoir avoir un vrai entraîneur et des vrais court voilà ces tout merci de me répondre le plus vite possible????', 'IMG-1678069451856.jpg', 'Sport', '2023-03-06 02:24:11.858', 'Stayna '),
(6, 'Etudiante cherche tablette', 'Bonjour à tous !\r\nJ\'ai vraiment besoin de vos conseils . Je suis étudiante et souhaite acquérir une tablette pour mes cours..sauf que je n\'y connais vraiment rien...\r\nJ\'ai un budget max de 450 € (vraiment max) . Alors je ne lui demande pas la lune à cette tablette \r\nMes besoins sont une bonne autonomie (qu\'elle ne me plante pas en plein milieu d\'un cours!). J\'ai besoin de télécharger mes cours qui sont en ligne, besoin de faire des fiches, besoin d\'un clavier et d\'un stylet pour pouvoir annoter les cours / faire des dessins simples.. et que la tablette ne soit pas trop lente (malgré mon petit budget), avec aussi une mémoire pas ridicule et / ou possibilité d\'ajouter de la mémoire par carte sd par exemple (ou autre moyen  ) . On fait aussi des présentations à l\'oral et on connecte nos PC sur le video projecteur donc il faut une sortie.\r\nMes besoins sont simples mais il y a tellement de modèles et je n\'y connais tellement rien que vraiment je suis perdue!\r\n\r\nAuriez vous des conseils ? quoi regarder dans l\'achat ? un modèle à proposer ? que faut-il éviter ?\r\nC\'est les soldes..je ne sais pas si ça vaut le coup ! \r\nMerci beaucoup à tous ceux qui pourront m\'aider', 'IMG-1678069961448.jpg', 'Technologie', '2023-03-06 02:32:41.450', 'Rakodon'),
(8, 'Quel est l\'age minimum pour commencer la gym?', 'Bonjour à toutes et à tous !\r\n\r\nJ\'ai actuellement 16 ans et à la rentrée j\'aimerais m\'inscrire dans un club d\'athlétisme mais j\'hésite encore beaucoup pour plusieurs raisons....\r\n\r\nLa première raison c\'est que dans ce club il y a mon ex (je suis gay) et on va dire qu\'on se déteste. Et du coup si il me voit il va se décomposer de me voir arriver alors on va dire que c\'est un peu lui qui m\'empêche de m\'inscrire pour faire de l\'athlétisme.\r\n\r\nLa deuxième raison c\'est que ça fait très longtemps que je n\'ai pas fais de sport (j\'ai pratiqué le rugby pendant 4 ans et l\'équitation pendant 4 ans, j\'ai arrêté quand j\'ai eu mes 12 ans) et je doute vraiment de mes capacités physiques. Je veux dire que je ne cours jamais le week-end, jamais trop à part au lycée c\'est tout. Donc du coup je ne sais pas mes capacités, si je serai mieux dans les épreuves de sprint ou les épreuves de fond/demi-fond...\r\nPourtant au collège on me surnommé \"la flèche\" ou la \"fusée\" et lorsqu\'on faisait des sprints j\'étais dans les premiers et pareil pour les épreuves de fond...\r\nMême quand déjà j\'étais en 6ème, on avait fait un cross où on devait courir pendant une demi heure autour d\'un grand stade, et comme j\'ai couru qu\'avec des garçons, sur environ 80 mecs, j\'ai fini autour de la 15ème place.\r\n\r\nLa Dernière raison c\'est que j\'habite à la campagne toulousaine où je suis à 1h20 de Toulouse et donc à 1h20 de Muret et Blagnac où c\'est vraiment des très bons clubs qui participent à de nombreux championnats, même de France.\r\nEt du coup le seul club qui est proche de chez moi est à 20min. Mais ce club ne participe qu\'à des championnats départementaux ou régionaux mais sans plus. Pas de France. Et pourtant une fille du club où je veux aller a été sélectionnée pour passer un test pour se qualifier pour les JO 2024.\r\nEt malgré mon vieil âge (pour commencer dans le pro) j\'aimerais vraiment être un athlète hors pair et performant car je suis vraiment motivé et comme c\'est ma passion je suis à fond dedans et je ne veux rien lâcher. J\'aimerais vraiment un jour participer à des championnats de France (je ne demande que ça, un minimum), car je sais que les JO et les championnats d\'Europe ou du Monde c\'est mort mais au moins j\'aimerais viser les championnats de France !\r\n\r\nJe suis vraiment très motivé !\r\n\r\nMerci de me donner des conseils de ce que j\'ai écris, ça m\'aiderai énormément !\r\n\r\nBye Bye ;)', 'IMG-1678070545902.jpg', 'Sport', '2023-03-06 02:42:25.904', 'smalville');

-- --------------------------------------------------------

--
-- Structure de la table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('cdc7fdb3-cb2c-442f-852a-b0a24afaace9', 'b32b3dffca9593ed23e823b89a3fd78efef488346e40b23cacf5f661c4a443ce', '2023-03-06 02:01:45.422', '20230306020143_init', NULL, NULL, '2023-03-06 02:01:43.983', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answerId`),
  ADD KEY `Answer_questionId_fkey` (`questionId`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`questionId`);

--
-- Index pour la table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `answerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `questionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `Answer_questionId_fkey` FOREIGN KEY (`questionId`) REFERENCES `question` (`questionId`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
