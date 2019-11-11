<?php
/**
 * Theme Customizer Functions
 *
 * @package Roshan Banstola
 * @subpackage Gorg
 * @since Gorg 1.0
 */
$gorg_setting = gorg_get_theme_options();
/********************  Gorg THEME OPTIONS ******************************************/

$wp_customize->add_setting('gorg_theme_options[gorg_reset_all]',
    array(
        'default' => $gorg_setting['gorg_reset_all'],
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'gorg_reset_alls',
        'transport' => 'postMessage',
    ));
$wp_customize->add_control('gorg_theme_options[gorg_reset_all]',
    array(
        'priority' => 1,
        'label' => esc_html__('Reset all default settings. (Refresh it to view the effect)', 'gorg'),
        'section' => 'gorg_custom_header',
        'type' => 'checkbox',
    ));
    $wp_customize->add_setting('gorg_theme_options[catalogue_title]',
    array(
        'type' => 'option',
        'default' => $gorg_setting['catalogue_title'],
        'sanitize_callback' => 'wp_kses_post',
    )
);
$wp_customize->add_control('gorg_theme_options[catalogue_title]',
    array(
        'priority' => 2,
        'label' => esc_html__('Section Title', 'gorg'),
        'type' => 'text',
        'section' => 'gorg_catalogue',
        'settings' => 'gorg_theme_options[catalogue_title]',
    )
);

$wp_customize->add_setting('gorg_theme_options[catalogue_count]',
    array(
        'type' => 'option',
        'default' => $gorg_setting['catalogue_count'],
        'sanitize_callback' => 'esc_html',
    )
);
$wp_customize->add_control('gorg_theme_options[catalogue_count]',
    array(
        'priority' => 2,
        'label' => esc_html__('No. of Catalogue', 'gorg'),
        'type' => 'number',
        'section' => 'gorg_catalogue',
        'settings' => 'gorg_theme_options[catalogue_count]',
    )
);

$wp_customize->add_setting('gorg_theme_options[welcome_title]',
    array(
        'type' => 'option',
        'default' => $gorg_setting['welcome_title'],
        'sanitize_callback' => 'wp_kses_post'
    )
);
$wp_customize->add_control('gorg_theme_options[welcome_title]',
    array(
        'label' => esc_html__('Welcome Title', 'gorg'),
        'type' => 'text',
        'section' => 'about_options',
        'settings' => 'gorg_theme_options[welcome_title]',
        'priority' => 1,
    )
);
$wp_customize->add_setting(
    'gorg_theme_options[select_about_page]',
    array(
        'default' => $gorg_setting['select_about_page'],
        'type' => 'option',
        'sanitize_callback' => 'absint',
        'capability' => 'edit_theme_options'
    )
);
$wp_customize->add_control('select_about_page', array(
    'label' => esc_html__('Choose the About Page :', 'gorg'),
    'type' => 'dropdown-pages',
    'section' => 'about_options',
    'settings' => 'gorg_theme_options[select_about_page]',
    'priority' => 2,
));
//white logo

$wp_customize->add_setting(
    'gorg_theme_options[white_logo]',
    array(
        'type' => 'option',
        'default' => $gorg_setting['white_logo'],
        'sanitize_callback' => 'esc_url_raw',
        'capability' => 'edit_theme_options',
    )
);

$wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'white_logo', array(
            'label' => esc_html__('White Logo', 'gorg'),
            'section' => 'title_tagline',
            'priority' => 9,
            'settings' => 'gorg_theme_options[white_logo]',
        )
    )
);

?>