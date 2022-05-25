<?php
get_header();
?>
<div class="single-container">
    <?php
    if (have_posts()) {
        while (have_posts()) {
            the_post(); ?>


            <div class="single-image">
                <?php
                the_post_thumbnail('large'); ?>

            </div>

            <div>
                <h1 class="display-3 font-weight-bold bg-success text-light p-2"><?php echo the_title(); ?></h1>
            </div>
            <div>
                <div class="single-content">
                    <p class="display-5">
                        <?php the_content(); ?>
                    </p>
                    <div>
                        <button type="button" class="my-5 btn btn-success btn-lg">Boka resa nu</button>
                    </div>
                    <!--
                    <div class="comments-field" id="comments">

                        <H3>See what others say about this destination:</H2>
                            <?php //comments_template('/comments.php'); ?>
                            <?php //comment_form(); ?>
                    </div>
        -->
                    <div>
                        <?php
                        $args = array('post_type' => 'reviews', 'posts_per_page' => 10);
                        $the_query = new WP_Query($args);
                        ?>
                        <?php if ($the_query->have_posts()) : ?>
                            <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>
                                <h2><?php the_title(); ?></h2>
                                <div class="entry-content">
                                    <?php the_content(); ?>
                                </div>
                            <?php endwhile;
                            wp_reset_postdata(); ?>
                        <?php else :  ?>
                            <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
                        <?php endif; ?>
                    </div>
                </div>
            </div>


</div>

<?php     }
    }
    get_footer();
?>