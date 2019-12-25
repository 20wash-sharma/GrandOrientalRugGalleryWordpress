<?php
//Banner Section
$gorg_setting = gorg_get_theme_options();

    $wp_customize->add_setting('gorg_theme_options[slider_posts]',
        array(
            'type' => 'theme_mod',
            'default' => $gorg_setting['slider_posts'],
            'sanitize_callback' => 'esc_html',
        )
    );
    $wp_customize->add_control('gorg_theme_options[slider_posts]',
        array(
            'label' => esc_html__('Show No. Of Sliders', 'gorg'),
            'type' => 'number',
            'section' => 'banner_options',
            'settings' => 'gorg_theme_options[slider_posts]',
            'priority' => 5,
        )
    );


    // Add settings for output description
    $wp_customize->add_setting( 'gorg_theme_options[show_static_content]', array(
        'default'    => $gorg_setting['show_static_content'],
        'type'       => 'theme_mod',
        'capability' => 'edit_theme_options'
    ) );

    // Add control and output for select field
    $wp_customize->add_control(new gorg_checkbox_Customize_Controls(
        $wp_customize, 'gorg_theme_options[show_static_content]', array(
        'label'      => __( 'Show Static Content', 'gorg' ),
        'section'    => 'banner_options',
        'settings'   => 'gorg_theme_options[show_static_content]',
        'type'       => 'checkbox',
        'priority' => 1,
    ) ) );
    $wp_customize->add_setting(
        'gorg_theme_options[slider_static_title]',
        array(
            'default' => $gorg_setting['slider_static_title'],
            'type' => 'theme_mod',
            'capability' => 'edit_theme_options',
            'sanitize_callback' => 'wp_kses_post',
        )
    );
    
    $wp_customize->add_control('gorg_theme_options[slider_static_title]',
        array(
            'label' => esc_html__('Slider Static Title', 'gorg'),
            'type' => 'text',
            'section' => 'banner_options',
            'settings' => 'gorg_theme_options[slider_static_title]',
            'priority' => 2,
        )
    );

    $wp_customize->add_setting(
        'gorg_theme_options[slider_static_content]',
        array(
            'default' => $gorg_setting['slider_static_content'],
            'type' => 'theme_mod',
            'capability' => 'edit_theme_options',
            'sanitize_callback' => 'wp_kses_post',
        )
    );
    
    $wp_customize->add_control('gorg_theme_options[slider_static_content]',
        array(
            'label' => esc_html__('Slider Static Content', 'gorg'),
            'type' => 'textarea',
            'section' => 'banner_options',
            'settings' => 'gorg_theme_options[slider_static_content]',
            'priority' => 3,
        )
    );

    $wp_customize->add_setting(
        'gorg_theme_options[show_slider_arrow]',
        array(
            'default' => $gorg_setting['show_slider_arrow'],
            'type' => 'theme_mod',
            'capability' => 'edit_theme_options',
            'sanitize_callback' => 'gorg_checkbox_integer',
        )
    );
    
    $wp_customize->add_control(new gorg_checkbox_Customize_Controls(
        $wp_customize, 'gorg_theme_options[show_slider_arrow]',
            array(
                'label' => esc_html__('Show Slider Navigation Arrows', 'gorg'),
                'section' => 'banner_options',
                'settings' => 'gorg_theme_options[show_slider_arrow]',
                'priority' => 7,
            )
        )
    );