<?php
/*
function add_theme_support*/
function add_theme_style() {
    wp_enqueue_style('style', get_theme_file_uri('dist/main.css'));
}

add_action('wp_enqueue_scripts', 'add_theme_style');

function africa_menus() {
    $locations = array(
        'primary' => "Desktop Primary Navbar",
        'footer' => "Footer Menu Items"
    );

    register_nav_menus($locations);
}

add_action('init', 'africa_menus');

function add_theme_scripts() {
    wp_enqueue_script( 'bootstrap', get_theme_file_uri('dist/app.js'), array(), null, true);
    

}
add_action('wp_enqueue_scripts', 'add_theme_scripts');

/* Custom Post Type Start */
