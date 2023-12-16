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
        <div id="transition" class="bye">Coucou</div>

        <?php
            if($flag == 1) {
                echo "<nav id=\"header\" class=\"opaZ ChangeBgcolor\">\n";
            } else {
                echo "<nav id=\"header\" class=\"headTop ChangeBgcolor\">\n";
            }
        ?>
            <a href="/mmi/Portfolio/sandbox.html" class="logo">
                <img src="img/asset/Logo.svg" alt="Logo"/>
                <p>Robin Vigier</p>
            </a>
            <a href="sandbox.html" class="NavLink Animtrans" id="NavAc">Accueil</a>
            <a href="sandboxP.html" class="NavLink Animtrans" id="NavProj">Projets</a>
            <a href="sandboxProj.html" class="NavLink Animtrans" id="NavProp">À Propos</a>
            <a href="sandboxProj.html" class="NavLink Animtrans" id="NavCont">Contact</a>
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
        </footer>

        <script type="text/javascript" src="script/transition.js"></script>
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