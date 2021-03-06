<div class="wrap">
    <h1><?php echo esc_html(get_admin_page_title()); ?></h1>
    <form action="" method="post">
        <button name="btn_delete" type="submit">Delete Repos</button>
    </form>
    <form action="options.php" method="post">
        <?php
        // output security fields for the registered setting "wcm_menu"
        settings_fields('wcm_menu');
        // output setting sections and their fields
        // (sections are registered for "wcm_menu", each field is registered to a specific section)
        do_settings_sections('wcm_menu');
        // output save settings button
        submit_button(__('Save Settings', 'textdomain'));
        ?>
    </form>
    

    <?php

    if (!empty($repos)) {
        //var_dump($repos);
        echo '<ul>';
        foreach ($repos as $repo) {
            echo '<li><a href="' . $repo['url'] . '" target="_blank">' . $repo['name'] . '</a></li>';
        }
        echo '</ul>';
    }
    ?>
</div>