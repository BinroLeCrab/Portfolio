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
        $reponse.=sprintf("<a href=\"index.php?id_projet=%s\" class=\"liendivgroupe\">%s</a>\n", $this->id_projet,$this->nom);

        return $reponse;
    }

    public function affDetail()
    {
        $reponse = "";

        $reponse.=sprintf("             <div class=\"ban\">\n");
        $reponse.=sprintf("                 <a href=\"index.php\" class=\"back\">\n");
        $reponse.=sprintf("                     <img src=\"img/gen/arrowback.svg\" alt=\"Icone retour\" class=\"iconBack\" id=\"iconBackW\"/>\n");
        $reponse.=sprintf("                     <img src=\"img/gen/arrowbackN.svg\" alt=\"Icone retour\" class=\"iconBack\" id=\"iconBackN\"/>\n");
        $reponse.=sprintf("                     <p>Retour</p>\n");
        $reponse.=sprintf("                 </a>\n");
        $reponse.=sprintf("             </div>\n");

        $reponse.=sprintf("         <h1>%s</h1>\n", $this->nom);

        return $reponse;
    }

    /*public function AffAjoutComment(){
        $reponse = "";

        if ((isset($_POST["content"])) and (($_POST["content"]!="") and ($_POST["content"]!=" ")))
        {
            $this->AjoutComment();
        };

        $reponse.=sprintf("                     <div class=\"ajoutComm\">\n");
        $reponse.=sprintf("                         <form name=\"ajoutcomm\" method=\"post\" action=\"index.php?id_groupe=%s#formAddComm\" class=\"formComm\" id=\"formAddComm\">\n", $this->id_groupe);
        $reponse.=sprintf("                             <textarea id=\"content\" name=\"content\" placeholder=\"Ajouter un commentaire\"></textarea><br/>\n");
        $reponse.=sprintf("                             <input name=\"submit\" type=\"submit\" id=\"submit\" value=\"Publier le commentaire\" />\n");
        $reponse.=sprintf("                         </form>\n");
        $reponse.=sprintf("                     </div>\n");


        return $reponse;
    }

    private function AjoutComment()
    {
        $commAdd = new CommSQL ();
        $commAdd->AddComment($_SESSION["pseudo"], $this->id_groupe, $_POST["content"]);
        $local = "";
        $local.=sprintf("index.php?id_groupe=%s#formAddComm", $this->id_groupe);
        header("Location: $local");
    } 

    public function affListe()
    {
        $reponse = "";
        $reponse.=sprintf("                <div class=\"divgroupe\" id=\"%s_liste\">\n", $this->id_groupe);
        $reponse.=sprintf("                     <a href=\"index.php?id_groupe=%s\" class=\"liendivgroupe\">\n",$this->id_groupe);

        $reponse.=sprintf("                            <div class=\"bangroupe\">\n");
        if (isset($this->genres))
        {
            $reponse.=sprintf("                                 <div class=\"genregroupe\">\n");
            foreach ($this->genres as $ligne)
            {
                $reponse.=sprintf("                                     <span class=\"%s_genre\">%s</span>\n", $ligne['id_genre'], $ligne['nom_genre']);
            };
            $reponse.=sprintf("                                 </div>\n");
        };
        $reponse.=sprintf("                            </div>\n");

        $reponse.=sprintf("                             <div class=\"ContentGroupe\">\n");
        $reponse.=sprintf("                                 <div class=\"infogroupe\">\n");

        if (isset($this->nom))
        {
            $reponse.=sprintf("                                     <h3 class=\"nomgroupe\">%s</h3>\n", $this->nom);
        };

        if (isset($this->accroche))
        {
            $reponse.=sprintf("                                     <p class=\"accroche\">%s</p>\n", $this->accroche);
        };

        $reponse.=sprintf("                                 </div>\n");
        $reponse.=sprintf("                                 <div class=\"divRGroupe\">\n");

        if (isset($this->img_prof))
        {
            $reponse.=sprintf("                                     <img class=\"imgprofgroupe\" src=\"%s\" alt=\"image profil groupe\"/>\n", $this->img_prof);
        };

        $reponse.=sprintf("                                     <div class=\"button_arrow\">\n");
        $reponse.=sprintf("                                         <p>Voir plus</p>\n");
        $reponse.=sprintf("                                         <img class=\"arrow\" src=\"img/gen/arrowbackN.svg\" alt=\"icone fleche\" />\n");
        $reponse.=sprintf("                                     </div>\n");
        
        $reponse.=sprintf("                             </div>\n");
        $reponse.=sprintf("                         </div>\n");
        $reponse.=sprintf("                     </a>\n");
        $reponse.=sprintf("                 </div>\n");

        
        return $reponse;
    }

    public function affDetail()
    {
        $reponse = "";
        $reponse.=sprintf("         <main >\n");

        //---------------------bannierre--------------------------

        $reponse.=sprintf("             <div class=\"ban\">\n");
        $reponse.=sprintf("                 <a href=\"index.php#%s_liste\" class=\"back\">\n", $this->id_groupe);
        $reponse.=sprintf("                     <img src=\"img/gen/arrowback.svg\" alt=\"Icone retour\" class=\"iconBack\" id=\"iconBackW\"/>\n");
        $reponse.=sprintf("                     <img src=\"img/gen/arrowbackN.svg\" alt=\"Icone retour\" class=\"iconBack\" id=\"iconBackN\"/>\n");
        $reponse.=sprintf("                     <p>Retour</p>\n");
        $reponse.=sprintf("                 </a>\n");
        $reponse.=sprintf("             </div>\n");

        //---------------------section aside ----------------------

        $reponse.=sprintf("             <aside>\n");

        if (isset($this->img_prof))
        {
            $reponse.=sprintf("                 <div class=\"divimg\">\n");
            $reponse.=sprintf("                     <img class=\"imgprof\" src=\"%s\" alt=\"image profil groupe\"/>\n", $this->img_prof);
            $reponse.=sprintf("                 </div>\n");
        };

        if (isset($this->inte_spot))
        {
            $reponse.=sprintf("                 <div class=\"intespot\">\n");
            $reponse.=sprintf("                     %s\n", $this->inte_spot);
            $reponse.=sprintf("                 </div>\n");
        };

        $reponse.=sprintf("                 <div class=\"divreseaux\">\n");

        $reponse.=sprintf("                     <div class=\"streaming\">\n");

        if (isset($this->lien_deez))
        {
            $reponse.=sprintf("                         <a href=\"%s\" class=\"liendeez\">\n", $this->lien_deez);
            $reponse.=sprintf("                             <img class=\"iconButton\" src=\"img/gen/icon/IconDezzer.svg\" alt=\"icone Deezer\"/>\n");
            $reponse.=sprintf("                             <p><span class=\"DezzNone\">Ecouter sur</span> <span class=\"DezzAff\">Deezer</span></p>\n");
            $reponse.=sprintf("                         </a>\n");
        };

        if (isset($this->lien_spot))
        {
            $reponse.=sprintf("                         <a href=\"%s\" class=\"lienspot\">\n", $this->lien_spot);
            $reponse.=sprintf("                             <img class=\"iconButton\" src=\"img/gen/icon/IconSpot.svg\" alt=\"icone Spotify\"/>\n");
            $reponse.=sprintf("                         </a>\n");
        };
        $reponse.=sprintf("                     </div>\n");
        $reponse.=sprintf("                     <div class=\"reseaux\">\n");

        if (isset($this->lien_insta))
        {
            $reponse.=sprintf("                         <a href=\"%s\" id=\"iconInsta\" class=\"lienicon\">\n", $this->lien_insta);
            $reponse.=sprintf("                             <img class=\"iconRS\" src=\"img/gen/icon/IconInsta.svg\" alt=\"icone Instagram\"/>\n");
            $reponse.=sprintf("                         </a>\n");
        };

        if (isset($this->lien_ytb))
        {
            $reponse.=sprintf("                         <a href=\"%s\" id=\"iconYtb\" class=\"lienicon\">\n", $this->lien_ytb);
            $reponse.=sprintf("                             <img class=\"iconRS\" src=\"img/gen/icon/IconYtb.svg\" alt=\"icone Youtube\"/>\n");
            $reponse.=sprintf("                         </a>\n");
        };

        if (isset($this->lien_face))
        {
            $reponse.=sprintf("                         <a href=\"%s\" id=\"iconFace\" class=\"lienicon\">\n", $this->lien_face);
            $reponse.=sprintf("                             <img class=\"iconRS\" src=\"img/gen/icon/IconFace.svg\" alt=\"icone Facebook\"/>\n");
            $reponse.=sprintf("                         </a>\n");
        };

        $reponse.=sprintf("                     </div>\n");
        $reponse.=sprintf("                 </div>\n");

        $reponse.=sprintf("             </aside>\n");

        //---------------------section info ----------------------

        $reponse.=sprintf("             <section id=\"info\">\n");

        if (isset($this->genres))
        {
            $reponse.=sprintf("                 <div class=\"listgenre\">\n");
            foreach ($this->genres as $ligne)
            {
                $reponse.=sprintf("                     <span class=\"%s_genre\">%s</span>\n", $ligne['id_genre'], $ligne['nom_genre']);
            };
            $reponse.=sprintf("                 </div>\n");
        };

        if (isset($this->nom))
        {
            $reponse.=sprintf("                 <h1 class=\"nomgroupe\">%s</h1>\n", $this->nom);
        };

        if (isset($this->annee_form))
        {
            $reponse.=sprintf("                 <p class=\"annee_form\">Actif depuis : %s</p>\n", $this->annee_form);
        };

        if (isset($this->descri))
        {
            $reponse.=sprintf("                 <p class=\"descri\">%s</p>\n", $this->descri);
        };

        $reponse.=sprintf("             </section>\n");

        //---------------------section albums ----------------------

        $reponse.=sprintf("             <section id=\"album\">\n");

        $reponse.=sprintf("                 <h2 class=\"titresection\">Albums</h2>\n");

        if (isset($this->albums))
        {
            $reponse.=sprintf("                 <div class=\"listalbum\">\n");
            foreach ($this->albums as $ligne)
            {
                $reponse.=sprintf($ligne->AffAlbum());
            };
            $reponse.=sprintf("                 </div>\n");
        };

        $reponse.=sprintf("             </section>\n");

        //---------------------section video ----------------------

        $reponse.=sprintf("             <section id=\"video\">\n");

        $reponse.=sprintf("                 <h2 class=\"titresection\">Vidéo</h2>\n");

        if (isset($this->video))
        {
            $reponse.=sprintf("                 %s\n", $this->video);
        };

        $reponse.=sprintf("             </section>\n");

        //---------------------section commentaires ----------------------

        $reponse.=sprintf("             <section id=\"commentaires\">\n");

        $reponse.=sprintf("                 <h2 class=\"titresection\">Commentaires</h2>\n");

        $reponse.=sprintf("                 <div class=\"listcomments\">\n");
        if (isset($this->comments))
        {
            if(count($this->comments)>=1)
            {
                foreach ($this->comments as $ligne)
                {
                    $reponse.=sprintf($ligne->AffComment());
                };
            }else {
                $reponse.=sprintf("                     <p class=\"notComment\">Il n'y a pas encore de commentaire pour ce groupe, écrivez-en un !");
            }
        };

        $reponse.=sprintf("                 </div>\n");

        if (isset($_SESSION['pseudo']) and isset($_SESSION['pass']))
        {
            $reponse.=sprintf($this->AffAjoutComment());
        } else {
            $reponse.=sprintf("                 <p class=\"notConnect\"><a href=\"index.php?CONNEXION\">Connectez-vous</a> pour ajouter un commentaires.");
        }

        $reponse.=sprintf("             </section>\n");

        $reponse.=sprintf("         </main>\n");
        
        return $reponse;
    }*/
}

/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/

?>

