<?php
/**
 * Template part for displaying results in search pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package GORG
 */

?>
<div class="col-md-3 col-sm-4 mb-lg-5 mb-4 text-center">
    <div class="icon_box icon_box_style_5">
        <div class="box_icon mb-3">
            <?php gorg_post_thumbnail(); ?>
        </div>
        <div class="icon_box_content">
            <?php the_title( sprintf( ' <h5><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h5>' ); ?>
            <p><?php the_excerpt(); ?></p>
            <a href="<?php  echo esc_url( get_permalink() );?>"
                class="btn btn-sm btn-outline-black btn-radius text-center"><?php echo __('Read More', 'gorg');?></a>
        </div>
    </div>
</div>