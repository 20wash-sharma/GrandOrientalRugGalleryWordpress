<?php
/**
 * Functions which enhance the theme by hooking into WordPress
 *
 * @package GORG
 */

/**
 * Adds custom classes to the array of body classes.
 *
 * @param array $classes Classes for the body element.
 * @return array
 */
add_filter( 'gorg_get_sidebar', 'replace_store_sidebar' );
function replace_store_sidebar($sidebar) {

	if ( is_shop() || is_product_taxonomy() || is_checkout() || is_cart() || is_account_page() ) {
		$sidebar = 'gorg-woo-shop-sidebar';
	} elseif ( is_product() ) {
		$sidebar = 'gorg-woo-single-sidebar';
	}

	return $sidebar;
}

/**
 * Display Sidebars
 */
if ( ! function_exists( 'gorg_get_sidebar' ) ) {
	/**
	 * Get Sidebar
	 *
	 * @since 1.0.1.1
	 * @param  string $sidebar_id   Sidebar Id.
	 * @return void
	 */
	function gorg_get_sidebar( $sidebar_id ) {
		if ( is_active_sidebar( $sidebar_id ) ) {
			dynamic_sidebar( $sidebar_id );
		} elseif ( current_user_can( 'edit_theme_options' ) ) {
			?>
<div class="widget gorg-no-widget-row">
    <p class='no-widget-text'>
        <a href='<?php echo esc_url( admin_url( 'widgets.php' ) ); ?>'>
            <?php esc_html_e( 'Add Widget', 'gorg' ); ?>
        </a>
    </p>
</div>
<?php
		}
	}
}

function gorg_body_classes( $classes ) {
	$gorg_settings = gorg_get_theme_options();
	$sidebar_name = $gorg_settings['gorg_shop_page_sidebar'];
	if ( wp_is_mobile() ) {
		$classes[] = 'gorg-header-break-point';
	} else {
		$classes[] = 'gorg-desktop';
	}
	// Adds a class of hfeed to non-singular pages.
	if ( ! is_singular() ) {
		$classes[] = 'hfeed';
	}
	if ( is_shop() ) {
		// Sidebar location.
	$page_layout = 'gorg-' .$sidebar_name;
	$classes[]   = esc_attr( $page_layout );
	}
	if ( is_shop() || is_product_taxonomy()) {
		$shop_grid = $gorg_settings['gorg_shop_column'];
		$classes[] = 'columns-' . $shop_grid;
		$classes[] = 'tablet-columns-3';
		$classes[] = 'mobile-columns-2';

		$classes[] = 'gorg-woo-shop-archive';
	}

	return $classes;
}
add_filter( 'body_class', 'gorg_body_classes' );

/**
 * Add a pingback url auto-discovery header for single posts, pages, or attachments.
 */
function gorg_pingback_header() {
	if ( is_singular() && pings_open() ) {
		printf( '<link rel="pingback" href="%s">', esc_url( get_bloginfo( 'pingback_url' ) ) );
	}
}
add_action( 'wp_head', 'gorg_pingback_header' );


/**
 * Site Sidebar
 */
if ( ! function_exists( 'gorg_page_layout' ) ) {

	/**
	 * Site Sidebar
	 *
	 * Default 'right sidebar' for overall site.
	 */
	function gorg_page_layout() {

		if ( is_singular() ) {

			// If post meta value is empty,
			// Then get the POST_TYPE sidebar.
			// $layout = astra_get_option_meta( 'site-sidebar-layout', '', true );

			if ( empty( $layout ) ) {

				$post_type = get_post_type();
				$gorg_settings = gorg_get_theme_options();
				$single_product_sidebar = $gorg_settings['gorg_single_product_page_sidebar'];

				if ( 'post' === $post_type || 'page' === $post_type || 'product' === $post_type ) {
					$layout = $single_product_sidebar;
				}

				if ( 'default' == $layout || empty( $layout ) ) {

					// Get the global sidebar value.
					// NOTE: Here not used `true` in the below function call.
					$layout = $gorg_settings['gorg_single_product_page_sidebar'];
				}
			}
		} 

		return apply_filters( 'gorg_page_layout', $layout );
	}
}

function gorg_polylang_langswitcher() {
	$output = '';
	if ( function_exists( 'pll_the_languages' ) ) {
		$args   = [
			'show_flags' => 1,
			'show_names' => 1,
			'display_names_as' =>'slug',
			'echo'       => 0,
		];
		$output = '<ul class="polylang_langswitcher">'.pll_the_languages( $args ). '</ul>';
	}
	return $output;
}
add_shortcode( 'polylang_langswitcher', 'gorg_polylang_langswitcher' );

/*Custom String Translation */
add_action('init', function() {
	pll_register_string('service-areas', 'Service Areas');
	pll_register_string('breadcrumb-home', 'Home');
  });