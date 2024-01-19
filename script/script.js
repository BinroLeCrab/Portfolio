//// document.addEventListener("unload", (event) => {console.log(event)});

// window.addEventListener("load",run,false);
    
    // const svg = document.querySelector("svg");
    const body = document.querySelector("body");
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

    // const OverBtn = document.querySelector("#OverCircle");
    // let clic = 0;

    // OverBtn.addEventListener("click", ClickRes);

    // document.querySelector("main").addEventListener("click", () => {

    //     if (clic ==1) {
    //         ClickRes();
    //     }

    // });

    // function ClickRes(){
    //     const Res = document.querySelector("#ResOver");

    //     if(clic == 0) {
    //         Res.classList.remove("ResNoClick");
    //         Res.classList.add("ResClick");
            
    //         clic = 1;
    //     } else {
    //         Res.classList.remove("ResClick");
    //         Res.classList.add("ResNoClick");

    //         clic = 0;
    //     }

    // }

    // let helicoO = document.querySelector("#helicoO");
    // let helicoT = document.querySelector("#helicoT");
    // let DegO = 0;
    // let DegT = 180;

    // body.addEventListener("wheel", () => {
    //     DegO = DegO + 50;
    //     DegT = DegT + 50;
    //     helicoO.style.transform = `rotateY(${DegO}deg)`;
    //     helicoT.style.transform = `rotateY(${DegT}deg)`;
    // });


/*   _____     _____
    |  _  |   |  _  |
   -| | | |---| | | |-
    |_____| 7 |_____|  ~B!nro~
*/