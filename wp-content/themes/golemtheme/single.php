<?php
get_header();
if (have_posts()) {
    while (have_posts()) {
        the_post(); ?>
        <div class="single-container">
            <div>
                <h1><?php echo the_title(); ?></h1>
            </div>
            <div class="single-image"><?php preg_match("#<img(.+?)src=(.+?)\/>#", $post->post_content, $matches);
                                        /** $matches is an array, $matches[0] holds the img code */
                                        echo $matches[0]; ?>
            </div>
            <div>
                <!-- Get description -->
                <?php echo wp_strip_all_tags( get_the_content() );?>
    <?php     }
}
get_footer();
    ?>