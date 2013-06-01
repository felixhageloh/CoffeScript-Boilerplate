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

    yap = require('./yap');
    return $('.greeting').html(yap.greet());
  });

}).call(this);

},{"./yap":1}]},{},[2,1])
//@ sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZ2VuZXJhdGVkLmpzIiwic291cmNlcyI6WyIvVXNlcnMvZmVsaXgvV29ya3NwYWNlL2NvZmZlZXNjcmlwdC1ib2lsZXJwbGF0ZS90bXAveWFwLmpzIiwiL1VzZXJzL2ZlbGl4L1dvcmtzcGFjZS9jb2ZmZWVzY3JpcHQtYm9pbGVycGxhdGUvdG1wL21haW4uanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQ05BO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBIiwic291cmNlc0NvbnRlbnQiOlsiKGZ1bmN0aW9uKCkge1xuICBleHBvcnRzLmdyZWV0ID0gZnVuY3Rpb24oKSB7XG4gICAgcmV0dXJuICdIZWxsbyBXb3JsZCDimJUnO1xuICB9O1xuXG59KS5jYWxsKHRoaXMpO1xuIiwiKGZ1bmN0aW9uKCkge1xuICAkKGZ1bmN0aW9uKCkge1xuICAgIHZhciB5YXA7XG5cbiAgICB5YXAgPSByZXF1aXJlKCcuL3lhcCcpO1xuICAgIHJldHVybiAkKCcuZ3JlZXRpbmcnKS5odG1sKHlhcC5ncmVldCgpKTtcbiAgfSk7XG5cbn0pLmNhbGwodGhpcyk7XG4iXX0=
;