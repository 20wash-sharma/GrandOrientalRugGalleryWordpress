<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package GORG
 */

get_header();
?>
<!-- START SECTION BANNER -->
<section class="background_bg breadcrumb_section overlay_bg2 page-title-light"
    data-img-src="<?php echo get_template_directory_uri();?>/assets/images/service_bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="page-title">
                    <h1> <?php
					/* translators: %s: search query. */
					printf( esc_html__( pll__('Search Results for: %s'), 'gorg' ), '<span>' . get_search_query() . '</span>' );
					?></h1>
                </div>
                <nav aria-label="breadcrumb">
                    <?php gorg_breadcrumbs(); ?>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION BANNER -->
<section class="small_pb overflow_hide">
    <div class="container">
        <div class="row">
            <?php if ( have_posts() ) : ?>
            <?php
			/* Start the Loop */
			while ( have_posts() ) :
				the_post();

				/**
				 * Run the loop for the search to output the results.
				 * If you want to overload this in a child theme then include a file
				 * called content-search.php and that will be used instead.
				 */
				get_template_part( 'template-parts/content', 'search' );

			endwhile;
            global $numpages;
            if ( isset( $numpages ) ):
                ob_start();
                echo "<div class='gorg-pagination'>";
                the_posts_pagination(
                    array(
                        'prev_text' => __(pll__('<i class="fas fa-long-arrow-alt-left"></i> Previous Page'), 'gorg'),
                        'next_text' => __(pll__('Next Page <i class="fas fa-long-arrow-alt-right"></i>'), 'gorg'),
                        'taxonomy'     => 'category',
                        'in_same_term' => true,
                    )
                );
                echo '</div>';
                $output = ob_get_clean();
                echo $output;
            endif;
		else :

			get_template_part( 'template-parts/content', 'none' );

		endif;
		?>
        </div>
    </div>
</section>
<?php
get_footer();