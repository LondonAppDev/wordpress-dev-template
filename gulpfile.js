const gulp = require('gulp');
const sass = require('gulp-sass');
const concat = require('gulp-concat');
const autoprefixer = require('gulp-autoprefixer');
const less = require('gulp-less');

const scripts = require('./scripts');
const styles = require('./styles');

var developmentMode = false;

gulp.task('images', () => {
    return gulp.src('./src/img/**')
        .pipe(gulp.dest('./dist/img/'));
});

gulp.task('js', () => {
    return gulp.src(scripts)
        .pipe(concat('scripts.js'))
        .pipe(gulp.dest('./dist/js/'));
});

gulp.task('css', () => {
    return gulp.src(styles)
        .pipe(concat('main.css'))
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer('last 2 versions'))
        .pipe(gulp.dest('./dist/css/'));
});

gulp.task('php', () => {
    return gulp.src('./src/php/**')
        .pipe(gulp.dest('dist/'));
});

gulp.task('build', () => {
    gulp.start(
        'php',
        'js',
        'css',
        'images'
    );
});

gulp.task('dev', function() {
    developmentMode = true;
    gulp.start('build');
    gulp.watch('./src/**/*', ['build']);
});
