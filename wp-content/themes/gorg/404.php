<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package GORG
 */

get_header();
?>
<!-- START SECTION BANNER -->
<section class="background_bg breadcrumb_section overlay_bg2 page-title-light"
    data-img-src="<?php echo get_template_directory_uri();?>/assets/images/service_bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="page-title">
                    <h1>404</h1>
                </div>
                <nav aria-label="breadcrumb">
                    <?php gorg_breadcrumbs(); ?>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION BANNER -->
<!-- START 404 SECTION -->
<?php
    $gorg_settings = gorg_get_theme_options(); 
    $title_404 = $gorg_settings['error_404_title'];
    $description_404 = $gorg_settings['error_404_description'];
?>
<section>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center animation" data-animation="fadeInUp" data-animation-delay="0.2s">
                <div class="error_txt"><?php echo pll__('404', 'gorg');?></div>
                <h5><?php echo pll__(($title_404) ? $title_404 : 'Oops! That page can&rsquo;t be found.','gorg');?></h5>
                <p><?php echo pll__(($description_404) ? $description_404 : 'The page you were looking for could not be found. It might have been removed, renamed, or did not exist in the first place.','gorg');?>
                </p>
                <div class="search_form pt-3 pb-4">
                    <form action="<?php echo home_url('/');?>" class="position-relative">
                        <input name="s" id="text" data-email="required" type="text"
                            placeholder="<?php echo pll__('Search');?>" class="form-control">
                        <button type="submit" class="btn search_icon"><i class="ion-ios-search-strong"></i></button>
                    </form>
                </div>
                <a href="<?php echo home_url('/');?>" class="btn btn-outline-black"><span class="ti-arrow-left"></span>
                    <?php echo pll__('Back To Home', 'gorg');?></a>
            </div>
        </div>
    </div>
</section>
<!-- END 404 SECTION -->

<?php
get_footer();