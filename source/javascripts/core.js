// $(function() {
//   // $('.collapsable p:odd').hide();
//   var previous_q = null;
//   $('.collapsable p, .collapsable ul, .collapsable li').each(function () {
//     if ($('strong', this).length > 0) {
//       // Store the question so that we can bind to it later
//       previous_q = $(this);
//       previous_q.css('text-decoration', 'underline');
//     }
//     else {
//       var _this = this;
//       previous_q.bind('click', function () {
//         console.log(_this);
//         $(_this).slideToggle();
//       });
//     }
//   });
// });

// hide/reveal the faq answers

$(document).ready(function() {

  $('.answer').hide();

  $('.question h4 a').click(function(e) {
    e.preventDefault();
    $(this).parent().next().slideToggle();
  });




});
