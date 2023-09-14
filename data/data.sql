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
    PRIMARY KEY (id_projet)
) DEFAULT CHARSET=utf8;


CREATE TABLE outils (
    id_outil INT(3) NOT NULL,
    nom_outil VARCHAR(128),
    icon TEXT,
    PRIMARY KEY (id_outil)
) DEFAULT CHARSET=utf8;


CREATE TABLE etiquettes (
    id_label INT(3) NOT NULL,
    nom_label VARCHAR(128),
    couleur_label VARCHAR(128),
    PRIMARY KEY (id_label)
) DEFAULT CHARSET=utf8;


CREATE TABLE eti_proj (
    id_projet CHAR(3),
    id_label INT(3),
    PRIMARY KEY (id_projet, id_label),
    FOREIGN KEY (id_projet) REFERENCES projets (id_projet),
    FOREIGN KEY (id_label) REFERENCES etiquettes (id_label)
) DEFAULT CHARSET=utf8;

CREATE TABLE outil_proj (
    id_projet CHAR(3),
    id_outil INT(3),
    PRIMARY KEY (id_projet, id_outil),
    FOREIGN KEY (id_projet) REFERENCES projets (id_projet),
    FOREIGN KEY (id_outil) REFERENCES outils (id_outil)
) DEFAULT CHARSET=utf8;


INSERT INTO projets
VALUES  ("AfB", "Affiches Bauhaus", "Mars 2023", "Ensemble d'affiches réalisées sur Adobe Illustrator à partir d'une affiche existante sur le thème du Bauhaus.", "img/projet/AfB/AfB_01.png", "<p>ici code html</p>"),
        ("IME", "Site In My Ears", "Juin 2023", "Site web de recommandations musicales réalisé en WEB 2.0 à partir uniquement de pages dynamiques générées grâce à des fichiers PHP et une base de données SQL.", "img/projet/IME/IME_01.png", "<p>ici code html</p>")    
;

INSERT INTO outils
VALUES  (001, "HTML", "img/outils/html.svg"),
        (002, "CSS3", "img/outils/css.svg"),
        (003, "PHP", "img/outils/php.svg"),
        (004, "JavaScript", "img/outils/js.svg"),
        (005, "Adobe Illustrator", "img/outils/ai.svg")
;

INSERT INTO etiquettes
VALUES  (001, "Dev Web", "rgba(242, 192, 51, 0.9)"),
        (002, "WEB 2.0", "rgba(40, 142, 218, 0.9);"),
        (003, "Base de Données", "rgba(241, 101, 41, 0.9)"),
        (004, "Graphisme", "rgba(202, 18, 52, 0.9)"),
        (005, "Infographie", "rgba(38, 77, 228, .9)"),
        (006, "Affiche", "rgba(10, 207, 131, .9);")
;

INSERT INTO eti_proj
VALUES  ("AfB", 004),
        ("AfB", 005),
        ("AfB", 006),
        ("IME", 001),
        ("IME", 002),
        ("IME", 003)
;

INSERT INTO outil_proj
VALUES  ("AfB", 005),
        ("IME", 001),
        ("IME", 002),
        ("IME", 003)
;
/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/