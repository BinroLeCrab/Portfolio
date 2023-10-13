<?php

define("langueDuSite","fr");

function envoiEnTetesHTTP()
{
    http_response_code(200);
	header("Content-Type: text/html; charset=UTF-8");
	header("Content-Transfer-Encoding: 8bit");
};

function echoBaliseOuvranteEtEnTeteHTML($titre)
{
	$reponse = "";

    $reponse.=sprintf("<!DOCTYPE html>\n");

	$reponse.=sprintf("<html lang=\"%s\">\n", langueDuSite, langueDuSite);

	$reponse.=sprintf("	<head>\n");

	$reponse.=sprintf("		<meta charset=\"utf-8\"/>\n");
	$reponse.=sprintf("		<meta name=\"Author\" lang=\"fr\" content=\"Robin Vigier\"/>\n");
	$reponse.=sprintf("		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0 shrink-to-fit=no\"\/>\n");
	
    //lien CSS
	$reponse.=sprintf("		<link rel=\"stylesheet\" type=\"text/css\" href=\"style/root.css\"/>\n");
	$reponse.=sprintf("		<link rel=\"stylesheet\" type=\"text/css\" href=\"style/style.css\"/>\n");


	//lien JS
	$reponse.=sprintf("		<script type=\"text/javascript\" src=\"js/script.js\"></script>\n");

	// Titre
	$reponse.=sprintf("		<title>%s</title>\n",$titre);
	$reponse.=sprintf("	</head>\n");

	return $reponse;
};

function echoBaliseOuvranteBody($id)
{
	$reponse = "";

    $reponse.=sprintf("	<body id=\"%s\">\n", $id);

	return $reponse;
};

function echoHeader()
{
	$reponse = "";

    $reponse.=sprintf("		<nav id=\"header\" class=\"\">\n");
    $reponse.=sprintf("            <a href=\"%s\" class=\"\">\n",$_SERVER['PHP_SELF']);
    $reponse.=sprintf("                <img src=\"img/asset/Logo.svg\" alt=\"Logo\"/>\n");
    $reponse.=sprintf("                <p>Robin Vigier</p>\n");
    $reponse.=sprintf("            </a>\n");
	$reponse.=sprintf("            <a href=\"\" class=\"\">Accueil</a>\n");
	$reponse.=sprintf("            <a href=\"\" class=\"\">Projets</a>\n");
	$reponse.=sprintf("            <a href=\"\" class=\"\">À Propos</a>\n");
	$reponse.=sprintf("            <a href=\"\" class=\"\">Contact</a>\n");
	
    $reponse.=sprintf("		</nav>\n");

	return $reponse;
};


// Function d'affichage du Hero Banner

function echoHero()
{
	$reponse = "";

    $reponse.=sprintf("			<section class=\"heroban\">\n");
	$reponse.=sprintf("				<div class=\"herotxt\">\n");
	$reponse.=sprintf("					<h1>Robin Vigier</h1>\n");
	$reponse.=sprintf("					<h2>Etudiant BUT MMI</h2>\n");
	$reponse.=sprintf("				</div>\n");
	$reponse.=sprintf("				<div class=\"heroarrow\">\n");
	$reponse.=sprintf("					<!--Flèche-->\n");
	$reponse.=sprintf("				</div>\n");
	$reponse.=sprintf("				<div class=\"herotxtillu\">\n");
	$reponse.=sprintf("					<!--Illu-->\n");
	$reponse.=sprintf("				</div>\n");
	$reponse.=sprintf("			</section>\n");

	return $reponse;
};

// Function d'affichage de la liste

function echoListe($liste)
{
	$reponse = "";

	$reponse.=sprintf("			<section id=\"main\">\n");
	$reponse.=sprintf("				<article id=\"liste\">\n");
	$reponse.=sprintf("					<h2>Mes derniers projets</h2>\n");
	$reponse.=sprintf("					<div class=\"grilleListe\">\n");
  	foreach ($liste as $projet)
  	{
    	$reponse.= $projet->affListe();
 	};
	
	$reponse.=sprintf("					</div>\n");
	$reponse.=sprintf("				</article>\n");

	return $reponse;
};

