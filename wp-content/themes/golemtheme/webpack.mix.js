// webpack.mix.js
const mix = require('laravel-mix');

mix.sass('assets/css/main.scss', '/dist')
    .options({
        autoprefixer: { },
        processCssUrls: false
    }).js('assets/js/app.js', '/dist');
