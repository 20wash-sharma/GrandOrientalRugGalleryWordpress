<?php
$gorg_setting = gorg_get_theme_options();

$wp_customize->add_setting(
    'gorg_theme_options[contact_title]',
    array(
        'default' => $gorg_setting['contact_title'],
        'type' => 'theme_mod',
        'priority' => 1,
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
//address title
$wp_customize->add_setting(
    'gorg_theme_options[address_title]',
    array(
        'default' => $gorg_setting['address_title'],
        'type' => 'theme_mod',
        'priority' => 5,
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'wp_kses_post',
    )
);

$wp_customize->add_control('gorg_theme_options[address_title]',
    array(
        'label' => esc_html__('Address Title', 'gorg'),
        'type' => 'text',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[address_title]',
    )
);
$wp_customize->add_setting(
    'gorg_theme_options[contact_address]',
    array(
        'default' => $gorg_setting['contact_address'],
        'type' => 'theme_mod',
        'priority' => 3,
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
//contact title
$wp_customize->add_setting(
    'gorg_theme_options[contact_phone_title]',
    array(
        'default' => $gorg_setting['contact_phone_title'],
        'type' => 'theme_mod',
        'priority' => 4,
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'wp_kses_post',
    )
);

$wp_customize->add_control('gorg_theme_options[contact_phone_title]',
    array(
        'label' => esc_html__('Contact Title', 'gorg'),
        'type' => 'text',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[contact_phone_title]',
    )
);
$wp_customize->add_setting(
    'gorg_theme_options[contact_fphone]',
    array(
        'default' => $gorg_setting['contact_fphone'],
        'type' => 'theme_mod',
        'priority' => 5,
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
        'type' => 'theme_mod',
        'priority' => 7,
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
        'type' => 'theme_mod',
        'priority' => 8,
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
//business hour title
$wp_customize->add_setting(
    'gorg_theme_options[business_hour_title]',
    array(
        'default' => $gorg_setting['business_hour_title'],
        'type' => 'theme_mod',
        'priority' => 9,
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'wp_kses_post',
    )
);

$wp_customize->add_control('gorg_theme_options[business_hour_title]',
    array(
        'label' => esc_html__('Business Hour Title', 'gorg'),
        'type' => 'text',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[business_hour_title]',
    )
);
$wp_customize->add_setting(
    'gorg_theme_options[contact_work]',
    array(
        'default' => $gorg_setting['contact_work'],
        'type' => 'theme_mod',
        'priority' => 10,
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

//email title
$wp_customize->add_setting(
    'gorg_theme_options[email_title]',
    array(
        'default' => $gorg_setting['email_title'],
        'type' => 'theme_mod',
        'priority' => 11,
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'wp_kses_post',
    )
);

$wp_customize->add_control('gorg_theme_options[email_title]',
    array(
        'label' => esc_html__('Email Title', 'gorg'),
        'type' => 'text',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[email_title]',
    )
);
$wp_customize->add_setting(
    'gorg_theme_options[contact_email]',
    array(
        'default' => $gorg_setting['contact_email'],
        'type' => 'theme_mod',
        'priority' => 12,
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
        'type' => 'theme_mod',
        'priority' => 13,
        'capability' => 'edit_theme_options',
        'sanitize_callback' => 'wp_kses_post',
    )
);

$wp_customize->add_control('gorg_theme_options[contact_form]',
    array(
        'label' => esc_html__('Contact Form Shortcode', 'gorg'),
        'description'        => esc_html__( 'Get Contact Form Shortcode', 'gorg' ). "<a href=".esc_url(home_url('/').'wp-admin/edit.php?post_type=wpcf7_contact_form')." target='_blank'>". ' ' .esc_html__('From Here', 'gorg'). '</a>',
        'type' => 'text',
        'section' => 'contact_section',
        'settings' => 'gorg_theme_options[contact_form]',
    )
);


$wp_customize->add_setting(
    'gorg_theme_options[contact_map_iframe]',
    array(
        'default' => $gorg_setting['contact_map_iframe'],
        'type' => 'theme_mod',
        'priority' => 14,
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