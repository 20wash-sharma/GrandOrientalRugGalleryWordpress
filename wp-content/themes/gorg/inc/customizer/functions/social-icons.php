<?php
/**
 * Theme Customizer Functions
 *
 * @package Roshan Banstola
 * @subpackage Gorg
 * @since Gorg 1.0
 */
$gorg_setting = gorg_get_theme_options();
/******************** Gorg SOCIAL ICONS ******************************************/

// $wp_customize->add_setting(
//     'gorg_theme_options[gorg_social_show]',
//     array(
//         'default' => $gorg_setting['gorg_social_show'],
//         'type' => 'option',
//         'capability' => 'edit_theme_options',
//         'sanitize_callback' => 'gorg_sanitize_checkbox',
//     )
// );

// $wp_customize->add_control(new gorg_checkbox_Customize_Controls(
//     $wp_customize, 'gorg_theme_options[gorg_social_show]',
//         array(
//             'label' => esc_html__('Show Social Icons ? ', 'gorg'),
//             'section' => 'gorg_social_icons',
//             'settings' => 'gorg_theme_options[gorg_social_show]',
//             'priority' => 1,
//         )
//     )
// );
$wp_customize->add_setting('gorg_theme_options[gorg_social_facebook]',
    array(
        'default' => $gorg_setting['gorg_social_facebook'],
        'sanitize_callback' => 'esc_url_raw',
        'type' => 'option',
        'capability' => 'manage_options'
    )
);
$wp_customize->add_control('gorg_theme_options[gorg_social_facebook]',
    array(
        'priority' => 410,
        'label' => esc_html__('Facebook Link', 'gorg'),
        'section' => 'gorg_social_icons',
        'type' => 'text',
    )
);
$wp_customize->add_setting('gorg_theme_options[gorg_social_twitter]',
    array(
        'default' => $gorg_setting['gorg_social_twitter'],
        'sanitize_callback' => 'esc_url_raw',
        'type' => 'option',
        'capability' => 'manage_options'
    )
);
$wp_customize->add_control('gorg_theme_options[gorg_social_twitter]',
    array(
        'priority' => 420,
        'label' => esc_html__('Twitter Link', 'gorg'),
        'section' => 'gorg_social_icons',
        'type' => 'text',
    )
);
$wp_customize->add_setting('gorg_theme_options[gorg_social_linkedin]',
    array(
        'default' => $gorg_setting['gorg_social_linkedin'],
        'sanitize_callback' => 'esc_url_raw',
        'type' => 'option',
        'capability' => 'manage_options'
    )
);
$wp_customize->add_control('gorg_theme_options[gorg_social_linkedin]',
    array(
        'priority' => 425,
        'label' => esc_html__('Linkedin Link', 'gorg'),
        'section' => 'gorg_social_icons',
        'type' => 'text',
    )
);
$wp_customize->add_setting('gorg_theme_options[gorg_social_googleplus]',
    array(
        'default' => $gorg_setting['gorg_social_googleplus'],
        'sanitize_callback' => 'esc_url_raw',
        'type' => 'option',
        'capability' => 'manage_options'
    )
);
$wp_customize->add_control('gorg_theme_options[gorg_social_googleplus]',
    array(
        'priority' => 470,
        'label' => esc_html__('Google Plus Link', 'gorg'),
        'section' => 'gorg_social_icons',
        'type' => 'text',
    )
);
$wp_customize->add_setting('gorg_theme_options[gorg_social_instagram]',
    array(
        'default' => $gorg_setting['gorg_social_instagram'],
        'sanitize_callback' => 'esc_url_raw',
        'type' => 'option',
        'capability' => 'manage_options'
    )
);
$wp_customize->add_control('gorg_theme_options[gorg_social_instagram]',
    array(
        'priority' => 480,
        'label' => esc_html__('Instagram Link', 'gorg'),
        'section' => 'gorg_social_icons',
        'type' => 'text',
    )
);
//yeld
$wp_customize->add_setting('gorg_theme_options[gorg_social_yelp]',
    array(
        'default' => $gorg_setting['gorg_social_yeld'],
        'sanitize_callback' => 'esc_url_raw',
        'type' => 'option',
        'capability' => 'manage_options'
    )
);
$wp_customize->add_control('gorg_theme_options[gorg_social_yelp]',
    array(
        'priority' => 480,
        'label' => esc_html__('Yelp Link', 'gorg'),
        'section' => 'gorg_social_icons',
        'type' => 'text',
    )
);
$wp_customize->add_setting('gorg_theme_options[gorg_social_youtube]',
    array(
        'default' => $gorg_setting['gorg_social_youtube'],
        'sanitize_callback' => 'esc_url_raw',
        'type' => 'option',
        'capability' => 'manage_options'
    )
);
$wp_customize->add_control('gorg_theme_options[gorg_social_youtube]',
    array(
        'priority' => 480,
        'label' => esc_html__('Youtube Link', 'gorg'),
        'section' => 'gorg_social_icons',
        'type' => 'text',
    )
);
?>