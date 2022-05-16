<html>
<div class="content px-3 py-5 p-md-5">
    <div class="cards-box my-3">
        <?php
        query_posts(array(
            'post_type' => 'ar_travels'
        )); ?>
        <?php
        while (have_posts()) : the_post(); ?>
            <div class="card-item">
                <div class="card-item-image">
                    <!-- image here -->
                    <?php the_post_thumbnail('thumbnail') ?>
                </div>
                <div class="card-item-info">
                    <div>
                        <h2><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h2>
                    </div>
                    <div>
                        <h5 class="font-weight-bold mt-3"> <?php the_excerpt(); ?></h5>
                    </div>
                </div>
            </div>
        <?php endwhile; ?>
    </div>
</div>

</html>