<?php 
$gorg_settings = gorg_get_theme_options();
$contact_titles = $gorg_settings['contact_title'];
$contact_form = $gorg_settings['contact_form'];
$map_iframe = $gorg_settings['contact_map_iframe'];
?>
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