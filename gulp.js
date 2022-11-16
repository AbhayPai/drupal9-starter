let gulp = require('gulp');
let sass = require('gulp-sass');
let autoprefixer = require('gulp-autoprefixer');
let sourcemaps = require('gulp-sourcemaps');

/**
 * @task sass
 * Compile files from _scss
 */
gulp.task('themes', function (done) {
  gulp.src('web/themes/custom/theme/scss/**/**/*.scss')
    .pipe(sourcemaps.init())
    .pipe(sass().on('error', sass.logError))
    .pipe(autoprefixer('last 2 version'))
    .pipe(sourcemaps.write('./'))
    .pipe(gulp.dest('web/themes/custom/theme/css/custom'));
  done();
});

/**
 * @task watch
 * Watch _scss files for changes & recompile
 * Clear cache when Drupal related files are changed
 */
gulp.task('watchthemes', function (done) {
  gulp.watch('web/themes/custom/theme/scss/**/**/*.scss', gulp.series('themes'));
  done();
});

/**
 * @task watch
 * Watch _scss files for changes & recompile
 * Clear cache when Drupal related files are changed
 */
 gulp.task('default', function (done) {
  console.log('Please pass parameters. Available parameters are themes and watchthemes');
  done();
});
