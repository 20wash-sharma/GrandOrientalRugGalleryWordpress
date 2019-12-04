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
	if ( is_shop() || is_product_taxonomy() ) {
		$shop_grid = $gorg_settings['gorg_shop_column'];
		$classes[] = 'columns-' . $shop_grid;
		$classes[] = 'tablet-columns-' . $shop_grid;
		$classes[] = 'mobile-columns-' . $shop_grid;

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



