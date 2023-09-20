<?php

class BD {
    public $listeID;
    public $listeP;

    function __construct(){
        $this->setListeId();
    }

    private function setListeId(){
        $commId = new CommSQL();
        $this->listeID = $commId->listeID();
    }

    public function setListP($list){
        $this->listeP = $list;
    }

}

/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/

?>