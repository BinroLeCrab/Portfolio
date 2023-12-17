<?php


// Function d'affichage de la liste
function echoSlider($liste)
{
	$reponse = "";

	$reponse.=sprintf("<div class=\"slider\">\n");

	$i = 0;
	foreach ($liste as $projet){
		if ($i < 4){
			$reponse.= $projet->affListeAcc();
			$i++;
		}
	};
	
	$reponse.=sprintf("							</div>\n");

	return $reponse;
};

// Function d'affichage de la liste
function echoMainProj($liste)
{
	$reponse = "";

	$reponse.=sprintf("<section class=\"hero\">\n");
	$reponse.=sprintf("	<h1 class=\"h1 blue\">Mes Projets et Réalisations</h1>\n");
	$reponse.=sprintf("	<p>Voici la galerie de mes derniers projets et réalisations, triés du plus récents au plus ancien !</p>\n");
	$reponse.=sprintf("</section>\n");

	$reponse.=sprintf("<section class=\"Liste\">\n");
	$reponse.=sprintf("	<article class=\"Grille\">\n");
	foreach ($liste as $projet){
		$reponse.= $projet->affListe();
	};
	$reponse.=sprintf("	</article>\n");
	$reponse.=sprintf("</section>\n");

	return $reponse;
};
/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/

?>
