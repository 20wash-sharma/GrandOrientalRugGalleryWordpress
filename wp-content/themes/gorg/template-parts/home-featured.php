<!-- START SECTION PRODUCT -->
<?php 
$gorg_settings = gorg_get_theme_options();
$featured_title = $gorg_settings['featured_title'];
$featured_limit = $gorg_settings['featured_limit'];
    global $woocommerce;
    // The tax query
        $product_args = array(
            'post_type'   =>  'product',
            // 'stock'       =>  1,
            'showposts'   =>  $featured_limit,
            'orderby'     =>  'date',
            'order'       =>  'DESC',
            'tax_query' => array(
              array(
                  'taxonomy' => 'product_visibility',
                  'field'    => 'name',
                  'terms'    => 'featured',
              ),
          ),
        );
        $product_query = new WP_Query($product_args);
        if($product_query->have_posts()):
?>
<section class="small_pt small_pb gray_bg">
    <div class="container">
    	<div class="row">
        	<div class="col-md-12">
            	<div class="heading_s1 heading_uppercase">
                	<h2><?php echo __(($featured_title) ? $featured_title : 'Featured Product','gorg');?></h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="carousel_slide4 owl-carousel owl-theme nav_top" data-margin="30" data-nav="true" data-dots="false">
                    <?php
                        
                            while($product_query->have_posts()):$product_query->the_post(); ?>
                        <div class="item">
                            <div class="shop-item">
                                <div class="product text-center">
                                    <div class="product_img">
                                    <?php 
                                        if(has_post_thumbnail()) {      
                                        $product_image = wp_get_attachment_image_src(get_post_thumbnail_id(), 'large');
                                        ?>
                                        <a href="<?php the_permalink(); ?>"><img class="home-featured-image" src="<?php echo $product_image[0];?>"></a>
                                        <?php }
                                        else { ?>
                                        <a href="<?php the_permalink(); ?>"><img class="home-featured-image" src="https://via.placeholder.com/400x600?text=Upload+the+Image"></a>
                                    <?php
                                     }
                                        ?>
                                    </div>
                                    <div class="product_info">
                                        <div class="product_title">
                                            <h5><a href="<?php the_permalink(); ?>"><?php the_title();?></a></h5>
                                        </div>
                                    </div> 
                                    <?php do_action( 'woocommerce_after_shop_loop_item' );?>  
                                </div>
                            </div>
                        </div>
                       <?php
                        endwhile;
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; wp_reset_query();?>
<!-- END SECTION PRODUCT --> 