<?php


// Function d'affichage de la liste
function echoSlider($liste)
{
	$reponse = "";

	$reponse.=sprintf("<div class=\"slider\">\n");

	foreach ($liste as $projet){
		$reponse.= $projet->affListe();
	};
	
	$reponse.=sprintf("							</div>\n");

	return $reponse;
};




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
	$reponse = "";
  	$projet_trouve=0;
  	foreach ($liste as $ligne)
  	{
		if ((isset($ligne))&&(isset($ligne->id_projet))&&($ligne->id_projet==$id_projet))
    	{
      		$projet_trouve=1;
     		$projet=$ligne;
    	};
  	};

  	$reponse.=echoBaliseOuvranteEtEnTeteHTML($projet->nom);
  	$reponse.=echoBaliseOuvranteBody($projet->id_projet);
  	$reponse.=echoHeader();
	$reponse.= $projet->affDetail();
	$reponse.=echoPiedDePage();
	$reponse.=echoBalisesFermantesBodyEtHTML();
	$reponse.=echoSignature();

	return $reponse;
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

/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/

?>
