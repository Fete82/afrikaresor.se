<?php
if ( ! function_exists( 'myfirsttheme_setup' ) ) :
    /**
     * Sets up theme defaults and registers support for various WordPress features.
     *
     * Note that this function is hooked into the after_setup_theme hook, which runs
     * before the init hook. The init hook is too late for some features, such as indicating
     * support post thumbnails.
     */
    function myfirsttheme_setup() {
     
        /**
         * Make theme available for translation.
         * Translations can be placed in the /languages/ directory.
         */
        load_theme_textdomain( 'art', get_template_directory() . '/languages' );
     
        /**
         * Add default posts and comments RSS feed links to &lt;head>.
         */
        add_theme_support( 'automatic-feed-links' );
        add_theme_support( 'post-thumbnails' );
    
     
        /**
         * Add support for two custom navigation menus.
         */
        register_nav_menus( array(
            'primary'   => __( 'Primary Menu', 'myfirsttheme' ),
            'secondary' => __('Secondary Menu', 'myfirsttheme' )
        ) );
     
        /**
         * Enable support for the following post formats:
         * aside, gallery, quote, image, and video
         */
        add_theme_support( 'post-formats', array ( 'aside', 'gallery', 'quote', 'image', 'video' ) );
    }
    endif; // myfirsttheme_setup
    add_action( 'after_setup_theme', 'myfirsttheme_setup' );

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

add_theme_support( 'title-tag' );

/*
function get_comments( $args = '' ) {
    $query = new WP_Comment_Query;
    return $query->query( $args );
}
*/
add_action( 'pre_get_posts', 'add_my_post_types_to_query' );
  
function add_my_post_types_to_query( $query ) {
    if ( is_home() && $query->is_main_query() )
        $query->set( 'post_type', array( 'post', 'reviews' ) );
    return $query;
}