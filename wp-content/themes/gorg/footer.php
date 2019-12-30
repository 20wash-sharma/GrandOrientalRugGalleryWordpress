<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package GORG
 */

?>
<?php
    $gorg_settings = gorg_get_theme_options();
    $footer_email = $gorg_settings['contact_email'];
    $footer_phone = $gorg_settings['contact_fphone'];
    $footer_phone1 = $gorg_settings['contact_sphone'];
    $footer_fax = $gorg_settings['contact_fax'];
    $footer_address = $gorg_settings['contact_address']; 
    $footer_logo = $gorg_settings['footer_logo'];
    $twitter = $gorg_settings['gorg_social_twitter'];
    $linkedin = $gorg_settings['gorg_social_linkedin'];
    $google = $gorg_settings['gorg_social_googleplus'];
    $instagram = $gorg_settings['gorg_social_instagram'];
    $yelp = $gorg_settings['gorg_social_yelp'];
    $youtube = $gorg_settings['gorg_social_youtube'];
    $facebook = $gorg_settings['gorg_social_facebook'];
    $footer_text = $gorg_settings['footer_text'];
    $footer_copyright = $gorg_settings['footer_copyright'];
    $footer_google_review_img = $gorg_settings['footer_google_review_img'];
    $footer_google_review_link = $gorg_settings['google_review_link'];
    ?>
<!-- START FOOTER SECTION -->
<footer class="background_bg">
    <div class="top_footer text_white">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                    <div class="footer_logo">
                        <?php if(!empty($footer_logo)):?>
                        <a href="<?php echo home_url('/');?>"><img alt="logo" src="<?php echo $footer_logo; ?>"></a>
                        <?php endif;?>
                    </div>
                    <p><?php if(!empty($footer_text)): echo __($footer_text,'gorg'); endif;?></p>

                    <h6><?php echo pll__('Follow Us', 'gorg');?></h6>
                    <ul class="list_none footer_social">
                        <?php if($facebook): ?>
                        <li><a target="_blank" href="<?php echo esc_url($facebook);?>"><i
                                    class="ion-social-facebook"></i></a></li>
                        <?php endif;?>
                        <?php if($twitter): ?>
                        <li><a target="_blank" href="<?php echo esc_url($twitter);?>"><i
                                    class="ion-social-twitter"></i></a></li>
                        <?php endif;?>
                        <?php if($google): ?>
                        <li><a target="_blank" href="<?php echo esc_url($google);?>"><i
                                    class="ion-social-googleplus"></i></a></li>
                        <?php endif;?>
                        <?php if($yelp): ?>
                        <li><a target="_blank" href="<?php echo esc_url($yelp);?>"><i class="fab fa-yelp"></i></a></li>
                        <?php endif;?>
                        <?php if($youtube): ?>
                        <li><a target="_blank" href="<?php echo esc_url($youtube);?>"><i
                                    class="ion-social-youtube-outline"></i></a></li>
                        <?php endif;?>
                        <?php if($instagram): ?>
                        <li><a target="_blank" href="<?php echo esc_url($instagram);?>"><i
                                    class="ion-social-instagram-outline"></i></a></li>
                        <?php endif;?>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                    <?php if ( is_active_sidebar( 'footer-1' ) ) : ?>
                    <?php dynamic_sidebar( 'footer-1' ); ?>
                    <?php endif; ?>
                </div>
                <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                    <h6 class="widget_title"><?php echo pll__('Contact Us','gorg');?></h6>
                    <ul class="contact_info contact_info_light list_none">
                        <?php if($footer_address): ?>
                        <li>
                            <span class="ti-location-pin"></span>
                            <address><?php echo $footer_address;?></address>
                        </li>
                        <?php endif;?>
                        <?php if($footer_email):?>
                        <li>
                            <span class="ti-email"></span>
                            <a href="mailto:<?php echo $footer_email;?>"><?php echo $footer_email;?></a>
                        </li>
                        <?php endif;?>
                        <li>
                            <span class="ti-mobile"></span>
                            <address><?php if($footer_phone):?><?php echo pll__('Phone:', 'gorg');?>
                                <?php echo $footer_phone; endif;?><?php if($footer_phone1): ?>,<br /><?php echo pll__('Cell:', 'gorg');?><?php echo $footer_phone1; endif;?><?php if($footer_fax):?>,<br />
                                <?php echo pll__('Fax:', 'gorg');?> <?php echo $footer_fax; endif;?></address>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="facebook-widget">
                        <?php if ( is_active_sidebar( 'footer-2' ) ) : ?>
                        <?php dynamic_sidebar( 'footer-2' ); ?>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom_footer text_white border_top_tran">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-4">
                    <p class="copyright m-md-0 text-center text-md-left">
                        <?php if(!empty($footer_copyright)): echo $footer_copyright; endif;?></p>
                </div>
                <div class="col-md-2">
                    <?php if($footer_google_review_img): ?>
                    <p class="google-review m-md-0 text-center"><a target="_blank"
                            href="<?php if($footer_google_review_link): echo esc_url($footer_google_review_link); endif;?>"><img
                                src="<?php echo $footer_google_review_img;?>" alt="Google Review Image" /></a></p>
                    <?php endif;?>
                </div>
                <div class="col-md-6">
                    <?php if ( is_active_sidebar( 'footer-3' ) ) : ?>
                    <?php dynamic_sidebar( 'footer-3' ); ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- END FOOTER SECTION -->
<a href="#" class="scrollup" style="display: none;"><i class="ion-ios-arrow-up"></i></a>
<?php wp_footer(); ?>
</body>

</html>