<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package GORG
 */

?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<!-- Meta -->
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="Roshan Banstola" name="author">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="https://gmpg.org/xfn/11">
<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<!-- LOADER -->
<div class="preloader">
    <div class="loader_grid">
      <div class="loader_box loader_box1"></div>
      <div class="loader_box loader_box2"></div>
      <div class="loader_box loader_box3"></div>
      <div class="loader_box loader_box4"></div>
      <div class="loader_box loader_box5"></div>
      <div class="loader_box loader_box6"></div>
      <div class="loader_box loader_box7"></div>
      <div class="loader_box loader_box8"></div>
      <div class="loader_box loader_box9"></div>
    </div>
</div>
<!-- END LOADER --> 
<?php 
$gorg_settings = gorg_get_theme_options();
$white_logo = $gorg_settings['white_logo'];
$default_custom_logo_id = get_theme_mod( 'custom_logo' );
$white_logo_id = get_theme_mod( 'white_logo' );
$default_logo = wp_get_attachment_image_src( $default_custom_logo_id , 'full' );
$default_logo_url = $default_logo[0];
//phone number
$gorg_phone_number = $gorg_settings['contact_fphone'];
$gorg_address = $gorg_settings['contact_address'];
//social link
$gorg_facebook = $gorg_settings['gorg_social_facebook'];
$gorg_twitter = $gorg_settings['gorg_social_twitter'];
$gorg_googleplus = $gorg_settings['gorg_social_googleplus'];
$gorg_linkedin = $gorg_settings['gorg_social_linkedin'];
$gorg_instagram = $gorg_settings['gorg_social_instagram'];
$gorg_yelp = $gorg_settings['gorg_social_yelp'];
$gorg_youtube = $gorg_settings['gorg_social_youtube'];
?>
<!-- START HEADER -->
<header class="header_wrap fixed-top light_skin hover_menu_style2 transparent-header">
	<div class="top-header light_skin d-none d-md-block">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-8">
                    <ul class="contact_detail list_none text-center text-md-left">
                    <?php if($gorg_phone_number):?>
                        <li><i class="ti-mobile"></i><?php echo $gorg_phone_number;?></li>
                    <?php endif;?>
                    <?php if($gorg_address):?>
                        <li><i class="ti-location-pin"></i><?php echo wp_strip_all_tags($gorg_address);?></li>
                    <?php endif;?>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list_none social_icons text-center border_social rounded_social social_white  text-md-right mt-2 mt-md-0">
                        <?php if($gorg_facebook):?>
                        <li><a target="_blank" href="<?php echo $gorg_facebook;?>"><i class="ion-social-facebook"></i></a></li>
                        <?php endif;?>
                        <?php if($gorg_twitter):?>
                        <li><a target="_blank" href="<?php echo $gorg_twitter;?>"><i class="ion-social-twitter"></i></a></li>
                        <?php endif;?>
                        <?php if($gorg_googleplus): ?>
                        <li><a target="_blank" href="<?php echo esc_url($gorg_googleplus);?>"><i class="ion-social-googleplus"></i></a></li>
                        <?php endif;?>
                        <?php if($gorg_instagram):?>
                        <li><a target="_blank" href="<?php echo $gorg_instagram;?>"><i class="ion-social-instagram-outline"></i></a></li>
                        <?php endif;?>
                        <?php if($gorg_linkedin):?>
                        <li><a target="_blank" href="<?php echo $gorg_linkedin;?>"><i class="ion-social-linkedin"></i></a></li>
                        <?php endif;?>
                        <?php if($gorg_yelp): ?>
                        <li><a target="_blank" href="<?php echo esc_url($gorg_yelp);?>"><i class="fab fa-yelp"></i></a></li>
                        <?php endif;?>
                        <?php if($gorg_youtube):?>
                        <li><a target="_blank" href="<?php echo $gorg_youtube;?>"><i class="ion-social-youtube"></i></a></li>
                        <?php endif;?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <nav class="navbar navbar-expand-lg"> 
            <a class="navbar-brand" href="<?php echo home_url('/');?>">
                <img class="logo_light" src="<?php if($white_logo): echo $white_logo; endif;?>" alt="Gorg logo" />
                <img class="logo_dark" src="<?php if($default_logo_url): echo $default_logo_url; endif;?>" alt="Gorg logo" />
                <img class="logo_default" src="<?php if($default_logo_url): echo $default_logo_url; endif;?>" alt="Gorg logo" />
            </a>
            <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="ion-android-menu"></span> </button> -->
            <!-- <div class=" navbar-collapse justify-content-end" id="navbarSupportedContent"> -->
            <?php ubermenu( 'main' , array( 'theme_location' => 'menu-1' ) ); ?>
            <?php 
                // wp_nav_menu(array(
                //     'theme_location'    => 'primary',
                //     'menu'              =>'Main Menu',
                //     'container'         =>'',
                //     'items_wrap'        => '<ul class="navbar-nav">%3$s</ul>',
                //     'fallback_cb'     => 'WP_Bootstrap_Navwalker::fallback',
                //     'walker'          => new WP_Bootstrap_Navwalker(),
                // )); ?>
            <!-- </div> -->
            <ul class="navbar-nav attr-nav align-items-center">
                    <li><a href="javascript:void(0);" class="nav-link search_trigger"><i class="ion-ios-search-strong"></i></a>
                        <div class="search-overlay">
                            <span class="close-search"><i class="ion-ios-close-empty"></i></span>
                            <div class="search_wrap">
                                <form action="<?php echo home_url('/');?>">
                                    <input type="text" placeholder="Search" name="s" class="form-control" id="search_input">
                                    <button type="submit" class="search_icon"><i class="ion-ios-search-strong"></i></button>
                            	</form>
                            </div>
                        </div>
                    </li>
                </ul>
        </nav>
    </div>
</header>
<!-- END HEADER --> 