function echoInfoBlock()
{
	$reponse = ""; 

	$reponse.=sprintf("				<article id=\"info\">\n");
	$reponse.=sprintf("					<h2>Qui Je Suis ?</h2>\n");
	$reponse.=sprintf("					<div class=\"\">\n");
	$reponse.=sprintf("						<!--Image-->\n");
	$reponse.=sprintf("						<!--Paragraphe-->\n");
	$reponse.=sprintf("					</div>\n");
	$reponse.=sprintf("				</article>\n");

	return $reponse;
}

function echoSkillBlock()
{
	$reponse = ""; 

	$reponse.=sprintf("				<article id=\"skill\">\n");
	$reponse.=sprintf("					<h2>Je Maitrise ...</h2>\n");
	$reponse.=sprintf("					<div class=\"\">\n");
	$reponse.=sprintf("						<!--Image-->\n");
	$reponse.=sprintf("					</div>\n");
	$reponse.=sprintf("				</article>\n");
	$reponse.=sprintf("			</section>\n");

	return $reponse;
}

function echoPiedDePage()
{
  	$reponse = "";
	
	$reponse.=sprintf("		<footer class=\"pied_de_page\">\n");
	$reponse.=sprintf("			<p><a href=\"https://bento.me/robinv\">VIGIER Robin</a>, 2023. Illustrations&#x202F;: tous droits r&#xE9;serv&#xE9;s. <a href=\"index.php?MENTION\">Mentions l&#xE9;gales</a>.\n");/* | <a id=\"button_anim\">Activer les animations</a></p>\n");*/
	$reponse.=sprintf("		</footer>\n");

	return $reponse;

}

function echoBalisesFermantesBodyEtHTML()
{
	$reponse = "";
	
	$reponse.=sprintf("	</body>\n");
	$reponse.=sprintf("</html>\n");

	return $reponse;

};

// Envoi au client de tout ce qui permet l'affichage du programme complet du festival

function echoPageAccueil($liste)
{
	$reponse = "";

  	$reponse.= echoBaliseOuvranteEtEnTeteHTML("Robin Vigier");
  	$reponse.= echoBaliseOuvranteBody("acc");
  	$reponse.= echoHeader();
  	$reponse.= sprintf("		<main>\n");
  	$reponse.= echoHero();
  	$reponse.= echoListe($liste);
  	$reponse.= echoInfoBlock();
  	$reponse.= echoSkillBlock();
  	$reponse.= sprintf("		</main>\n");
  	$reponse.= echoPiedDePage();
  	$reponse.= echoBalisesFermantesBodyEtHTML();
	$reponse.= echoSignature();
	
	return $reponse;
};


// ---------------------------------------------------------------------------

// Envoi au client de tout ce qui permet l'affichage d'une page specifique sur un film

function echoDetailsSurUnProjet($liste,$id_projet)
{
  	$projet_trouve=0;
  	foreach ($liste as $ligne)
  	{
		if ((isset($ligne))&&(isset($ligne->id_projet))&&($ligne->id_projet==$id_projet))
    	{
      		$projet_trouve=1;
     		$projet=$ligne;
    	};
  	};
  	echoBaliseOuvranteEtEnTeteHTML($projet->nom);
  	echoBaliseOuvranteBody($projet->id_projet);
  	echoHeader();
	echo $projet->affDetail();
	echoPiedDePage();
  	echoBalisesFermantesBodyEtHTML();
	echoSignature();
};

function echoPageConnexion($Mire)
{
	echoBaliseOuvranteEtEnTeteHTML("Connexion");
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
	echoBaliseOuvranteEtEnTeteHTML("Mention Légales");
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
