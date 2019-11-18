<!-- START SECTION TESTIMONIAL -->
<?php 
$gorg_settings = gorg_get_theme_options();
$testimonial_title = $gorg_settings['testimonial_title'];
$testimonial_limit = $gorg_settings['testimonial_limit'];
?>
<section class="small_pt">	
	<div class="container">
    	<div class="row">
        	<div class="col-md-12 animation" data-animation="fadeInUp" data-animation-delay="0.1s">
            	<div class="heading_s1 text-center">
                	<h2><?php echo __(($testimonial_title) ? $testimonial_title : 'Clients Testimonials','gorg');?></h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="cleafix small_divider"></div>
            </div>
        </div>
        <div class="row">
        	<div class="col-md-12 animation" data-animation="fadeInUp" data-animation-delay="0.1s">
            	<div class="testimonial_slider testimonial_style2 carousel_slide3 owl-carousel owl-theme" data-center="true" data-margin="30" data-loop="true" data-autoplay="true">
                    <?php 
                    $testimonial_args = array(
                        'post_type' =>'gorg_testimonial',
                        'posts_per_page' =>$testimonial_limit
                    );
                    $testimonial_query = new WP_Query($testimonial_args);
                    if($testimonial_query):
                    while($testimonial_query->have_posts()): $testimonial_query->the_post(); 
                    $testimonial_content = get_field('testimonial_content');
                    $designation = get_field('designation');
                    ?>
                    <div class="item">
                    	<div class="testimonial_box">
                        	<div class="testimonial_img">
                            <?php 
                            if(has_post_thumbnail()){ ?>
                                <img class="rounded-circle m-auto" src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php echo get_the_title();?>"/>
                           <?php }
                            else{ ?>
                                <img class="rounded-circle m-auto" src="<?php echo get_template_directory_uri();?>/assets/images/user.jpg" alt="<?php echo get_the_title();?>"/>
                           <?php }
                            ?>
                            </div>
                            <div class="testi_meta">
                                <h6><?php the_title();?></h6>
                                <span><?php if($designation): echo $designation;  endif;?></span>
                            	<p><?php if($testimonial_content): echo __($testimonial_content,'gorg'); endif;?></p>
                            </div>
                        </div>
                    </div>
                    <?php
                    endwhile;
                    endif;
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION TESTIMONIAL -->