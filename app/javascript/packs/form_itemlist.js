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

$(function() {
  $('#Next1').click(function() {
    $('#Form1').animate({
      left: '-1000px',
    });
    $('#Form2').animate({
      left: '0px',
    });
    $('.step_col1').css('background-color','orange');
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
    $('.step_col1').css('background-color','white');
  });
});



$(function() {
  $('#Next2').click(function() {
    $('#Form2').animate({
      left: '-1000px',
    });
    $('#Form3').animate({
      left: '1000px',
    });
    $('.step_col2').css('background-color','orange');
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
    $('.step_col2').css('background-color','white');
  });
});



$(function() {
  $('#Next3').click(function() {
    $('#Form3').animate({
      left: '0px',
    });
    $('#Form4').animate({
      left: '1000px',
    });
    $('.step_col3').css('background-color','orange');
  });
});

$(function(){
  $('#Back3').click(function() {
    $('#Form3').animate({
      left: '1000px',
    });
    $('#Form4').animate({
      left: '1000px',
    });
    $('.step_col3').css('background-color','white');
  });
});
