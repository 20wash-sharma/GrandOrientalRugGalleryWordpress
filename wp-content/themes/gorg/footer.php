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
<!-- START FOOTER SECTION --> 
<footer class="background_bg">
	<div class="top_footer text_white">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 animation" data-animation="fadeInUp" data-animation-delay="0.2s">
                	<div class="footer_logo">
                    	<a href="index.html"><img alt="logo" src="<?php echo get_template_directory_uri();?>/assets/images/logo_white.png"></a>
                    </div>
                    <p>Phasellus blandit massa enim. elit id varius nunc. Lorem ipsum dolor sit amet, consectetur industry.</p>
                   
                    <h6>Follow Us</h6>
                    <ul class="list_none footer_social">
                    	<li><a href="#"><i class="ion-social-facebook"></i></a></li>
                        <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                        <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                        <li><a href="#"><i class="ion-social-youtube-outline"></i></a></li>
                        <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 mb-4 mb-lg-0 animation" data-animation="fadeInUp" data-animation-delay="0.3s">
                	<h6 class="widget_title">USEFUL LINKS</h6>
                    <ul class="list_none widget_links">
                    	<li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Features</a></li>
                        <li><a href="#">Available Sizes</a></li>
                        <li><a href="#">Carpet pads & Rug Pad</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 animation" data-animation="fadeInUp" data-animation-delay="0.4s">
                    <h6 class="widget_title">Contact Us</h6>
                    <ul class="contact_info contact_info_light list_none">
                        <li>
                            <span class="ti-location-pin"></span>
                            <address>Grand Oriental Rug Gallery,<br/>
                                383 Aragon Ave,<br/>
                                Coral Gables Miami, FL 33134</address>
                        </li>
                        <li>
                            <span class="ti-email"></span>
                            <a href="mailto:info@sitename.com">info@grandorientalruggallery.com</a>
                        </li>
                        <li>
                            <span class="ti-mobile"></span>
                            <address>Phone: 305 442 4500,<br/> Cell: 305 490 1936,<br/> Fax: 305 442 4502</address>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-4 col-md-6 animation" data-animation="fadeInUp" data-animation-delay="0.5s">
                    <div class="facebook-widget">
                        <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FGORG383%2F&tabs=timeline&width=340&height=250&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="340" height="250" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom_footer text_white border_top_tran">
    	<div class="container">
        	<div class="row align-items-center">
            	<div class="col-md-6">
                	<p class="copyright m-md-0 text-center text-md-left">&copy; 2019 All Rights Reserved by GORG.</p>
                </div>
                <div class="col-md-6">
                	<ul class="list_none footer_link text-center text-md-right">
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms & Conditions</a></li>
                    	<li><a href="#">Site Map</a></li>
                    </ul>
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
