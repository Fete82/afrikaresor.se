<!DOCTYPE html>
<html lang="en">
<?php
get_header();

?>


<body>
    <div class="p-5 text-center" id="header-box">
        <!-- Header/title -->
        <h1 class="mb-4 mt-5 text-light">
            <?php
            $site_name = get_bloginfo('name');

            echo $site_name;
            ?>
        </h1>
        <!-- Header/tagline -->
        <h4 class="mb-5 mt-3 text-light">
            <?php
            $bloginfo = get_bloginfo('description');
            echo $bloginfo;
            ?>
        </h4>
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
    <div class="cards-container p-5 text-center">
        <div class="card" style="width: 30vw;">
            <img class="card-img-top" src="/../wp-content\themes\golemtheme\assets\images\africa-1.jpg" width="auto" height="250px" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Chad</h5>
                <p class="card-text">Chad är ett extremt fattigt land där man kan köpa billig sand och gummi. Ett oerhört trevligt folk väntar, i vars sällskap ni kan vila och ta det lugnt på semestern!</p>
                <a href="#" class="btn btn-success px-5">Mer info</a>
            </div>
        </div>
        <div class="card" style="width: 30vw;">
            <img class="card-img-top" src="/../wp-content\themes\golemtheme\assets\images\africa-2.jpg" width="auto" height="250px" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Etiopien</h5>
                <p class="card-text">I Etiopien kan man varken bada eller sola. Det är alldeles för varmt. Men naturen är väldigt vacker, och husen är makalöst fina. Mat ingår ej.</p>
                <a href="#" class="btn btn-success px-5 mt-4">Mer info</a>
            </div>
        </div>
        <div class="card" style="width: 30vw;">
            <img class="card-img-top" src="/../wp-content\themes\golemtheme\assets\images\africa-3.jpg" width="auto" height="250px" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Algeriet</h5>
                <p class="card-text">I Algeriets öken kan du minnas ditt namn, men det finns inte mycket annat att göra. Här kan ni vila ut er ordentligt och frossa på torra växter eller skorpioner.</p>
                <a href="#" class="btn btn-success px-5">Mer info</a>
            </div>
        </div>
        <!-- End of cards -->
    </div>
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/../wp-content\themes\golemtheme\assets\images\africa-4.jpg" class="d-block w-100" alt="africa4">
            </div>
            <div class="carousel-item">
                <img src="/../wp-content\themes\golemtheme\assets\images\africa-5.jpg" class="d-block w-100" alt="africa5">
            </div>
            <div class="carousel-item">
                <img src="/../wp-content\themes\golemtheme\assets\images\africa-6.jpg" class="d-block w-100" alt="africa6">
            </div>
        </div>
    </div>
    </div>
</body>
<?php
get_footer();
?>
</html>