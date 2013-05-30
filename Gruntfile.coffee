coffee  = require('coffee-script');
through = require('through');

module.exports = (grunt) ->
  grunt.initConfig 
    pkg: grunt.file.readJSON('package.json')

    build:
      src: 'app',
      dest: 'public'
      release: 'release'
    
    stylus:
      compile:
        options:
          compress: false
        files:
          '<%=build.dest%>/main.css': ['<%=build.src%>/css/*.styl']
      build:
        options:
          compress: true
        files:
          '<%=build.release%>/<%= pkg.name %>.css': ['<%=build.src%>/css/*.styl']
          
    watch:
      scripts:
        files: ['<%=build.src%>/js/*.coffee', "<%=build.src%>/css/*.styl"]
        tasks: ['browserify', 'stylus:compile']
      options:
        nospawn: true

    browserify:
      '<%=build.dest%>/main.js': ['<%=build.src%>/js/*.coffee'],
      options:
        debug: true
        transform: [(file) ->
          data  = ''
          write = (buf) -> data += buf
          end   = ->
            @queue coffee.compile(data)
            @queue null
          through write, end
        ]

    uglify:
      build:
        files:
          '<%=build.release%>/<%= pkg.name %>.js': ['<%=build.dest%>/main.js']

    connect:
      server:
        options: 
          base: 'public'



  # load plugins
  grunt.loadNpmTasks 'grunt-browserify'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-connect'

  # tasks
  grunt.registerTask('default', ['connect', 'watch'])
  grunt.registerTask('build', ['browserify', 'uglify', 'stylus:build'])