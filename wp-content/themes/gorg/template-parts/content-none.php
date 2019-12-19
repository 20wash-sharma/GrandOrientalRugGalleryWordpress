<?php
/**
 * Template part for displaying a message that posts cannot be found
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package GORG
 */

?>
<div class="col-md-12">
	<div class="row justify-content-center">
	<div class="no-results not-found justify-content-center">
			<header class="page-header text-center">
				<h1 class="page-title"><?php esc_html_e( 'Nothing Found', 'gorg' ); ?></h1>
			</header><!-- .page-header -->

			<div class="page-content text-center">
				<?php
				if ( is_home() && current_user_can( 'publish_posts' ) ) :

					printf(
						'<p>' . wp_kses(
							/* translators: 1: link to WP admin new post page. */
							__( 'Ready to publish your first post? <a href="%1$s">Get started here</a>.', 'gorg' ),
							array(
								'a' => array(
									'href' => array(),
								),
							)
						) . '</p>',
						esc_url( admin_url( 'post-new.php' ) )
					);

				elseif ( is_search() ) :
					?>

					<p><?php esc_html_e( 'Sorry, but nothing matched your search terms. Please try again with some different keywords.', 'gorg' ); ?></p>
					<div class="search_form pt-3 pb-4">
						<form action="<?php echo home_url('/');?>" class="position-relative">
								<input name="s" id="text" data-email="required" type="text" placeholder="Search..." class="form-control">
								<button type="submit" class="btn search_icon"><i class="ion-ios-search-strong"></i></button>
							</form>
						</div>
					<?php

				else :
					?>

					<p><?php esc_html_e( 'It seems we can&rsquo;t find what you&rsquo;re looking for. Perhaps searching can help.', 'gorg' ); ?></p>
					<div class="search_form pt-3 pb-4">
						<form action="<?php echo home_url('/');?>" class="position-relative">
								<input name="s" id="text" data-email="required" type="text" placeholder="Search..." class="form-control">
								<button type="submit" class="btn search_icon"><i class="ion-ios-search-strong"></i></button>
							</form>
						</div>
					<?php

				endif;
				?>
				</div>
			</div>
	</div>
</div>
