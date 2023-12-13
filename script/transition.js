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
    lien.addEventListener('click' , function(e){

        //on empêche le lien de nous diriger vers une autre page
        e.preventDefault();

        //on ajoute alors la classe "active" pour ajouter le fondu au noir
        let trans = document.querySelector("#transition");
        trans.classList.remove("coucou");
        trans.classList.add("bye");

        // connaitre sur quel lien a etait cliqué
        let lienclic = lien.href;

        //On attend un peu que l'animation et se joue et on dirige vers le lien 
        setTimeout(function(){
            window.location.href = lienclic
        }, 400)

    })
}

const Projs = document.querySelectorAll(".CardsProj");

for(i=0; i< Projs.length; i++){
    let proj = Projs[i];

    // on écoute le clic sur ces liens
    proj.addEventListener('click' , function(e){

        console.log(e)

        //on empêche le lien de nous diriger vers une autre page
        e.preventDefault();

        //on ajoute alors la classe "active" pour ajouter le fondu au noir
        let trans = document.querySelector("#transition");
        // let BG = window.getComputedStyle(proj.querySelector('.cover'), null).background;
        // trans.style.background = BG;
        trans.classList.remove("coucou");
        trans.classList.add("bye");

        // connaitre sur quel lien a etait cliqué
        let lienclic = proj.href;
        console.log(lienclic);

        // On attend un peu que l'animation et se joue et on dirige vers le lien 
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