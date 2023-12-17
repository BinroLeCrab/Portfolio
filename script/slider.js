const slider = document.querySelector(".slider");
const right = document.querySelector("#right");
const left = document.querySelector("#left");

let Cards = document.querySelector(".CardsProj").offsetWidth;
let Gap = window.getComputedStyle(slider, null).gap;
Gap = parseInt(Gap.substring(0, Gap.length - 2));
let walkSlider = Cards + Gap;

// function AnimR() {
//     const tl = gsap.timeline();

//     tl.to('.CardsProj',{
//         transform: "rotate(-10Deg)",
//         duration: 0.15,
//         ease: "back.in"
//     })

//     tl.to('.CardsProj',{
//         transform: "rotate(-10Deg)",
//         duration: 0.35
//     })

//     tl.to('.CardsProj',{
//         transform: "rotate(0Deg)",
//         duration: 0.3,
//         ease: "back.out"
//     })
// }

right.addEventListener("click", ToTheRight);
left.addEventListener("click", ToTheLeft);

function ToTheLeft() {
    console.log("ToTheLeft");
    let l = window.getComputedStyle(document.querySelector(".slider"), null).left;
    l = parseInt(l.substring(0, l.length - 2));

    let arrivée = l + walkSlider;

    console.log(l);

    if (arrivée > 0 || l == 0) {
        console.log("retour origine");
        slider.style.left = `-${slider.offsetWidth - Cards
        }px`;
        // Anim();
    } else {
        slider.style.left = `${l + walkSlider}px`;
    }
}

function ToTheRight() {
    console.log("ToTheRight");
    let l = window.getComputedStyle(document.querySelector(".slider"), null).left;
    l = parseInt(l.substring(0, l.length - 2));

    let max = - slider.offsetWidth + Cards;

    let arrivée = l - walkSlider;

    console.log(max);
    console.log(l);

    if (arrivée < max || l == max) {
        console.log("retour droite");
        slider.style.left = `0px`;
        // AnimR();
    } else {
        slider.style.left = `${l - walkSlider}px`;
        // AnimR();
    }
}

// setInterval(ToTheRight, 10000);

/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/