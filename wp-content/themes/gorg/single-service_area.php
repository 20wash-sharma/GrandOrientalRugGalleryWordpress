<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package GORG
 */

get_header();
?>
<?php get_template_part( 'template-parts/breadcrumb', 'header' ); ?>
<?php 
$gorg_settings = gorg_get_theme_options();
$cta_title		= $gorg_settings['cta_title'];
$cta_content	= $gorg_settings['cta_content'];
$cta_button_text	= $gorg_settings['cta_btn_text'];
$cta_button_link	= $gorg_settings['cta_btn_link'];
$cta_bg             = $gorg_settings['cta_bg_img'];
?>

	<section>
		<div class="container">
		<div class="row">
			<div class="col-md-8">
		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', get_post_type() );

		endwhile; // End of the loop.
		?>		</div>
				<div class="col-lg-4 mt-lg-0 mt-4 pt-3 pt-lg-0">
					<div class="location-sidebar-wrapper">
						<?php get_sidebar('service_area');?>
					</div>
                    <div class="blue_overlay_bg mt-5 cta_section_mini radius_box_10 text_white position-relative background_bg"
                        data-img-src="<?php echo ($cta_bg) ? $cta_bg : get_template_directory_uri().'/assets/images/cta_img.jpg';?>"
                        style="background: url(<?php echo ($cta_bg) ? $cta_bg : get_template_directory_uri().'/assets/images/cta_img.jpg';?>) center center / cover;">
                        <div class="position-relative">
                            <div class="heading_s3 mb-md-3 heading_light">
                                <h3 class="font-weight-light"><?php if($cta_title): echo __($cta_title); endif;?></h3>
                            </div>
                            <p><?php if($cta_content): echo __($cta_content); endif;?></p>
                            <a href="<?php echo $cta_button_link;?>" class="btn btn-outline-white btn-radius"><?php if($cta_button_text): echo __($cta_button_text); endif;?></a>
                        </div>
                    </div>
				</div>
			</div>
		</div><!-- container -->
	</section><!-- section -->

<?php
get_footer();

