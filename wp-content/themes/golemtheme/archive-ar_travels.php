<?php
query_posts(array(
    'post_type' => 'ar_travels'
)); ?>
<?php
while (have_posts()) : the_post(); ?>
    <h2><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h2>
    <p><?php the_excerpt(); ?></p>
<?php endwhile; ?>