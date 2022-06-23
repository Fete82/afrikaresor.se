<?php
/*
Plugin Name: WCM21 PLUGIN
Description: Custom Post Type Plugin
Author: Fete Edvin
Version: 1.0
Author URI: http://lindahlweb.se/hasbulla.html
*/

register_activation_hook(__FILE__, 'plugin_activated');
//  register_deactivation_hook(__FILE__, 'plugin_deactivated');

function plugin_activated()
{

    // skapa custom post types
    cw_post_type_ar_travels();
    flush_rewrite_rules();
}


/*Custom Post type start*/
function cw_post_type_ar_travels()
{
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


add_shortcode('list_travels', 'art_list_travels');
function art_list_travels($atts = [], $content = null)
{
    
    $the_query = new WP_Query( array(
        'post_type' => 'ar_travels'
    ));    
    if ($the_query->have_posts()) :

        while ($the_query->have_posts()) : $the_query->the_post();

            ?>
            <div class="card-item">
                <h2 class="mt-3" id="post-<?php the_ID(); ?>"><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title(); ?>"><?php the_title(); ?></a></h2>

                <p class="date-author">Posted: <?php the_date(); ?> by <?php the_author(); ?></p>


                <?php the_post_thumbnail('medium');?>
                <?php the_excerpt(); ?>

                <p class="postmetadata">Filed in: <?php the_category(); ?> | Tagged: <?php the_tags(); ?> | <a href="<?php comments_link(); ?>" title="Leave a comment">Comments</a></p>
            </div>
        <?php

        endwhile;

    else :
        ?>
        <p>Sorry no posts matched your criteria.</p>
<?php
    endif;
    wp_reset_postdata();
}
