DROP TABLE IF EXISTS projets;

DROP TABLE IF EXISTS outils;

DROP TABLE IF EXISTS etiquettes;

DROP TABLE IF EXISTS eti_proj;

DROP TABLE IF EXISTS outil_proj;

CREATE TABLE projets (
    id_projet CHAR(3) NOT NULL,
    nom_projet VARCHAR(128),
    date_créa VARCHAR(30),
    accroche TEXT,
    visuel TEXT,
    detail TEXT,
    annee_form CHAR(4),
    PRIMARY KEY (id_projets)
) DEFAULT CHARSET=utf8;


CREATE TABLE outils (
    id_outil CHAR(3) NOT NULL,
    nom_outil VARCHAR(128),
    icon TEXT,
    PRIMARY KEY (id_outil)
) DEFAULT CHARSET=utf8;


CREATE TABLE etiquettes (
    id_label CHAR(3) NOT NULL,
    nom_label VARCHAR(128),
    couleur_label VARCHAR(128),
    PRIMARY KEY (id_label)
) DEFAULT CHARSET=utf8;


CREATE TABLE eti_proj (
    id_projet CHAR(3),
    id_label CHAR(3),
    PRIMARY KEY (id_projet, id_label),
    FOREIGN KEY (id_projet) REFERENCES projets (id_projet),
    FOREIGN KEY (id_label) REFERENCES etiquettes (id_label)
) DEFAULT CHARSET=utf8;

CREATE TABLE outil_proj (
    id_projet CHAR(3),
    id_outil CHAR(3),
    PRIMARY KEY (id_projet, id_outil),
    FOREIGN KEY (id_projet) REFERENCES projets (id_projet),
    FOREIGN KEY (id_outil) REFERENCES outils (id_outil)
) DEFAULT CHARSET=utf8;


