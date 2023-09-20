<?php

session_start();

define("CHARGE_AUTOLOAD",true);

require_once("inc/poo.inc.php");
require_once("inc/load_data.php");

$BD = chargeBD();

require_once("inc/output.php");

envoiEnTetesHTTP();

if (isset($_GET['id_projet']))
{
    $id_projet=$_GET['id_projet'];
    echoDetailsSurUnProjet($BD->listP,$id_projet);
    $_SESSION['url'] = $_SERVER['REQUEST_URI'];

}else
{
    echoPageAccueil($BD->listeP);
    $_SESSION['url'] = $_SERVER['REQUEST_URI'];
};


/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/

?>