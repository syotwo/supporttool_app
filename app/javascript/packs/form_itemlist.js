document.addEventListener('turbolinks:load', () => {
  alert("test")
})

var Form1 = document.getElementById("Form1");
var Form2 = document.getElementById("Form2");

var Next1 = document.getElementById("Next1");

Next1.onclick = function() {
  Form1.style.display = "none";
}