<?php

define("langueDuSite","fr");

function envoiEnTetesHTTP()
{
    http_response_code(200);
	header("Content-Type: text/html; charset=UTF-8");
	header("Content-Transfer-Encoding: 8bit");
};

function echoBaliseOuvranteEtEnTeteHTML($titre, $infocss)
{
	printf("<!DOCTYPE html>\n");

	printf("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"%s\" lang=\"%s\" dir=\"ltr\">\n", langueDuSite, langueDuSite);

	printf("	<head>\n");

	printf("		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\n");
	printf("		<meta name=\"Author\" lang=\"fr\" content=\"Robin Vigier\"/>\n");
	printf("		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\"/>\n");
	
    //lien police et favicon
    printf("		<link rel=\"icon\" href=\"img/gen/LogoN.svg\"/> \n");
	printf("		<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"/> \n");
	printf("		<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin/>\n");
	printf("		<link href=\"https://fonts.googleapis.com/css2?family=Righteous&display=swap\" rel=\"stylesheet\"/>\n");
	printf("		<link href=\"https://fonts.googleapis.com/css2?family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap\" rel=\"stylesheet\"/>\n");
	printf("		<link href=\"https://fonts.googleapis.com/css2?family=Sofia+Sans&display=swap\" rel=\"stylesheet\"/> \n");

    //lien CSS
	printf("		<link rel=\"stylesheet\" type=\"text/css\" href=\"css/rock.css\"/>\n");

	if ($infocss == "accueil")
	{
		printf("		<link rel=\"stylesheet\" type=\"text/css\" href=\"css/rock_accueil.css\"/>\n");
	}

	if ($infocss == "connexion")
	{
		printf("		<link rel=\"stylesheet\" type=\"text/css\" href=\"css/rock_connexion.css\"/>\n");
	}

	if ($infocss == "mention")
	{
		printf("		<link rel=\"stylesheet\" type=\"text/css\" href=\"css/rock_mention.css\"/>\n");
	}

	if ($infocss == "detail")
	{
		printf("		<link rel=\"stylesheet\" type=\"text/css\" href=\"css/rock_detail.css\"/>\n");
	}

	//lien JS
	printf("		<script type=\"text/javascript\" src=\"js/rock.js\"></script>\n");

	// Titre
	printf("		<title>%s</title>\n",$titre);
	printf("	</head>\n");
};

function echoBaliseOuvranteBody($id)
{
	printf("	<body id=\"%s\">\n", $id);
};

function echoBackground()
{
	printf("		<section class=\"bg\">\n");
	/*printf("			<img class=\"noise\" src=\"img/gen/background/Noise.png\"/>\n");
	printf("			<div class=\"satur\"></div>\n");
	printf("			<img id=\"vector1\" class=\"\" src=\"img/gen/background/Vector_01.svg\" alt=\"vecteur 1\"/>\n");
	printf("			<img id=\"vector2\" class=\"\" src=\"img/gen/background/Vector_02.svg\" alt=\"vecteur 2\"/>\n");
	printf("			<img id=\"vector3\" class=\"\" src=\"img/gen/background/Vector_03.svg\" alt=\"vecteur 3\"/>\n");
	printf("			<img id=\"vector4\" class=\"\" src=\"img/gen/background/Vector_04.svg\" alt=\"vecteur 4\"/>\n");
	printf("			<img id=\"vector5\" class=\"\" src=\"img/gen/background/Vector_05.svg\" alt=\"vecteur 5\"/>\n");
	printf("			<img id=\"vector6\" class=\"\" src=\"img/gen/background/Vector_06.svg\" alt=\"vecteur 6\"/>\n");
	printf("			<img id=\"vector7\"class=\"\" src=\"img/gen/background/Vector_07.svg\" alt=\"vecteur 7\"/>\n");*/
	printf("		</section>\n");
};

function echoHeader()
{
	printf("		<nav id=\"header\" class=\"\">\n");
    printf("            <a href=\"%s\" class=\"logo\">\n",$_SERVER['PHP_SELF']);
    printf("                <img src=\"img/gen/Logo.svg\" alt=\"Logo\"/>\n");
    printf("                <p>In My Ears</p>\n");
    printf("            </a>\n");
	printf("			<div class=\"connexion\">\n");
	if (isset($_SESSION['pseudo']) and isset($_SESSION['pass']))
	{
		printf("				<p>%s</p>\n", $_SESSION['utilisateur'][0]['id_util']);
		printf("				<img src=\"%s\" class=\"user_pdp\" alt=\"photo de profil utilisateur\"/>", $_SESSION['utilisateur'][0]['img_pdp']);
		printf("				<a href =\"index.php?DECO\">DECONNEXION</a>\n");
	}else{
		printf("				<a href =\"index.php?CONNEXION\">CONNEXION</a>\n");
	}
	printf("			</div>\n");
    printf("        </nav>\n");
};


//Function d'affichage détails

function echoTitreManga($manga)
{
	printf("		<div class=\"ban\" id=\"b_%s\">\n",$manga->titre_id);
	printf("			<h2 class=\"titre\">%s</h2>\n",$manga->titre);
	if (isset($manga->auteur))
	{
		printf("			<h3 class=\"titre-a\">%s</h3>\n",$manga->auteur);
	};
	printf("		</div>\n");
};

// Function d'affichage du Hero Banner

function echoHero()
{
	printf("			<section class=\"heroban\">\n");
	printf("				<div class=\"spaceHero\">\n");
	printf("				</div>\n");
	printf("				<div class=\"heroinfo\">\n");
	printf("					<div class=\"herologo\">\n");
	printf("						<img src = \"img/gen/Logo.svg\" alt=\"logo\"/>\n");
	printf("						<h1>In My Ears</h1>\n");
	printf("					</div>\n");
	printf("					<p>J'adore partager mes recommandations musicales, donc j'en ai fait un site.</p>\n");
	printf("				</div>\n");
	printf("				<a class=\"divarrow\" href=\"#Liste\">\n");
	printf("					<img class=\"arrowgif\" src=\"img/gen/arrow.gif\" alt=\"flèche animé\"/>\n");
	printf("				</a>\n");
	printf("			</section>\n");
};

// Function d'affichage de la liste

function echoListe($liste)
{
  	printf("			<section id=\"Liste\">\n");
  	printf("				<h2>Les Artistes</h2>\n");
	printf("				<div class=\"grilleListe\">\n");
  	foreach ($liste as $groupe)
  	{
    	echo $groupe->affListe();
 	};
	
	printf("				</div>\n");
  	printf("			</section>\n");
};

function echoPiedDePage()
{
  	printf("		<footer class=\"pied_de_page\">\n");
  	printf("			<p><a href=\"https://bento.me/robinv\">VIGIER Robin</a>, 2023. Illustrations&#x202F;: tous droits r&#xE9;serv&#xE9;s. <a href=\"index.php?MENTION\">Mentions l&#xE9;gales</a>.\n");/* | <a id=\"button_anim\">Activer les animations</a></p>\n");*/
  	printf("		</footer>\n");
}

function echoBalisesFermantesBodyEtHTML()
{
  	printf("	</body>\n");
  	printf("</html>\n");
};

// Envoi au client de tout ce qui permet l'affichage du programme complet du festival

function echoPageAccueil($liste)
{
  	echoBaliseOuvranteEtEnTeteHTML("In My Ears", "accueil");
  	echoBaliseOuvranteBody("acc");
  	echoBackground();
  	echoHeader();
  	printf("		<main>\n");
  	echoHero();
  	echoListe($liste);
  	printf("		</main>\n");
  	echoPiedDePage();
  	echoBalisesFermantesBodyEtHTML();
	echoSignature();
};

// Envoi au client de tout ce qui permet l'affichage d'une page specifique sur un film

function echoDetailsSurUnGroupe($liste,$id_groupe)
{
  	$groupe_trouve=0;
  	foreach ($liste as $ligne)
  	{
		if ((isset($ligne))&&(isset($ligne->id_groupe))&&($ligne->id_groupe==$id_groupe))
    	{
      		$groupe_trouve=1;
     		$groupe=$ligne;
    	};
  	};
  	echoBaliseOuvranteEtEnTeteHTML($groupe->nom, "detail");
  	echoBaliseOuvranteBody($groupe->id_groupe);
  	echoHeader();
	echo $groupe->affDetail();
	echoPiedDePage();
  	echoBalisesFermantesBodyEtHTML();
	echoSignature();
};

function echoPageConnexion($Mire)
{
	echoBaliseOuvranteEtEnTeteHTML("Connexion", "connexion");
  	echoBaliseOuvranteBody("con");
  	echoBackground();
	echo $Mire->echoHeaderConnexion();
  	printf("		<main>\n");
	printf("			<div id=\"div_co\">\n");
	echo $Mire->AffMire();
	printf("			</div>\n");
  	echoPiedDePage();
	printf("		</main>\n");
  	echoBalisesFermantesBodyEtHTML();
	echoSignature();
};

function echoPageMention($Vue)
{
	echoBaliseOuvranteEtEnTeteHTML("Mention Légales", "mention");
  	echoBaliseOuvranteBody("men");
  	echoBackground();
	echo $Vue->echoHeaderMention();
	echo $Vue->Affichage();
  	echoPiedDePage();
  	echoBalisesFermantesBodyEtHTML();
	echoSignature();
};

function echoSignature()
{
	printf("<!--		_____     _____ 			-->\n");
	printf("<!--	   |  _  |   |  _  |			-->\n");
	printf("<!--	  -| | | |---| | | |-			-->\n");
	printf("<!--	   |_____| 7 |_____|  ~B!nro~	-->\n");
	printf("<!--									-->\n");
};

/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/

?>
