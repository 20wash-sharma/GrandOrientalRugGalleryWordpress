<?php get_header();
?>
<?php get_template_part( 'template-parts/breadcrumb', 'header' ); ?>
<section id="gallery">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="single-gallery">
                    <ul class="portfolio_container clearfix work_col4 gutter_small image_gallery gallery_hover_style2">
                        <li class="grid-sizer"></li>
                        <?php 
                    $gallery_images = get_field('add_gallery_images',get_the_ID());
							if($gallery_images):
							foreach($gallery_images as $gallery_image){ 
                               $img_alt_text = $gallery_image['alt'];
                               $img_title_text = $gallery_image['title'];
                                ?>
                        <li class="portfolio-item">
                            <div class="image_gallery_item">
                                <a href="<?php echo $gallery_image['url'];?>">
                                    <div class="gallery_img">
                                        <img src="<?php echo $gallery_image['sizes']['medium'];?>"
                                            alt="<?php echo ($img_alt_text) ? $img_alt_text : $img_title_text;?>">
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
            </div>
        </div>
    </div>
</section>
<?php
get_footer();