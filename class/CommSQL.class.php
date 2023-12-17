<?php

class CommSQL {
    
    // private $db = "portfolio_vigier";
    // private $host = "localhost";
    // private $user = "root";
    // private $pwd = "";
    // private $dsn = "mysql:host=localhost;dbname=portfolio_vigier";

    private $db = "ld1vz_portfolio";
    private $host = "ld1vz.myd.infomaniak.com";
    private $user = "ld1vz_userport";
    private $pwd = "gC2SzA4g5DQR";
    private $dsn = "mysql:host=ld1vz.myd.infomaniak.com;dbname=ld1vz_portfolio";

    public function projet($id)
    {
        //ouvrir
        try
		{
			$cnxDB = new PDO($this->dsn, $this->user, $this->pwd);
		}
		catch (PDOException $e)
		{
			die("Erreur à l'ouverture ! :".$e->getmessage());
		}

        //requeter
        $stmtsql = $cnxDB->prepare("SELECT * FROM projets WHERE id_projet = :id;");
		$stmtsql->bindParam(':id',$id);

        $stmtsql->execute();

        $resulCom = $stmtsql->fetchAll();

        //fermer
		$cnxDB = null;

        if (count($resulCom)==1)
        {
            return $resulCom;
        };
    }

    public function tagProjet($id)
    {
        //ouvrir
        try
		{
			$cnxDB = new PDO($this->dsn, $this->user, $this->pwd);
		}
		catch (PDOException $e)
		{
			die("Erreur à l'ouverture ! :".$e->getmessage());
		}

        //requeter
        $stmtsql = $cnxDB->prepare("SELECT tag.nom_label, tag.couleur_label, tag.couleur_texte FROM eti_proj AS tag_proj INNER JOIN etiquettes AS tag ON tag_proj.id_label = tag.id_label  WHERE tag_proj.id_projet = :id;");
		$stmtsql->bindParam(':id',$id);

        $stmtsql->execute();

        $resulCom = $stmtsql->fetchAll();

        //fermer
		$cnxDB = null;

        return $resulCom;
        
    }

    public function outilProjet($id)
    {
        //ouvrir
        try
		{
			$cnxDB = new PDO($this->dsn, $this->user, $this->pwd);
		}
		catch (PDOException $e)
		{
			die("Erreur à l'ouverture ! :".$e->getmessage());
		}

        //requeter
        $stmtsql = $cnxDB->prepare("SELECT outi.nom_outil, outi.icon FROM outil_proj AS out_proj INNER JOIN outils AS outi ON out_proj.id_outil = outi.id_outil  WHERE out_proj.id_projet = :id;");
		$stmtsql->bindParam(':id',$id);

        $stmtsql->execute();

        $resulCom = $stmtsql->fetchAll();

        //fermer
		$cnxDB = null;

        return $resulCom;
        
    }

    public function listeID()
    {
        //ouvrir
        try
		{
			$cnxDB = new PDO($this->dsn, $this->user, $this->pwd);
		}
		catch (PDOException $e)
		{
			die("Erreur à l'ouverture ! :".$e->getmessage());
		}

        //requeter
        $stmtsql = $cnxDB->prepare("SELECT id_projet FROM projets ORDER BY recent DESC ;");
        $stmtsql->execute();

        $resulCom = $stmtsql->fetchAll();

        //fermer
		$cnxDB = null;

        return $resulCom;
        
    }

    
}

/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/

?>