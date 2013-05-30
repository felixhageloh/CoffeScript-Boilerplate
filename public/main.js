;(function(e,t,n){function i(n,s){if(!t[n]){if(!e[n]){var o=typeof require=="function"&&require;if(!s&&o)return o(n,!0);if(r)return r(n,!0);throw new Error("Cannot find module '"+n+"'")}var u=t[n]={exports:{}};e[n][0].call(u.exports,function(t){var r=e[n][1][t];return i(r?r:t)},u,u.exports)}return t[n].exports}var r=typeof require=="function"&&require;for(var s=0;s<n.length;s++)i(n[s]);return i})({1:[function(require,module,exports){
(function() {
  exports.greet = function() {
    return 'Hello World ☕';
  };

}).call(this);

},{}],2:[function(require,module,exports){
(function() {
  $(function() {
    var yap;

    yap = require('./yap.coffee');
    return $('.greeting').html(yap.greet());
  });

}).call(this);

},{"./yap.coffee":1}]},{},[2,1])
//@ sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZ2VuZXJhdGVkLmpzIiwic291cmNlcyI6WyIvVXNlcnMvZmVsaXgvV29ya3NwYWNlL2NvZmZlZXNjcmlwdC1ib2lsZXJwbGF0ZS9hcHAvanMveWFwLmNvZmZlZSIsIi9Vc2Vycy9mZWxpeC9Xb3Jrc3BhY2UvY29mZmVlc2NyaXB0LWJvaWxlcnBsYXRlL2FwcC9qcy9tYWluLmNvZmZlZSJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7O0FDTkE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EiLCJzb3VyY2VzQ29udGVudCI6WyIoZnVuY3Rpb24oKSB7XG4gIGV4cG9ydHMuZ3JlZXQgPSBmdW5jdGlvbigpIHtcbiAgICByZXR1cm4gJ0hlbGxvIFdvcmxkIOKYlSc7XG4gIH07XG5cbn0pLmNhbGwodGhpcyk7XG4iLCIoZnVuY3Rpb24oKSB7XG4gICQoZnVuY3Rpb24oKSB7XG4gICAgdmFyIHlhcDtcblxuICAgIHlhcCA9IHJlcXVpcmUoJy4veWFwLmNvZmZlZScpO1xuICAgIHJldHVybiAkKCcuZ3JlZXRpbmcnKS5odG1sKHlhcC5ncmVldCgpKTtcbiAgfSk7XG5cbn0pLmNhbGwodGhpcyk7XG4iXX0=
;