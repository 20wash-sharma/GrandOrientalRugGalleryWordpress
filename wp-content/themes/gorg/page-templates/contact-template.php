<?php 
/**
 * Template Name: Contact Template
 */
get_header();?>
<?php
    $gorg_settings = gorg_get_theme_options();
    $contact_email = $gorg_settings['contact_email'];
    $contact_phone = $gorg_settings['contact_fphone'];
    $contact_phone1 = $gorg_settings['contact_sphone'];
    $contact_fax = $gorg_settings['contact_fax'];
	$contact_address = $gorg_settings['contact_address']; 
	$contact_work = $gorg_settings['contact_work']; 
	$contact_titles = $gorg_settings['contact_title'];
	$contact_form = $gorg_settings['contact_form'];
	$map_iframe = $gorg_settings['contact_map_iframe'];
	?>
<?php get_template_part( 'template-parts/breadcrumb', 'header' ); ?>
<!-- START SECTION CONTACT -->
<section class="small_pb contact-info">
	<div class="container">
        <div class="row justify-content-center animation" data-animation="fadeInUp" data-animation-delay="0.4s">
            <div class="col-lg-3 col-md-6 text-center p-0">
                <div class="icon_box text_white bg-dark small_padding h-100">
				<?php if($contact_address): ?>
                    <div class="box_icon mb-3">	
                        <i class="fas fa-map-marker-alt"></i>
                    </div>
                    <div class="icon_box_content">
                        <h5 class="text-uppercase py-md-2">Address</h5>
                        <p><?php echo $contact_address;?></p>
					</div>
				<?php endif;?>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center p-0">
                <div class="icon_box text_white bg_blue small_padding h-100">
					<?php if($contact_work):?>
                    <div class="box_icon mb-3">	
                        <i class="far fa-clock"></i>
                    </div>
                    <div class="icon_box_content">
                        <h5 class="text-uppercase py-md-2">BUSINESS HOURS</h5>
                        <p><?php echo $contact_work;?></p>
					</div>
					<?php endif;?>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center p-0">
                <div class="icon_box text_white bg_black small_padding h-100">
                    <div class="box_icon mb-3">	
                        <i class="fa fa-phone"></i>
                    </div>
                    <div class="icon_box_content">
						<h5 class="text-uppercase py-md-2">Contact</h5>
						<?php if($contact_phone):?> <p><strong>Phone:</strong> <?php echo $contact_phone; endif;?>,</p><?php if($contact_phone1): ?><p><strong>Cell:</strong> <?php echo $contact_phone1; endif;?>,</p><?php if($contact_fax):?><p><strong>Fax:</strong>  <?php echo $contact_fax; endif;?></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center p-0">
                <div class="icon_box text_white bg-dark small_padding h-100">
				<?php if($contact_email):?>
                    <div class="box_icon mb-3">	
                        <i class="fa fa-envelope"></i>
                    </div>
                    <div class="icon_box_content">
                        <h5 class="text-uppercase py-md-2">Email</h5>
                        <p><a href="mailto:<?php echo $contact_email;?>"><?php echo $contact_email;?></a></p>
					</div>
				<?php endif;?>
                 </div>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION CONTACT -->

<!-- START SECTION CONTACT -->
<section class="p-0">
        <div class="container-fluid p-0">
            <div class="row no-gutters">
                <div class="col-lg-6 col-md-6">
                    <div class="padding_eight_all bg_default text_white">
                        <div class="heading_s3 mb-md-3 animation animated fadeInUp" data-animation="fadeInUp" data-animation-delay="0.1s" style="animation-delay: 0.1s; opacity: 1;">
                            <h2 class="mb-2"><?php if(!empty($contact_titles)): echo $contact_titles; endif;?></h2>
                        </div>
                        <div class="field_form form_style2 rounded_input animation animated fadeInUp" data-animation="fadeInUp" data-animation-delay="0.2s" style="animation-delay: 0.2s; opacity: 1;">
                        <?php echo do_shortcode($contact_form);?>  	
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="map_box">
                    <?php
                        if(!empty($map_iframe)):
                        echo $map_iframe;
                        endif;
                        ?>
                    </div>
                </div>
            </div>
        </div>
	</section>
<!-- END SECTION CONTACT -->
<?php get_footer();?>