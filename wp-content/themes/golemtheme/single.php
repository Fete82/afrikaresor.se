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
                the_post_thumbnail('large');?>

            </div>
            <div class="mt-5">
                <h1 class="display-3 font-weight-bold"><?php echo the_title(); ?></h1>
            </div>
            <div>
                <!-- Get description only -->
                <p class="display-6">
                    <?php the_content(); ?>
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