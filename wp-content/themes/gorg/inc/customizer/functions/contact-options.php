<?php
$gorg_setting = gorg_get_theme_options();

$wp_customize->add_setting(
    'gorg_theme_options[contact_title]',
    array(
        'default' => $gorg_setting['contact_title'],
        'type' => 'option',
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'wp_kses_post',
    )
);

$wp_customize->add_control('gorg_theme_options[contact_title]',
    array(
        'label' => esc_html__('Main Title', 'gorg'),
        'type' => 'text',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[contact_title]',
    )
);
$wp_customize->add_setting(
    'gorg_theme_options[contact_address]',
    array(
        'default' => $gorg_setting['contact_address'],
        'type' => 'option',
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'wp_kses_post',
    )
);

$wp_customize->add_control('gorg_theme_options[contact_address]',
    array(
        'label' => esc_html__('Address', 'gorg'),
        'type' => 'textarea',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[contact_address]',
    )
);

$wp_customize->add_setting(
    'gorg_theme_options[contact_fphone]',
    array(
        'default' => $gorg_setting['contact_fphone'],
        'type' => 'option',
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'esc_html',
    )
);

$wp_customize->add_control('gorg_theme_options[contact_fphone]',
    array(
        'label' => esc_html__('Contact Phone Number', 'gorg'),
        'type' => 'text',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[contact_fphone]',
    )
);
$wp_customize->add_setting(
    'gorg_theme_options[contact_sphone]',
    array(
        'default' => $gorg_setting['contact_sphone'],
        'type' => 'option',
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'esc_html',
    )
);

$wp_customize->add_control('gorg_theme_options[contact_sphone]',
    array(
        'label' => esc_html__('Contact Phone Number (Optional)', 'gorg'),
        'type' => 'text',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[contact_sphone]',
    )
);

//fax
$wp_customize->add_setting(
    'gorg_theme_options[contact_fax]',
    array(
        'default' => $gorg_setting['contact_fax'],
        'type' => 'option',
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'esc_html',
    )
);

$wp_customize->add_control('gorg_theme_options[contact_fax]',
    array(
        'label' => esc_html__('Fax Number', 'gorg'),
        'type' => 'text',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[contact_fax]',
    )
);
$wp_customize->add_setting(
    'gorg_theme_options[contact_work]',
    array(
        'default' => $gorg_setting['contact_work'],
        'type' => 'option',
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'wp_kses_post',
    )
);

$wp_customize->add_control('gorg_theme_options[contact_work]',
    array(
        'label' => esc_html__('Working Hours', 'gorg'),
        'type' => 'textarea',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[contact_work]',
    )
);
$wp_customize->add_setting(
    'gorg_theme_options[contact_email]',
    array(
        'default' => $gorg_setting['contact_email'],
        'type' => 'option',
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'esc_html',
    )
);

$wp_customize->add_control('gorg_theme_options[contact_email]',
    array(
        'label' => esc_html__('Email', 'gorg'),
        'type' => 'text',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[contact_email]',
    )
);

//shortcode form
$wp_customize->add_setting(
    'gorg_theme_options[contact_form]',
    array(
        'default' => $gorg_setting['contact_form'],
        'type' => 'option',
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'wp_kses_post',
    )
);

$wp_customize->add_control('gorg_theme_options[contact_form]',
    array(
        'label' => esc_html__('Contact Form Shortcode', 'gorg'),
        'description'        => esc_html__( 'Get Contact Form Shortcode', 'gorg' ). "<a href=".esc_url(home_url('/').'wp-admin/admin.php?page=wpcf7')." target='_blank'>". ' ' .esc_html__('From Here', 'gorg'). '</a>',
        'type' => 'text',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[contact_form]',
    )
);


$wp_customize->add_setting(
    'gorg_theme_options[contact_map_iframe]',
    array(
        'default' => $gorg_setting['contact_map_iframe'],
        'type' => 'option',
        'capability' => 'edit_theme_options',
    )
);

$wp_customize->add_control('gorg_theme_options[contact_map_iframe]',
    array(
        'label' => esc_html__('Google Map Iframe', 'gorg'),
        'type' => 'textarea',
        'description' => esc_html__( 'Get Google Map Iframe', 'gorg' ). "<a href='https://www.google.com/maps/' target='_blank'>". ' ' .esc_html__('From Here', 'gorg'). '</a>',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[contact_map_iframe]',
    )
);