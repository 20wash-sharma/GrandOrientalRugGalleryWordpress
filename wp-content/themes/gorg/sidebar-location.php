<?php
/**
 * The sidebar containing the main widget area
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package GORG
 */

if ( ! is_active_sidebar( 'sidebar-1' ) ) {
	return;
}
?>

<aside id="location-sidebar" class="widget-area">
	<?php dynamic_sidebar( 'sidebar-location' ); ?>
</aside><!-- #secondary -->
