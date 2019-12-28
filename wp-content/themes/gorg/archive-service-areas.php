<?php get_header();?>
<!-- START SECTION BANNER -->
<section class="background_bg breadcrumb_section overlay_bg2 page-title-light" data-img-src="<?php echo get_template_directory_uri();?>/assets/images/service_bg.jpg">
	<div class="container">
    	<div class="row">
        	<div class="col-md-12 text-center">
            	<div class="page-title">
				<h1><?php post_type_archive_title(); ?></h1>
                </div>
                <nav aria-label="breadcrumb">
					<?php gorg_breadcrumbs(); ?>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION BANNER --> 
<section class="small_pb">
	<div class="container">
    	<div class="row animation animated fadeInUp" data-animation="fadeInUp" data-animation-delay="0.2s" style="animation-delay: 0.2s; opacity: 1;">
            <?php 
            $areas_args = array(
                'post_type' => 'service-areas',
                'posts_per_page' =>-1
            );
            $areas_query = new WP_query($areas_args);
            if($areas_query->have_posts()):
                while($areas_query->have_posts()): $areas_query->the_post(); 
                $areas_desc = wp_strip_all_tags(get_the_content());
                    $limit_areas_desc = $areas_desc;
                    if(strlen($areas_desc) > 150){
                            $limit_areas_desc = substr($areas_desc, 0,150).'...';
                    }
                    else {
                        $limit_areas_desc;
                    }
                ?>
                 <div class="col-md-4 col-sm-6 mb-lg-5 mb-3 text-center">
            	<div class="icon_box icon_box_style_1">
                    <div class="box_icon mb-3">	
					<a href="<?php echo get_the_permalink();?>"><i class="fas fa-map-marker-alt"></i></a>
                    </div>
                    <div class="icon_box_content">
                        <h5><a href="<?php echo get_the_permalink();?>"><?php echo get_the_title();?></a></h5>
                        <p><?php echo $limit_areas_desc;?></p>
                        <a href="<?php echo get_the_permalink();?>" class="btn btn-sm btn-outline-black btn-radius"><?php echo pll__('Read More','gorg');?></a>
                    </div>
                </div>
            </div>
            <?php
            endwhile;
            endif;
            ?>
           </div>
    </div>
</section>
<?php get_footer();?>