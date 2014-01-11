// require tree .


$(document).ready(function() {

  $('.answer').hide();

  $('.question h4 a').click(function(e) {
    e.preventDefault();
    $(this).parent().next().slideToggle();
  });




});