<?php

define("CHARGE_AUTOLOAD",true);

require_once("inc/poo.inc.php");
require_once("inc/load_data.php");

$BD = chargeBD();

require_once("inc/output.php");

envoiEnTetesHTTP();

if (isset($_GET['id_groupe']))
{
    $id_groupe=$_GET['id_groupe'];
    echoDetailsSurUnGroupe($BD->listeG,$id_groupe);
    $_SESSION['url'] = $_SERVER['REQUEST_URI'];

}else
{
    echoPageAccueil($BD->listeG);
    $_SESSION['url'] = $_SERVER['REQUEST_URI'];
};


/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/

?>