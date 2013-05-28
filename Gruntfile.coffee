coffee  = require('coffee-script');
through = require('through');

module.exports = (grunt) ->
  grunt.initConfig 
    pkg: grunt.file.readJSON('package.json')

    build:
      src: 'app',
      dest: 'public'
    
    # coffee: 
    #   compile:
    #     files:
    #       '<%=build.dest%>/main.js': ['<%=build.src%>/js/*.coffee']

    stylus:
      compile:
        options: {}
        files:
          '<%=build.dest%>/main.css': ['<%=build.src%>/css/*.styl']

    watch:
      scripts:
        files: ['<%=build.src%>/js/*.coffee', "<%=build.src%>/css/*.styl"]
        tasks: ['browserify', 'stylus']
      options:
        nospawn: true

    browserify:
      '<%=build.dest%>/main.js': ['<%=build.src%>/js/*.coffee'],
      options:
        transform: [(file) ->
          data  = ''
          write = (buf) -> data += buf
          end   = ->
            @queue coffee.compile(data)
            @queue null
          through write, end
        ]

    connect:
      server:
        options: 
          base: 'public'



  # load plugins
  grunt.loadNpmTasks('grunt-browserify');
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-connect'

  # tasks
  grunt.registerTask('default', ['connect', 'watch'])