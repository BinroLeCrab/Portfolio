window.addEventListener("load",run,false);

const transition = document.querySelector("#transition");

setTimeout(function(){

    console.log(transition);
    let trans = document.querySelector("#transition");
    trans.classList.remove("bye");
    trans.classList.add("coucou");

}, 400)

function run() {
    
    // const svg = document.querySelector("svg");
    // const body = document.querySelector("body");
    // const yeux = document.querySelector("#svgYeux");
    // const walk = 200;

    // function regard(e) {
    //     // console.log("a");

    //     const { offsetWidth: width, offsetHeight: height } = body;
    //     let { offsetX: x, offsetY: y } = e;

    //     // console.log(width, height)

    //     // console.log(x,y)

    //     if (this !== e.target) {
    //         x = x + e.target.offsetLeft;
    //         y = y + e.target.offsetTop;
    //     }

    //     const xWalk = Math.round((x / width * walk) - (walk / 2));
    //     const yWalk = Math.round((y / height * walk) - (walk / 2));

    //     yeux.style.transform = `
    //         translate(${xWalk}px, ${yWalk}px)
    //     `;

    // } 

    // window.addEventListener('mousemove', regard);

    window.addEventListener("scroll", change_BG_color);

    function change_BG_color() {
        const Head = document.querySelector("#header");
        const CirBin = document.querySelector("#Over");

        if (window.scrollY >= 60) {
            Head.classList.add("change_BG_color");

            CirBin.classList.remove("OverOFF");
            CirBin.classList.add("OverON");
        } else {
            Head.classList.remove("change_BG_color");

            CirBin.classList.remove("OverON");
            CirBin.classList.add("OverOFF");
        }

    };

    const OverBtn = document.querySelector("#OverCircle");
    let clic = 0;

    OverBtn.addEventListener("click", ClickRes);

    document.querySelector("main").addEventListener("click", () => {

        if (clic ==1) {
            ClickRes();
        }

    });

    function ClickRes(){
        const Res = document.querySelector("#ResOver");

        if(clic == 0) {
            Res.classList.remove("ResNoClick");
            Res.classList.add("ResClick");
            
            clic = 1;
        } else {
            Res.classList.remove("ResClick");
            Res.classList.add("ResNoClick");

            clic = 0;
        }

    }

    // on sélectionne les liens de pages qui joueront l'animation
    const liens = document.querySelectorAll('.Animtrans');

    for(i=0; i< liens.length; i++){
        let lien = liens[i]

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
}

