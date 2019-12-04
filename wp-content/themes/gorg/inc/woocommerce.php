<?php
/**
 * WooCommerce Compatibility File
 *
 * @link https://woocommerce.com/
 *
 * @package GORG
 */

/**
 * WooCommerce setup function.
 *
 * @link https://docs.woocommerce.com/document/third-party-custom-theme-compatibility/
 * @link https://github.com/woocommerce/woocommerce/wiki/Enabling-product-gallery-features-(zoom,-swipe,-lightbox)-in-3.0.0
 *
 * @return void
 */
function gorg_woocommerce_setup() {
	add_theme_support( 'woocommerce' );
	add_theme_support( 'wc-product-gallery-zoom' );
	add_theme_support( 'wc-product-gallery-lightbox' );
	add_theme_support( 'wc-product-gallery-slider' );
}
add_action( 'after_setup_theme', 'gorg_woocommerce_setup' );

/**
 * WooCommerce specific scripts & stylesheets.
 *
 * @return void
 */
function gorg_woocommerce_scripts() {
	// wp_enqueue_style( 'gorg-woocommerce-style', get_template_directory_uri() . '/woocommerce.css' );
	wp_enqueue_style('dashicons');
	$font_path   = WC()->plugin_url() . '/assets/fonts/';
	$inline_font = '@font-face {
			font-family: "star";
			src: url("' . $font_path . 'star.eot");
			src: url("' . $font_path . 'star.eot?#iefix") format("embedded-opentype"),
				url("' . $font_path . 'star.woff") format("woff"),
				url("' . $font_path . 'star.ttf") format("truetype"),
				url("' . $font_path . 'star.svg#star") format("svg");
			font-weight: normal;
			font-style: normal;
		}';

	wp_add_inline_style( 'gorg-woocommerce-style', $inline_font );
}
add_action( 'wp_enqueue_scripts', 'gorg_woocommerce_scripts' );

/**
 * Disable the default WooCommerce stylesheet.
 *
 * Removing the default WooCommerce stylesheet and enqueing your own will
 * protect you during WooCommerce core updates.
 *
 * @link https://docs.woocommerce.com/document/disable-the-default-stylesheet/
 */
add_filter( 'woocommerce_enqueue_styles', '__return_empty_array' );

/**
 * Add 'woocommerce-active' class to the body tag.
 *
 * @param  array $classes CSS classes applied to the body tag.
 * @return array $classes modified to include 'woocommerce-active' class.
 */
function gorg_woocommerce_active_body_class( $classes ) {
	$classes[] = 'woocommerce-active';

	return $classes;
}
add_filter( 'body_class', 'gorg_woocommerce_active_body_class' );

/**
 * Products per page.
 *
 * @return integer number of products.
 */
function gorg_woocommerce_products_per_page() {
	$gorg_settings = gorg_get_theme_options();
	$products_per_page = $gorg_settings['products_per_page'];
	return $products_per_page;
}
add_filter( 'loop_shop_per_page', 'gorg_woocommerce_products_per_page' );

/**
 * Product gallery thumnbail columns.
 *
 * @return integer number of columns.
 */
function gorg_woocommerce_thumbnail_columns() {
	return 4;
}
add_filter( 'woocommerce_product_thumbnails_columns', 'gorg_woocommerce_thumbnail_columns' );

/**
 * Default loop columns on product archives.
 *
 * @return integer products per row.
 */
function gorg_woocommerce_loop_columns() {
	$gorg_settings = gorg_get_theme_options();
	$shop_grid = $gorg_settings['gorg_shop_column'];
	return $shop_grid;
}
add_filter( 'loop_shop_columns', 'gorg_woocommerce_loop_columns' );

/**
 * Related Products Args.
 *
 * @param array $args related products args.
 * @return array $args related products args.
 */
function gorg_woocommerce_related_products_args( $args ) {
	$gorg_settings = gorg_get_theme_options();
	$shop_grid = $gorg_settings['gorg_shop_column'];
	$defaults = array(
		'posts_per_page' =>$shop_grid ,
		'columns'        => $shop_grid,
	);

	$args = wp_parse_args( $defaults, $args );

	return $args;
}
add_filter( 'woocommerce_output_related_products_args', 'gorg_woocommerce_related_products_args' );

