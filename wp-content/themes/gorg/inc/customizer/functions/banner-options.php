<?php
//Banner Section
$gorg_setting = gorg_get_theme_options();
$wp_customize->add_setting('gorg_theme_options[banner_title]',
    array(
        'type' => 'option',
        'default' => $gorg_setting['banner_title'],
        'sanitize_callback' => 'esc_html',
    )
);
$wp_customize->add_control('gorg_theme_options[banner_title]',
    array(
        'label' => esc_html__('Banner Title', 'gorg'),
        'type' => 'text',
        'priority' => 1,
        'section' => 'banner_options',
        'settings' => 'gorg_theme_options[banner_title]',
    )
);

$wp_customize->add_setting('gorg_theme_options[banner_desc]',
    array(
        'type' => 'option',
        'default' => $gorg_setting['banner_desc'],
        'sanitize_callback' => 'wp_kses_post'
    )
);
$wp_customize->add_control('gorg_theme_options[banner_desc]',
    array(
        'label' => esc_html__('Banner Short Description', 'gorg'),
        'type' => 'textarea',
        'priority' => 2,
        'section' => 'banner_options',
        'settings' => 'gorg_theme_options[banner_desc]',
    )
);

$wp_customize->add_setting(
    'gorg_theme_options[banner_image]',
    array(
        'type' => 'option',
        'default' => $gorg_setting['banner_image'],
        'sanitize_callback' => 'esc_url_raw',
        'capability' => 'edit_theme_options',
    )
);

$wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'banner_image', array(
            'label' => esc_html__('Add Banner Image', 'gorg'),
            'section' => 'banner_options',
            'priority' => 2,
            'settings' => 'gorg_theme_options[banner_image]',
        )
    )
);

$wp_customize->add_setting(
    'gorg_theme_options[get_in_touch_page]',
    array(
        'default' => $gorg_setting['get_in_touch_page'],
        'type' => 'option',
        'sanitize_callback' => 'absint',
        'capability' => 'edit_theme_options'
    )
);
$wp_customize->add_control('get_in_touch_page', array(
    'label' => esc_html__('Choose page for Get in Touch Button :', 'gorg'),
    'type' => 'dropdown-pages',
    'section' => 'banner_options',
    'priority' => 3,
    'settings' => 'gorg_theme_options[get_in_touch_page]'
));