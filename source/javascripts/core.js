$(function() {
  $('.collapsable p:odd').hide();
  var previous_q = null;
  $('.collapsable p').each(function () {
    if ($('strong', this).length > 0) {
      // Store the question so that we can bind to it later
      previous_q = $(this);
      previous_q.css('text-decoration', 'underline');
    }
    else {
      var _this = this;
      previous_q.bind('click', function () {
        $(_this).slideToggle();
      });
    }
  });
});