if ( ! function_exists( 'gorg_woocommerce_product_columns_wrapper' ) ) {
	/**
	 * Product columns wrapper.
	 *
	 * @return  void
	 */
	function gorg_woocommerce_product_columns_wrapper() {
		$columns = gorg_woocommerce_loop_columns();
		echo '<div class="columns-' . absint( $columns ) . '">';
	}
}
add_action( 'woocommerce_before_shop_loop', 'gorg_woocommerce_product_columns_wrapper', 40 );

// Store Sidebar Layout.
add_filter( 'gorg_page_layout', 'store_sidebar_layout' );
function store_sidebar_layout($sidebar_layout ) {

	if ( is_shop() || is_product_taxonomy() || is_checkout() || is_cart() || is_account_page() ) {

		$gorg_settings = gorg_get_theme_options();
		$woo_sidebar = $gorg_settings['gorg_shop_page_sidebar'];
		if ( 'default' !== $woo_sidebar ) {

			$sidebar_layout = $woo_sidebar;
		}
		else {
			$sidebar_layout = 'left-sidebar';
		}
	}

	return $sidebar_layout;
}

if ( ! function_exists( 'gorg_woocommerce_product_columns_wrapper_close' ) ) {
	/**
	 * Product columns wrapper close.
	 *
	 * @return  void
	 */
	function gorg_woocommerce_product_columns_wrapper_close() {
		echo '</div>';
	}
}
add_action( 'woocommerce_after_shop_loop', 'gorg_woocommerce_product_columns_wrapper_close', 40 );

/**
 * Remove default WooCommerce wrapper.
 */

remove_action( 'woocommerce_before_main_content', 'woocommerce_output_content_wrapper', 10 );
remove_action( 'woocommerce_after_main_content', 'woocommerce_output_content_wrapper_end', 10 );
remove_action( 'woocommerce_before_main_content','woocommerce_breadcrumb', 20, 0);
remove_action( 'woocommerce_sidebar', 'woocommerce_get_sidebar', 10 );
remove_action( 'woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_rating', 5 );
remove_action( 'woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_price', 10 );
remove_action( 'woocommerce_before_shop_loop_item_title', 'woocommerce_show_product_loop_sale_flash', 10 );

if ( ! function_exists( 'gorg_woocommerce_wrapper_before' ) ) {
	/**
	 * Before Content.
	 *
	 * Wraps all WooCommerce content in wrappers which match the theme markup.
	 *
	 * @return void
	 */
function gorg_woocommerce_wrapper_before() { ?>
<section>
    <div class="container">
        <div class="row">
            <?php
		
		$site_sidebar = gorg_page_layout();
		if($site_sidebar =='default'){
			get_sidebar();
		}
			if ( 'left-sidebar' == $site_sidebar ) {
				get_sidebar();
			}
			?>
            <?php if('no-sidebar' == $site_sidebar){
				$content_class = 'col-lg-12 col-md-12';
			} 
			else {
				$content_class = 'col-lg-9 col-md-8';
			}
			?>
            <div class="<?php echo $content_class;?>">
                <?php
}
}
add_action( 'woocommerce_before_main_content', 'gorg_woocommerce_wrapper_before' );

if ( ! function_exists( 'gorg_woocommerce_wrapper_after' ) ) {
	/**
	 * After Content.
	 *
	 * Closes the wrapping divs.
	 *
	 * @return void
	 */
	function gorg_woocommerce_wrapper_after() {
		?>
            </div>
            <?php
$site_sidebar = gorg_page_layout();
if ( 'right-sidebar' == $site_sidebar ) {
	get_sidebar();
}
?>
        </div> <!-- row -->
    </div> <!-- container -->
</section> <!-- section -->
<?php
}
}
add_action( 'woocommerce_after_main_content', 'gorg_woocommerce_wrapper_after' );

/**
 * Sample implementation of the WooCommerce Mini Cart.
 *
 * You can add the WooCommerce Mini Cart to header.php like so ...
 *
	<?php
		if ( function_exists( 'gorg_woocommerce_header_cart' ) ) {
			gorg_woocommerce_header_cart();
		}
	?>
*/

