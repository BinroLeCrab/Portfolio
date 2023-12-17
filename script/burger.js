window.addEventListener("load",run,false);

function run() {
    const burger = document.querySelector(".Burger");
    const IconBurg = document.querySelector(".BurgerIcon");
    const IconClose = document.querySelector(".CloseIcon");
    const menu = document.querySelector(".Menu");
    let flag = 0;

    burger.addEventListener("click", () => {
        if(flag == 0) {

            menu.classList.remove("ferme");
            menu.classList.add("ouvert");
            menu.style.marginTop = "20px";

            IconBurg.style.display = "none";
            IconClose.style.display = "initial";
            flag = 1;
        } else {
            menu.classList.remove("ouvert");
            menu.classList.add("ferme");
            menu.style.marginTop = "0px";
            
            IconBurg.style.display = "initial";
            IconClose.style.display = "none";
            flag = 0;
        }
        
    })
}