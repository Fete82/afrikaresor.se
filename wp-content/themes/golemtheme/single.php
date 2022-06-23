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
                    <div class="comments-field" id="comments">

                        <H3>See what others say about this destination:</H2>
                            <?php comments_template('/comments.php'); ?>
                            <?php comment_form(); ?>
                    </div>
                </div>
            </div>
            
</div>

<?php     }
    }
    get_footer();
?>