<?php
if (!function_exists('gorg_blog_post_format')) {
    function gorg_blog_post_format($post_format, $post_id)
    {
        global $post;

        if ($post_format == 'video') {
            $content = trim(get_post_field('post_content', $post->ID));
            $ori_url = explode("\n", esc_html($content));
            $url = $ori_url[0];
            $url_type = explode(" ", $url);
            $url_type = explode("[", $url_type[0]);

            if (isset($url_type[1])) {
                $url_type_shortcode = $url_type[1];
            }
            $new_content = get_shortcode_regex();
            if (isset($url_type[1])) {
                if (preg_match_all('/' . $new_content . '/s', $post->post_content, $matches)
                    && array_key_exists(2, $matches)
                    && in_array($url_type_shortcode, $matches[2])
                ) {
                    echo do_shortcode($matches[0][0]);
                }
            } else {
                echo wp_oembed_get(gorg_the_featured_video($content));
            }
        } elseif ($post_format == 'audio') {
            $html = "";
            $content = trim(get_post_field('post_content', $post_id));
            $ori_url = explode("\n", esc_html($content));
            $new_content = preg_match_all('/\[[^\]]*\]/', $content, $matches);
            if ($new_content) {
                echo do_shortcode($matches[0][0]);
            } elseif (preg_match('#^<(script|iframe|embed|object)#i', $content)) {
                $regex = '/https?\:\/\/[^\" ]+/i';
                preg_match_all($regex, $ori_url[0], $matches);
                $urls = ($matches[0]);
                $html .= ('<iframe src="' . $urls[0] . '" width="100%" height="240" frameborder="no" scrolling="no"></iframe>');
            } elseif (0 === strpos($content, 'https://')) {
                $embed_url = wp_oembed_get(esc_url($ori_url[0]));
                $html .= ($embed_url);
            }
            echo esc_html($html);
        } elseif ($post_format == 'gallery') {
            $image_url = get_post_gallery_images($post_id);
            $post_thumbnail_id = get_post_thumbnail_id($post_id);
            $attachment = get_post($post_thumbnail_id);
            if ($image_url) {
                ?>

<div class="post-gallery">

	<div class="post-format-gallery">
		<?php foreach ($image_url as $key => $images) { ?>
		<div class="slider-item" style="background-image: url('<?php echo esc_url($images); ?>');"
			alt="<?php echo esc_attr($attachment->post_excerpt); ?>">
		</div>
		<?php } ?>
	</div>

</div>
<?php } else {
                if (has_post_thumbnail() && is_single()) {
                    the_post_thumbnail();
                }

            }


        } else {
            if (has_post_thumbnail() && is_single() && !is_page_template('page-templates/template-home.php')) {
                echo '<div class="image">';
                echo '<a  href="' . esc_url(get_the_permalink()) . '">';
                the_post_thumbnail();
                echo '</a></div>';
            } else {
                the_post_thumbnail();
            }

        }

    }

}

if (!function_exists('gorg_the_featured_video')) {
    function gorg_the_featured_video($content)
    {
        $ori_url = explode("\n", $content);
        $url = $ori_url[0];
        $w = get_option('embed_size_w');
        if (!is_single()) {
            $url = str_replace('448', $w, $url);
            return $url;
        }

        if (0 === strpos($url, 'https://') || 0 == strpos($url, 'http://')) {
            echo esc_url(wp_oembed_get($url));
            $content = trim(str_replace($url, '', $content));
        } elseif (preg_match('#^<(script|iframe|embed|object)#i', $url)) {
            $h = get_option('embed_size_h');
            echo esc_url($url);
            if (!empty($h)) {

                if ($w === $h) $h = ceil($w * 0.75);
                $url = preg_replace(
                    array('#height="[0-9]+?"#i', '#height=[0-9]+?#i'),
                    array(sprintf('height="%d"', $h), sprintf('height=%d', $h)),
                    $url
                );
                echo esc_url($url);
            }

            $content = trim(str_replace($url, '', $content));

        }
    }
}

