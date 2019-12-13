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
<section class="background_bg breadcrumb_section overlay_bg2 page-title-light" data-img-src="<?php echo get_template_directory_uri();?>/assets/images/service_bg.jpg">
	<div class="container">
    	<div class="row">
        	<div class="col-md-12 text-center">
            	<div class="page-title">
            		<h1>404</h1>
                </div>
                <nav aria-label="breadcrumb">
					<?php roshan_breadcrumbs(); ?>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION BANNER --> 
<!-- START 404 SECTION -->
<section>
	<div class="container">
    	<div class="row justify-content-center">
        	<div class="col-md-6 text-center animation" data-animation="fadeInUp" data-animation-delay="0.2s">
            	<div class="error_txt"><?php echo __('404', 'gorg');?></div>
                <h5><?php esc_html_e( 'Oops! That page can&rsquo;t be found.', 'gorg' ); ?></h5> 
                <p><?php echo __('The page you are looking for was moved, removed,<br>renamed or might never existed.','gorg');?></p>
                <div class="search_form pt-3 pb-4">
				<form action="<?php echo home_url('/');?>" method="post" class="position-relative">
                        <input name="s" id="text" data-email="required" type="text" placeholder="Search..." class="form-control">
                        <button type="submit" class="btn search_icon"><i class="ion-ios-search-strong"></i></button>
                    </form>
                </div>
                <a href="<?php echo home_url('/');?>" class="btn btn-outline-black"><span class="ti-arrow-left"></span><?php echo __('Back To Home', 'gorg');?></a>
            </div>
        </div>
    </div>
</section>
<!-- END 404 SECTION -->

<?php
get_footer();
