const HeightIllu = document.querySelector(".illuCouv").offsetHeight;

gsap.set("main", {
    padding: "0vh"
});

gsap.set(".illuCouv", {
    height: "100vh",
    borderRadius: "0px"
});

gsap.set(".Back",{
    marginTop: "-20%"
});

gsap.set(".InfoProj, footer",{
    visibility: "hidden"
});

setTimeout(function(){
    const ap = gsap.timeline();

    ap.to("main", {
        padding: "2vh 2vw 0vh",
        duration: 0.3
    });
    
    ap.to(".illuCouv", {
        height: `${HeightIllu}px`,
        borderRadius: "30px", 
        duration: 0.3
    });

    ap.to('.Back', {
        marginTop: "0px",
        duration: 0.3,
        ease: "back.out"
    });


    ap.set(".illuCouv", {
        height: 'auto'
    });

    ap.set(".InfoProj, footer",{
    visibility: "visible"
    });
}, 1500)