/*CREATE TABLE utilisateurs (
    id_util VARCHAR(128),
    prenom_util VARCHAR(128),
    nom_util VARCHAR(128),
    pass VARCHAR(128),
    img_pdp VARCHAR(128),
    PRIMARY KEY (id_util)
) DEFAULT CHARSET=utf8;



CREATE TABLE commentaires (
    id_comm INT NOT NULL AUTO_INCREMENT,
    time_com DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_util VARCHAR(128),
    id_groupe VARCHAR(3),
    content TEXT,
    PRIMARY KEY (id_comm),
    FOREIGN KEY (id_util) REFERENCES utilisateurs (id_util),
    FOREIGN KEY (id_groupe) REFERENCES groupes (id_groupe)
) DEFAULT CHARSET=utf8;



INSERT INTO groupes
VALUES  ("cem", "Cemented Minds", "Originaire de Caen, ce jeune groupe de rock s'inscrit dans un domaine Post-punk inspiré par les films paranormals des années 50.", "Le ciment est un liant hydraulique, utilisé dans la préparation du béton ou dans le formatage des esprits obtus. Dans une volonté d’évasion, Cemented Minds insuffle cet esprit de liberté dont on a besoin.</p><p class=\"descri\">Dans sa construction, on retrouve la légèreté de The Cure, la vitalité de Eagulls et la puissance de Holograms. Cemented Minds défend une pensée existentialiste, où le vécu humain prime face aux morales trop restrictives. Énergie post-punk, envolées de parpaings, la promesse d’être envahi par un élan de rébellion où rien ne nous arrête. Sans concession, on poursuit notre route, confiant sur nos valeurs. On libère nos esprits verrouillés et on se lâche enfin !", "2019", "img/cem/cem_ban.jpg", "img/cem/cem_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/57tq7bHt2vpLrwGIMpBp5v?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/nC1Ypi3xoNRjVB2SA", "https://open.spotify.com/artist/57tq7bHt2vpLrwGIMpBp5v?si=BmVB68v5Q_WXDxoh3cvgXg", '<iframe width="560" height="315" src="https://www.youtube.com/embed/sKH1bfy_Nak" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/cementedminds_/", "https://www.youtube.com/@CementedMinds", "https://www.facebook.com/cementedminds", 001),/*cemented*/
        ("psy", "The Psychotic Monks", "Originaires de Paris, les Monks expérimentent et tentent des choses qui ensemble forment une réelle corrélation aussi bien musicale qu'artistique.", "Il y a une sensibilité commune qui, depuis 2015, réunit les quatre membres de The Psychotic Monks. En perpétuelle découverte, s’enivrant d’expérimentations, ils nourrissent une révolte qui prend forme sur scène, ils s’y transforment. Se mêle à la révolte le fantasme d’un frisson autre, la recherche d’un exutoire collectif, à travers la musique.", "2015", "img/psy/psy_ban.jpg", "img/psy/psy_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/7GB1a2GjXTCbTtdSv3NTPy?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/zCKRvNv19d5w6KQz7", "https://open.spotify.com/artist/7GB1a2GjXTCbTtdSv3NTPy?si=lPhPxTxIQgeahYyKWmPgOA", '<iframe width="560" height="315" src="https://www.youtube.com/embed/pTLp5TclsAE" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/thepsychoticmonks/", "https://www.youtube.com/@ThePsychoticMonks", "https://www.facebook.com/ThePsychoticMonks/", 002),/*psycho*/
        ("gre", "Greta Van Fleet", "Inspiré par les grands de Led Zeppelin, ce groupe américain ne cesse de conquérir la scène rock international au point de peut-être en être le jeune groupe le plus important !", "En trois ans, Greta Van Fleet est passé d'une tournée dans les bars rock miteux de Detroit et de Saginaw à des concerts en tête d'affiche sur cinq continents devant des publics trois fois plus nombreux que ceux de leur ville natale. Le groupe qui attirait autrefois des foules d'adolescents lors de concerts forestiers improvisés, a maintenant vendu plus d'un million de billets dans le monde entier. Les stades en Italie sont bien loin d'un champ jonché de camionnettes, encadré par la canopée de grands conifères, où ils ont appris à aimer un public. Le Red Rocks Amphitheater du Colorado est à mille lieues des petits bars du Midwest où ils ont fait leurs débuts (avant même d'avoir l'âge légal de boire). De Frankenmuth à un bus de tournée à travers l'Amérique, puis à leur tout premier vol vers l'Europe, leur dernier album The Battle at Garden's Gate est le reflet de leur voyage vers le présent.", "2012", "img/gre/gre_ban.jpg", "img/gre/gre_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/4NpFxQe2UvRCAjto3JqlSl?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/8LZqvdWMWxBZqKD5A", "https://open.spotify.com/artist/4NpFxQe2UvRCAjto3JqlSl?si=HNBIdcGySPelc-sCwdTwAQ", '<iframe width="560" height="315" src="https://www.youtube.com/embed/SFFKed1Dt4I" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/gretavanfleet/", "https://www.youtube.com/channel/UCX2_tsfS1lWaNg26UUuWrxA", "https://www.facebook.com/gretavanfleet", 003),/*greta van fleet*/
        ("ski", "Skip the Use", "Déjà présent depuis plus de 15 ans sur la scène du rock français, Skip The Use se porte très bien en oscillant entre Rock, Punk, Pop et Électro.", "Trois années d’absence. Autant dire une éternité. Pour les fans et les autres. Le temps (et ce que l’on en fait), élément important de ce nouvel album de Skip The Use, file aujourd’hui à toute allure, réseaux sociaux et écrans noirs, la donne a changé. Pour le meilleur et parfois le pire. Pour le pire et parfois le meilleur. Matt Bastard et Yan Stefani n’ont pas disparu depuis 2016, date de cette séparation qui n’en a jamais été vraiment une. Ils ont travaillé, dur, à distance. En solo pour Mat, côte ouest, États-Unis. En groupe avec The NoFace pour Yan. La vie est ainsi faite, elle dessine des bifurcations, offre des choix et alimente des désirs. Elle s’offre aux plus courageux. 2019: “Past & Future”, le nouvel et incandescent album de Skip The Use, existe. Ce n’est ni un remix, ni une reforma- tion, ni une dernière chance. Non. C’est une amitié consolidée, une envie brûlante d’en découdre avec les clichés et les certitudes, surtout, le besoin d’édifier une passerelle temporelle entre hier et demain, pour mieux fédérer les coeurs et rapprocher les générations, les âmes et les corps. Ce disque est à la fois une main tendue, un poing serré, un sourire en coin, un club en fusion et une virée électrique qui ne fait pas de prisonnier. L’identité de Skip The Use, faite depuis toujours d’éclectisme, de passion, d’indépendance forcenée et de brassage sans frontière semble s’être renforcée ici, elle explose, elle vibre, elle ondule avec une rage et une énergie proprement démentes.", "2007", "img/ski/ski_ban.webp", "img/ski/ski_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/6UWiE4V9p2HK4C74A0CGKB?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/6YQZn98p1uzHdr648", "https://open.spotify.com/artist/6UWiE4V9p2HK4C74A0CGKB?si=giaYGeKnSwqDOSESkFFWKg", '<iframe width="560" height="315" src="https://www.youtube.com/embed/izrbgQn89PA" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/skiptheuse/", "https://www.youtube.com/@skiptheuse_official", "https://fr-fr.facebook.com/skiptheuse/", 004),/*skip*/
        ("tip", "Tip Stevens", "Tip Stevens oscille entre Pop, rock, électro et même parfois un peu de punk. C'est avec ce style bien à lui qu'il a su se faire une place sur la scène rock française !", "Tip Stevens, d’abord chanteur et compositeur mais aussi multi-instrumentiste, se présente souvent comme un éternel touche à tout. Déjà très actif en tant que chanteur du trio rock Teacup Monster, à travers son activité de streamer sur la plateforme Twitch ou encore dans la production musicale d’autres artistes, Tip développe à présent son projet musical en solo.</p><p class=\"descri\">Le projet suit un concept simple : Ne jamais présenter d’album, mais plutôt plusieurs EPs portant chacun le nom d’un animal totem. En octobre 2020 Tip sort un premier EP, “Condor”, aux sonorités pop-rock/électro/chiptune. En Mai 2021, Tip dévoile un second EP “Manta”, expérience sous marine cette fois plus intimiste et subtile mais toujours dans une dynamique rock/électro. Puis en octobre 2021, Tip présente “Quetzal”, un EP plus chaud et plus doux dans un style pop-rock/folk. Chaque sortie représente pour lui l’occasion d’expérimenter de nouvelles couleurs musicales, le format EP permettant de proposer à sa communauté plusieurs sorties dans la même année contrairement au traditionnel format album.", "2019", "img/tip/tip_ban.jpg", "img/tip/tip_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/0dDbdyjsq9HEPNKPyNElgd?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/zpXJgTaKSgUfdEHv9", "https://open.spotify.com/artist/0dDbdyjsq9HEPNKPyNElgd?si=o4hg9w7OQcebyileM819bg", '<iframe width="560" height="315" src="https://www.youtube.com/embed/f2rLwNxOV7g" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/tip_stevens/", "https://www.youtube.com/c/tipstevens", "https://www.facebook.com/TipStevens", 005),/*tip stevens*/
        ("cey", "Ceylon", "Ceylon c'est l'art abstrait de la musique rock. Ce son psychédélique et les petits riffs de guitare structurant les morceaux en font de véritables oeuvres d'art !", "Ceylon compose une musique instinctive et énergique sur laquelle les mots fusent au rythme des cordes et autres oiseaux.</p><p class=\"descri\">Auréolés d’une vibrante synergie de groupe, iels s’aventurent dans des paysages cosmopolites, entre Indie Rock et Chanson.</p><p class=\"descri\">Lorsqu’on observe Ceylon, on pense au lyrisme de Radiohead, au franc-parler de Bonnie Banane et à la sensualité de Khruangbin.", "2014", "img/cey/cey_ban3.jpg", "img/cey/cey_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/0gPoXgmh4QCj4i1gzWwdUm?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/kZbYQTp3x5XQCi2M6", "https://open.spotify.com/artist/0gPoXgmh4QCj4i1gzWwdUm?si=_MBK5QOlRf2mNGhLW4fg5A", '<iframe width="560" height="315" src="https://www.youtube.com/embed/6x4PTrAJr80" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/ceylonofficiel/", "https://www.youtube.com/c/CEYLONLATRANSE", "https://www.facebook.com/ceylonofficiel", 006),/*ceylon*/
        ("ko", "Ko Ko Mo", "Inspiré par les grands noms du rock des années 70, Ko Ko Mo compose un air vintage !", "KO KO MO est un duo musical explosif, deux bêtes de scène : Warren (guitare – chant) et Kevin « K20 » (batterie – choeurs). À deux, c’est la fureur de vivre. Toujours à fond sur les traces de leurs héros des 70’s, ils transcendent subtilement leurs influences pour nous offrir un « classic rock » aux allures vintages et pourtant indéniablement actuel.</p><p class=\"descri\">Warren y conjugue ses vocalises parfois androgynes à un jeu de guitare jamais avare en riffs et en solos, tandis que « K20 » casse la baraque avec un sens du spectacle et une furie digne des plus grands cogneurs de l’histoire du rock.", "2014", "img/ko/ko_ban.jpg", "img/ko/ko_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/37njHbDvYnaoRWbRwVTdaZ?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/84Zvzj2Ehozi5JKB9", "https://open.spotify.com/artist/37njHbDvYnaoRWbRwVTdaZ?si=LDZn2--eR7-NRbgqucGDEg", '<iframe width="560" height="315" src="https://www.youtube.com/embed/J1p7J-ou5zE" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/thisiskokomo/", "https://www.youtube.com/@kokomo8559", "https://www.facebook.com/thisiskokomo/", 007),/*ko ko mo*/
        ("las", "Last Train", "Ce groupe d'Alsaciens voit les choses en grand, et cela se ressent dans chacun de leurs morceaux qui vous embarquent dans un grand voyage digne d'un grand compositeur !", "Des milliers de kilomètres avalés, des dizaines de salles de concert investies, une multitude de visages croisés. En dix ans, Last Train s’est emparé de la scène rock française et y a puisé les vertus de l’expérience, levant le voile sur les secrets des tournées et les rouages d’une industrie riche et complexe. Il aura fallu deux albums et une profonde détermination chevillée à l’âme pour que ceux qui ne se sont jamais blottis dans l’inaction décident de reprendre, en 2021, la pleine maîtrise de leur histoire. L’indépendance et le libre-arbitre comme premières lignes de conduite, pour donner vie à un troisième chapitre radical et assumé.", "2012", "img/las/las_ban.jpg", "img/las/las_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/4S47feOS2ATuhc7Ao5ilfG?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/bZL5Hba9JF2rfPCBA", "https://open.spotify.com/artist/4S47feOS2ATuhc7Ao5ilfG?si=IOzh9iJaQHStI_vZh-_WEw", '<iframe width="560" height="315" src="https://www.youtube.com/embed/cDrOMbnmQE0" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/lasttrainband/", "https://www.youtube.com/@LASTTRAINofficial", "https://www.facebook.com/lasttrainofficial", 008),/*last train*/
        ("blo", "Bloc Party", "Depuis les plus gros succès de leurs premiers albums, Bloc Party n'a jamais arrêté d'expérimenter et d'étoffer son style !", "Formé à Londres en 2002, Bloc Party déboule en force avec le réussi Silent Alarm trois ans plus tard. Le quatuor mené par Kele Okereke s'affiche d'emblée comme un grand espoir du rock anglais. Une sensation confirmée par les albums suivants A Weekend in the City en 2007 et le plus electro Intimacy en 2008. Après une escapade solo de son leader, le groupe repart en campagne en 2012 avec Four. Subissant deux départs successifs, avec les démissions de Gordon Moakes et Matt Tong, le groupe essaie de s'inventer une nouvelle identité au travers du cinquième album, Hymns, qui paraît en janvier 2016 et qui accueille deux nouveaux membres, Justin Harris et Louise Bartle.", "2002", "img/blo/blo_ban.jpg", "img/blo/blo_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/3MM8mtgFzaEJsqbjZBSsHJ?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/5gHNZopSkH3oYAD89", "https://open.spotify.com/artist/3MM8mtgFzaEJsqbjZBSsHJ?si=-Zc51fh8SQ2dfzCBlgUMBA", '<iframe width="560" height="315" src="https://www.youtube.com/embed/0Y86GEcmcnw" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/thisisblocparty/", "https://www.youtube.com/@thisisblocparty", "https://www.facebook.com/blocpartyofficial", 009),/*bloc party*/
        ("str", "The Strokes", "Les Strokes, c'est LE groupe qui m'a le plus inspiré musicalement. Les mélodies de l'indie rock associé au son de guitare du garage rock en fond l'un des plus grands groupes de tous les temps ! (pour l'auteur du site)", "The Strokes est un groupe de rock américain, originaire de New York. Formé en 1998, il élève sa renommée dès le début des années 2000 comme l'un des groupes phares du renouveau garage rock et post-punk revival. Ils sont souvent désignés comme les héritiers du Velvet Underground et de Television, dont le groupe s'inspire principalement.", "1998", "img/str/str_ban.jpg", "img/str/str_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/0epOFNiUfyON9EYx7Tpr6V?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/3VcpBMrXbh8FiXBC9", "https://open.spotify.com/artist/0epOFNiUfyON9EYx7Tpr6V?si=zqnNexOaQw6so8gZhFAQ3Q", '<iframe width="560" height="315" src="https://www.youtube.com/embed/pT68FS3YbQ4" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/thestrokes/", "https://www.youtube.com/channel/UC28OQSWdiW7jkadedZRRyZA", "https://www.facebook.com/thestrokes", 010),/*strokes*/
        ("bla", "The Black Keys", "Groupe le plus important de la scène Blues Rock international. IL est quasiment impossible de passer à côté de leurs énormes tubes que sont \"Gold On The Ceiling\" et \"Lonely Boy\".", "Formé à Akron, Ohio, en 2001, The Black Keys est composé du chanteur/guitariste Dan Auerbach et du batteur Patrick Carney. Ils ont été qualifiés de \"royauté du rock\" par l'Associated Press et de \"l’un des meilleurs groupes de rock ’n’roll de la planète\" par Uncut. Après s’être fait les dents dans de petits clubs, le groupe a fait des tournées à guichets fermés dans des grandes salles et a sorti 11 albums studio : son premier album The Big Come Up (2002), suivi de Thickfreakness (2003) et Rubber Factory (2004), ainsi que leurs albums sur Nonesuch Records, Magic Potion (2006), Attack & Release (2008), Brothers (2010), El Camino (2011), Turn Blue (2014), \"Let’s Rock\" (2019), Delta Kream (2021) et Dropout Boogie (2022). Le groupe a remporté six Grammy Awards et un BRIT, entre autres récompenses mondiales, et a été la tête d'affiche de festivals en Amérique du Nord, Amérique du Sud, Mexique, Australie et Europe.", "2001", "img/bla/bla_ban.jpg", "img/bla/bla_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/7mnBLXK823vNxN3UWB7Gfz?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/PP8cXSvtireBq9rV9", "https://open.spotify.com/artist/7mnBLXK823vNxN3UWB7Gfz?si=GGhiLPQoS8GYsRvCvufTEg", '<iframe width="560" height="315" src="https://www.youtube.com/embed/KKSmHOUaqaQ" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/theblackkeys/", "https://www.youtube.com/channel/UCJL3h2-wEOB6EigQOBZ3ryg", "https://www.facebook.com/TheBlackKeys/", 011),/*black keys*/
        ("bal", "Balm", "Originaire de Paris, ce petit groupe d'indie nous offre un rock joyeux ! Il y fait bon vivre et on se sent bien !", "Balm est un groupe d’indie rock français. La combinaison de synthétiseurs brillants, de guitares distordues, d'une batterie puissante et d'une basse entraînante met en valeur la voix authentique et solaire du chanteur. S'inspirant de Radiohead, Arcade Fire, The Strokes ou encore Tame Impala, la musique de Balm est sensible, colorée et nuancée.", "2019", "img/bal/bal_ban.jpg", "img/bal/bal_pdp.jpg", '<iframe style="border-radius:12px" src="https://open.spotify.com/embed/artist/4hI6ww0nRIy2qtXh48yKlp?utm_source=generator" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>', "https://deezer.page.link/AcHcDmkJAuNK7MuN8", "https://open.spotify.com/artist/4hI6ww0nRIy2qtXh48yKlp?si=oCeRC9mnRYqmw2U6McSZhw", '<iframe width="560" height="315" src="https://www.youtube.com/embed/XlKjqXgUe1I" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', "https://www.instagram.com/balmtheband/", "https://www.youtube.com/@balm9357", "https://www.facebook.com/balmtheband", 012)/*balm*/
;
/*id groupe nom anne nb typ img lienspot deez*/

INSERT INTO albums
VALUES  ("001", "cem", "Colostrum", "2019", "5", "EP", "img/cem/cem_alb01.jpg", "https://open.spotify.com/album/5r7VN2AznYigt0eq0xOzqp?si=1hAaMsUkTYWha788Yq0qcw", "https://deezer.page.link/LMEAwAdbvdFM9pi19"),
        ("002", "cem", "The Future is the End", "2023", "10", "Album", "img/cem/cem_alb02.jpg", "https://open.spotify.com/album/0OWblFWotbcUbnJlnvWvO7?si=JQFEpyipQ-iKDicRqk_QYg", "https://deezer.page.link/z6NFm8ubU6ZJzX3cA"),
        ("003", "psy", "Silence Slowly And Madly Shines", "2017", "10", "Album", "img/psy/psy_alb01.jpg", "https://open.spotify.com/album/6z5nHHrbow0HdyZLcBqWfA?si=9tdgA8kPSEeMNofadvWTlg", "https://deezer.page.link/NZugMoNPzVxqV33MA"),
        ("004", "psy", "Private Meaning First", "2019", "9", "Album", "img/psy/psy_alb02.jpg", "https://open.spotify.com/album/5o4vzvux2xyc7rkTzvrWrs?si=13XgGbBcQvWJseKSKWYKrQ", "https://deezer.page.link/uU3XUzt5ggN1NQydA"),
        ("005", "psy", "Pink Colour Surgery", "2023", "12", "Album", "img/psy/psy_alb03.jpg", "https://open.spotify.com/album/4hfobqngpJYzNlB1D9eeTD?si=fiLq-81PQBGX9Skj9urf7Q", "https://deezer.page.link/wgGgjRkEtiR225dR8"),
        ("006", "tip", "Condor (Chapter 1: Body)", "2020", "5", "EP", "img/tip/tip_alb01.jpg", "https://open.spotify.com/album/3QkmIIRLRjsLMQHxnjJZsg?si=4t4KZwZPSIe06uRbq9aQKQ", "https://deezer.page.link/eqAdbdCs12D4w7wi7"),
        ("007", "tip", "Manta", "2021", "4", "EP", "img/tip/tip_alb02.jpg", "https://open.spotify.com/album/1OV3aatqG2s1iF8v6xwSwD?si=nMcI4O4XQUStirX6Dj1DcQ", "https://deezer.page.link/D5M2LTAwFgoRd2dv5"),
        ("008", "tip", "Quetzal", "2021", "4", "EP", "img/tip/tip_alb03.png", "https://open.spotify.com/album/2lNmD44SbogVqwD8kBPnkK?si=4jAudZ8TSqGLTr7Tcmm2WA", "https://deezer.page.link/n6uYmiz57RFoUCdZ8"),
        ("009", "tip", "Kaioty", "2022", "5", "EP", "img/tip/tip_alb04.jpg", "https://open.spotify.com/album/0wSJlmSKVzARspRSz0VD98?si=o5TX5JLIRMKFF7aNNmeSlg", "https://deezer.page.link/AXQY34WNPjj5mpPs6"),
        ("010", "tip", "Bengal", "2023", "6", "EP", "img/tip/tip_alb05.jpg", "https://open.spotify.com/album/3Vjft5n4WNjwqtzToTY53N?si=aKcZ0_amS3WNvFED7riPQA", "https://deezer.page.link/wJifYSCiyaGCpaui7"),
        ("011", "ski", "Can Be Late", "2012", "22", "Album", "img/ski/ski_alb01.jpg", "https://open.spotify.com/album/2D9zCv79mWQw6j3nRTcf4N?si=HE6_VaL8RaiO99xGksjqfw", "https://deezer.page.link/BTFDocDU81MXiZ686"),
        ("012", "ski", "Little Armageddon", "2014", "15", "Album", "img/ski/ski_alb02.jpg", "https://open.spotify.com/album/3RINC17yAVSYXzIzhmCmiY?si=HUlMu-kOR0S4D2iKbIbqbA", "https://deezer.page.link/FjER5SCkEh413WWy9"),
        ("013", "ski", "Little Armageddon Tour (live)", "2015", "28", "Album Live", "img/ski/ski_alb03.jpg", "https://open.spotify.com/album/6YBf6uXkX54FNPuyKVlptP?si=BkZzYO85SsCtIgrFpPGPnA", "https://deezer.page.link/zx4V4Ycz9m8rUArW8"),
        ("014", "ski", "Past & Future", "2019", "14", "Album", "img/ski/ski_alb04.jpg", "https://open.spotify.com/album/49zarwVKLAbwUXnbHtgHxc?si=1RpAF953RmWCouuh3JvYtA", "https://deezer.page.link/B99t5jEvd1NEPfay8"),
        ("015", "ski", "Human Disorder", "2022", "13", "Album", "img/ski/ski_alb05.jpg", "https://open.spotify.com/album/63nTilDCK2iUjocsalzPgP?si=NSMZK571TaOWI0yUM2RRpg", "https://deezer.page.link/o7G2YKZFEe9BVRUC7"),
        ("016", "cey", "Ceylon", "2019", "5", "EP", "img/cey/cey_alb01.jpg", "https://open.spotify.com/album/31KSiMgI64P8fe8fy2beNE?si=CrgP4ZUiRK-rKiskrnpQew", "https://deezer.page.link/DNVdYzDK1BddLoht7"),
        ("017", "cey", "Où ça en est", "2020", "6", "Album", "img/cey/cey_alb02.webp", "https://open.spotify.com/album/6MilxLiVFHjq5VhOwF4M4B?si=epfcNgMdSxm-US7GLnEg-Q", "https://deezer.page.link/2RJu7qi1nzQA4yQBA"),
        ("018", "cey", "Le grand secret des oiseaux de sable", "2022", "3", "EP", "img/cey/cey_alb03.jpg", "https://open.spotify.com/album/4fRNbuUCRtarz1sSMd5jaR?si=gMpQGVdoReqrmJVHGiDKQw", "https://deezer.page.link/MFPHX2PEWUBra6Ca7"),
        ("019", "ko", "Technicolor Life", "2018", "12", "Album", "img/ko/ko_alb01.jpg", "https://open.spotify.com/album/0Ddwg6W8oYYTAH5FHJHCg6?si=DXotubqzQIivyMBhlliiNQ", "https://deezer.page.link/tVffahHhFcwSFFpk9"),
        ("020", "ko", "Lemon Twins", "2019", "10", "Album", "img/ko/ko_alb02.jpg", "https://open.spotify.com/album/5vkFCpD1Jb7SMDIDv1xeCK?si=SAuLVRHNRi2SINc9i29smQ", "https://deezer.page.link/mTYxihPocD6dYH4h9"),
        ("021", "ko", "Need Some Mo’", "2022", "10", "Album", "img/ko/ko_alb03.jpg", "https://open.spotify.com/album/3ImVZRpwTPSkF6duisekYE?si=CJozKZ_oT2Wojx974a_-Ow", "https://deezer.page.link/Y25toxF1tUrxkARm9"),
        ("022", "las", "Weathering", "2017", "12", "Album", "img/las/las_alb01.jpg", "https://open.spotify.com/album/4fRujS6zU3icVHKbTZMbGn?si=dHwWGrwwQBCiVkmJtpFdBQ", "https://deezer.page.link/NVCaJGSyG7qgs3wD8"),
        ("023", "las", "The Big Picture", "2019", "10", "Album", "img/las/las_alb02.jpg", "https://open.spotify.com/album/3V8iH2jIjtTBj1CBkTPSZA?si=DCKxveq6SymhohgeCTnSBw", "https://deezer.page.link/vvCZTLpgfqCYa82g7"),
        ("024", "las", "How Did We Get There ?", "2022", "1", "EP", "img/las/las_alb03.jpg", "https://open.spotify.com/album/5cxvAivpSlcQqdIiX3Zz90?si=X3d66J_6QKq9qyGJ_ZNjag", "https://deezer.page.link/G7bNJaEGaiSYZ3rB8"),
        ("025", "blo", "Silent Alarm", "2005", "13", "Album", "img/blo/blo_alb01.jpg", "https://open.spotify.com/album/3YQZ1RZr9qIKYLSoaEekSf?si=axVYD2bvRCWoBVGklsx5CQ", "https://deezer.page.link/sFgpDJqAXkQf3oak8"),
        ("026", "blo", "A Weekend In The City", "2007", "12", "Album", "img/blo/blo_alb02.jpg", "https://open.spotify.com/album/5PkAUwhhB5YGgwnvhy4AC7?si=2SAtvNHKSxOURpgOldh2NA", "https://deezer.page.link/Gc13GymXF5DsZC9t6"),
        ("027", "blo", "Intimacy", "2008", "13", "Album", "img/blo/blo_alb03.jpg", "https://open.spotify.com/album/7DdrnK4csNX1jf2WAw9aQC?si=9A61ekQKRyWTfj_jUmnkug", "https://deezer.page.link/N9bVfYgPGcuAPn9M6"),
        ("028", "blo", "Four", "2012", "19", "Album", "img/blo/blo_alb04.jpg", "https://open.spotify.com/album/4T5NbYNbGEgTF3SbTQH0rT?si=qHHToJ4iQsCtkqDJb4vn2Q", "https://deezer.page.link/s9WaBhS2T5JJTDTE8"),
        ("029", "blo", "Hymns", "2016", "15", "Album", "img/blo/blo_alb05.jpg", "https://open.spotify.com/album/1gfOAtFkePntYiJ8Bculmd?si=r54e8n-UQ66bkoJcGzP26w", "https://deezer.page.link/ajgApzLwSPo5S27k9"),
        ("030", "blo", "Alpha Games", "2022", "15", "Album", "img/blo/blo_alb06.jpg", "https://open.spotify.com/album/7ao5TcY1WmEfbl9q38ZGLP?si=_3NI_WSiSMGhdlstxrI-lA", "https://deezer.page.link/Qf4QkaqJddunN9Pp6"),
        ("031", "str", "Is This It", "2001", "11", "Album", "img/str/str_alb01.jpg", "https://open.spotify.com/album/2yNaksHgeMQM9Quse463b5?si=Y_QNg81uSB2FdcT1xFm7Iw", "https://deezer.page.link/p7cDHxCjwPLyHG4P6"),
        ("032", "str", "Room On Fire", "2003", "11", "Album", "img/str/str_alb02.jpg", "https://open.spotify.com/album/3HFbH1loOUbqCyPsLuHLLh?si=wFdAgsOUSwGHr4RpPXH75w", "https://deezer.page.link/pUVd5gyUq2TUH5qX7"),
        ("033", "str", "First Impressions Of Earth", "2005", "14", "Album", "img/str/str_alb03.jpg", "https://open.spotify.com/album/1HQ61my1h3VWp2EBWKlp0n?si=HBPS4ThETPmQgk_OqoT3fg", "https://deezer.page.link/VgSzuLRmqfJGvUHJ9"),
        ("034", "str", "Angles", "2011", "10", "Album", "img/str/str_alb04.jpg", "https://open.spotify.com/album/6Jx4cGhWHewTcfKDJKguBQ?si=PiCSaXYmSMOTRnSnU5HvBg", "https://deezer.page.link/75uusqvMaDhEjyF68"),
        ("035", "str", "Comedown Machine", "2013", "11", "Album", "img/str/str_alb05.jpg", "https://open.spotify.com/album/4WnkQO4xD9ljQooB3VIxCV?si=S0KNcj6TSMWC5apqA3jMcA", "https://deezer.page.link/YYtRMSzEiTM5F7KT7"),
        ("036", "str", "Future Present Past", "2016", "4", "EP", "img/str/str_alb06.jpg", "https://open.spotify.com/album/1SQjs5LxCj7J5WIZYg3h1D?si=WIlEFL9SSWmQyO5mJWVVrg", "https://deezer.page.link/J14CxKYigAQ5jDtq5"),
        ("037", "str", "The New Abnormal", "2020", "9", "Album", "img/str/str_alb07.jpg", "https://open.spotify.com/album/2xkZV2Hl1Omi8rk2D7t5lN?si=Cw0oBJdAS8W0xGk5_g_SEg", "https://deezer.page.link/QXvtWmgxk99epF429"),
        ("038", "bal", "She", "2020", "4", "EP", "img/bal/bal_alb01.jpg", "https://open.spotify.com/album/6waL5QFRSej2sgQRB6QVio?si=FilOYCxPST289OIRep2uBA", "https://deezer.page.link/oAuCZh5b1Kcr1b3s5"),
        ("039", "bal", "Basement Tales", "2021", "4", "EP", "img/bal/bal_alb02.jpg", "https://open.spotify.com/album/7vieQ15OnawSoC9BL8b6cE?si=6pVhi9PdTBeVJg0mcWhEvg", "https://deezer.page.link/Cxzkk8mSGQ7GzjNYA"),
        ("040", "bal", "Strange Flower", "2023", "1", "Single", "img/bal/bal_alb03.jpg", "https://open.spotify.com/album/7wtdgtugk3pLR1aXS9GdBC?si=Le63cOSbShuDyujc6S4bsg", "https://deezer.page.link/1ddCL4zmkzbnfX6V9"),
        ("041", "bal", "Exode", "2023", "1", "Single", "img/bal/bal_alb04.jpg", "https://open.spotify.com/album/6lUao2QOwH497cOlohqp9f?si=5iDbwqipSm6PjcNn9NXYWg", "https://deezer.page.link/a4gruofa95AahvbE6"),
        ("042", "bla", "The Big Come Up", "2002", "13", "Album", "img/bla/bla_alb01.jpg", "https://open.spotify.com/album/4GcL493CWgWz5SVoxd7UIh?si=DnUBB547QJCTL8sCdzpJAg", "https://deezer.page.link/G6tta3UxfKhU6eEj9"),
        ("043", "bla", "Thickfreakness", "2003", "11", "Album", "img/bla/bla_alb02.jpg", "https://open.spotify.com/album/0GJH6shkenNdqkpGdsY8aa?si=wE-lNxKbSNa5IQ9HTYSUGg", "https://deezer.page.link/hnoGiJ3nvCnvFuwh8"),
        ("044", "bla", "Rubber Factory", "2004", "13", "Album", "img/bla/bla_alb03.jpg", "https://open.spotify.com/album/1rlGDm1KQJfDyT5v1U8Xk5?si=WVmZktj7SeqMPUbZLO7FBQ", "https://deezer.page.link/ZHQVyZ6kVdDjSi9TA"),
        ("045", "bla", "Magic Potion", "2006", "12", "Album", "img/bla/bla_alb04.jpg", "https://open.spotify.com/album/1YQS4GZKTBZPh74m5mVAdG?si=0kZzXqHDTOCSu0E_yBbLyA", "https://deezer.page.link/okwSKctvXu3ATdxUA"),
        ("046", "bla", "Attack & Release", "2008", "11", "Album", "img/bla/bla_alb05.jpg", "https://open.spotify.com/album/1YHS3Fw8THvsKVVQ1znAqi?si=nHdkIKRuQ0av_sNQbG7g3A", "https://deezer.page.link/dp6ZQuSsYy5nxBFw7"),
        ("047", "bla", "Brothers", "2010", "18", "Album", "img/bla/bla_alb06.jpg", "https://open.spotify.com/album/7lhJVTvqL3QbwGN12QLiVj?si=ybPl4sWhR3CVETqz4iN8Yw", "https://deezer.page.link/UH5YdHgKiAuFM4988"),
        ("048", "bla", "El Camino", "2011", "11", "Album", "img/bla/bla_alb07.jpg", "https://open.spotify.com/album/5DLhV9yOvZ7IxVmljMXtNm?si=DHk0dXQtQUGlwKvaXf6mrQ", "https://deezer.page.link/A6deV94ZDVq18qEk6"),
        ("049", "bla", "Turn Blue", "2014", "11", "Album", "img/bla/bla_alb08.jpg", "https://open.spotify.com/album/6TvxpBzf9c8H1fsrAaQ8t3?si=4AgKeZa6Q4mWGCUxLxqhFQ", "https://deezer.page.link/FZHH92p8Xr7dMxu28"),
        ("050", "bla", "&#34;Let\'s Rock&#34;", "2019", "12", "Album", "img/bla/bla_alb09.jpg", "https://open.spotify.com/album/0aA9rYw8PEv9G7tVIJ9dKg?si=Isx0C2_MRaCvo1gKgujjdQ", "https://deezer.page.link/dAcKMHYj8xKNRQbB7"),
        ("051", "bla", "Delta Kream", "2021", "12", "Album", "img/bla/bla_alb10.jpg", "https://open.spotify.com/album/682pJqnx8hcrCfSjvyNBki?si=t2pBfJrnRwy-0WzeGyiIDA", "https://deezer.page.link/7ruZaR9CdP7ocViq8"),
        ("052", "bla", "Dropout Boogie", "2022", "10", "Album", "img/bla/bla_alb11.jpg", "https://open.spotify.com/album/7LLyQJzyD56Avzk3uFzKUk?si=ILyPMlybSLenbmsxYV6Tiw", "https://deezer.page.link/FCUGZu5hf8YDScSw8"),
        ("053", "gre", "From The Fires", "2017", "8", "EP", "img/gre/gre_alb01.jpg", "https://open.spotify.com/album/6uSnHSIBGKUiW1uKQLYZ7w?si=dgy-UASeSrCWXg5HOIxuDQ", "https://deezer.page.link/vEuYo1dmPmzbLjbF7"),
        ("054", "gre", "Anthem Of The Peaceful Army", "2018", "11", "Album", "img/gre/gre_alb02.jpg", "https://open.spotify.com/album/7zeCZY6rQRufc8IHGKyXGX?si=cL8LHcB5TWuXy7eQB0J6cw", "https://deezer.page.link/QZT5H7Zn3CjR9nh96"),
        ("055", "gre", "The Battle at Garden’s Gate", "2021", "12", "Album", "img/gre/gre_alb03.jpg", "https://open.spotify.com/album/7kjLKy9JLbwM9F7eDQEnd2?si=z9xP7720QLuWnAyNRmdwtQ", "https://deezer.page.link/mhvyReoSWWJEAmPRA")
;

INSERT INTO genres
VALUES  ("PoPu", "Post-punk"),
        ("PuEx", "Punk Expérimental"),
        ("PoRo", "Pop Rock"),
        ("Ro", "Rock"),
        ("Pu", "Punk"),
        ("InRo", "Indie Rock"),
        ("RoPs", "Rock Psychédélique"),
        ("RoPr", "Rock Progressif"),
        ("RoAl", "Rock Alternatif"),
        ("GaRo", "Garage Rock"),
        ("BlRo", "Blues Rock"),
        ("HaRo", "Hard Rock")
;

INSERT INTO genre_groupes
VALUES  ("PoPu", "cem"),
        ("PoPu", "psy"),
        ("PuEx", "psy"),
        ("PoRo", "tip"),
        ("Ro", "ski"),
        ("Pu", "ski"),
        ("InRo", "cey"),
        ("RoPs", "cey"),
        ("Ro", "ko"),
        ("RoPr", "las"),
        ("RoAl", "blo"),
        ("InRo", "str"),
        ("GaRo", "str"),
        ("InRo", "bal"),
        ("RoAl", "bal"),
        ("BlRo", "bla"),
        ("RoAl", "bla"),
        ("HaRo", "gre"),
        ("BlRo", "gre")
;

INSERT INTO utilisateurs
VALUES  ("Binro", "Robin", "Vigier", PASSWORD("8DF7ea@Vh-yk"), "img/user/Binro/Binro_pdp.png"),
        ("JimiH", "Jimmi", "Hendrix", PASSWORD("dieudelaguitare"), "img/user/JimiH/JimiH_pdp.jpg"),
        ("LE_prof", "Pascal", "Vaillant", PASSWORD("meme"), "img/user/LE_Prof/LE_pdp.jpg") /*Je vous ai créer un compte, faites vous plaisir Monsieur*/
;

/*id_util id_groupe content */ 

INSERT INTO commentaires (id_util, id_groupe, content)
VALUES  ("Binro", "cem", "GROSSE GROSSE GROSSE CLAQUE !!!"),
        ("JimiH", "gre", "The legacy of Led Zeppelin can be heard in every track ! The next generation is on its way !"),
        ("JimiH", "las", "French rock's great, though !")
;*/

/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/