<?php
/*
Plugin Name: WCM21 PLUGIN
Description: Världens bästa plugin
Author: Fete Edvin
Version: 1.0
Author URI: http://lindahlweb.se/hasbulla.html
*/

register_activation_hook(__FILE__, 'plugin_activated');
register_deactivation_hook(__FILE__, 'plugin_deactivated');

function plugin_activated() {

    // skapa custom post types
    flush_rewrite_rules();

}