<?php 
/**
 * Template Name:No Sidebar 
 * Template post type: location
 */
get_header();
?>
<?php get_template_part( 'template-parts/breadcrumb', 'header' ); ?>

	<section>
		<div class="container">
		<div class="row">
			<div class="col-md-12">
		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', get_post_type() );

		endwhile; // End of the loop.
		?>		</div>
			</div>
		</div><!-- container -->
	</section><!-- section -->

<?php
get_footer();
