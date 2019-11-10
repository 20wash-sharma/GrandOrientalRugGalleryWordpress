<?php
/**
 * Theme Customizer Functions
 *
 * @package Roshan Banstola
 * @subpackage Gorg
 * @since Gorg 1.0
 */
/******************** Gorg SLIDER SETTINGS ******************************************/
$gorg_setting = gorg_get_theme_options();

$wp_customize->add_section('gorg_page_post_options',
    array(
        'title' => esc_html__('Slider Option', 'gorg'),
        'priority' => 1,
        'panel' => 'gorg_options_panel'
    ));
for ($i = 1; $i <= $gorg_setting['gorg_slider_no']; $i++) {
    $wp_customize->add_setting('gorg_get_theme_options[gorg_featured_page_slider_' . $i . ']',
        array(
            'default' => '',
            'sanitize_callback' => 'gorg_sanitize_page',
            'type' => 'option',
            'capability' => 'manage_options'
        ));
    $wp_customize->add_control('gorg_theme_options[gorg_featured_page_slider_' . $i . ']',
        array(
            'priority' => 220 . $i,
            'label' => esc_html__(' Page Slider', 'gorg') . ' ' . $i,
            'section' => 'gorg_page_post_options',
            'type' => 'dropdown-pages',
        ));
}