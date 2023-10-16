window.addEventListener("load",run,false);

function run() {
    
    const svg = document.querySelector("svg");
    const body = document.querySelector("body");
    const yeux = document.querySelector("#svgYeux");
    const walk = 100;

    function regard(e) {
        console.log("a");

        const { offsetWidth: width, offsetHeight: height } = body;
        let { offsetX: x, offsetY: y } = e;

        console.log(width, height)

        console.log(x,y)

        if (this !== e.target) {
            x = x + e.target.offsetLeft;
            y = y + e.target.offsetTop;
        }

        const xWalk = Math.round((x / width * walk) - (walk / 2));
        const yWalk = Math.round((y / height * walk) - (walk / 2));

        yeux.style.transform = `
            translate(${xWalk}px, ${yWalk}px)
        `;

    } 

    body.addEventListener('mousemove', regard);
}