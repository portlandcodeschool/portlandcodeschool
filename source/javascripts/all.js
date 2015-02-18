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

  var options = { $AutoPlay: true };
  var jssor_slider1 = new $JssorSlider$('slider1_container', options);

  // parallax
  // $('.parallax-window').parallax({imageSrc: '/images/banner-pdx.png'});

});

$('.mc-news').on('click', function() {
  ga('send', 'event', 'button', 'click', 'mc-news');
});

$('.mc-mobile').on('click', function() {
  ga('send', 'event', 'button', 'click', 'mc-mobile');
});


