<?php
/**
 * Template Name: Carpet Cleaning Template
 */
get_header();?>
<?php get_template_part( 'template-parts/breadcrumb', 'header' ); ?>
<!-- START SECTION SERVICES -->
<?php 
$gorg_settings = gorg_get_theme_options();
$cleaning_process = get_field('cleaning_process_steps');
$cta_title		= $gorg_settings['cta_title'];
$cta_content	= $gorg_settings['cta_content'];
$cta_button_text	= $gorg_settings['cta_btn_text'];
$cta_button_link	= $gorg_settings['cta_btn_link'];
$cta_bg             = $gorg_settings['cta_bg_img'];
$res_section_title 	= get_field('section_title');
$res_section_content 	= get_field('section_content');
$vid_bg_img 		= get_field('video_background_image');
$youtube_link		= get_field('youtube_video_link');
?>
<section class="small_pb">
        <div class="container">
            <div class="row justify-content-center animation" data-animation="fadeInUp" data-animation-delay="0.2s">
                <div class="col-md-7">
				<?php 
					while(have_posts()):the_post();?>
                    <div class="services-content-wrapper">
					<?php the_content();?>
					</div>
					<?php endwhile;?>
                </div>
                <div class="col-md-5 animation" data-animation="fadeInUp" data-animation-delay="0.1s"
                    style="animation-delay: 0.1s; opacity: 1;">
                    <div class="light_gray_bg small_padding pt-4 pt-md-4 radius_box_10">
						<?php if($cleaning_process): echo __($cleaning_process); endif;?>
                    </div>
                    <div class="blue_overlay_bg mt-4 cta_section_mini radius_box_10 text_white position-relative background_bg"
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
        </div>
    </section>
    <!-- END SECTION SERVICES -->

    <!-- START SECTION SERVICE SHOWCASE -->
    <section class="small_pb overflow_hide gray_bg">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 animation" data-animation="fadeInUp" data-animation-delay="0.2s">
                    <div class="overlay_bg about_video_img mb-4 mb-lg-0">
                        <img src="<?php if($vid_bg_img): echo $vid_bg_img['url']; endif;?>" alt="<?php if($res_section_title): echo __($res_section_title); endif;?>" />
                        <a href="<?php if($youtube_link): echo $youtube_link; endif;?>"
                            class="video_popup video_play"><img class="bounce_img" src="<?php echo get_template_directory_uri();?>/assets/images/play-icon.png"
                                alt="play-icon"></a>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 animation" data-animation="fadeInUp" data-animation-delay="0.4s">
                    <div class="heading_s1">
                        <h3><?php if($res_section_title): echo __($res_section_title); endif;?></h3>
                    </div>
                    <div class="list_style_4 color_blue mb-3">
                       <?php if($res_section_content): echo __($res_section_content); endif;?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END SECTION SERVICE SHOWCASE -->
<?php get_footer();?>