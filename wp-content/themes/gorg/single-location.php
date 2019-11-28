<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package GORG
 */

get_header();
?>
<?php get_template_part( 'template-parts/breadcrumb', 'header' ); ?>

	<section>
		<div class="container">
		<div class="row">
			<div class="col-md-8">
		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', get_post_type() );

		endwhile; // End of the loop.
		?>		</div>
				<div class="col-lg-4 mt-lg-0 mt-4 pt-3 pt-lg-0">
					<div class="location-sidebar-wrapper">
						<?php get_sidebar('location');?>
					</div>
				</div>
			</div>
		</div><!-- container -->
	</section><!-- section -->

<?php
get_footer();
