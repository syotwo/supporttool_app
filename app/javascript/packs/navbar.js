const parentMenu = document.querySelector(".menu > li > a");

parentMenu.addEventListener("click", function(e) {
    e.preventDefault();
    this.nextElementSibling.classList.toggle("active");
})