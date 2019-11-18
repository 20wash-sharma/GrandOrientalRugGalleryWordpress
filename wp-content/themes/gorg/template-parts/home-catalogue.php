<?php 
$gorg_settings = gorg_get_theme_options();
$catalogue_title = $gorg_settings['catalogue_title'];
$catalogue_limit = $gorg_settings['catalogue_count'];
?>
<section class="small_pb">
        <div class="container">
        <div class="row">
                <div class="col-md-12">
                    <div class="heading_s1 heading_uppercase text-center">
                        <h2><?php echo __(($catalogue_title) ? $catalogue_title : 'Product Catalogue','gorg');?></h2>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center animation animated fadeInUp" data-animation="fadeInUp" data-animation-delay="0.2s" style="animation-delay: 0.2s; opacity: 1;">
                <?php 
                $product_args = array(
                    'taxonomy' => 'product_cat',
                    'orderby' => 'menu_order',
                    'field' => 'name',
                    'number' =>$catalogue_limit,
                    'order' => 'ASC',
                    'hide_empty' => false
                );
            
                $all_product_cats = get_categories($product_args);
                foreach ($all_product_cats as $product_cat){
                    $cat_thumb_id = get_woocommerce_term_meta( $product_cat->term_id, 'thumbnail_id', true );
                    $shop_catalog_img = wp_get_attachment_image_src( $cat_thumb_id, 'shop_catalog' );
                    $term_link = get_term_link( $product_cat, 'product_cat' );
                    $term_name = $product_cat->name;
                    $term_description = $product_cat->description;
                    ?>
                    <div class="col-md-4 col-sm-6 mb-lg-5 mb-4 text-center">
                    <div class="icon_box icon_box_style_5">
                        <div class="box_icon mb-3">	
                        <?php if($shop_catalog_img){ ?>
                            <img src="<?php echo $shop_catalog_img[0]; ?>" alt="<?php echo $product_cat->name; ?>" />

                      <?php  } 
                      else { ?>
                            <img src="https://via.placeholder.com/300x300?text=Upload+the+Image" alt="<?php echo $product_cat->name; ?>" />
                     <?php }
                      ?>
                        </div>
                        <div class="icon_box_content">
                            <h5><?php if($term_name): echo __($term_name,'gorg'); endif;?></h5>
                            <p><?php if($term_description): echo __($term_description,'gorg'); endif;?></p>
                            <a href="<?php echo esc_url($term_link); ?>" class="btn btn-sm btn-outline-black btn-radius"><?php echo __('Read more','gorg');?></a>
                        </div>
                    </div>
                </div>
               <?php  }
               wp_reset_query();
                ?>
            </div>
        </div>
    </section>