if (!function_exists('gorg_strip_url_content')) {

    function gorg_strip_url_content($post_id, $count)
    {
        $content_post = get_post($post_id);
        $excerpt = $content_post->post_content;

        $excerpt = strip_shortcodes($excerpt);
        $excerpt = strip_tags($excerpt);


        $excerpt = preg_replace('/\s\s+/', ' ', $excerpt);
        $excerpt = preg_replace('#\[[^\]]+\]#', ' ', $excerpt);
        $strip = explode(' ', $excerpt);
        foreach ($strip as $key => $single) {
            if (!filter_var($single, FILTER_VALIDATE_URL) === false) {
                unset($strip[$key]);
            }
        }
        $excerpt = implode(' ', $strip);

        $excerpt = substr($excerpt, 0, $count);
        if (strlen($excerpt) >= $count) {
            $excerpt = substr($excerpt, 0, strripos($excerpt, ' '));
            $excerpt = $excerpt . '...';
        }
        return $excerpt;
    }
}

if (!function_exists('gorg_banner_callback_choice')):
    function gorg_banner_callback_choice($control)
    {
        $banner_setting = $control->manager->get_setting('gorg_theme_options[banner_picker]')->value();

        $control_id = $control->id;

        if ((($control_id == 'gorg_theme_options[slider_posts]') || $control_id == 'gorg_theme_options[slider_txt]' || $control_id == 'gorg_theme_options[slider_link]' || $control_id == 'gorg_theme_options[slider_text2]' || $control_id == 'gorg_theme_options[slider_link2]') && $banner_setting == 'banner-slider') {
            return true;
        }

        if (($control_id == 'gorg_theme_options[single_link1]' || $control_id == 'gorg_theme_options[single_link2]' || $control_id == 'gorg_theme_options[single_btn1]' || $control_id == 'gorg_theme_options[single_btn2]' || $control_id == 'gorg_theme_options[slider_image_title]' || $control_id == 'gorg_theme_options[slider_image_description]' || $control_id == 'gorg_theme_options[upload_banner_image]') && $banner_setting == 'banner-image') {
            return true;
        }
        return false;
    }
endif;

if (!function_exists('gorg_slider_default_query')) {
    function gorg_slider_default_query()
    {
        $customizer_options = gorg_get_theme_options();
        $no_of_post = $customizer_options['slider_posts'];
        $no_of_post = $no_of_post ? $no_of_post : 3;

        $slider_arg = array(
            'post_type' => 'slider',
            'posts_per_page' => $no_of_post,
            'post_status' => 'publish',
            'orderby' => 'menu_order date',
            'order' => 'desc',
        );
        $slider_query = new WP_Query($slider_arg);
        if ($slider_query->have_posts()) {
            ?>
<div class="banner-wrapper">
	<div class="row">
		<div class="city-ds-banner-slider">
			<?php
                        while ($slider_query->have_posts()) : $slider_query->the_post();
                            $post_thumbnail_id = get_post_thumbnail_id(get_the_ID());
                            $image = wp_get_attachment_image_src($post_thumbnail_id, 'full');
                            $description = get_post_meta(get_the_ID(), 'code_themes_essentials_slider_bshort', true);
                            $btnlink = get_post_meta(get_the_ID(), 'code_themes_essentials_slider_link', true);
                            $btntxt = get_post_meta(get_the_ID(), 'code_themes_essentials_slider_btntxt', true);
                            if (!empty($image)) {
                                $image_style = "style='background-image:url(" . esc_url($image[0]) . ")'";
                            } else {
                                $image_style = "";
                            }
                            ?>

			<div class="slider-item">
				<div class="city-ds-slider" <?php echo wp_kses_post($image_style) ?>>
					<div class="container">
						<div class="banner-text-wrap">
							<h2><?php the_title() ?></h2>
							<?php
                                            if($description){
                                                echo '<p>'.wp_kses_post($description).'</p>';
                                            }
                                            else{
                                                the_content();
                                            }
                                            if ($btnlink && $btntxt) {
                                                echo '<a href="' . esc_url($btnlink) . '" class="btn btn-default">' . esc_html($btntxt) . '</a>';
                                            }
                                            elseif(!$btnlink && $btntxt){
                                                echo '<a href="' . esc_url(get_the_permalink()) . '" class="btn btn-default">' . esc_html($btntxt) . '</a>';
                                            }
                                            else{
                                                echo '<a href="' . esc_url(get_the_permalink()) . '" class="btn btn-default">' . esc_html__('Read More','gorg') . '</a>';
                                            }
                                            ?>
						</div>
					</div>
				</div>
			</div>

			<?php endwhile;
                        wp_reset_postdata(); ?>
		</div>
	</div>
</div>
<?php

        }
    }
}

