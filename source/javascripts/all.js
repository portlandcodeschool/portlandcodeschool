// require tree .


// Copyright (c) 2013, 2014 ICRL
// See the file license.txt for copying permission.

$(document).ready(function() {

  // FAQ page answer hide
  $('.answer').hide();

  // FAQ page answer toggling
  $('.question h4 a').click(function(e) {
    e.preventDefault();
    $(this).parent().next().slideToggle();
  });

});

$('.mc-news').on('click', function() {
  ga('send', 'event', 'button', 'click', 'mc-news');
});

$('.mc-mobile').on('click', function() {
  ga('send', 'event', 'button', 'click', 'mc-mobile');
});
