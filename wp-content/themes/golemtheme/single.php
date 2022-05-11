<?php
get_header();
?>
<div class="single-container">
    <?php
    if (have_posts()) {
        while (have_posts()) {
            the_post(); ?>


            <div class="single-image">
                <?php preg_match("#<img(.+?)src=(.+?)\/>#", $post->post_content, $matches);
                /** $matches is an array, $matches[0] holds the img code */
                echo $matches[0]; ?>
            </div>
            <div class="mt-5">
                <h1 class="display-3 font-weight-bold"><?php echo the_title(); ?></h1>
            </div>
            <div>
                <!-- Get description only -->
                <p class="display-6">
                    <?php echo wp_strip_all_tags(get_the_content()); ?>
                </p>
            </div>
            <div>
                <button type="button" class="my-5 btn btn-success btn-lg">Boka resa nu</button>
            </div>
</div>

<?php     }
    }
    get_footer();
?>