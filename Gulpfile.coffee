gulp       = require 'gulp'
watch      = require 'gulp-watch'
#bower     = require 'main-bower-files'
clean      = require 'gulp-clean'
concat     = require 'gulp-concat'
sass       = require 'gulp-sass'
sourcemaps = require 'gulp-sourcemaps'
path       = require 'path'
gif        = require 'gulp-if'
flatten    = require 'gulp-flatten'
plumber    = require 'gulp-plumber'

paths =
  public: 'static/assets/js'
  scripts:  [
    'static/assets/js/modernizr.custom.61112.js'
    'static/assets/vendor/jquery/dist/jquery.min.js'
    'static/assets/vendor/uri.js/src/URI.min.js'
    'static/assets/vendor/uri.js/src/jquery.URI.min.js'
    'static/assets/vendor/SlitSlider/js/jquery.ba-cond.min.js'
    'static/assets/vendor/SlitSlider/js/jquery.slitslider.js'
    'static/assets/vendor/sco.js/js/sco.ajax.js'
    'static/assets/vendor/sco.js/js/sco.panes.js'
    'static/assets/vendor/sco.js/js/sco.tab.js'
    'static/assets/js/jquery.address-1.6.js'
    'static/assets/js/ddsmoothmenu-min.js'
    'static/assets/js/jquery.dcjqaccordion.2.7.min.js'
    'static/assets/js/jquery.easytabs.min.js'
    'static/assets/js/slide-to-top-accordion-min.js'
    'static/assets/js/jquery.easing-1.3.min.js'
    'static/assets/js/jquery.flexslider-min.js'
    'static/assets/js/responsive-tables.js'
    'static/assets/js/bootstrap.min.js'
    'static/assets/js/scripts.js'
  ]
  styles: []

# scripts
gulp.task "scripts", ->
  gulp.src paths.scripts
    .pipe(sourcemaps.init())
    .pipe concat "all.js"
    .pipe(sourcemaps.write())
    .pipe gulp.dest paths.public
#    .pipe livereload()

gulp.task 'watch', ->
  gulp.watch paths.scripts, ['scripts']

# default task
gulp.task "default", ['scripts', 'watch']
