<?php

class Projet {
    private $info;
    public $id_projet;
    public $nom;
    public $tag;
    public $outils;
    public $date_crea;
    public $accroche;
    public $visuel;
    public $detail;
    public $cover;
    public $type;

    public function __construct($id)
    {
        $this -> setId($id);
        $this -> setInfo($id);
        $this -> setTag($id);
        $this -> setOutils($id);
    }

    private function setId($id) 
    {
        $this->id_projet = $id;
    }

    private function setInfo($id)
    {
        $commInfo = new CommSQL();
        $this->info = $commInfo->projet($id);

        if(isset($this->info))
        {
            $this->nom = $this->info[0]['nom_projet'];
            $this->date_crea = $this->info[0]['date_créa'];
            $this->accroche = $this->info[0]['accroche'];
            $this->visuel = $this->info[0]['visuel'];
            $this->detail = $this->info[0]['detail'];
            $this->cover = $this->info[0]['cover'];
            $this->type = $this->info[0]['type'];
        };
    }

    private function setTag($id)
    {
        $commTag = new CommSQL ();
        $this->tag = $commTag ->tagProjet($id); 
    }

    private function setOutils($id)
    {
        $commOutil = new CommSQL ();
        $this->outils = $commOutil ->outilProjet($id); 
    }

    public function affListe()
    {
        $reponse = "";
        $reponse.=sprintf("                             <a href=\"projet.php?id_projet=%s\" class=\"CardsProj\" style=\"--urlCover : url(../%s); --BckHover: %s;\">\n", $this->id_projet, $this->visuel, $this->type);
        $reponse.=sprintf("                                 <div class=\"cover\">\n");
        $reponse.=sprintf("                                     <div class=\"voirProj\"><img class=\"arrowR\" src=\"img/asset/arrowN.svg\" alt=\"Voir le projet\" title=\"Voir le projet\"/></div>\n");
        $reponse.=sprintf("                                 </div>\n");

        $reponse.=sprintf("                                 <div class=\"tagDiv\">\n");
        foreach($this->tag as $value) 
        {
            $reponse.=sprintf("                                     <p class=\"tag\" style=\"--Bck : %s; --Txt: %s;\">%s</p>\n", $value['couleur_label'], $value['couleur_texte'], $value['nom_label']);
        }
        $reponse.=sprintf("                                 </div>\n");
        
        $reponse.=sprintf("                                 <div class=\"titleCards\">\n");
        $reponse.=sprintf("                                     <h4 class=\"tCards\">%s</h4>\n", $this->nom);
        $reponse.=sprintf("                                     <p class=\"date\">%s</p>\n", $this->date_crea);
        $reponse.=sprintf("                                 </div>\n");
        $reponse.=sprintf("                                 <p class=\"pitch cache\">%s</p>\n", $this->accroche);

        $reponse.=sprintf("                             </a>\n");

        return $reponse;
    }
    
    public function affDetail()
    {
        $reponse = "";

        //? ------------------------ Hero -----------------------

        $reponse.=sprintf("             <section class=\"hero\">\n");


        $reponse.=sprintf("                 <div class=\"illuCouv\" style=\"--Cover: url(../%s);\">\n", $this->cover);
        $reponse.=sprintf("                     <a href=\"projet.php\" class=\"Back Animtrans\">Retour</a>\n");
        $reponse.=sprintf("                 </div>\n");


        $reponse.=sprintf("                 <div class=\"headHero\">\n");
        $reponse.=sprintf("                     <h1 class=\"titleProj\">%s</h1>\n", $this->nom);
        $reponse.=sprintf("                     <p class=\"date\">%s</p>\n", $this->date_crea);
        $reponse.=sprintf("                 </div>\n");


        $reponse.=sprintf("                 <div class=\"GridHeroRight\">\n");

        $reponse.=sprintf("                     <div class=\"tagDiv\">\n");
        foreach($this->tag as $value) 
        {
            $reponse.=sprintf("                         <p class=\"tag\" style=\"--Bck : %s; --Txt: %s;\">%s</p>\n", $value['couleur_label'], $value['couleur_texte'], $value['nom_label']);
        }
        $reponse.=sprintf("                     </div>\n");

        $reponse.=sprintf("                     <div class=\"outilDiv\">\n");
        $reponse.=sprintf("                         <p>Réalisé avec :</p>\n");
        foreach($this->outils as $value) 
        {
            $reponse.=sprintf("                         <img class=\"outil\" src=\"%s\" title=\"%s\" alt=\"%s\"/>\n", $value['icon'], $value['nom_outil'], $value['nom_outil']);
        }
        $reponse.=sprintf("                     </div>\n");
        $reponse.=sprintf("                 </div>\n");


        $reponse.=sprintf("             </section>\n");


        //?-------------------- Details -------------------

        $reponse.=sprintf("             <section class=\"InfoProj\">\n");
        $reponse.=sprintf("             %s\n", $this->detail);
        $reponse.=sprintf("             </section>\n");
        return $reponse;
    }
    
}

/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/

?>

