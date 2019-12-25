<?php
$gorg_setting = gorg_get_theme_options();

// $wp_customize->add_setting(
//     'gorg_theme_options[show_developer_footer]',
//     array(
//         'default' => $gorg_setting['show_developer_footer'],
//         'type' => 'theme_mod',
//         'capability' => 'edit_theme_options',
//         'sanitize_callback' => 'gorg_checkbox_integer',
//     )
// );

// $wp_customize->add_control(new gorg_checkbox_Customize_Controls(
//     $wp_customize, 'gorg_theme_options[show_developer_footer]',
//         array(
//             'label' => esc_html__('Show Developer\'s Name in Footer ', 'gorg'),
//             'section' => 'footer_options',
//             'settings' => 'gorg_theme_options[show_developer_footer]',
//             'priority' => 1,
//         )
//     )
// );
$wp_customize->add_setting(
    'gorg_theme_options[footer_logo]',
    array(
        'type' => 'theme_mod',
        'default' => $gorg_setting['footer_logo'],
        'sanitize_callback' => 'esc_url_raw',
        'capability' => 'edit_theme_options',
    )
);

$wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'footer_logo', array(
            'label' => esc_html__('Footer Logo', 'gorg'),
            'section' => 'footer_options',
            'settings' => 'gorg_theme_options[footer_logo]',
        )
    )
);

$wp_customize->add_setting('gorg_theme_options[footer_text]',
    array(
        'default' => $gorg_setting['footer_text'],
        'type' => 'theme_mod',
        'sanitize_callback' => 'sanitize_text_field'
    )
);

$wp_customize->add_control('footer_text',
    array(
        'label' => esc_html__('Footer Text', 'gorg'),
        'type' => 'textarea',
        'section' => 'footer_options',
        'settings' => 'gorg_theme_options[footer_text]',
    ));
$wp_customize->add_setting('gorg_theme_options[footer_copyright]',
    array(
        'default' => $gorg_setting['footer_copyright'],
        'type' => 'theme_mod',
        'sanitize_callback' => 'sanitize_text_field'
    )
);
//google review
$wp_customize->add_setting(
    'gorg_theme_options[footer_google_review_img]',
    array(
        'type' => 'theme_mod',
        'default' => $gorg_setting['footer_google_review_img'],
        'sanitize_callback' => 'esc_url_raw',
        'capability' => 'edit_theme_options',
    )
);

$wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'footer_google_review_img', array(
            'label' => esc_html__('Footer Google Review Image', 'gorg'),
            'section' => 'footer_options',
            'settings' => 'gorg_theme_options[footer_google_review_img]',
        )
    )
);
//google review link
$wp_customize->add_setting('gorg_theme_options[google_review_link]',
    array(
        'default' => $gorg_setting['google_review_link'],
        'sanitize_callback' => 'esc_url_raw',
        'type' => 'theme_mod',
        'capability' => 'manage_options'
    )
);
$wp_customize->add_control('gorg_theme_options[google_review_link]',
    array(
        'label' => esc_html__('Google Review Link', 'gorg'),
        'section' => 'footer_options',
        'type' => 'text',
    )
);
$wp_customize->add_control('footer_copyright',
    array(
        'label' => esc_html__('Footer copyright', 'gorg'),
        'type' => 'text',
        'section' => 'footer_options',
        'settings' => 'gorg_theme_options[footer_copyright]',
    ));

// $wp_customize->add_setting('gorg_theme_options[developed_by_text]',
//     array(
//         'default' => $gorg_setting['developed_by_text'],
//         'type' => 'theme_mod',
//         'sanitize_callback' => 'sanitize_text_field'
//     )
// );

// $wp_customize->add_control('gorg_theme_options[developed_by_text]',
//     array(
//         'label' => esc_html__('Developed By Text', 'gorg'),
//         'type' => 'text',
//         'section' => 'footer_options',
//         'settings' => 'gorg_theme_options[developed_by_text]',
//     ));

// $wp_customize->add_setting('gorg_theme_options[developed_by_link]',
//     array(
//         'default' => $gorg_setting['developed_by_link'],
//         'type' => 'theme_mod',
//         'sanitize_callback' => 'esc_url_raw'
//     )
// );

// $wp_customize->add_control('gorg_theme_options[developed_by_link]',
//     array(
//         'label' => esc_html__('Developed By Link', 'gorg'),
//         'type' => 'text',
//         'section' => 'footer_options',
//         'settings' => 'gorg_theme_options[developed_by_link]',
//     ));
