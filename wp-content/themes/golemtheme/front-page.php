<!doctype html>
<html lang="en">
<?php
get_header();
?>
<article class="content px-3 py-5 p-md-5">
    <div class="cards-box">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="..." alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>

        <?php
        if (have_posts()) {
            while (have_posts()) {
                the_post();
        ?><h2><?php the_title(); ?></h2><?php
                                        the_content();
                                    }
                                }

                                        ?>

    </div>
</article>
<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="<?php echo get_theme_file_uri('/assets/images/africa-1.jpg')?>" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<?php echo get_theme_file_uri('/assets/images/africa-2.jpg')?>" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<?php echo get_theme_file_uri('/assets/images/africa-3.jpg')?>" class="d-block w-100" alt="...">
        </div>
    </div>
</div>
<?php
get_footer();
?>

</html>