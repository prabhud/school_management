/**
* @author Remy Sharp
* @url http://remysharp.com/2007/01/25/jquery-tutorial-text-box-hints/
*
* better val() method added by Matt Chisholm, 2009/07/27
* http://glyphobet.net/blog/essay/878
*/

(function ($) {

$.fn.hint = function (blurClass) {
  if (!blurClass) {
    blurClass = 'title-blur';
  }

  return this.each(function () {
    // get jQuery version of 'this'
    var $input = $(this),

    // capture the rest of the variable to allow for reuse
      title = $input.attr('title'),
      $form = $(this.form),
      $win = $(window);

    function remove() {
      if ($input.realval() === title && $input.hasClass(blurClass)) {
        $input.val('').removeClass(blurClass);
      }
    }

    // only apply logic if the element has the attribute
    if (title) {
      // on blur, set value to title attr if text is blank
      $input.blur(function () {
        if (this.value === '') {
          $input.val(title).addClass(blurClass);
        }
      }).focus(remove).blur(); // now change all inputs to title

      // clear the pre-defined text when form is submitted
      $form.submit(remove);
      $win.unload(remove); // handles Firefox's autocomplete
    }
  });
};

$.fn.realval = $.fn.val;

$.fn.val = function (value) {
  var i = $(this);
  if (value === undefined) {
    return (i.realval() === i.attr('title')) ? '' : i.realval();
  } else {
    return i.realval(value);
  }
}

})(jQuery);