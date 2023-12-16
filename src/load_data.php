<?php
require_once("src/poo.inc.too.php");

function chargetabProjet($listeID)
{
    $tabProjet = array();
    foreach ($listeID as $ligne)
    {
        $projet = new Projet($ligne['id_projet']);
        $tabProjet[$projet->id_projet]=$projet;
    }
    return $tabProjet;
};

function creeBD()
{
    $BD = new BD();
    return $BD;
};

function chargeBD()
{
    $BD = creeBD();
    $tableProjet = chargetabProjet($BD->listeID);
    $BD->setListP($tableProjet);
    return $BD;
};

/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/

?>