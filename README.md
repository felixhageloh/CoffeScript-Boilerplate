CoffeeScript Boilerplate
=======================

A minimal environment to get you started developing in CoffeeScript and Stylus. It assumes you have Node.js and CoffeeScript installed. Your script files go in <tt>app/js</tt> and your stylus files in <tt>app/css</tt>.

First install the <tt>grunt cli</tt>, if you don't have it already (check here for [more info](http://gruntjs.com)).

	npm install -g grunt-cli


then, start the server using
  
    grunt

It will compile your assets to <tt>public</tt> on the fly. By default, only <tt>main.coffee</tt> and <tt>main.styl</tt> will be compiled. 

You can manage your CoffeeScript dependencies using the standard node module system (via [browserify](http://browserify.org)). CSS dependencies can be easily managed using Stylus' build in <tt>@import</tt> directive. See <tt>app/js/main.coffee</tt> and <tt>app/css/main.styl</tt> for examples.

Finally to build your project for release, run

	grunt build
	
This will compile and minify your assets into <tt>release</tt>. The name for you assets will be your project name, so make sure to set that inside <tt>package.json</tt>