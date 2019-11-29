<?php
/**
 * GORG Theme Customizer
 *
 * @package GORG
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function gorg_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';

	if ( isset( $wp_customize->selective_refresh ) ) {
		$wp_customize->selective_refresh->add_partial( 'blogname', array(
			'selector'        => '.site-title a',
			'render_callback' => 'gorg_customize_partial_blogname',
		) );
		$wp_customize->selective_refresh->add_partial( 'blogdescription', array(
			'selector'        => '.site-description',
			'render_callback' => 'gorg_customize_partial_blogdescription',
		) );
	}
	$wp_customize->add_section('gorg_custom_header',
		array(
				'title' => esc_html__('General Options', 'gorg'),
				'priority' => 1,
				'panel' => 'gorg_options_panel'
		));
$wp_customize->add_section('gorg_cta_section',
array(
		'title' => esc_html__('GORG CTA Options', 'gorg'),
		'priority' => 2,
		'panel' => 'gorg_options_panel'
));
$wp_customize->add_section('gorg_social_icons',
		array(
				'title' => esc_html__('Social Media Options', 'gorg'),
				'priority' => 2,
				'panel' => 'gorg_options_panel'
		));
		$wp_customize->add_section('banner_options', array(
			'title' => esc_html__('Home Banner Options','gorg'),
			'priority' =>3,
			'panel' =>'gorg_options_panel'
	));

$wp_customize->add_section(
	'about_options',
	array(
		'title'    => esc_html__( 'Home Welcome Options','gorg' ),
		'panel' => 'gorg_options_panel',
		'priority' => 5,
	)
);

$wp_customize->add_section('gorg_catalogue',
		array(
				'title' => esc_html__('Home Catalogue Options', 'gorg'),
				'priority' => 7,
				'panel' => 'gorg_options_panel'
		));
$wp_customize->add_section('gorg_featured',
	array(
			'title' => esc_html__('Home Featured Product Options', 'gorg'),
			'priority' => 8,
			'panel' => 'gorg_options_panel'
	));

$wp_customize->add_section('gorg_testimonial',
	array(
		'title' => esc_html__('Home Testimonial Options', 'gorg'),
		'priority' => 9,
		'panel' => 'gorg_options_panel'
	));	

$wp_customize->add_section('contact_section',
		array(
			'title' => esc_html__('Contact Us Options', 'gorg'),
			'priority' => 10,
			'panel' => 'gorg_options_panel'
		));

$wp_customize->add_section('footer_options',
		array(
				'title' => esc_html__('Footer Options', 'gorg'),
				'priority' => 12,
				'panel' => 'gorg_options_panel'
		));

require get_template_directory() . '/inc/customizer/functions/register-panel.php';
require get_template_directory() . '/inc/customizer/functions/banner-options.php';
require get_template_directory() . '/inc/customizer/functions/theme-options.php';
require get_template_directory() . '/inc/customizer/functions/social-icons.php';
require get_template_directory() . '/inc/customizer/functions/contact-options.php';
require get_template_directory() . '/inc/customizer/functions/footer-options.php';
}
add_action( 'customize_register', 'gorg_customize_register' );

/**
 * Render the site title for the selective refresh partial.
 *
 * @return void
 */
function gorg_customize_partial_blogname() {
	bloginfo( 'name' );
}

/**
 * Render the site tagline for the selective refresh partial.
 *
 * @return void
 */
function gorg_customize_partial_blogdescription() {
	bloginfo( 'description' );
}

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function gorg_customize_preview_js() {
	wp_enqueue_script( 'gorg-customizer', get_template_directory_uri() . '/js/customizer.js', array( 'customize-preview' ), '20151215', true );
}
add_action( 'customize_preview_init', 'gorg_customize_preview_js' );

function theme_customize_style() {
    wp_enqueue_style( 'gorg-customizer-css', get_template_directory_uri() . '/inc/customizer/css/customizer-control.css', array(), '1.0.2' );
    wp_enqueue_style( 'gorg-sortable-css', get_template_directory_uri() . '/assets/sortable/customizer-control.css', array(), '1.0.2' );
    wp_enqueue_script( 'gorg-customizer-css', get_template_directory_uri() . '/inc/customizer/assets/customizer.js', array('jquery'), '20151215', true );
}
add_action( 'customize_controls_enqueue_scripts', 'theme_customize_style');
