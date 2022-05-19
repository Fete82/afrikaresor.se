<?php

/**
 * Plugin Name: WCM WP Plugin
 * Plugin URI: https://example.com/plugins/the-basics/
 * Description: Handle the basics with this plugin.
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
register_activation_hook(__FILE__, 'wcm_plugin_activated');

//register_deactivation_hook(__FILE__, 'plugin_deactivated');

function wcm_plugin_activated()
{
	// skapa custom posot types
    flush_rewrite_rules();
}

// [wcm_hello]

add_shortcode('wcm_hello', 'wcm_says_hello');
function wcm_says_hello($atts = [], $content = null)
{
    //

    $content = "<h1>" . get_the_title() . "</h1>";

    $latestPosts = new WP_Query();
    return '<p>HELLO HELLO</p>';
}


/**
 * Här skapar vi en ny meny i admin.
 */
add_action('admin_menu', 'wcm_admin_menu');
function wcm_admin_menu()
{
    add_menu_page(
        'WCM Menu',
        'WCM Settings',
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
    if(isset($_POST['btn_delete'])) {
        delete_transient('wcm_github_user_repos');
    } else {
        $github = new class_GithubApi();
        $repos = $github->getRepos();
    }

    include plugin_dir_path(__FILE__) . 'admin/wcm_menu_page.php';
}

/**
 * Lägg till settings på vår nya admin sida
 */
function wcm_setttings_init()
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
add_action('admin_init', 'wcm_setttings_init');

function wcm_settings_sections_html()
{
    echo '<p>Här kommer lite inställningar</p>';
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
