watchr  = require('watchr')
exec    = require('child_process').exec

compileLog = (filePath) -> (error, stdout, stderr) ->
  if error?
    console.log "#{stderr}"
  else
    console.log "compiled #{filePath}"

watchr.watch
  paths: ['app', null], # watchr has a bug where the last item in the array is ignored
  listener: (eventName, filePath, fileCurrentStat, filePreviousStat) ->
    if filePath.indexOf('.coffee') > -1
      exec "coffee -c -o public #{filePath}", compileLog(filePath)
    else if filePath.indexOf('.styl') > -1
      exec "stylus --compress #{filePath} --out public", compileLog(filePath)


console.log 'server started ...'
exec "coffee -c -o public app/js", compileLog('app/js')
exec "stylus --compress app/css --out public", compileLog('app/css')