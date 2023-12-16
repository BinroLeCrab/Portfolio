<?php

session_start();

define("CHARGE_AUTOLOAD",true);

require_once("src/poo.inc.php");
require_once("src/load_data.php");

$BD = chargeBD();

$_SESSION['BD'] = $BD;

// print_r($_SESSION['BD']);

require_once("src/output.php");

// envoiEnTetesHTTP();

// if (isset($_GET['id_projet']))
// {
//     $id_projet=$_GET['id_projet'];
//     echo echoDetailsSurUnProjet($BD->listeP,$id_projet);
//     $_SESSION['url'] = $_SERVER['REQUEST_URI'];

// }else
// {
//     echo echoPageAccueil($BD->listeP);
//     $_SESSION['url'] = $_SERVER['REQUEST_URI'];
// };

?>

<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="utf-8"/>
		<meta name="Author" lang="fr" content="Robin Vigier"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0 shrink-to-fit=no"\/>
		<link rel="stylesheet" type="text/css" href="style/root.css"/>
		<link rel="stylesheet" type="text/css" href="style/style.css"/>
		<link rel="stylesheet" type="text/css" href="style/accueil.css"/>
		<script type="text/javascript" src="script/script.js"></script>
		<title>Robin Vigier</title>

		<link rel="icon" href="/img/asset/FaviconPortfolio.svg"/>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/gsap.min.js"></script>

	</head>
	<body>
		<div id="transition" class="bye">Coucou</div>
		<nav id="header" class="headTop ChangeBgcolor">
            <a href="/mmi/Portfolio/sandbox.html" class="logo">
                <img src="img/asset/Logo.svg" alt="Logo"/>
                <p>Robin Vigier</p>
            </a>
            <a href="sandbox.html" class="NavLink Animtrans" id="NavAc">Accueil</a>
            <a href="sandboxP.html" class="NavLink Animtrans" id="NavProj">Projets</a>
            <a href="#info" class="NavLink" id="NavProp">À Propos</a>
            <a href="sandboxProj.html" class="NavLink Animtrans" id="NavCont">Contact</a>
		</nav>
		<div id="Over" class="OverOFF">
			<div id="OverCircle">
				<img id="CircleTxt" src="img/asset/CircleTxtB.svg" alt="Mes Reseaux"/>
				<img id="Binocle" src="img/asset/BinocleGif.gif" alt=""/>
			</div>
			<div id="ResOver" class="ResNoClick">
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="OverIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="OverIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="OverIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="OverIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="OverIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="OverIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>	
			</div>
		</div>
		<main>
			<section class="heroban">
				<div class="herotxt">
					<div>
						<h1>Robin Vigier</h1>
						<h2>Etudiant BUT MMI</h2>
					</div>
				</div>
				<div class="heroarrow">
					<!--Flèche-->
					<img src="img/asset/arrow.svg" alt=""/>
				</div>
				<div class="heroillu">

					<!--Illu-->
					<img id="illu" src="img/asset/illuvecto.svg" alt=""/>
					
				</div>
			</section>
			<section id="main">
				<article id="liste">
					<h2>Mes derniers projets</h2>
					<div class="carou">
						<div id="left" class="Slnav">
							<!-- <img class="Slid" src="img/asset/SlidL.svg" alt=""/> -->
							<svg width="200" height="200" viewBox="0 0 200 200" fill="none" xmlns="http://www.w3.org/2000/svg">
								<g clip-path="url(#clip0_821_339)">
									<rect class="BckSl" width="200" height="200" rx="100" transform="matrix(1 -8.74228e-08 -8.74228e-08 -1 0 200)" fill="#F6F6F6"/>
									<path class="ArrSl" fill-rule="evenodd" clip-rule="evenodd" d="M124.226 144.226C127.48 140.972 127.48 135.695 124.226 132.441L90.1184 98.3337L124.226 64.2262C127.48 60.9718 127.48 55.6955 124.226 52.4411C120.972 49.1867 115.695 49.1867 112.441 52.4411L72.4408 92.4411C69.1864 95.6955 69.1864 100.972 72.4408 104.226L112.441 144.226C115.695 147.481 120.972 147.481 124.226 144.226Z" fill="#1E1E1E"/>
								</g>
								<defs>
									<clipPath id="clip0_821_339">
										<rect width="200" height="200" fill="white" transform="matrix(-1 0 0 1 200 0)"/>
									</clipPath>
								</defs>
							</svg>
						</div>
						<div class="container">

                            <?= echoSlider($_SESSION['BD']->listeP); ?>
							
						</div>
						<div id="right" class="Slnav">
							<!-- <img class="Slid" src="img/asset/SlidR.svg" alt=""/> -->
							<svg width="200" height="200" viewBox="0 0 200 200" fill="none" xmlns="http://www.w3.org/2000/svg">
								<g clip-path="url(#clip0_821_338)">
									<rect class="BckSl" x="200" y="200" width="200" height="200" rx="100" transform="rotate(-180 200 200)" fill="#F6F6F6"/>
									<path class="ArrSl" fill-rule="evenodd" clip-rule="evenodd" d="M75.7741 144.226C72.5197 140.972 72.5197 135.695 75.7741 132.441L109.882 98.3337L75.7741 64.2262C72.5197 60.9718 72.5197 55.6955 75.7741 52.4411C79.0285 49.1867 84.3049 49.1867 87.5592 52.4411L127.559 92.4411C130.814 95.6955 130.814 100.972 127.559 104.226L87.5592 144.226C84.3049 147.481 79.0285 147.481 75.7741 144.226Z" fill="#1E1E1E"/>
								</g>
								<defs>
									<clipPath id="clip0_821_338">
										<rect width="200" height="200" fill="white"/>
									</clipPath>
								</defs>
							</svg>
						</div>
					</div>
					<a href="projet.php" class ="Btn bloc noDeco center">Voir plus de projets</a>
				</article>
				<article id="info">
					<h2>Qui Je Suis ?</h2>
					<div class="infoCards">
						<div class="ImgInfo"><!--Image--></div>
						<p class="ParaInfo" id="pIO">Salut ! Moi c'est Robin, j'ai 18 ans et je suis actuellement en 2ème année de BUT Métiers du Multimédia et de l'Internet à l'IUT de Champs sur Marne.</p>
						<p class="ParaInfo" id="pIT">Passionné par le design d'interface ou le design graphique, je suis multitâche dans ces domaines que j'affectionne tout particulièrement. J'ai également développé un attrait pour le HTML CCS et JavaScript qui me permettent de rendre concrètes les maquettes Figma que je conçois !</p>	
						<p class="ParaInfo" id="pITh">Je suis créatif, organisé, rigoureux, peut-être un peu perfectionniste, mais je me donne toujours à cœur dans les projets que j’entreprends.</p>
						<!--Paragraphe-->
					</div>
				</article>
				<article id="skill">
					<h2>Je Maitrise ...</h2>
					<div class="Comp">
						<div class="Bendeau BckBlue" id="BdC1">
							<div class="BendeauCont">
								<span>Dev Front-End</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Dev Front-End</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Dev Front-End</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Dev Front-End</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Dev Front-End</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Dev Front-End</span>
							</div>
						</div>
						<div class="Bendeau BckBlack" id="BdC2">
							<div class="BendeauCont">
								<span>Dev Back-End</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Dev Back-End</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Dev Back-End</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Dev Back-End</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Dev Back-End</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Dev Back-End</span>
							</div>
						</div>
						<div class="Bendeau BckGrey" id="BdC3">
							<div class="BendeauCont">
								<span>UI Desing</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>UI Desing</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>UI Desing</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>UI Desing</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>UI Desing</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>UI Desing</span>
							</div>
						</div>
						<div class="Bendeau BckWhite" id="BdC4">
							<div class="BendeauCont">
								<span>UX Desing</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>UX Desing</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>UX Desing</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>UX Desing</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>UX Desing</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>UX Desing</span>
							</div>
						</div>
						<div class="Bendeau BckBlue" id="BdC5">
							<div class="BendeauCont">
								<span>Graphisme</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Graphisme</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Graphisme</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Graphisme</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Graphisme</span><img class="BendeauIcon" src="img/asset/IconInstaN.svg" alt=""/>
								<span>Graphisme</span>
							</div>
						</div>
					</div>
				</article>
			</section>
		</main>
		<footer>
			<p id="NameLink">Robin VIGIER | Accueil Projets À Propos Contact</p>
			<a id="Email" class="noDeco" href="mailto:robin.vigier.pro@gmail.com">robin.vigier.pro@gmail.com</a>
			<a id="Print" class="noDeco blue">Version print du Portfolio</a>
			<p id="FootInfo">Site web codé en décembre 2023</p>
			<div id="ResFoot">
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="FootIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="FootIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="FootIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="FootIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="FootIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>
				<a href="https://www.instagram.com/robin.vigier/" class="bloc"><img class="FootIcon" src="img/asset/IconInstaN.svg" alt="mon instagram"/></a>
			</div>
			<!-- <p><a href="https://bento.me/robinv">VIGIER Robin</a>, 2023. Illustrations&#x202F;: tous droits r&#xE9;serv&#xE9;s. <a href="index.php?MENTION">Mentions l&#xE9;gales</a>. -->
		</footer>

		<script type="text/javascript" src="script/slider.js"></script>
		<script type="text/javascript" src="script/transition.js"></script>
	</body>
</html>
<!--		_____     _____ 			-->
<!--	   |  _  |   |  _  |			-->
<!--	  -| | | |---| | | |-			-->
<!--	   |_____| 7 |_____|  ~B!nro~	-->
<!--									-->

<?php
?>