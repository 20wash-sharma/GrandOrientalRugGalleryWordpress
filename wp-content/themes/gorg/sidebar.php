<?php
/**
 * The sidebar containing the main widget area
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package GORG
 */

$sidebar = apply_filters( 'gorg_get_sidebar', 'sidebar-1' );
?>

<div class="col-lg-3 col-md-4">
	<div class="sidebar">
		<?php if ( is_active_sidebar( $sidebar ) ) : ?>
			<?php dynamic_sidebar( $sidebar ); ?>
		<?php endif; ?>
	</div><!-- .sidebar -->
</div>
