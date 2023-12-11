const transition = document.querySelector("#transition");

setTimeout(function(){

    let trans = document.querySelector("#transition");
    trans.classList.remove("bye");
    trans.classList.add("coucou");

}, 400)

// on sélectionne les liens de pages qui joueront l'animation
const liens = document.querySelectorAll('.Animtrans');

for(i=0; i< liens.length; i++){
    let lien = liens[i];

    // on écoute le clic sur ces liens
    lien.addEventListener('click' , function(event){

        //on empêche le lien de nous diriger vers une autre page
        event.preventDefault();

        //on ajoute alors la classe "active" pour ajouter le fondu au noir
        let trans = document.querySelector("#transition");
        trans.classList.remove("coucou");
        trans.classList.add("bye");

        // connaitre sur quel lien a etait cliqué
        let lienclic = event.target.href;

        //On attend un peu que l'animation et se joue et on dirige vers le lien 
        setTimeout(function(){
            window.location.href = lienclic
        }, 400)

    })
}

/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/