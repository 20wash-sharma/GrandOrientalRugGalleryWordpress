<!-- START SECTION BANNER -->
<section class="banner_section p-0 full_screen">
    <div id="carouselExampleControls" class="banner_content_wrap carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
        <?php 
			$gorg_settings = gorg_get_theme_options();
			$show_slider_arrow = $gorg_settings['show_slider_arrow'];
            $show_count = $gorg_settings['slider_posts'];
            $show_static_content= $gorg_settings['show_static_content'];
			$static_content = $gorg_settings['slider_static_content'];
			$static_title = $gorg_settings['slider_static_title'];
			$counter = 1;
			$slider_args = array(
				'post_type' =>'home_slider',
				'posts_per_page' =>$show_count
			);
			$slider_query = new WP_Query($slider_args);
			if($slider_query->have_posts()):
				while($slider_query->have_posts()): $slider_query->the_post();
				$slider_text = get_field('slider_text');
				$slider_readmore_link = get_field('read_more_link');
				?>
            <div class="carousel-item <?php if($counter == 1): echo 'active'; endif;?> background_bg overlay_bg" data-img-src="<?php echo get_the_post_thumbnail_url();?>">
            <?php 
				if($show_static_content == 0):
				?>
                <div class="banner_slide_content">
                    <div class="container"><!-- STRART CONTAINER -->
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                            <div class="banner_content text_white">
                                <h2 class="animation text-uppercase" data-animation="fadeInDown" data-animation-delay="1s"><?php echo get_the_title();?></h2>
                                <p class="animation my-4" data-animation="fadeInUp" data-animation-delay="1.5s"><?php if(!empty($slider_text)): echo $slider_text; endif;?></p>
                                <?php if(!empty($slider_readmore_link)):?>
                                <a class="btn btn-outline-white animation btn-radius" target="_blank" href="<?php echo $slider_readmore_link;?>" data-animation="fadeInUp" data-animation-delay="1.8s">Read More</a>
                                <?php endif;?>
                            </div>
                        </div>
                    </div>
                </div><!-- END CONTAINER-->
                </div>
                <?php endif;?>
            </div>
            <?php $counter++; endwhile; endif; wp_reset_postdata();?>
        </div>
        <?php 
	if($show_static_content == 1):
	?>
                
	<div class="banner_static_content">
		<div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                <div class="banner_content text_white">
                    <h2 class="animation text-uppercase" data-animation="fadeInDown" data-animation-delay="1s"><?php if(!empty($static_title)): echo $static_title; endif;?></h2>
                    <p class="animation my-4" data-animation="fadeInUp" data-animation-delay="1.5s"><?php if(!empty($static_content)): echo $static_content; endif;?></p>
                </div>
            </div>
        </div>
		</div>
	</div>
	<?php endif;?>
        <?php 
		if($slider_query->have_posts() && $show_slider_arrow == 1):?>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev"><i class="ion-chevron-left"></i></a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next"><i class="ion-chevron-right"></i></a>
        <?php endif;?>
       
    </div>
</section>
<!-- END SECTION BANNER --> 