if (!function_exists('gorg_social_icon')) {
    function gorg_social_icon()
    {
        $customizer_options = gorg_get_theme_options();
        $social = $customizer_options['gorg_social_show'];
        $twitter = $customizer_options['gorg_social_twitter'];
        $linkedin = $customizer_options['gorg_social_linkedin'];
        $google = $customizer_options['gorg_social_googleplus'];
        $instagram = $customizer_options['gorg_social_instagram'];
        $youtube = $customizer_options['gorg_social_youtube'];
        $facebook = $customizer_options['gorg_social_facebook'];

        if ($social == 1) {
            ?>
<ul class="list-inline social-links">
	<?php
				if($facebook)
				echo '<li class="list-inline-item"><a href="'.esc_url($facebook).'" class="fab fa-facebook-square"></a></li>';
                if($twitter)
                    echo '<li class="list-inline-item"><a href="'.esc_url($twitter).'" class="fab fa-twitter-square"></a></li>';
				if($linkedin)
                    echo '<li class="list-inline-item"><a href="'.esc_url($linkedin).'" class="fab fa-linkedin"></a></li>';
                if($instagram)
                    echo '<li class="list-inline-item"><a href="'.esc_url($instagram).'" class="fab fa-instagram"></a></li>';
                if($youtube)
                    echo '<li class="list-inline-item"><a href="'.esc_url($youtube).'" class="fab fa-youtube-square"></a></li>';
                if($google)
                    echo '<li class="list-inline-item"><a href="'.esc_url($google).'" class="fab fa-google-plus-square"></a></li>';
                ?>
</ul>

<?php }
    }
}

if (!function_exists('get_woo_args')) {

    function get_woo_args($data, $cat)
    {
        $args = '';
        if ($data == 'sale') {
            $args = array(
                'post_type' => 'product',
                'posts_per_page' => 32,
                'meta_query' => array(
                    'relation' => 'OR',
                    array( // Simple products type
                        'key' => '_sale_price',
                        'value' => 0,
                        'compare' => '>',
                        'type' => 'numeric'
                    ),
                    array( // Variable products type
                        'key' => '_min_variation_sale_price',
                        'value' => 0,
                        'compare' => '>',
                        'type' => 'numeric'
                    )
                )
            );
        } elseif ($data == 'feature') {
            $args = array(
                'post_type' => 'product',
                'posts_per_page' => 32,
                'tax_query' => array(
                    array(
                        'taxonomy' => 'product_visibility',
                        'field' => 'name',
                        'terms' => 'featured',
                    ),
                ),
            );
        } elseif ($data == 'total-sales') {
            $args = array(
                'post_type' => 'product',
                'meta_key' => 'total_sales',
                'orderby' => 'meta_value_num',
                'posts_per_page' => -1,
            );

        } else {
            $args = array(
                'post_type' => 'product',
                'posts_per_page' => 32
            );
        }
        if ($cat) {
            $args['product_cat'] = $cat;
        }
        return $args;
    }
}

