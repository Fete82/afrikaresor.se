<?php

/**
 * Plugin Name: WCM REVIEWER
 * Plugin URI: https://example.com/plugins/the-basics/
 * Description: Review trips!
 * Version: 1.0.0
 * Requires at least: 5.9
 * Requires PHP: 7.4
 * Author: John Smith
 * Author URI: https://author.example.com/
 * License: GPL v2 or later
 * License URI: https://www.gnu.org/licenses/gpl-2.0.html
 * Text Domain: wcm-wp-plugin
 * Domain Path: /languages
 */

include 'class.GithubApi.php';
register_activation_hook(__FILE__, 'wcm_reviewer_activated');

//register_deactivation_hook(__FILE__, 'plugin_deactivated');

add_shortcode('wcm_review', 'wcm_reviewer_activated');
function wcm_reviewer_activated()
{
    // skapa custom posot types
    flush_rewrite_rules();
}

add_action('init', 'scripts_loader');
function scripts_loader()
{
    /* registrera scriptet */
    wp_register_script(
        'wcm_plugin_script',
        plugins_url('plugin-review/js/wcm_plugin_script.js', __FILE__),
        ['jquery'],
        '1.0.0',
        true
    );

    /* skapa ett "översättnings" objekt till JS  med vår ajax URL. */
    wp_localize_script(
        'wcm_plugin_script',
        'myAjax',
        [
            'ajaxurl' => admin_url('admin-ajax.php'),
            'root' => esc_url_raw(rest_url()),
            'nonce' => wp_create_nonce('wp_rest')
        ]
    );

    /* registrera scriptet */
    wp_enqueue_script('wcm_plugin_script');
}

/**
 * För att kunna ta emot vårt Ajax request så måste vi ha en funktion som hanterar det.
 * Man lägger till dessa med två add_actions, den första gäller för inloggade användare,
 * och den andra för icke inloggade användare.
 */
add_action("wp_ajax_wcm_del_repos_action", "delete_repo_transients");
add_action("wp_ajax_nopriv_wcm_del_repos_action", "delete_repo_transients");
function delete_repo_transients()
{

    // nonce check for an extra layer of security, the function will exit if it fails
    if (!wp_verify_nonce($_REQUEST['nonce'], "wcm_repos_nonce")) {
        exit("Woof Woof Woof");
    }
    delete_transient('wcm_github_user_repos');

    echo json_encode(['type' => 'success', 'data' => ['someKey' => 'someValue']]);
    wp_die();
}

// [wcm_hello]
/**
 * Här skapar vi en shortcode som går att använda i innehållet enligt: [wcm_hello]
 * Namnet inuti [] är fösta parametern till add_shortcode().
 */
add_shortcode('wcm_hello', 'wcm_says_hello');
function wcm_says_hello($atts = [], $content = null)
{
    //

    $content .= "<h2>Thing from shortcode function</h2>";

    //$latestPosts = new WP_Query();

    return $content;
}


/**
 * Här skapar vi en ny meny i admin.
 */
add_action('admin_menu', 'wcm_admin_menu');
function wcm_admin_menu()
{
    add_menu_page(
        'WCM Menu',
        'WCM Reviews',
        'manage_options',
        'wcm_menu',
        'wcm_admin_menu_page',
        'dashicons-learn-more',
        20
    );
}

/* Vi har extraherat view koden för meny-sidan och inkludera det här */
function wcm_admin_menu_page()
{
    $github = new class_GithubApi();
    $repos  = "";
    if (isset($_POST['delete_transients'])) {
        delete_transient('wcm_github_user_repos');
    }

    $repos = $github->getRepos();
    include plugin_dir_path(__FILE__) . 'admin/wcm_menu_page.php';
}

/**
 * Lägg till settings på vår nya admin sida
 */
function wcm_settings_init()
{
    register_setting('wcm_menu', 'wcm_github_token');
    register_setting('wcm_menu', 'wcm_github_username');

    /* Skapar en settings sektion */
    add_settings_section(
        'wcm_main_settings',
        'WCM Github Inställningar',
        'wcm_settings_sections_html',
        'wcm_menu'
    );

    /* Skapar fält för settings */
    add_settings_field(
        'wcm_settings_field',
        'API Nyckel',
        'wcm_api_field_html',
        'wcm_menu',
        'wcm_main_settings'
    );

    add_settings_field(
        'wcm_settings_field2',
        'Username',
        'wcm_api_field_html_username',
        'wcm_menu',
        'wcm_main_settings'
    );
}

