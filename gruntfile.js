module.exports = function(grunt) {
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-compass');
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
				files: ['sass/*.scss'],
				tasks: ['compass:dev']
			}, //compass
			html: {
				files: ['*.html']
			} //html
		} //watch
	}) //initConfig
	grunt.registerTask('default', ['compass:dev', 'watch']);
} //exports
