$ ->
  greeter = require('./greeter.coffee')
  
  $('.greeting').html greeter.greet()
