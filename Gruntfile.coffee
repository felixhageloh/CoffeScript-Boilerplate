module.exports = (grunt) ->
  grunt.initConfig 
    pkg: grunt.file.readJSON('package.json')

    build:
      src: 'app',
      dest: 'public'
      tmp: 'tmp'
      release: 'release'
    
    stylus:
      compile:
        options:
          compress: false
        files:
          '<%=build.dest%>/main.css': ['<%=build.src%>/css/main.styl']
      build:
        options:
          compress: true
        files:
          '<%=build.release%>/<%= pkg.name %>.css': ['<%=build.src%>/css/main.styl']
          
    watch:
      scripts:
        files: ['<%=build.src%>/js/*.coffee', "<%=build.src%>/css/*.styl"]
        tasks: ['compile']
      options:
        nospawn: true

    coffee:
      compile:
        expand: true,
        flatten: true,
        cwd: '<%=build.src%>/js/',
        src: ['*.coffee'],
        dest: '<%=build.tmp%>',
        ext: '.js'

    browserify:
      '<%=build.dest%>/main.js': ['<%=build.tmp%>/*.js'],
      options:
        debug: true

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
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  # tasks
  grunt.task.registerTask 'clean', 'clears out temporary build files', ->
    grunt.file.delete grunt.config.get('build').tmp

  grunt.registerTask 'default', ['connect', 'watch']
  grunt.registerTask 'compile', ['clean', 'coffee', 'browserify', 'stylus:compile']
  grunt.registerTask 'build', ['clean', 'coffee', 'browserify', 'uglify', 'stylus:build']

  grunt.task.run ['compile']