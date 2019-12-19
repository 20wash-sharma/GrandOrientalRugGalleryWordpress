<?php
/**
 * Template name: Gallery Template
 */
get_header();?>
<?php get_template_part( 'template-parts/breadcrumb', 'header' ); ?>
<section id="gallery">
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="tab-style3">
                    <ul class="nav nav-tabs justify-content-center" role="tablist">
                        <?php
					global $post;
					$counter = 0;
					$count_galleries = wp_count_posts( 'gorg_gallery' )->publish; 
					$gallery_args = array(
						'post_type' => 'gorg_gallery',
						'posts_per_page'=> -1
					);
					$gallery_query = new WP_query($gallery_args);
					if($gallery_query->have_posts()):
						while($gallery_query->have_posts()):$gallery_query->the_post();
						?>
                        <li class="nav-item">
                            <a class="nav-link <?php if($counter== 0): echo 'active'; endif;?>"
                                id="<?php echo $post->post_name;?>" data-toggle="tab"
                                href="#tab<?php echo get_the_ID();?>" role="tab"
                                aria-controls="<?php echo $post->post_name;?>"
                                aria-selected="true"><?php echo get_the_title();?></a>
                        </li>
                        <?php
						$counter++; 
						endwhile;
						endif;
						wp_reset_query();
					?>
                    </ul>
                    <div class="tab-content tab-gallery mt-4 pt-2">
                        <?php
					$counter = 0;
					$gallery_args = array(
						'post_type' => 'gorg-gallery',
						'posts_per_page'=> -1
					);
					$gallery_query = new WP_query($gallery_args);
					if($gallery_query->have_posts()):
						while($gallery_query->have_posts()):$gallery_query->the_post();
						$gallery_images = get_field('add_gallery_images');
						?>
                        <div class="tab-pane fade clearfix <?php if($counter== 0): echo 'active show'; endif;?>"
                            id="tab<?php echo get_the_ID();?>" role="tabpanel"
                            aria-labelledby="<?php echo $post->post_name;?>">
                            <ul
                                class="portfolio_container clearfix work_col4 gutter_small image_gallery gallery_hover_style2">
                                <li class="grid-sizer"></li>
                                <?php 
							if($gallery_images):
							foreach($gallery_images as $gallery_image){ ?>
                                <li class="portfolio-item">
                                    <div class="image_gallery_item">
                                        <a href="<?php echo $gallery_image['url'];?>">
                                            <div class="gallery_img">
                                                <img src="<?php echo $gallery_image['sizes']['medium'];?>" alt="image">
                                            </div>
                                            <div class="gallary_hover_box">
                                                <i class="ti-zoom-in"></i>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <?php	
						}   
					endif;
						?>
                            </ul>
                        </div>
                        <?php
					  	$counter++; 
						endwhile;
						endif;
						wp_reset_query();
					?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_footer();?>