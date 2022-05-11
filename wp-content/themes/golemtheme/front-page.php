<!doctype html>
<html lang="en">
<?php
get_header();

?>
<div class="p-5 text-center" id="header-box">
    <!-- Header/title -->
    <h1 class="display-1 mb-4 mt-5 text-light">
        <?php
        $site_name = get_bloginfo('name');

        echo $site_name;
        ?>
    </h1>
    <!-- Header/tagline -->
    <h2 class="display-3 mb-5 mt-3 text-light">
        <?php
        $bloginfo = get_bloginfo('description');
        echo $bloginfo;
        ?>
    </h2>
    <a class="btn btn-success btn-lg mt-5 px-5 py-3" href="" role="button">Hitta din drömresa</a>
</div>
<div class="p-4 text-center">
    <button type="button" class="btn btn-success btn-lg m-4 px-5">Västafrika</button>
    <button type="button" class="btn btn-success btn-lg m-4 px-5">Centralafrika</button>
    <button type="button" class="btn btn-success btn-lg m-4 px-5">Östafrika</button>
    <button type="button" class="btn btn-success btn-lg m-4 px-5">Nordafrika</button>
</div>
<div class="p-5 " id="search-box">
    <div class="input-group m-auto w-50">
        <input type="search" class="form-control rounded" placeholder="Sök resa" aria-label="Search" aria-describedby="search-addon" />
        <button type="button" class="btn btn-outline-success">Sök</button>
    </div>
</div>
<article class="content px-3 py-5 p-md-5">
    <div class="cards-box my-3">
        <?php
        if (have_posts()) {
            while (have_posts()) {
                the_post();
        ?>
                <div class="card-item">

                    <div class="card-item-image">
                        <?php preg_match("#<img(.+?)src=(.+?)\/>#", $post->post_content, $matches);
                        /** $matches is an array, $matches[0] holds the img code */
                        echo $matches[0]; ?>
                    </div>
                    <div><h2><?php echo the_title(); ?></h2></div>
                    <div>
                        <h5 class="font-weight-bold mt-2"><?php
                                                    the_excerpt();
                                                    ?></h5>
                    </div>
                    <div>
                        <a class="my-3" href="/../<?php echo the_title(); ?>">Mer info</a>
                    </div>
                </div>
        <?php
            }
        }
        ?>
    </div>
    </div>
</article>
<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="<?php echo get_theme_file_uri('/assets/images/africa-4.jpg') ?>" height="800px" width="auto" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<?php echo get_theme_file_uri('/assets/images/africa-5.jpg') ?>" height="800px" width="auto" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<?php echo get_theme_file_uri('/assets/images/africa-6.jpg') ?>" height="800px" width="auto" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<?php echo get_theme_file_uri('/assets/images/africa-7.jpg') ?>" height="800px" width="auto" class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<div class="newsletter-box py-5">
    <div class="pt-2">
        <h2>Prenumerera på vårt nyhetsbrev!</h2>
    </div>
    <div>
        <h5>Leveransmetod:</h5>
    </div>
    <div class="radios my-3">
        <div class="form-check">
            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
            <label class="form-check-label" for="flexRadioDefault1">
                Brevduva
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
            <label class="form-check-label" for="flexRadioDefault2">
                Röksignal
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
            <label class="form-check-label" for="flexRadioDefault1">
                Löpare
            </label>
        </div>
    </div>


    <div class="input-group m-auto w-50">
        <input type="search" class="form-control rounded" placeholder="Din adress" aria-label="Search" aria-describedby="search-addon" />
        <button type="button" class="btn btn-outline-success">Prenumerera</button>
    </div>
</div>

</div>
<?php
get_footer();
?>

</html>