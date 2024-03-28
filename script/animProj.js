gsap.set('.CardsProj', {
    x: 100,
    y: -100,
    scale: 0.3,
    opacity: 0,
});

setTimeout(function(){

    gsap.to('.CardsProj', {
        x: 0,
        y: 0,
        scale: 1,
        opacity: 1,
        duration: 0.3,
        stagger: 0.1
    });

}, 700)