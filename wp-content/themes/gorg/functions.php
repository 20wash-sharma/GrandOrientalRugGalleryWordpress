<?php
/**
 * GORG functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package GORG
 */

if ( ! function_exists( 'gorg_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function gorg_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on GORG, use a find and replace
		 * to change 'gorg' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'gorg', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		/*
		Enable responsive embed files
		*/
		add_theme_support( 'responsive-embeds' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'gorg' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'gorg_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'gorg_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function gorg_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'gorg_content_width', 640 );
}
add_action( 'after_setup_theme', 'gorg_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function gorg_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'gorg' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'gorg' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h6 class="widget_title">',
		'after_title'   => '</h6>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Service Areas Sidebar', 'gorg' ),
		'id'            => 'sidebar-location',
		'description'   => esc_html__( 'Add widgets here.', 'gorg' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5 class="widget_title">',
		'after_title'   => '</h5>',
	) );
	//shop page
	register_sidebar( array(
		'name'          => esc_html__( 'WooCommerce Sidebar', 'gorg' ),
		'id'            => 'gorg-woo-shop-sidebar',
		'description'   => esc_html__( 'Add widgets here.', 'gorg' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5 class="widget_title">',
		'after_title'   => '</h5>',
	) );
	//product single
	register_sidebar( array(
		'name'          => esc_html__( 'Product Sidebar', 'gorg' ),
		'id'            => 'gorg-woo-single-sidebar',
		'description'   => esc_html__( 'Add widgets here.', 'gorg' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5 class="widget_title">',
		'after_title'   => '</h5>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Quick Links', 'gorg' ),
		'id'            => 'footer-1',
		'description'   => esc_html__( 'Add widgets here.', 'gorg' ),
		'before_widget' => '<div id="%1$s" class="list_none widget_links %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h6 class="widget_title">',
		'after_title'   => '</h6>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Facebook', 'gorg' ),
		'id'            => 'footer-2',
		'description'   => esc_html__( 'Add widgets here.', 'gorg' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h6 class="widget_title">',
		'after_title'   => '</h6>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Bottom Menu', 'gorg' ),
		'id'            => 'footer-3',
		'description'   => esc_html__( 'Add widgets here.', 'gorg' ),
		'before_widget' => '<div id="%1$s" class="list_none footer_link text-center text-md-right %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h6 class="widget_title">',
		'after_title'   => '</h6>',
	) );
}
add_action( 'widgets_init', 'gorg_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function gorg_scripts() {
	
	wp_enqueue_style( 'gorg-style', get_stylesheet_uri() );
	wp_enqueue_style('animate-css', get_template_directory_uri().'/assets/css/animate.css', array(),'', 'all');
	wp_enqueue_style('bootstrap-css', get_template_directory_uri().'/assets/bootstrap/css/bootstrap.min.css', array(),'', 'all');
	wp_enqueue_style('Montserrat-font', 'https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i', array(),'', 'all');
	wp_enqueue_style('Roboto-font', 'https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i', array(),'', 'all');
	wp_enqueue_style('ico-moon-css', get_template_directory_uri().'/assets/css/ico-moon.css', array(),'', 'all');
	wp_enqueue_style('ionicons-min-css', get_template_directory_uri().'/assets/css/ionicons.min.css', array(),'', 'all');
	wp_enqueue_style('themify-icons-css', get_template_directory_uri().'/assets/css/themify-icons.css', array(),'', 'all');
	wp_enqueue_style('fontawesome-css', get_template_directory_uri().'/assets/css/all.min.css', array(),'', 'all');
	wp_enqueue_style('owl-carousel-css', get_template_directory_uri().'/assets/owlcarousel/css/owl.carousel.min.css', array(),'', 'all');
	wp_enqueue_style('owl-theme-css', get_template_directory_uri().'/assets/owlcarousel/css/owl.theme.css', array(),'', 'all');
	wp_enqueue_style('owl-theme-default-css', get_template_directory_uri().'/assets/owlcarousel/css/owl.theme.default.min.css', array(),'', 'all');
	wp_enqueue_style('magnific-popup-css', get_template_directory_uri().'/assets/css/magnific-popup.css', array(),'', 'all');
	wp_enqueue_style('style-css', get_template_directory_uri().'/assets/css/style.css', array(),'', 'all');
	wp_enqueue_style('responsive-css', get_template_directory_uri().'/assets/css/responsive.css', array(),'', 'all');
	wp_enqueue_style('color-css', get_template_directory_uri().'/assets/color/theme.css', array(),'', 'all');

	// wp_enqueue_script( 'jquery-ui-js', get_template_directory_uri() . '/assets/js/jquery-ui.js', array('jquery'), '20190811', true );
	wp_enqueue_script( 'popper-min-js', get_template_directory_uri() . '/assets/js/popper.min.js', array('jquery'), '20190811', true );
	wp_enqueue_script( 'bootstrap-js', get_template_directory_uri() . '/assets/bootstrap/js/bootstrap.min.js', array('jquery'), '20190811', true );
	wp_enqueue_script( 'owl-carousel-js', get_template_directory_uri() . '/assets/owlcarousel/js/owl.carousel.min.js', array('jquery'), '20190811', true );
	wp_enqueue_script( 'magnific-popup-js', get_template_directory_uri() . '/assets/js/magnific-popup.min.js', array('jquery'), '20190811', true );
	wp_enqueue_script( 'waypoints-js', get_template_directory_uri() . '/assets/js/waypoints.min.js', array('jquery'), '20190811', true );
	wp_enqueue_script( 'parallax-js', get_template_directory_uri() . '/assets/js/parallax.js', array('jquery'), '20190811', true );
	wp_enqueue_script( 'jquery-fitvids-js', get_template_directory_uri() . '/assets/js/jquery.fitvids.js', array('jquery'), '20190811', true );
	wp_enqueue_script( 'isotope-js', get_template_directory_uri() . '/assets/js/isotope.min.js', array('jquery'), '20190811', true );
	wp_enqueue_script( 'masonry-js', get_template_directory_uri() . '/assets/js/masonry.pkgd.min.js', array('jquery'), '20190811', true );
	wp_enqueue_script( 'elevatezoom-js', get_template_directory_uri() . '/assets/js/jquery.elevatezoom.js', array('jquery'), '20190811', true );
	wp_enqueue_script( 'scripts-js', get_template_directory_uri() . '/assets/js/scripts.js', array('jquery'), '20190811', true );

	wp_enqueue_script( 'gorg-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'gorg-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'gorg_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';
require get_template_directory() . '/lib/gorg-functions.php';
require get_template_directory() . '/inc/customizer/gorg-default-values.php';
require get_template_directory() . '/inc/customizer/functions/customizer-control.php';
require get_template_directory() . '/inc/customizer/functions/sanitize-functions.php';
require get_template_directory() . '/inc/customizer/gorg-color-picker/gorg-color-picker.php';

require get_template_directory() . '/inc/custom-breadcrumb.php';
require get_template_directory() . '/bt4navwalker.php';

/**
 * Custom Post Types
 */
require get_template_directory() . '/post-types/home_slider.php';
require get_template_directory() . '/post-types/gorg_testimonial.php';
require get_template_directory() . '/post-types/service-areas.php';
require get_template_directory() . '/post-types/gorg_gallery.php';

/*polylang for customizer*/
require_once get_template_directory() . '/customizer-polylang.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

/**
 * Check for WP_Customizer_Control existence before adding custom control because WP_Customize_Control
 * is loaded on customizer page only
 *
 * @see _wp_customize_include()
 */
if ( class_exists( 'WP_Customize_Control' ) ) {
	require_once  get_template_directory() . '/inc/class-customizer-range-value-control/class-customizer-range-value-control.php';
}

if(!function_exists('gorg_get_theme_options')):
    function gorg_get_theme_options() {
        return wp_parse_args(  get_theme_mod( 'gorg_theme_options', array() ), gorg_get_option_defaults_values() );
    }
endif;

/**
 * Load WooCommerce compatibility file.
 */
if ( class_exists( 'WooCommerce' ) ) {
	require get_template_directory() . '/inc/woocommerce.php';
}
