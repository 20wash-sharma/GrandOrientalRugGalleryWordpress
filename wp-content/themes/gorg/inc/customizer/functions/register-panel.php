<?php
/**
 * Theme Customizer Functions
 *
 * @package Roshan Banstola
 * @subpackage Gorg
 * @since Gorg 1.0
 */
/******************** Gorg CUSTOMIZE REGISTER *********************************************/
add_action('customize_register', 'gorg_customize_register_options', 20);
function gorg_customize_register_options($wp_customize)
{
    $wp_customize->add_panel('gorg_options_panel',
        array(
            'priority' => 2,
            'capability' => 'edit_theme_options',
            'theme_supports' => '',
            'title' => esc_html__('Theme Options', 'gorg'),
            'description' => '',
        ));
}


?>