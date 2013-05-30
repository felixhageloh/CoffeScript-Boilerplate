$ ->
  yap = require('./yap.coffee')
  
  $('.greeting').html yap.greet()
