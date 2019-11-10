<?php
$gorg_setting = gorg_get_theme_options();

$wp_customize->add_setting(
    'gorg_theme_options[show_developer_footer]',
    array(
        'default' => $gorg_setting['show_developer_footer'],
        'type' => 'option',
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'gorg_checkbox_integer',
    )
);

$wp_customize->add_control(new gorg_checkbox_Customize_Controls(
    $wp_customize, 'gorg_theme_options[show_developer_footer]',
        array(
            'label' => esc_html__('Show Developer\'s Name in Footer ', 'gorg'),
            'section' => 'footer_options',
            'settings' => 'gorg_theme_options[show_developer_footer]',
            'priority' => 1,
        )
    )
);

$wp_customize->add_setting('gorg_theme_options[footer_text]',
    array(
        'default' => $gorg_setting['footer_text'],
        'type' => 'option',
        'sanitize_callback' => 'sanitize_text_field'
    )
);

$wp_customize->add_control('footer_text',
    array(
        'label' => esc_html__('Footer Text', 'gorg'),
        'type' => 'text',
        'section' => 'footer_options',
        'settings' => 'gorg_theme_options[footer_text]',
    ));

$wp_customize->add_setting('gorg_theme_options[developed_by_text]',
    array(
        'default' => $gorg_setting['developed_by_text'],
        'type' => 'option',
        'sanitize_callback' => 'sanitize_text_field'
    )
);

$wp_customize->add_control('gorg_theme_options[developed_by_text]',
    array(
        'label' => esc_html__('Developed By Text', 'gorg'),
        'type' => 'text',
        'section' => 'footer_options',
        'settings' => 'gorg_theme_options[developed_by_text]',
    ));

$wp_customize->add_setting('gorg_theme_options[developed_by_link]',
    array(
        'default' => $gorg_setting['developed_by_link'],
        'type' => 'option',
        'sanitize_callback' => 'esc_url_raw'
    )
);

$wp_customize->add_control('gorg_theme_options[developed_by_link]',
    array(
        'label' => esc_html__('Developed By Link', 'gorg'),
        'type' => 'text',
        'section' => 'footer_options',
        'settings' => 'gorg_theme_options[developed_by_link]',
    ));