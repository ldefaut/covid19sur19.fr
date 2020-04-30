-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  jeu. 30 avr. 2020 à 10:49
-- Version du serveur :  10.0.38-MariaDB-0+deb8u1
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_`
--

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE `connexion` (
  `id` int(10) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_inscription` date NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'utilisateur',
  `reset` varchar(10) NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `connexion`
--

INSERT INTO `connexion` (`id`, `pseudo`, `pass`, `email`, `date_inscription`, `role`, `reset`) VALUES
(3, 'sprach', '$2y$10$MB725kamCx6PIlCMAvopOOl/f6QYePi6bJaKHsdZEXObYpZuQWBDm', 'sprachikyt@hotmail.frzz', '2020-04-02', 'utilisateur', 'false'),
(5, 'Spking', '$2y$10$0sBobTeK6bmpSI/VsMJ1W.A1fuP3aRZJ0YQG8IJ2..XTrmSTf.k7S', 'spking@gmail.com', '2020-04-06', 'superadmin', 'false'),
(1, '', '$2y$10$lZ67PRjx0K1raJX.mO3KhuQYeE0qbzUaL0hvG0gdgHr4Ldhokpoyu', '', '2020-04-02', 'utilisateur', 'true'),
(4, 'sprachAdmin', '$2y$10$tT/jF6d17HSfNDmIXlTP/O94OLUNGt.ku71WMO7BRB3Wf3UN1vLhu', 'admin@admin.fr', '2020-04-02', 'admin', 'false'),
(6, 'SpKingue', '$2y$10$hSXlaSl87tjRbq3BHiF7N.6bJCHZNMG7Pdx1k/O1uJdIRJKnVHP52', 'sprachikyt@hotmail.fr', '2020-04-06', 'utilisateur', 'false'),
(7, 'minimile', '$2y$10$GH/F9hrNmedHvxcVIY8vweAAQ.ll4XcKefwWHS4M4tcdwalYq/Ozm', 'minimile@gmail.com', '2020-04-06', 'utilisateur', 'false'),
(8, 'louisdef', '$2y$10$dQv4z4aXLA7k/C503WZ/H.7Mj1M4NfVIVR0vnPvvAVFUSL.fziKi.', 'louisdef@louisdef', '2020-04-16', 'utilisateur', 'false'),
(9, 'mims38', '$2y$10$zh5VWYy2t3F0j/quOB4HzORjrbmI/sMQ.QQ/nDTohDfespt5nQoFW', 'lucas38wartek@gmail.com', '2020-04-16', 'utilisateur', 'false'),
(10, 'sproch', '$2y$10$rWpwAuRoYXlM6sG0EeW/d.lTlVVBM4TYpFfI/9zx5Hm37sGQkjLjG', 'thelouisdef@gmail.com', '2020-04-27', 'utilisateur', 'false');

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE `reponses` (
  `question` varchar(200) NOT NULL,
  `reponse` text NOT NULL,
  `explication` varchar(2000) DEFAULT NULL,
  `niveau` int(10) NOT NULL DEFAULT '1',
  `status` varchar(100) NOT NULL DEFAULT 'à verifier',
  `lien` varchar(2000) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reponses`
--

INSERT INTO `reponses` (`question`, `reponse`, `explication`, `niveau`, `status`, `lien`, `titre`, `id`) VALUES
('Doit-on acheter du papier-toilette &amp;agrave; foison ?', 'FAUX', 'Malgr&amp;eacute; le confinement, les stocks de papiers toilettes ne sont pas mis en danger. Le papier-toilette ne fait d&amp;#039;ailleurs pas parti des biens de premi&amp;egrave;re n&amp;eacute;cessit&amp;eacute;. De plus, il est toujours possible de faire ses courses malgr&amp;eacute; le confinement et de trouver du PQ au supermarch&amp;eacute;.', 1, 'V&amp;eacute;rifi&amp;eacute;e', 'https://www.lemonde.fr/big-browser/article/2020/03/23/covid-19-dans-le-monde-la-fievre-du-stockage-et-une-ruee-sur-le-papier-toilette_6034158_4832693.html', 'Le Monde - la fi&amp;egrave;vre du stockage et une ru&amp;eacute;e sur le papier toilette', 1),
('biteu', 'VRAI', 'biet', 3, 'Rejet&amp;eacute;e', '', '', 10),
('j&amp;#039;aime', 'VRAI', 'j&amp;#039;aime', 1, 'Rejet&amp;eacute;e', '', '', 11),
('Faut-il  continuer de se serrer la main &amp;agrave; cause du coronavirus ?', 'FAUX', 'Le virus se propage via le contact du corps humain avec les secr&amp;eacute;tions salivaires. Il faut donc &amp;eacute;viter les contacts physiques ainsi que les embrassades pour ne pas &amp;ecirc;tre atteint.', 1, 'V&amp;eacute;rifi&amp;eacute;e', 'https://solidarites-sante.gouv.fr/soins-et-maladies/maladies/maladies-infectieuses/coronavirus/tout-savoir-sur-le-covid-19/article/comment-se-proteger-du-coronavirus-covid-19', 'Comment se prot&amp;eacute;ger du Coronavirus - Minist&amp;egrave;re de la Sant&amp;eacute;', 3),
('lajzdhzakjdlakzjdzad', 'VRAI', 'kjehfkjezhf', 1, 'Rejet&amp;eacute;e', '', '', 2),
('azdbdz', 'VRAI', 'haid', 1, 'Rejet&amp;eacute;e', '', '', 5),
('azjdazd&amp;#039;&amp;#039; ', 'VRAI', 'sdga', 1, 'Rejet&amp;eacute;e', '', '', 6),
('akjzd', 'VRAI', 'alzdn', 1, 'Rejet&amp;eacute;e', '', '', 7),
('akzjhd', 'VRAI', 'kjazhd', 1, 'Rejet&amp;eacute;e', '', '', 8),
('bite', 'VRAI', 'v&amp;eacute;rifi&amp;eacute;e', 1, 'Rejet&amp;eacute;e', '', '', 9),
('Faut-il imprimer tous les jour une attestation ?', 'VRAI', 'D&amp;egrave;s que vous sortez, vous devez r&amp;eacute;diger une nouvelle attestation. En effet, elle doit &amp;ecirc;tre renseign&amp;eacute;e et sign&amp;eacute;e le jour m&amp;ecirc;me de l&amp;#039;attestation.', 1, 'V&amp;eacute;rifi&amp;eacute;e', 'https://www.service-public.fr/particuliers/vosdroits/R55781', 'Service Public - Attestation de d&amp;eacute;placement d&amp;eacute;rogatoire', 4),
('golden state se sont les plus forts ?', 'FAUX', 'parce que', 1, 'Rejet&amp;eacute;e', '', '', 12),
('La premi&amp;egrave;re maladie due &amp;agrave; un coronavirus a &amp;eacute;t&amp;eacute; observ&amp;eacute;e en 1930 ?', 'VRAI', 'C&amp;#039;&amp;eacute;tait aux Etats Unis d&amp;rsquo;Am&amp;eacute;rique, chez des volailles.', 2, 'V&amp;eacute;rifi&amp;eacute;e', '', '', 13),
('Le premier humain infect&amp;eacute; par le coronavirus &amp;eacute;tait en 1984 ?', 'FAUX', 'C&amp;#039;&amp;eacute;tait en 1965, par la souche B814', 2, 'V&amp;eacute;rifi&amp;eacute;e', '', '', 14),
('Le terme &amp;quot;Coronavirus&amp;quot; provient des mots latins &amp;quot;corona&amp;quot; et &amp;quot;virus&amp;quot;', 'VRAI', 'Il vient du latin corona : couronne et virus', 1, 'V&amp;eacute;rifi&amp;eacute;e', 'https://www.lefigaro.fr/langue-francaise/francophonie/coronavirus-d-ou-vient-ce-nom-20200319', 'Le Figaro - Coronavirus: d&amp;rsquo;o&amp;ugrave; vient ce nom?', 15),
('Est ce que la Chloroquine a &amp;eacute;t&amp;eacute; approuv&amp;eacute; comme &amp;eacute;tant le rem&amp;egrave;de contre le Coronavirus ? ', 'FAUX', 'Il n&amp;#039;a pas &amp;eacute;t&amp;eacute; valid&amp;eacute; par l&amp;#039;ensemble de la m&amp;eacute;decine mais certains le prescrive.', 1, 'V&amp;eacute;rifi&amp;eacute;e', '', '', 16),
('Est ce que seules les personnes pr&amp;eacute;sentant les sympt&amp;ocirc;mes du coronavirus sont contagieuses ? ', 'FAUX', 'Il n&amp;#039;est pas certain que ce soit le cas.', 1, 'V&amp;eacute;rifi&amp;eacute;e', '', '', 17),
('azdad', 'VRAI', 'azdazd', 1, 'Rejet&amp;eacute;e', '', '', 18),
('dazda', 'VRAI', 'azdazda', 1, 'Rejet&amp;eacute;e', '', '', 19),
('Les moustiques peuvent-ils transmettre le virus ?', 'FAUX', 'Il n&amp;rsquo;existe aucune preuve de transmission du virus &amp;agrave; travers les moustiques, ou tout autre animal d&amp;rsquo;ailleurs. Le coronavirus COVID-19 se transmet entre humains, via les gouttelettes respiratoires.', 2, 'V&amp;eacute;rifi&amp;eacute;e', 'https://solidarites-sante.gouv.fr/soins-et-maladies/maladies/maladies-infectieuses/coronavirus/tout-savoir-sur-le-covid-19/article/reponses-a-vos-questions-sur-le-covid-19-par-des-medecins', 'Sant&amp;eacute; Gouvernement', 20),
('Le virus du covid-19 se d&amp;eacute;place-t&amp;#039;il par voie a&amp;eacute;rienne ?', 'FAUX', 'Il ne peut pas vivre dans l&amp;rsquo;air tout seul. Le coronavirus responsable du COVID-19 se transmet par les gouttelettes, qui sont les s&amp;eacute;cr&amp;eacute;tions respiratoires qu&amp;rsquo;on &amp;eacute;met quand on tousse, qu&amp;rsquo;on &amp;eacute;ternue ou qu&amp;rsquo;on parle.  Le virus est transport&amp;eacute; par les gouttelettes, il ne circule pas dans l&amp;rsquo;air tout seul, mais peut atteindre une personne &amp;agrave; proximit&amp;eacute; (&amp;lt;1 m&amp;egrave;tre). Il faut donc maintenir ses distances de s&amp;eacute;curit&amp;eacute;.', 2, 'V&amp;eacute;rifi&amp;eacute;e', 'https://solidarites-sante.gouv.fr/soins-et-maladies/maladies/maladies-infectieuses/coronavirus/tout-savoir-sur-le-covid-19/article/reponses-a-vos-questions-sur-le-covid-19-par-des-medecins', 'Sant&amp;eacute; gouvernement', 21),
('Apr&amp;egrave;s avoir gu&amp;eacute;ri du coronavirus, est-on immunis&amp;eacute; contre la maladie ?', 'VRAI', 'Apr&amp;egrave;s avoir rencontr&amp;eacute; un virus, notre organisme d&amp;eacute;veloppe des d&amp;eacute;fenses immunitaires appel&amp;eacute;es anticorps, lui permettant de se d&amp;eacute;fendre contre ce virus. Bien que nous soyons encore &amp;agrave; un stade pr&amp;eacute;coce pour se prononcer sur cette question,  les premi&amp;egrave;res donn&amp;eacute;es semblent rassurantes, car &amp;agrave; ce jour, aucun cas r&amp;eacute;ellement confirm&amp;eacute; de contagion n&amp;#039;a &amp;eacute;t&amp;eacute;  identifi&amp;eacute; pour les personnes ayant d&amp;eacute;j&amp;agrave; gu&amp;eacute;ri du Covid-19', 2, 'V&amp;eacute;rifi&amp;eacute;e', 'https://www.20minutes.fr/sante/2752843-20200402-coronavirus-contagieux-immunise-fois-gueri-peut-contracter-deux-fois-covid-19', '20 Minutes - Peut-on contracter deux fois le Covid-19', 22),
('Il est recommand&amp;eacute; pour lutter contre le virus de boire et manger chaud. Le CoronaVirus ne r&amp;eacute;siste pas &amp;agrave; la chaleur.', 'FAUX', 'A l&amp;#039;heure actuelle, les m&amp;eacute;decins ont indiqu&amp;eacute; que le virus survivait g&amp;eacute;n&amp;eacute;ralement moins longtemps face aux temp&amp;eacute;ratures et humidit&amp;eacute;s &amp;eacute;lev&amp;eacute;es. Cependant, aucune donn&amp;eacute;e n&amp;#039;a &amp;eacute;t&amp;eacute; trouv&amp;eacute;e concernant une certaine temp&amp;eacute;rature d&amp;eacute;sactivant le virus.', 2, 'V&amp;eacute;rifi&amp;eacute;e', 'https://www.cdc.gov/coronavirus/2019-ncov/faq.html', 'Centers for Desease Control and Prevention', 23),
('Est ce que le coronavirus affecte les enfants de la m&amp;ecirc;me fa&amp;ccedil;on que les adultes ?', 'VRAI', 'Les sympt&amp;ocirc;mes sont similaires. Cependant, les enfants ont g&amp;eacute;n&amp;eacute;ralement des cas b&amp;eacute;nins de la maladie. Il s&amp;#039;agit la plupart du temps de symptomes semblables au rhum, avec de la fi&amp;egrave;vre, de la toux et de la coul&amp;eacute;e nasale, avec parfois des vomissements et des diarrh&amp;eacute;es. Mais pour l&amp;#039;instant il n&amp;#039;y a pas eu de cas o&amp;ugrave; la maladie &amp;agrave; &amp;eacute;t&amp;eacute; plus forte.', 2, 'V&amp;eacute;rifi&amp;eacute;e', 'https://www.cdc.gov/coronavirus/2019-ncov/faq.html#COVID-19-and-Children', 'Center of Desease Control and Prevention - Covid-19 and Children', 24),
('Est ce que le prix des produits de la grande consommation (spaghetti) a augment&amp;eacute; depuis le confinement ?', 'FAUX', 'Malgr&amp;eacute; la publications d&amp;#039;images montrant que le prix des spaghettis avait doubl&amp;eacute; depuis le d&amp;eacute;but du confinement, l&amp;#039;associacion UFC-Que choisir a d&amp;eacute;montr&amp;eacute; apr&amp;egrave;s une &amp;eacute;tude hebdomadaire de 104 produits dans 10 enseignes. Le r&amp;eacute;sultat montre une augmentation de quelques centimes maximums', 2, 'V&amp;eacute;rifi&amp;eacute;e', 'https://factuel.afp.com/des-spaghetti-deux-fois-plus-chers-non-les-prix-de-produits-de-grande-consommation-ont-tres-peu', 'AFPFactuel - Des spaghettis deux fois plus chers ?', 25),
('Les gants sont-ils utiles &amp;agrave; la protection contre le Coronavirus ? ', 'FAUX', 'Les gants permettent au virus de s&amp;#039;accrocher aux mains plus facilement. De plus il a &amp;eacute;t&amp;eacute; d&amp;eacute;montr&amp;eacute; que les personnes portant des gants se sentent plus en s&amp;eacute;curit&amp;eacute; face au virus, et se touchent beaucoup plus le visage.', 1, 'V&amp;eacute;rifi&amp;eacute;e', 'https://solidarites-sante.gouv.fr/soins-et-maladies/maladies/maladies-infectieuses/coronavirus/tout-savoir-sur-le-covid-19/article/comment-se-proteger-du-coronavirus-covid-19', 'Les gants sont-ils utiles ? Minist&amp;egrave;re de la Sant&amp;eacute;', 26),
('question niveau 3', 'VRAI', 'zohfuzhef', 3, 'Rejet&amp;eacute;e', '', '', 27),
('Des dauphins ont-ils &amp;eacute;t&amp;eacute; aper&amp;ccedil;u dans le sud de la France pendant le confinement ?', 'FAUX', 'La vid&amp;eacute;o n&amp;#039;a pas &amp;eacute;t&amp;eacute; prise dans le Sud-Est de la France comme peuvent le mentionner certaines publications sur les r&amp;eacute;seaux. Cette vid&amp;eacute;o vient du compte officiel de la Marina d&amp;#039;Atak&amp;ouml;i, en Turquie. Par ailleurs, le quotidien r&amp;eacute;gional Nice-Matin a d&amp;eacute;menti cette information.', 2, 'V&amp;eacute;rifi&amp;eacute;e', 'https://factuel.afp.com/cette-video-de-dauphins-nageant-dans-une-marina-ete-filmee-istanbul-pas-dans-le-sud-est-de-la-france', 'AFPFacuel - Des dauphins &amp;agrave; Nice ?', 28),
('Les attestations de sortie actuelles sont un copi&amp;eacute;-coll&amp;eacute; des attestations datant de 1940.  ', 'FAUX', 'Malgr&amp;eacute; qu&amp;#039;une image d&amp;#039;attestation datant de 1940 aie tourn&amp;eacute; sur les r&amp;eacute;seaux sociaux, celle ci n&amp;#039;est qu&amp;#039;un montage entre r&amp;eacute;cup&amp;eacute;rant un laiss&amp;eacute; passer de la Seconde Guerre Mondiale.', 3, 'V&amp;eacute;rifi&amp;eacute;e', 'https://factuel.afp.com/non-ce-visuel-ne-montre-pas-une-autorisation-de-sortie-dans-les-annees-1940', 'AFPFactuel - Montage d&amp;#039;une attestation de sortie de 1940', 29),
('L&amp;#039;euthanasie n&amp;#039;a pas &amp;eacute;t&amp;eacute; autoris&amp;eacute;e dans les EHPAD pendant le confinement pour vider les h&amp;ocirc;pitaux remplis.', 'VRAI', 'Le Ritrovil est un soin utilis&amp;eacute; chez les personnes en fin de vie pour leur permettre de ne pas souffrir et ne pas angoisser face &amp;agrave; la mort. Une pol&amp;eacute;mique a &amp;eacute;clat&amp;eacute; pour d&amp;eacute;noncer un usage massif du Ritrovil dans les EHPAD. Cependant, le gouvernement n&amp;#039;a pas augment&amp;eacute; l&amp;#039;usage de ce soin, mais a permis que la dispensation de celui ci soit plus simple. L&amp;#039;usage reste avec la m&amp;ecirc;me surveillance qu&amp;#039;au d&amp;eacute;but du confinement.', 3, 'V&amp;eacute;rifi&amp;eacute;e', 'https://factuel.afp.com/covid-19-non-le-gouvernement-na-pas-autorise-leuthanasie-des-personnes-agees', 'AFPFactuel - Autorisation de l&amp;#039;euthanasie dans les EHPAD', 30),
('Peut-on rendre visite &amp;agrave; un parent tr&amp;egrave;s malade ? ', 'VRAI', 'Les visites des proches sont interdites, si elles ne concernent que la prise de nouvelle ou le divertissement. Cependant, si la personne est chez elle et qu&amp;#039;elle ne peut recevoir de l&amp;#039;aide ext&amp;eacute;rieur, alors l&amp;#039;aide de la famille est autoris&amp;eacute;e.', 3, 'V&amp;eacute;rifi&amp;eacute;e', 'http://www.leparisien.fr/societe/coronavirus-puis-je-aller-voir-un-parent-tres-malade-23-04-2020-8304426.php', 'Le Parisien - Puis-je aller voir un parent tr&amp;egrave;s malade ?', 31),
('Est-ce que le Coronavirus a mut&amp;eacute; ? ', 'FAUX', 'En Avril 2020, il n&amp;#039;existe pas encore assez d&amp;#039;arguments scientifiques pour affirmer que le virus a en effet mut&amp;eacute;. Par ailleurs, lorsqu&amp;#039;un virus mute, il perd en dangerosit&amp;eacute;, au profit d&amp;#039;une meilleure propagation.', 3, 'V&amp;eacute;rifi&amp;eacute;e', 'https://solidarites-sante.gouv.fr/soins-et-maladies/maladies/maladies-infectieuses/coronavirus/tout-savoir-sur-le-covid-19/article/reponses-a-vos-questions-sur-le-covid-19-par-des-medecins', ' Minist&amp;egrave;re des Solidarit&amp;eacute;s et de la Sant&amp;eacute;', 32),
('Est-il conseill&amp;eacute; de se raser la barbe pour lutter contre le virus ? ', 'FAUX', 'Avoir de la pilosit&amp;eacute; facile n&amp;#039;accentue pas les risques de contamination au contamination. En effet, le virus atteint le corps gr&amp;acirc;ce aux orifices, comme la bouche ou le nez. De plus, la barbe ne donne pas de difficult&amp;eacute; &amp;agrave; la respiration. ', 1, 'V&amp;eacute;rifi&amp;eacute;e', 'https://www.lemonde.fr/les-decodeurs/article/2020/02/28/non-les-autorites-sanitaires-ne-recommandent-pas-de-se-raser-la-barbe-pour-lutter-contre-le-coronavirus_6031245_4355770.html', 'Le Monde - Se raser la barbe contre le virus', 33),
('La Terre est-elle atteinte d&amp;#039;une &amp;eacute;pid&amp;eacute;mie mortelle tous les 100 ans ? ', 'FAUX', 'Malgr&amp;eacute; les rumeurs et les faux articles scientifiques d&amp;eacute;montrant une &amp;eacute;pid&amp;eacute;mie sur chaque si&amp;egrave;cle &amp;agrave; l&amp;#039;ann&amp;eacute;e 20, il s&amp;#039;agit seulement d&amp;#039;un arrangement des dates par ses auteurs, en s&amp;eacute;lectionnant des ann&amp;eacute;es de contamination mineures par rapport &amp;agrave; la maladie. De plus, l&amp;#039;auteur ne retient les maladies qui l&amp;#039;arrange, soit celles qui peuvent coller aux dates. Enfin, il est dit par des scientifiques que les &amp;eacute;pid&amp;eacute;mies sont g&amp;eacute;n&amp;eacute;ralement une cons&amp;eacute;quence de l&amp;#039;&amp;eacute;volution de l&amp;#039;esp&amp;egrave;ce humaine plut&amp;ocirc;t qu&amp;#039;un complot centennal. ', 3, 'V&amp;eacute;rifi&amp;eacute;e', 'https://www.lemonde.fr/les-decodeurs/article/2020/03/25/non-une-epidemie-mortelle-ne-nettoie-pas-la-terre-tous-les-cent-ans_6034414_4355770.html', 'Le Monde - Une &amp;Eacute;pid&amp;eacute;mie tous les cent ans pour purifier la Terre', 34);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `connexion`
--
ALTER TABLE `connexion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `question` (`question`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `connexion`
--
ALTER TABLE `connexion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `reponses`
--
ALTER TABLE `reponses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
