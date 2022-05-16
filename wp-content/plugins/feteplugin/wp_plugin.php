<?php
/*
Plugin Name: WCM21 PLUGIN
Description: Världens bästa plugin
Author: Fete Edvin
Version: 1.0
Author URI: http://lindahlweb.se/hasbulla.html
*/

register_activation_hook(__FILE__, 'plugin_activated');
//  register_deactivation_hook(__FILE__, 'plugin_deactivated');

function plugin_activated() {

    // skapa custom post types
    cw_post_type_ar_travels();
    flush_rewrite_rules();


}


    /*Custom Post type start*/
function cw_post_type_ar_travels() {
    $supports = array(
    'title', // post title
    'editor', // post content
    'author', // post author
    'thumbnail', // featured images
    'excerpt', // post excerpt
    'custom-fields', // custom fields
    'comments', // post comments
    'revisions', // post revisions
    'post-formats', // post formats
    );
    $labels = array(
    'name' => _x('ar_travels', 'plural'),
    'singular_name' => _x('ar_travels', 'singular'),
    'menu_name' => _x('ar_travels', 'admin menu'),
    'name_admin_bar' => _x('ar_travels', 'admin bar'),
    'add_new' => _x('Add New', 'add new'),
    'add_new_item' => __('Add New ar_travels'),
    'new_item' => __('New ar_travels'),
    'edit_item' => __('Edit ar_travels'),
    'view_item' => __('View ar_travels'),
    'all_items' => __('All ar_travels'),
    'search_items' => __('Search ar_travels'),
    'not_found' => __('No ar_travels found.'),
    );
    $args = array(
    'supports' => $supports,
    'labels' => $labels,
    'public' => true,
    'query_var' => true,
    'rewrite' => array('slug' => 'ar_travels'),
    'has_archive' => true,
    'hierarchical' => false,
    );
    register_post_type('ar_travels', $args);
    }
    add_action('init', 'cw_post_type_ar_travels');
    /*Custom Post type end*/