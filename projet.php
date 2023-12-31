<?php

    session_start();

    define("CHARGE_AUTOLOAD",true);

    require_once("src/poo.inc.php");
    require_once("src/load_data.php");  
    require_once("src/output.php");

    $BD = chargeBD();
    $_SESSION['BD'] = $BD;

    if(isset($_GET['id_projet'])){
        $flag = 1;
        $id_projet = $_GET['id_projet'];

        $projet_trouve=0;
        foreach ($_SESSION['BD']->listeP as $ligne)
        {
            if ((isset($ligne))&&(isset($ligne->id_projet))&&($ligne->id_projet==$id_projet))
            {
                $projet_trouve=1;
                $projet=$ligne;
            };
        };
    } else {
        $flag = 0;
    }
    

?>



<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="utf-8"/>
		<meta name="Author" lang="fr" content="Robin Vigier"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0 shrink-to-fit=no"\/>
		<meta name="theme-color" content="#264de4" media="(prefers-color-scheme: light)">
		<meta name="theme-color" content="#1e1e1e" media="(prefers-color-scheme: dark)">
        <link rel="stylesheet" type="text/css" href="style/root.css"/>
		<link rel="stylesheet" type="text/css" href="style/style.css"/>

        <?php 
            if($flag == 1) {
                echo"<link rel=\"stylesheet\" type=\"text/css\" href=\"style/projet.css\"/>\n";
            } else {
                echo "<link rel=\"stylesheet\" type=\"text/css\" href=\"style/ListeProj.css\"/>\n";
            }
        ?>
		
        
		<script type="text/javascript" src="script/script.js"></script>

        <?php
            if($flag == 1) {
                echo "<title>".$projet->nom." - Robin Vigier</title>\n";
            } else {
                echo "<title>Projet - Robin Vigier</title>\n";
            }
        ?>

		<link rel="icon" href="/img/asset/FaviconPortfolio.svg"/>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/gsap.min.js"></script>
	</head>
    <body>
        <div id="transition" class="bye">
			<img src="img/asset/Logo.svg" alt="Logo"/>
		</div>

        <?php
            if($flag == 1) {
                echo "<nav id=\"header\" class=\"opaZ ChangeBgcolor\">\n";
            } else {
                echo "<nav id=\"header\" class=\"headTop ChangeBgcolor\">\n";
            }
        ?>
            <a href="index.php" class="logo Animtrans">
                <img src="img/asset/Logo.svg" alt="Logo"/>
                <p>Robin Vigier</p>
            </a>
			<div class="Menu">
				<a href="index.php" class="NavLink Animtrans" id="NavAc">Accueil</a>

                <?php
                    if($flag == 1) {
                        echo "<a href=\"projet.php\" class=\"NavLink Animtrans\" id=\"NavProj\">Projets</a>\n";
                    } else {
                        echo "<a href=\"projet.php\" class=\"NavLink Animtrans Active\" id=\"NavProj\">Projets</a>\n";
                    }
                ?>
				<a href="index.php#info" class="NavLink Animtrans" id="NavProp">À Propos</a>
				<!-- <a href="sandboxProj.html" class="NavLink Animtrans" id="NavCont">Contact</a> -->
			</div>
			<button class="Burger">
				<img class="BurgerIcon" src="img/asset/burger.svg" alt="Ouvrir Menu"/>
				<img class="CloseIcon" src="img/asset/close.svg" alt="Fermer Menu"/>
			</button>
		</nav>
        <main>
            <?php 
                if($flag == 1){
                    echo $projet->affDetail();
                } else {
                    echo echoMainProj($_SESSION['BD']->listeP);
                }
            ?>
        </main>
        <footer>
			<p id="NameLink"><span class="emoji">&#129497;</span>Robin VIGIER <span class="mask">| <a class="noDeco black" href="index.php">Accueil</a> <a class="noDeco black" href="projet.php">Projets</a> <a class="noDeco black" href="index.php#info">À Propos</a> <!--Contact--></span></p>
			<a id="Email" class="noDeco black" href="mailto:robin.vigier.pro@gmail.com">robin.vigier.pro@gmail.com</a>
			<a id="Print" class="noDeco blue" href="resources/CV-VIGIER_Robin.pdf">Télécharger mon CV</a>
			<p id="FootInfo">Site web codé en décembre 2023</p>
			<div id="ResFoot">
				<a href="https://github.com/BinroLeCrab/" class="bloc"><img class="FootIcon" src="img/asset/IconGithubN.svg" alt="mon GitHub"/></a>
				<a href="https://www.linkedin.com/in/robin-vigier-02353b267/" class="bloc"><img class="FootIcon" src="img/asset/IconLinkedinN.svg" alt="mon profil Linkedin"/></a>
				<a href="https://bento.me/robinv" class="bloc"><img class="FootIcon" src="img/asset/IconBentoN.svg" alt="mon Bento"/></a>
			</div>
		</footer>

        <script type="text/javascript" src="script/transition.js"></script>
		<script type="text/javascript" src="script/burger.js"></script>
        <?php 
            if($flag == 1) {
                echo "<script type=\"text/javascript\" src=\"script/transitionProj.js\"></script>\n";
            }
        ?>
        
    </body>
</html>

<!-- 
     _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
    
-->