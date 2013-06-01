(function() {
  $(function() {
    var yap;

    yap = require('./yap');
    return $('.greeting').html(yap.greet());
  });

}).call(this);
