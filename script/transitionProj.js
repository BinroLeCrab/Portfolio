const HeightIllu = document.querySelector(".illuCouv").offsetHeight;

gsap.set("main", {
    padding: "0vh"
});

gsap.set(".illuCouv", {
    height: "100vh",
    borderRadius: "0px"
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

    ap.set(".illuCouv", {
        height: 'auto'
    })

}, 1500)


