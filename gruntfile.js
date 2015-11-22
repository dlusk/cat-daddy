module.exports = function(grunt) {
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-compass');
	// grunt.loadNpmpTasks('grunt-modernizr');
	grunt.initConfig({
		compass: {
			dev: {
				options: {
					config: 'config.rb'
				} //options
			} //dev
		}, //compass
		watch: {
			options: { livereload: true },
			scripts: {
				files: ['js/*.js'],
			}, //scripts
			compass: {
				files: ['**/*.scss'],
				tasks: ['compass:dev']
			}, //compass
			html: {
				files: ['*.php']
			} //html
		} //watch
	}) //initConfig
	grunt.registerTask('default', ['compass:dev', 'watch']);
} //exports