if ( ! function_exists( 'gorg_woocommerce_cart_link_fragment' ) ) {
/**
* Cart Fragments.
*
* Ensure cart contents update when products are added to the cart via AJAX.
*
* @param array $fragments Fragments to refresh via AJAX.
* @return array Fragments to refresh via AJAX.
*/
function gorg_woocommerce_cart_link_fragment( $fragments ) {
ob_start();
gorg_woocommerce_cart_link();
$fragments['a.cart-contents'] = ob_get_clean();

return $fragments;
}
}
add_filter( 'woocommerce_add_to_cart_fragments', 'gorg_woocommerce_cart_link_fragment' );

if ( ! function_exists( 'gorg_woocommerce_cart_link' ) ) {
/**
* Cart Link.
*
* Displayed a link to the cart including the number of items present and the cart total.
*
* @return void
*/
function gorg_woocommerce_cart_link() {
?>
<a class="cart-contents" href="<?php echo esc_url( wc_get_cart_url() ); ?>"
    title="<?php esc_attr_e( 'View your shopping cart', 'gorg' ); ?>">
    <?php
			$item_count_text = sprintf(
				/* translators: number of items in the mini cart. */
				_n( '%d item', '%d items', WC()->cart->get_cart_contents_count(), 'gorg' ),
				WC()->cart->get_cart_contents_count()
			);
			?>
    <span class="amount"><?php echo wp_kses_data( WC()->cart->get_cart_subtotal() ); ?></span> <span
        class="count"><?php echo esc_html( $item_count_text ); ?></span>
</a>
<?php
	}
}

if ( ! function_exists( 'gorg_woocommerce_header_cart' ) ) {
	/**
	 * Display Header Cart.
	 *
	 * @return void
	 */
	function gorg_woocommerce_header_cart() {
		if ( is_cart() ) {
			$class = 'current-menu-item';
		} else {
			$class = '';
		}
		?>
<ul id="site-header-cart" class="site-header-cart">
    <li class="<?php echo esc_attr( $class ); ?>">
        <?php gorg_woocommerce_cart_link(); ?>
    </li>
    <li>
        <?php
				$instance = array(
					'title' => '',
				);

				the_widget( 'WC_Widget_Cart', $instance );
				?>
    </li>
</ul>
<?php
	}
}
/*Remove add to cart button & prices*/
remove_action( 'woocommerce_after_shop_loop_item', 'woocommerce_template_loop_add_to_cart');
remove_action( 'woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_price', 10 );
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_price', 10 );
add_filter( 'woocommerce_variable_sale_price_html', 'roshan_remove_prices', 10, 2 );
add_filter( 'woocommerce_variable_price_html', 'roshan_remove_prices', 10, 2 );
add_filter( 'woocommerce_get_price_html', 'roshan_remove_prices', 10, 2 );
 
function roshan_remove_prices( $price, $product ) {
if ( ! is_admin() ) $price = '';
return $price;
}
function gorg_woo_scripts() {
//WOOCommerce Style
wp_enqueue_style('woo-smallscreen-css', get_template_directory_uri().'/assets/woocommerce/woocommerce-smallscreen.css', array(),'', 'all');
wp_enqueue_style('woo-layout-css', get_template_directory_uri().'/assets/woocommerce/woocommerce-layout.css', array(),'', 'all');
wp_enqueue_style('woo-css', get_template_directory_uri().'/assets/woocommerce/woocommerce.css', array(),'', 'all');
}
add_action( 'wp_enqueue_scripts', 'gorg_woo_scripts' );


add_filter( 'post_class','single_product_class');
function single_product_class($classes) {

	if ( is_product() && 0 == get_post_meta( get_the_ID(), '_wc_review_count', true ) ) {
		$classes[] = 'gorg-woo-product-no-review';
	}
	return $classes;
}

add_filter( 'comment_form_default_fields', 'roshan_comment_form_hide_cookies_consent' );
function roshan_comment_form_hide_cookies_consent( $fields ) {
	unset( $fields['cookies'] );
	return $fields;
}
function filter_clearfix(){
	echo '<div class="clearfix"></div>';
	}
	add_action('woocommerce_before_shop_loop','filter_clearfix', 30);
function roshan_note_filter(){
echo do_shortcode('[wcpf_filter_notes]');
}
add_action('woocommerce_before_shop_loop','roshan_note_filter', 35);