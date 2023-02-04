// document.addEventListener('turbolinks:load', () => {
//   alert("test")
// })

// var Form1 = document.getElementById("Form1");
// var Form2 = document.getElementById("Form2");

// var Next1 = document.getElementById("Next1");

// Next1.onclick = function() {
//   Form1.style.display = "none";
// }


// jQuery

// $(function(){
//   $('#Next1').on('click', function() {
//     $('#Form1').hide();
//     $('#Form2').show();
//   });
// });

var step_before_color = '#f3f7f0'
var step_after_color = '#172336'
var bg_color = '#5076b1'

$(function() {
  $('#Next1').click(function() {
    $('#Form1').animate({
      left: '-1000px',
    });
    $('#Form2').animate({
      left: '0px',
    });
    $('.step_col1').css( 
      "background-image", 
      "linear-gradient(to right, #15A2D5, #15A2D5)" 
    );
    $(".step_col1").css("color",step_before_color);
  });
});

$(function(){
  $('#Back1').click(function() {
    $('#Form1').animate({
      left: '0px',
    });
    $('#Form2').animate({
      left: '1000px',
    });
    $('.step_col1').css( 
      "background-image", 
      "linear-gradient(to right, white, white)" 
    );
    $(".step_col1").css("color",step_after_color);
  });
});



$(function() {
  $('#Next2').click(function() {
    $('#Form2').animate({
      left: '-1000px',
    });
    $('#Form3').animate({
      left: '00px',
    });
    $('.step_col2').css( 
      "background-image", 
      "linear-gradient(to right, #15A2D5, #15A2D5)"  
    );
    $(".step_col2").css("color",step_before_color);
  });
});

$(function(){
  $('#Back2').click(function() {
    $('#Form2').animate({
      left: '0px',
    });
    $('#Form3').animate({
      left: '1000px',
    });
    $('.step_col2').css( 
      "background-image", 
      "linear-gradient(to right, white, white)" 
    );
    $(".step_col2").css("color",step_after_color);
  });
});



$(function() {
  $('#Next3').click(function() {
    $('#Form3').animate({
      left: '-1000px',
    });
    $('#Form4').animate({
      left: '1000px',
    });
    $('.step_col3').css( 
      "background-image", 
      "linear-gradient(to right, #15A2D5, #15A2D5)"  
    );
    $(".step_col3").css("color",step_before_color);
  });
});

$(function(){
  $('#Back3').click(function() {
    $('#Form3').animate({
      left: '0px',
    });
    $('#Form4').animate({
      left: '1000px',
    });
    $('.step_col3').css( 
      "background-image", 
      "linear-gradient(to right, white, white)" 
    );
    $(".step_col3").css("color",step_after_color);
  });
});