add_action('admin_init', 'wcm_settings_init');

function wcm_settings_sections_html()
{
    echo get_comments();
}

function wcm_api_field_html()
{
    $api_key = get_option('wcm_github_token');

    $output = '<input type="text" name="wcm_github_token" value="';
    $output .= isset($api_key) ? esc_attr($api_key) : '';
    $output .= '" />';

    echo $output;
}

function wcm_api_field_html_username()
{
    $username = get_option('wcm_github_username');

    $output = '<input type="text" name="wcm_github_username" value="';
    $output .= isset($username) ? esc_attr($username) : '';
    $output .= '" />';

    echo $output;
}


function get_github_user_data()
{
    wp_remote_get('https://api.github.com/users/lauhakari');
}


// POST TYPES
function create_posttype()
{

    register_post_type(
        'reviews',
        array(
            'labels' => array(
                'name' => __('Reviews'),
                'singular_name' => __('Review')
            ),
            'menu_icon' => 'dashicons-star-filled',
            'public' => true,
            'has_archive' => true,
            'rewrite' => array('slug' => 'reviews'),
            'show_in_rest' => true,

        )
    );
}
add_action('init', 'create_posttype');

/*
* Creating a function to create our CPT
*/

function custom_post_type()
{

    // Set UI labels for Custom Post Type
    $labels = array(
        'name'                => _x('Reviews', 'Post Type General Name', 'golemtheme'),
        'singular_name'       => _x('Review', 'Post Type Singular Name', 'golemtheme'),
        'menu_name'           => __('Reviews', 'golemtheme'),
        'parent_item_colon'   => __('Parent Review', 'golemtheme'),
        'all_items'           => __('All Reviews', 'golemtheme'),
        'view_item'           => __('View Review', 'golemtheme'),
        'add_new_item'        => __('Add New Review', 'golemtheme'),
        'add_new'             => __('Add New', 'golemtheme'),
        'edit_item'           => __('Edit Review', 'golemtheme'),
        'update_item'         => __('Update Review', 'golemtheme'),
        'search_items'        => __('Search Review', 'golemtheme'),
        'not_found'           => __('Not Found', 'golemtheme'),
        'not_found_in_trash'  => __('Not found in Trash', 'golemtheme'),
    );

    // Set other options for Custom Post Type

    $args = array(
        'label'               => __('reviews', 'golemtheme'),
        'description'         => __('review travels', 'golemtheme'),
        'labels'              => $labels,
        // Features this CPT supports in Post Editor
        'supports'            => array('title', 'editor', 'excerpt', 'author', 'thumbnail', 'comments', 'revisions', 'custom-fields',),
        // You can associate this CPT with a taxonomy or custom taxonomy. 
        'taxonomies'          => array('reviews'),
        /* A hierarchical CPT is like Pages and can have
            * Parent and child items. A non-hierarchical CPT
            * is like Posts.
            */
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'post',
        'show_in_rest' => true,

    );

    // Registering your Custom Post Type
    register_post_type('reviews', $args);
}

/* Hook into the 'init' action so that the function
    * Containing our post type registration is not 
    * unnecessarily executed. 
    */

add_action('init', 'custom_post_type', 0);


/**
 * Så här skapar man en ny post.
 */

/*
wp_insert_post(
	array(
		'post_title'   => 'Test',
		'post_content' => 'Test',
		'post_status'  => 'publish',
		'post_author'  => 1,
		'post_type'    => 'reviews',
		'meta_input'    => [
			'reviewer' => 'Namn från formulär.',
			'post_id' => ''
		]
	)
);*/

/* include a form */
function include_form()
{
    ob_start();

    include ( plugin_dir_path(__FILE__) . 'templates/template-form.php');

    return ob_get_clean();
}
add_shortcode('include_form_shortcode', 'include_form');
