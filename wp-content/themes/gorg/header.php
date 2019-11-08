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
<meta content="Anil z" name="author">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="https://gmpg.org/xfn/11">
<meta name="description" content="site description here">

<!-- SITE TITLE -->
<title>Gorg</title>
<!-- Favicon Icon -->
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png">

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

<!-- START HEADER -->
<header class="header_wrap fixed-top light_skin hover_menu_style2 transparent-header">
	<div class="top-header light_skin d-none d-md-block">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-8">
                    <ul class="contact_detail list_none text-center text-md-left">
                        <li><i class="ti-mobile"></i>305 442 4500</li>
                        <li><i class="ti-location-pin"></i>383 Aragon Ave Coral Gables Miami, FL 33134</li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list_none social_icons text-center border_social rounded_social social_white  text-md-right mt-2 mt-md-0">
                        <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                        <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                        <!-- <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                        <li><a href="#"><i class="ion-social-youtube-outline"></i></a></li> -->
                        <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <nav class="navbar navbar-expand-lg"> 
            <a class="navbar-brand" href="index.html">
                <img class="logo_light" src="<?php echo get_template_directory_uri();?>/assets/images/logo_white.png" alt="logo" />
                <img class="logo_dark" src="<?php echo get_template_directory_uri();?>/assets/images/logo_dark.png" alt="logo" />
                <img class="logo_default" src="<?php echo get_template_directory_uri();?>/assets/images/logo_dark.png" alt="logo" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="ion-android-menu"></span> </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav">
                <li><a  class="nav-link active" href="index.html">Home</a></li>
                <li><a  class="nav-link" href="#">About</a></li>
                <li><a  class="nav-link" href="#">Products</a></li>
                <li><a  class="nav-link" href="services.html">Services</a></li>
                <!-- <li><a  class="nav-link" href="#">In Room Setting</a></li>
                <li><a  class="nav-link" href="#">Media Event</a></li> -->
                <li><a  class="nav-link" href="#">Locations</a></li>
                <li><a  class="nav-link" href="gallery.html">Gallery</a></li>
                <li><a  class="nav-link" href="contact.html">Contact Us</a></li>
                
            </ul>
            </div>
            <ul class="navbar-nav attr-nav align-items-center">
                    <li><a href="javascript:void(0);" class="nav-link search_trigger"><i class="ion-ios-search-strong"></i></a>
                        <div class="search-overlay">
                            <span class="close-search"><i class="ion-ios-close-empty"></i></span>
                            <div class="search_wrap">
                                <form>
                                    <input type="text" placeholder="Search" class="form-control" id="search_input">
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