if (!function_exists('gorg_archive_product')) {

    function gorg_archive_product($count = '')
    {
        global $product;
        $data = wp_get_attachment_url(get_post_thumbnail_id(get_the_ID()));
        $product_id = get_the_ID();
        $price = get_post_meta($product_id, '_price', true);
        $_product = wc_get_product($product_id);
        if (in_array('yith-woocommerce-wishlist/init.php', apply_filters('active_plugins', get_option('active_plugins')))):
            $wishid = yit_get_product_id($_product);
            $default_wishlists = is_user_logged_in() ? YITH_WCWL()->get_wishlists(array('is_default' => true)) : false;
            $exists = YITH_WCWL()->is_product_in_wishlist($wishid, false);
        endif;
        ?>
<div class="product-slider">
	<div class="product-wrap">
		<div class="product-top product">
			<?php
                    echo wp_kses_post(getDiscountPercent($product_id));
                    ?>
			<img class="primary-image" src="<?php echo esc_url($data); ?>" alt="">
			<div class="product-icons">
				<?php
                        if (in_array('yith-woocommerce-wishlist/init.php', apply_filters('active_plugins', get_option('active_plugins')))):?>
				<a class="csr-wishlist fa fa-heart-o add_to_wishlist <?php echo($exists ? esc_attr('wish_added') : '') ?>"
					rel="nofollow" data-product-id="<?php echo esc_attr($product_id); ?>" data-toggle="tooltip"
					title="<?php echo($exists ? esc_html__('Already Added To Wishlist','gorg') : esc_html__('Add To Wishlist','gorg') ); ?>"
					href="<?php echo esc_url(get_the_permalink() . '?add_to_wishlist=' . $product_id); ?>"></a>

				<a class="fa fa-heart-o add_to_wishlist wish_added wishlist_location_<?php echo esc_attr($product_id) ?> hide"
					rel="nofollow" data-product-id="<?php echo esc_attr($product_id); ?>" data-toggle="tooltip"
					title="<?php echo esc_html__('Already Added To Wishlist','gorg');?>"
					href="<?php echo esc_url(get_the_permalink() . '?add_to_wishlist=' . $product_id); ?>"></a>
				<?php
                        endif;
                        if (in_array('yith-woocommerce-compare/init.php', apply_filters('active_plugins', get_option('active_plugins')))):?>
				<a href="<?php echo esc_url(site_url('?action=yith-woocompare-view-table&amp;iframe=yes')); ?>"
					class="compare button fa fa-exchange" data-product_id="<?php echo esc_attr($product_id); ?>"
					rel="nofollow" style="zoom: 1;" data-toggle="tooltip"
					title="<?php echo esc_html__('Compare','gorg');?>"></a>
				<?php endif; ?>
				<a class="quick-view fa fa-search modal-popup" data-toggle="tooltip"
					title="<?php echo esc_html__('Quick View','gorg'); ?>" href="#"
					data-id="<?php echo esc_attr($product_id); ?>"></a>
				<a rel="nofollow" href="<?php echo esc_url(site_url('/cart') . '?add-to-cart=' . $product_id); ?>"
					data-quantity="1" data-product_id="<?php echo esc_attr($product_id); ?>" data-product_sku=""
					class="button product_type_simple add-to-cart fa fa-shopping-basket add_to_cart_button ajax_add_to_cart"
					data-toggle="tooltip" title="<?php echo esc_attr__("Add to Cart","gorg") ?>"></a>
			</div>
		</div>
		<div class="product-footer">
			<div class="product-desc">
				<h3><a href="<?php echo get_the_permalink(); ?>"><?php the_title(); ?></a></h3>
				<div class="price">
					<span><?php
                                                if ($price) {
                                                    woocommerce_template_loop_price();
                                                } ?></span>
				</div>
			</div>
		</div>
	</div>
</div>

<?php

        if ($count % 3 == 0) {
            echo '</div>';
            echo '<div class="row">';
        }

    }
}