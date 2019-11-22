<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package GORG
 */

get_header();
?>
<?php get_template_part( 'template-parts/breadcrumb', 'header' ); ?>
<section class="page_wrapper small_pb">
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<?php
				while ( have_posts() ) :
					the_post();
					get_template_part( 'template-parts/content', 'page' );
				endwhile; // End of the loop.
				?>
			</div>
		</div><!-- row -->
	</div><!-- container -->
</section>
<?php
get_footer();
