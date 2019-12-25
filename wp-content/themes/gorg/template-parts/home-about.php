<?php 
    $gorg_settings = gorg_get_theme_options();
    $welcome_title = $gorg_settings['welcome_title'];
    $welcome_page_id = $gorg_settings['select_about_page'];
    $welcome_text_limit = $gorg_settings['welcome_text_limit'];
    $get_about_object = get_post($welcome_page_id);
    $get_about_content = $get_about_object->post_content;
    if($welcome_page_id):
    ?>
<!-- START SECTION ABOUT US -->
<section class="overflow_hide gray_bg">
    <div class="container">
        <div class="row align-items-center">
        	<div class="col-md-6 col-sm-12 animation" data-animation="fadeInLeft" data-animation-delay="0.1s">
            	<div class="mb-4 mb-lg-0 ">
                <?php 
                    if(has_post_thumbnail($welcome_page_id)){ ?>
                    <img src="<?php echo get_the_post_thumbnail_url($welcome_page_id);?>" alt="<?php echo get_the_title($welcome_page_id);?>"/>
                  <?php
                    }
                    else { ?>
                        <img src="https://via.placeholder.com/500X400" alt="<?php echo get_the_title($welcome_page_id);?>"/>
                   <?php }
                ?>
                </div>
            </div>
            <div class="col-md-6 col-sm-12 animation" data-animation="fadeInRight" data-animation-delay="0.2s">
                <div class="heading_s3 mb-md-3"> 
                  <span class="sub_title"><?php echo get_the_title($welcome_page_id);?></span>
                  <h2><?php if($welcome_title): echo __($welcome_title,'gorg'); endif;?></h2>
                </div>
                <?php $content_length = strlen($get_about_content); 
                if($welcome_text_limit ==''){
                    $welcome_text_limit = 600;
                }
                 if($content_length > (int)$welcome_text_limit){
                     echo '<p>'.substr($get_about_content, 0, $welcome_text_limit).'...'.'</p>';
                 }
                 else{
                     echo '<p>'.$get_about_content.'</p>';
                 }
                ?>
                <a href="<?php echo get_the_permalink($welcome_page_id);?>" class="btn btn-outline-black btn-radius"><?php echo Pll__('Read More', 'gorg');?></a>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION ABOUT US --> 
    <?php endif;?>