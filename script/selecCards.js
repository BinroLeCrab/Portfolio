const Cards = document.querySelectorAll('.CardsProj');
const main = document.querySelector("main");

function changeBG() {
    let active = document.querySelector('.ActiveCards');
    let BG = window.getComputedStyle(active.querySelector('.cover'), null).background;
    console.log(BG);

    main.style.background = BG;
}

// setTimeout(function(){

//     let trans = document.querySelector("#transition");
//     trans.classList.remove("bye");
//     trans.classList.add("coucou");

// }, 400)

for(i=0; i< Cards.length; i++){
    let card = Cards[i];
    card.addEventListener('click' , function(event){

        let active = document.querySelector('.ActiveCards');

        active.classList.remove("ActiveCards");
        active.classList.add("NoActive")

        card.classList.remove("NoActive");
        card.classList.add("ActiveCards");

        changeBG()

    })
}